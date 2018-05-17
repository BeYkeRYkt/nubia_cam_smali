package cn.nubia.videogenerator.common;

import java.nio.ByteBuffer;
import android.media.MediaCodec;

public interface DecoderDataListener {
	public void onDecoderDataCopy(ByteBuffer previewData,
			MediaCodec.BufferInfo bufferInfo);
	public boolean isBufferUpperLimit(int bufferCount);
}
