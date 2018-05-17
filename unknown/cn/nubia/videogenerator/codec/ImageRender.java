package cn.nubia.videogenerator.codec;

import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.ExifInterface;
import android.media.MediaCodec.BufferInfo;
import android.util.Log;
import android.view.Surface;
import cn.nubia.videogenerator.common.InputBufferFiller;

public class ImageRender {
    private static final String TAG = "ImageRender";
    private CanvasInputSurface mInputSurface;
    private ArrayList<String> mImageList = null;
    private boolean mStopMakeVideo = false;
    private InputBufferFiller mFiller;
    private long mPts = 0;
    
    public ImageRender() {
        
    }

    public void addImage(ArrayList<String> paths){
    	mImageList = paths;
    }
    
    public ArrayList<String> getImage(){
    	return mImageList;
    }
    
    public void clearImage(){
    	mImageList.clear();
        mImageList = null;
    }    
    
    public void createInputSurface(Surface surface, int width, int height) {
        mInputSurface = new CanvasInputSurface(surface, width, height);
    }    
    
    public void startRender(){
        String path = null;
        if(mImageList == null) {
        	if(mInputSurface != null){
                mInputSurface.release();
                mInputSurface = null;
            }
        	return;
        }
        int size = mImageList.size();
        for (int i = 0; i < size; i++) {
            if (mStopMakeVideo) {
                break;
            }
            try{
                path = mImageList.get(i);
                Bitmap bmp = scaleBitmap(path, mInputSurface.getWidth(),mInputSurface.getHeight());
                if(bmp == null){
                    Log.e(TAG, "Create Bitmap failed!");
                    continue;
                }
            
                int degree = getDegree(path);
                mInputSurface.drawBitmap(bmp, degree);
            }catch (Exception e) {
                e.printStackTrace();                
                break;
            }
            boolean isEnd = ((i + 1) == size) ? true : false;
            notifyUpdated(isEnd);
        }
        if(mInputSurface != null){
            mInputSurface.release();
            mInputSurface = null;
        }
        mStopMakeVideo = false;
        clearImage();
    }   
    
    public void addVideoHeadOrTail(boolean isVideoTail,int videoDegree,int count){
        String path = null;
        int alphaValue = 60;
        int step = 1;
        int skipCount = 1;
        int size = mImageList.size();
        if(size == 0) return;      
        if(isVideoTail){
        	alphaValue = 240;        	
        }
        if(count != 0){
        	step = 200/count;
            if(step < 1)step = 1;
            skipCount = count / 200;
            if(skipCount < 1) skipCount = 1;
        }
        if(mImageList == null) {
        	if(mInputSurface != null){
                mInputSurface.release();
                mInputSurface = null;
            }
        	return;
        }
        path = mImageList.get(0);
        Bitmap bmp = scaleBitmap(path, mInputSurface.getWidth(),mInputSurface.getHeight());
        if(bmp == null){
            Log.e(TAG, "Create Bitmap failed!");
            return;
        }
        int degree = getDegree(path);        
        for (int i = 0; i < count; i++) {
            if (mStopMakeVideo) {
                break;
            }
            try{              
                if(videoDegree > degree){
                	mInputSurface.drawBitmap(bmp,alphaValue,360-(videoDegree - degree));
                }else if(videoDegree == degree){
                    mInputSurface.drawBitmap(bmp,alphaValue,0);
                }else{
                	mInputSurface.drawBitmap(bmp,alphaValue,degree);
                }
                if((skipCount == 1) || (skipCount  > 1 && (i % skipCount) == 0 )){
                    if(isVideoTail){                	
                	    alphaValue -= step;                	
	                    if (alphaValue <= 40) {
	                        alphaValue = 40;
	                    }	               
                    }else{            	
                        alphaValue += step;                	
 	                    if (alphaValue > 255) {
 	                        alphaValue = 255;
 	                    }
                    }
                }
            }catch (Exception e) {
                e.printStackTrace();                
                break;
            }
           
            boolean isEnd = (((i + 1) == count) && isVideoTail) ? true : false;
            notifyUpdated(isEnd);
        }  
        bmp.recycle();
        bmp = null;
        mStopMakeVideo = false;
        clearImage();
    }   

    private int getDegree(String path) {
        int orientation = -1;
        try {
            ExifInterface exif = new ExifInterface(path);
            orientation = exif.getAttributeInt(ExifInterface.TAG_ORIENTATION, -1);
        } catch (IOException e) {
            e.printStackTrace();
        }
        int degree = 0;
        if(orientation != -1){
            switch(orientation){
            case ExifInterface.ORIENTATION_ROTATE_90:
                degree = 90;
                break;
            case ExifInterface.ORIENTATION_ROTATE_180:
                degree = 180;
                break;
            case ExifInterface.ORIENTATION_ROTATE_270:
                degree = 270;
                break;
            default:
                degree = 0;
                break;
            }
        }
        return degree;
    }

    private Bitmap scaleBitmap(String path, int dstWidth, int dstHeight){
        FileInputStream fis = null;
        try {
            fis = new FileInputStream(path);
            FileDescriptor fd = fis.getFD();
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFileDescriptor(fd, null, options);
            int srcWidth = options.outWidth;
            int srcHeight = options.outHeight;
            float scale = Math.min((float) srcWidth / dstWidth, (float) srcHeight/dstHeight);
            options.inJustDecodeBounds = false;
            options.inSampleSize = computeSampleSizeLarger(scale);
//            Log.i(TAG, "scaleBitmap SampleSize: " + options.inSampleSize
//                    + " srcWidth: " + srcWidth + " dstWidth: " + dstWidth);
            Bitmap bmp = BitmapFactory.decodeFileDescriptor(fd, null, options);
            return bmp;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }finally{
        	if(fis != null){
                closeSilently(fis);
        	}
        }
    }

    private int computeSampleSizeLarger(float scale) {
        int initialSize = (int) scale;
        if (initialSize <= 1) {
            return 1;
        }
        return initialSize <= 8 ? Integer.highestOneBit(initialSize)
                : initialSize / 8 * 8;//<=8返回2的N次方，>8 返回8的倍数
    }

    private void closeSilently(Closeable fd) {
        try {
            fd.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    
    public void stop() {
    	mStopMakeVideo = true;
    }
    
    public void setFirstPts(long pts){
    	mPts = pts;
    }
    
    public long getFirtsPts(){
    	return mPts;
    }
    public void setFiller(InputBufferFiller filler) {
        this.mFiller = filler;
    } 
    
    public void notifyUpdated(boolean isEnd) {
        if (mFiller != null) {
            mFiller.fillInputBuffer(isEnd);
        }
    }    

    public void notifyUpdatedAsync(ByteBuffer buffer, BufferInfo bufferInfo, String mimeType) {
        if (mFiller != null) {
            mFiller.fillInputBufferAsync(buffer, bufferInfo);
        }
    }    
   
}
