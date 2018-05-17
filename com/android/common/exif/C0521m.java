package com.android.common.exif;

import java.io.InputStream;
import java.nio.ByteBuffer;

class C0521m extends InputStream {
    private ByteBuffer BS;

    public C0521m(ByteBuffer byteBuffer) {
        this.BS = byteBuffer;
    }

    public int read() {
        if (this.BS.hasRemaining()) {
            return this.BS.get() & 255;
        }
        return -1;
    }

    public int read(byte[] bArr, int i, int i2) {
        if (!this.BS.hasRemaining()) {
            return -1;
        }
        int min = Math.min(i2, this.BS.remaining());
        this.BS.get(bArr, i, min);
        return min;
    }
}
