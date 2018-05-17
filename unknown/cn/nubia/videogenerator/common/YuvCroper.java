package cn.nubia.videogenerator.common;

import java.nio.ByteBuffer;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.media.MediaCodec.BufferInfo;
import android.util.Log;

public class YuvCroper {
    private static String LOG_TAG = "VideoCrop";
    public static int YUV_420SP = 0;  //也即NV12 YYY...UVUVUV...
    public static int YUV_420P = 1;  //也即I420  YYY...UUU...VVV...
    
    private final int mType;
    private byte[] mData;
    private final int mWidth;
    private final int mHeight;
    private final int mYLenght;
    private final int mCropLeft;
    private final int mCropTop;
    private int mCropWidth;
    private int mCropHeight;
    private int mRotate;
    
    /**
     * 
     * @param type yuv数据类型：YUV_SP(UVUVUV...)   YUV_420P(UUU...VVV...)
     * @param width yuv数据的原始宽度
     * @param height yuv数据的原始高度
     * @param crop 裁剪的区域。比如（0.25，0，1，0.85），每个值都在0-1之间
     * @throws Exception
     */
    public YuvCroper(int type, int width, int height, int rotate, RectF crop) throws Exception{
        if(width <= 0 || height <= 0 || crop == null || crop.width() <= 0 || crop.height() <= 0){
            throw new Exception("ViewCrop:Wrong param! size:" + width + "*" + height + ". Crop:"+ crop);
        }
        mType = type;
        mRotate = -rotate;       

        Matrix m = new Matrix();
        m.setRotate(mRotate);
        if(mRotate == -90){
            m.postTranslate(0, 1);
        }else if(mRotate == -180){
            m.postTranslate(1, 1);
        }else if(mRotate == -270){
            m.postTranslate(1, 0);
        }
        m.mapRect(crop);
        
        mWidth = width; 
        mHeight = height;
        mYLenght = mWidth * mHeight;
        mCropHeight = (int)(crop.height() * mHeight);
        mCropWidth = (int)(crop.width() * mWidth);
        mCropHeight = roundTo16(mCropHeight, mHeight);
        mCropWidth = roundTo16(mCropWidth, mWidth);
        mCropLeft = (int)(crop.left * mWidth) / 16 * 16;
        mCropTop = (int)(crop.top * mHeight) / 16 * 16;
        mData = new byte[mCropHeight * mCropWidth * 3 / 2];
        Log.d(LOG_TAG, "crop  point:" + mCropLeft + "*" + mCropTop + "     size:" + mCropWidth + "*" + mCropHeight);
    }
    
    public int getCropWidth(){
    	return mCropWidth;
    }
    
    public int getCropHeight(){
    	return mCropHeight;
    }
    /**
     * 单帧yuv数据
     * @param oriData
     * @return
     */
    @SuppressLint("NewApi")
	public byte[] crop(ByteBuffer decodedData, BufferInfo bufferInfo){
    	byte[] oriData = new byte[bufferInfo.size];
    	decodedData.get(oriData);
        if(oriData == null || oriData.length != mYLenght * 3 / 2){
            Log.d(LOG_TAG, "crop:wrong oriData!!!");
            return mData;
        }
        if(mType == YUV_420SP){
            processYuvsp(oriData);
        }else if(mType == YUV_420P){
            processYuv420p(oriData);
        }
        return mData;
    }
    
    private void processYuvsp(byte[] oriData){
        //copy y;
        int index = 0;
        int start = mCropLeft + mWidth * mCropTop;
        int end = mWidth * (mCropTop + mCropHeight);
        int oriStep = mWidth;
        int newstep = mCropWidth;
        index = copy(oriData, start, end, oriStep, newstep, index);
        
        //copy uv
        start = mYLenght + mWidth * mCropTop / 2 + mCropLeft;
        end = mYLenght + mWidth * (mCropTop + mCropHeight) / 2;
        oriStep = mWidth;
        newstep = mCropWidth;
        copy(oriData, start, end, oriStep, newstep, index);
    }
    
    private void processYuv420p(byte[] oriData){
        int index = 0;
        int start = mCropLeft + mCropTop * mWidth;
        int end = mWidth * (mCropTop + mCropHeight);
        int oriStep = mWidth;
        int newstep = mCropWidth;
        //copy y;
        index = copy(oriData, start, end, oriStep, newstep, index);
        
        //copy u
        start = mYLenght + (mWidth * mCropTop / 4 + mCropLeft / 2) ;
        end = mYLenght + mWidth * (mCropTop + mCropHeight) / 4;
        oriStep = mWidth / 2;
        newstep = mCropWidth / 2;
        index = copy(oriData, start, end, oriStep, newstep, index);

        //copy v
        start = mYLenght / 4 * 5 + mWidth * mCropTop / 4 + mCropLeft / 2;
        end = mYLenght / 4 * 5 + mWidth * (mCropTop + mCropHeight) / 4;
        copy(oriData, start, end, oriStep, newstep, index);   
    }
    
    private int copy(byte[] oriData, int start, int end, int oriStep, int newstep, int index){
        for(int i = start; i < end; i += oriStep){ 
            System.arraycopy(oriData, i, mData, index, newstep);
            index += newstep;
        }
        return index;
    }
    
    private int roundTo16(int size, int limit){
        if(size >= limit){
            return limit;
        }
        float f = size / 16f;
        int m;
        if(f - (int)f > 0.5f){
            m = ((int)(f + 0.5)) * 16;
        }else{
            m = (int)f * 16;
        }
        return m < 16 ? 16 : m;
    }
    
}
