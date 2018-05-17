package com.android.common.exif;

import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

class C0525q extends FilterOutputStream {
    private final ByteBuffer Ev = ByteBuffer.allocate(4);

    public C0525q(OutputStream outputStream) {
        super(outputStream);
    }

    public C0525q CM(ByteOrder byteOrder) {
        this.Ev.order(byteOrder);
        return this;
    }

    public C0525q CN(short s) {
        this.Ev.rewind();
        this.Ev.putShort(s);
        this.out.write(this.Ev.array(), 0, 2);
        return this;
    }

    public C0525q CO(int i) {
        this.Ev.rewind();
        this.Ev.putInt(i);
        this.out.write(this.Ev.array());
        return this;
    }

    public C0525q CP(C0513e c0513e) {
        CO((int) c0513e.zX());
        CO((int) c0513e.zY());
        return this;
    }
}
