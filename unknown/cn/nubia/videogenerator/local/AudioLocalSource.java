package cn.nubia.videogenerator.local;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.HashMap;

import android.annotation.SuppressLint;
import android.media.MediaCodec;
import android.media.MediaExtractor;
import android.media.MediaFormat;
import android.os.SystemClock;
import android.util.Log;
import cn.nubia.videogenerator.common.DecoderDataListener;
import cn.nubia.videogenerator.common.OutputListener;

public class AudioLocalSource {

	private static final String TAG = "AudioLocalSource";
	private static final String AUDIO_AMR_NB = "audio/amr";
	private static final String AUDIO_AMR_WB = "audio/amr-wb";
	private static final String AUDIO_3GPP = "audio/3gpp";
	private static final String AUDIO_AAC = "audio/aac";
	private static final String AUDIO_M4A = "audio/mp4a-latm";
	private static final int TRIM_MODE_INNER = 0;
	private static final int TRIM_MODE_OUTER = 1;
	private static final int LOCALAUDIO = 0;
	private static final int MUTEAUDIO = 1;
	private static final int CHANGEAUDIO = 2;
	private static final HashMap<String, String> sNoNeedDecode = new HashMap<String, String>() {
		{
			put(AUDIO_AMR_NB, ".amr");
			put(AUDIO_AMR_WB, ".amr");
			put(AUDIO_3GPP, ".amr");
			put(AUDIO_M4A, ".m4a");
			put(AUDIO_AAC, ".aac");
		}
	};
	private MediaFormat mFormat = null;
	private DecoderDataListener mDecoderDataListener;
	private String mPath;
	private String mMimetype;
	private ReadTask mReadTask;	
	private boolean mIsReading = true;
	private boolean mIsNeedDecode = false;
	private OutputListener mOutputListener = null;
	private long mVideoDuration = 0;
	private long mVideoEditorDuration = 0;
	private long mStartMs = -1;
	private long mEndMs = -1;
	private int mTrimType = -1;
	private int mAudioMode = LOCALAUDIO;
	private int mSampleRate = 44100;
	private long mAudioPts = 0;	
	private long mAudiotrick = 0;
	private long mAudioHeadLength = 0;	
	
	public AudioLocalSource(String filePath, long videoDuration) throws IOException {
		mPath = filePath;		
		mVideoDuration = videoDuration;
		mReadTask = new ReadTask();
		mIsNeedDecode = isNeedToDecoder();
	}

	public void setDataListener(DecoderDataListener listener,OutputListener lsn) {
		mDecoderDataListener = listener;
		mOutputListener = lsn;
	}

	public MediaFormat getFormat() {
		return mFormat;
	}	
	
	public void setTrimType(int trimtype){
	    mTrimType = trimtype;
	}
	
	public void setAudioMode(int audioMode){
		mAudioMode = audioMode;
	}
	
	public void setSampleRate(int sampleRate){
		mSampleRate = sampleRate;
    }
	
	public void setAudioTrimParmas(long startMs,long endMs,long videoDuration){
	    	mStartMs = startMs * 1000L;
	        mEndMs = endMs * 1000L;
	        mAudiotrick =  mEndMs - mStartMs;
	        mVideoDuration = videoDuration * 1000L;	
	        if(mTrimType == TRIM_MODE_INNER){
	        	mVideoEditorDuration = mAudiotrick;
	        }else if(mTrimType == TRIM_MODE_OUTER){
	        	mVideoEditorDuration = mVideoDuration - mAudiotrick;
	        }
	}
	
	public void setAudioHeadLength(long audiotime){        
		 mAudioHeadLength = audiotime;        
         mVideoEditorDuration += audiotime;
        	
    }
	
	public void setAudioTailLength(long audiotime){
		if(mAudioMode == CHANGEAUDIO){
            mVideoEditorDuration += audiotime;
		}
    }	
	
	public void start() {
		// TODO Auto-generated method stub
		if (!mIsNeedDecode && mFormat != null) {			
			mOutputListener.onOutputFormatChanged(mFormat);
		}
		new Thread(mReadTask, "AudioLocalSource").start();
	}
	
