package com.loc;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class C1267l extends FilterOutputStream {
    final /* synthetic */ bV bdj;

    private C1267l(bV bVVar, OutputStream outputStream) {
        this.bdj = bVVar;
        super(outputStream);
    }

    public void close() {
        try {
            this.out.close();
        } catch (IOException e) {
            this.bdj.f284d = true;
        }
    }

    public void flush() {
        try {
            this.out.flush();
        } catch (IOException e) {
            this.bdj.f284d = true;
        }
    }

    public void write(int i) {
        try {
            this.out.write(i);
        } catch (IOException e) {
            this.bdj.f284d = true;
        }
    }

    public void write(byte[] bArr, int i, int i2) {
        try {
            this.out.write(bArr, i, i2);
        } catch (IOException e) {
            this.bdj.f284d = true;
        }
    }
}
