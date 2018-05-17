package cn.nubia.videogenerator.codec;

import android.annotation.SuppressLint;
import android.media.AudioFormat;
import android.media.MediaCodecInfo;
import android.media.MediaFormat;

@SuppressLint("NewApi")
public class AudioParams {

    private static final String DEFAULT_AUDIO_MIME_TYPE = MediaFormat.MIMETYPE_AUDIO_AAC;
    private static final int MAX_INPUT_SIZE = 16 * 1024;
    private String mMimeType;
    private int mAudioFormat;
    private int mBitRate;
    private int mSampleRate;
    private int mChannelCount;
    private int mChannelLayout;   
   
    public AudioParams() {
        initDefault();
    }

    private void initDefault() {
        this.mMimeType = DEFAULT_AUDIO_MIME_TYPE;
        this.mAudioFormat = AudioFormat.ENCODING_PCM_16BIT; 
        this.mBitRate = 128000;
        this.mSampleRate = 44100;
        this.mChannelLayout = AudioFormat.CHANNEL_IN_MONO;
        this.mChannelCount = 1;
    }
    public void setMimeType(String mimetype){
    	this.mMimeType = mimetype;
    }
    
    public void setaudioSampleRate(int samplerate){
    	this.mSampleRate = samplerate;
    }
    
    public void setChannelCount(int count){
    	this.mChannelCount = count;
    }
    
    public void setChannelLayout(int count){
    	this.mChannelLayout = count;
    }
    
    public void setBitRate(int bitrate){
    	this.mBitRate = bitrate;
    }
    
    public String getMimeType() {
        return mMimeType;
    }
    
    public int getAudioFormat() {
        return mAudioFormat;
    }
    
    public void setAudioFormat(int audioFormat) {
        mAudioFormat = audioFormat;
    }
    
    public int getBitRate() {
        return mBitRate;
    }
    
    public int getSampleRate() {
        return mSampleRate;
    }
    
    public int getChannelCount() {
        return mChannelCount;
    }
    
    public int getChannelLayout() {
        return mChannelLayout;
    }

    public MediaFormat getMediaFormat(){
        MediaFormat format = new MediaFormat();
        format.setString(MediaFormat.KEY_MIME, mMimeType);
        if (mMimeType.equals(MediaFormat.MIMETYPE_AUDIO_AAC)) {
        	format.setInteger(MediaFormat.KEY_AAC_PROFILE,
                    MediaCodecInfo.CodecProfileLevel.AACObjectLC);
        }
        format.setInteger(MediaFormat.KEY_BIT_RATE, mBitRate);
        format.setInteger(MediaFormat.KEY_SAMPLE_RATE, mSampleRate);
        format.setInteger(MediaFormat.KEY_CHANNEL_COUNT, mChannelCount);
        format.setInteger(MediaFormat.KEY_MAX_INPUT_SIZE, MAX_INPUT_SIZE);
        return format;
    }
}
