package com.android.common.exif;

import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

class C0522n extends FilterInputStream {
    static final /* synthetic */ boolean -assertionsDisabled = (!C0522n.class.desiredAssertionStatus());
    private final byte[] BT = new byte[8];
    private final ByteBuffer BU = ByteBuffer.wrap(this.BT);
    private int BV = 0;

    protected C0522n(InputStream inputStream) {
        super(inputStream);
    }

    public int BJ() {
        return this.BV;
    }

    public int read(byte[] bArr) {
        int i = 0;
        int read = this.in.read(bArr);
        int i2 = this.BV;
        if (read >= 0) {
            i = read;
        }
        this.BV = i + i2;
        return read;
    }

    public int read(byte[] bArr, int i, int i2) {
        int i3 = 0;
        int read = this.in.read(bArr, i, i2);
        int i4 = this.BV;
        if (read >= 0) {
            i3 = read;
        }
        this.BV = i3 + i4;
        return read;
    }

    public int read() {
        int i = 0;
        int read = this.in.read();
        int i2 = this.BV;
        if (read >= 0) {
            i = 1;
        }
        this.BV = i + i2;
        return read;
    }

    public long skip(long j) {
        long skip = this.in.skip(j);
        this.BV = (int) (((long) this.BV) + skip);
        return skip;
    }

    public void BT(long j) {
        if (skip(j) != j) {
            throw new EOFException();
        }
    }

    public void BL(long j) {
        long j2 = j - ((long) this.BV);
        if (!-assertionsDisabled) {
            if ((j2 >= 0 ? 1 : null) == null) {
                throw new AssertionError();
            }
        }
        BT(j2);
    }

    public void BS(byte[] bArr, int i, int i2) {
        if (read(bArr, i, i2) != i2) {
            throw new EOFException();
        }
    }

    public void BR(byte[] bArr) {
        BS(bArr, 0, bArr.length);
    }

    public void BN(ByteOrder byteOrder) {
        this.BU.order(byteOrder);
    }

    public ByteOrder BQ() {
        return this.BU.order();
    }

    public short BM() {
        BS(this.BT, 0, 2);
        this.BU.rewind();
        return this.BU.getShort();
    }

    public int BK() {
        return BM() & 65535;
    }

    public int BO() {
        BS(this.BT, 0, 4);
        this.BU.rewind();
        return this.BU.getInt();
    }

    public long BI() {
        return ((long) BO()) & 4294967295L;
    }

    public String BP(int i, Charset charset) {
        byte[] bArr = new byte[i];
        BR(bArr);
        return new String(bArr, charset);
    }
}