	public void stop() {
		// TODO Auto-generated method stub		
		mIsReading = false;
	}
	
	@SuppressLint("NewApi")
	public boolean isNeedToDecoder() {
		boolean result = true;
		if (mFormat != null) {
			mMimetype = mFormat.getString(MediaFormat.KEY_MIME);
			Log.e(TAG, "isNeedToDecoer mimetype:" + mMimetype);
			if (sNoNeedDecode.containsKey(mMimetype)) {
				result = false;
			}
		}
		return result;
	}

	@SuppressLint("NewApi")
	public class ReadTask implements Runnable {
		private MediaExtractor mExtractor;
		public ReadTask() throws IOException {
			super();
			mExtractor = new MediaExtractor();
			mExtractor.setDataSource(mPath);
			selectTrack();
		}

		private void selectTrack() {
			int count = mExtractor.getTrackCount();
			for (int i = 0; i < count; i++) {
				MediaFormat format = mExtractor.getTrackFormat(i);
				if (format.getString(MediaFormat.KEY_MIME).contains("audio/")) {
					mExtractor.selectTrack(i);
					mFormat = format;
					break;
				}
			}
		}

		@Override
		public void run() {		
			ByteBuffer inputBuffer = ByteBuffer.allocate(16 * 1024);// 1M	
			ByteBuffer audioheadBuffer = ByteBuffer.allocate(16 * 1024);// 1M
			MediaCodec.BufferInfo audioheadBufferrInfo = new MediaCodec.BufferInfo();	;
			long presentationTimeUs = 0;
			long trimPresentationTimeUs = 0;
			boolean startSecondHalfTrim = false;
			if(mAudioHeadLength > 0){									
				audioheadBufferrInfo.size = mExtractor.readSampleData(audioheadBuffer, 0);
				audioheadBufferrInfo.flags = mExtractor.getSampleFlags();
				audioheadBufferrInfo.offset = 0;
			}
			if(mTrimType == TRIM_MODE_INNER && mAudioMode == LOCALAUDIO && mStartMs > 0 && !mIsNeedDecode){
				mExtractor.seekTo(mStartMs, MediaExtractor.SEEK_TO_PREVIOUS_SYNC);
			}
			while (mIsReading) {				
				if (mIsNeedDecode) {
					if(mDecoderDataListener != null && mDecoderDataListener.isBufferUpperLimit(100)){
						Thread.yield();
						SystemClock.sleep(10);						
					}
					MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();				
					bufferInfo.size = mExtractor.readSampleData(inputBuffer, 0);
					bufferInfo.presentationTimeUs = mExtractor.getSampleTime();						
					if (((mTrimType < 0) && (mAudioPts + bufferInfo.presentationTimeUs) > mVideoDuration)
							||(((mTrimType >= 0) && (mAudioPts + bufferInfo.presentationTimeUs) > mVideoEditorDuration))){
						Log.e(TAG, "need decode read EOS break");
						bufferInfo.size = 0;
						bufferInfo.flags = MediaCodec.BUFFER_FLAG_END_OF_STREAM;
						mIsReading = false;
						if (mDecoderDataListener != null) {
							mDecoderDataListener.onDecoderDataCopy(inputBuffer,bufferInfo);
						}
						break;
					}
					
					if ((bufferInfo.size < 0)) {
						mAudioPts += presentationTimeUs;
						mExtractor.seekTo(0, 0);
						continue;
					} else {
						presentationTimeUs = bufferInfo.presentationTimeUs;						
						if (mDecoderDataListener != null && mIsReading) {
							mDecoderDataListener.onDecoderDataCopy(inputBuffer,bufferInfo);
						}
					}
				} else {
					if(mOutputListener!= null && !mOutputListener.isMuxerStarted()) continue;
					if(mTrimType < 0){
						MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();				
						bufferInfo.size = mExtractor.readSampleData(inputBuffer, 0);
						bufferInfo.presentationTimeUs = mAudioPts + mExtractor.getSampleTime();					
						
						if (bufferInfo.presentationTimeUs > mVideoDuration) {
							bufferInfo.size = 0;
							if (mOutputListener != null) {
								mOutputListener.onOutputComplete(mMimetype);
							}
							mIsReading = false;
							break;
						}
						if (bufferInfo.size < 0) {
							mAudioPts = presentationTimeUs;
							mExtractor.seekTo(0, 0);
							continue;
						} else {
							presentationTimeUs = bufferInfo.presentationTimeUs;	
							if (mOutputListener != null) {
								mOutputListener.onOutputBufferUpdate(inputBuffer, bufferInfo,mMimetype);
							}					                       
						}
					}else{	
						if(mAudioHeadLength > 0 && mAudioMode == LOCALAUDIO && presentationTimeUs < mAudioHeadLength){							
							audioheadBufferrInfo.presentationTimeUs = presentationTimeUs;
							if (mMimetype.contains(AUDIO_AMR_NB) || mMimetype.contains(AUDIO_3GPP)) {								
								presentationTimeUs += 23125;								
							}else{								
								presentationTimeUs += 1024 * 1000000L / mSampleRate;
							}
							
							if (mOutputListener != null) {
								mOutputListener.onOutputBufferUpdate(audioheadBuffer, audioheadBufferrInfo,mMimetype);								
							}
							continue;
						}
						MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();				
						bufferInfo.size = mExtractor.readSampleData(inputBuffer, 0);
						bufferInfo.flags = mExtractor.getSampleFlags();
						bufferInfo.offset = 0;
						if(mAudioMode == LOCALAUDIO){
						    if(mTrimType == TRIM_MODE_INNER){							
							    if(mExtractor.getSampleTime() + mAudioPts < mStartMs){
								    bufferInfo.presentationTimeUs = mAudioHeadLength;
							    }else{
								    bufferInfo.presentationTimeUs = mAudioPts + mAudioHeadLength + mExtractor.getSampleTime() - mStartMs;
							    }
						    }else if(mTrimType == TRIM_MODE_OUTER && !startSecondHalfTrim){
							    bufferInfo.presentationTimeUs = mAudioPts + mAudioHeadLength + mExtractor.getSampleTime();							
						    }else if(mTrimType == TRIM_MODE_OUTER && startSecondHalfTrim){											
                                bufferInfo.presentationTimeUs = mAudioPts + mAudioHeadLength + mExtractor.getSampleTime() - mAudiotrick;													
						    }
						}else if(mAudioMode == CHANGEAUDIO){
							bufferInfo.presentationTimeUs = mAudioPts + mExtractor.getSampleTime();	
						}
						
						if (bufferInfo.presentationTimeUs > mVideoEditorDuration) {
							bufferInfo.size = 0;							
							Log.e(TAG, "local audio read EOS break");
							if (mOutputListener != null) {
								mOutputListener.onOutputComplete(mMimetype);
							}
							mIsReading = false;
							break;
						}
						if(mTrimType == TRIM_MODE_OUTER && mAudioMode == LOCALAUDIO && (bufferInfo.presentationTimeUs > mStartMs + mAudioHeadLength) && !startSecondHalfTrim){
							Log.e(TAG, "start second half trim");
							startSecondHalfTrim = true;
							Log.e(TAG, "mEndMs = " + mEndMs + "  " + mVideoDuration);
							if(mEndMs <= mVideoDuration){							    
							    mExtractor.seekTo(mEndMs, MediaExtractor.SEEK_TO_NEXT_SYNC);
							}
							continue;
						}						
						
						if (bufferInfo.size < 0){
							mAudioPts += trimPresentationTimeUs;
							mExtractor.seekTo(0, 0);
							continue;						
						} else {							
							if (mOutputListener != null
									&& ((bufferInfo.presentationTimeUs == 0 && trimPresentationTimeUs == 0) || 
									(bufferInfo.presentationTimeUs > mAudioPts + trimPresentationTimeUs))) {
								mOutputListener.onOutputBufferUpdate(inputBuffer, bufferInfo,mMimetype);
							}
                            trimPresentationTimeUs = bufferInfo.presentationTimeUs;
						}
					}
				}
				mExtractor.advance();
			}
			mDecoderDataListener = null;
			mOutputListener = null;
			mExtractor.release();
		}

	}
}
