package com.loc;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

public class cg implements Closeable {
    private final InputStream bkA;
    private final Charset bkB;
    private byte[] f367c;
    private int f368d;
    private int f369e;

    public cg(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(C1234G.bdY)) {
            this.bkA = inputStream;
            this.bkB = charset;
            this.f367c = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public cg(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    private void m500b() {
        int read = this.bkA.read(this.f367c, 0, this.f367c.length);
        if (read != -1) {
            this.f368d = 0;
            this.f369e = read;
            return;
        }
        throw new EOFException();
    }

    public String m501a() {
        synchronized (this.bkA) {
            if (this.f367c != null) {
                int i;
                if (this.f368d >= this.f369e) {
                    m500b();
                }
                int i2 = this.f368d;
                while (i2 != this.f369e) {
                    if (this.f367c[i2] != (byte) 10) {
                        i2++;
                    } else {
                        i = (i2 != this.f368d && this.f367c[i2 - 1] == (byte) 13) ? i2 - 1 : i2;
                        String str = new String(this.f367c, this.f368d, i - this.f368d, this.bkB.name());
                        this.f368d = i2 + 1;
                        return str;
                    }
                }
                ByteArrayOutputStream c1275v = new C1275v(this, (this.f369e - this.f368d) + 80);
                loop1:
                while (true) {
                    c1275v.write(this.f367c, this.f368d, this.f369e - this.f368d);
                    this.f369e = -1;
                    m500b();
                    i = this.f368d;
                    while (i != this.f369e) {
                        if (this.f367c[i] == (byte) 10) {
                            break loop1;
                        }
                        i++;
                    }
                }
                if (i != this.f368d) {
                    c1275v.write(this.f367c, this.f368d, i - this.f368d);
                }
                this.f368d = i + 1;
                String byteArrayOutputStream = c1275v.toString();
                return byteArrayOutputStream;
            }
            throw new IOException("LineReader is closed");
        }
    }

    public void close() {
        synchronized (this.bkA) {
            if (this.f367c != null) {
                this.f367c = null;
                this.bkA.close();
            }
        }
    }
}
