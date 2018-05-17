package com.loc;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

public class cb {
    private long f357b;
    private ByteArrayInputStream bjn;
    private boolean bjo = false;
    private RandomAccessFile bjp = null;
    private boolean bjq = false;
    private final byte[] bjr = new byte[8];
    private C1235H bjs;
    private String f358h = null;

    public cb(File file, C1235H c1235h) {
        if (c1235h != null) {
            if (!c1235h.f117a) {
                this.bjp = new RandomAccessFile(file, "r");
                this.bjo = true;
            } else {
                byte[] a = C1253X.m130a(file);
                this.bjn = new ByteArrayInputStream(a);
                this.f357b = (long) a.length;
                this.bjo = false;
                this.f358h = file.getAbsolutePath();
            }
            this.bjs = c1235h;
        }
    }

    private void m463h() {
        if (this.bjq) {
            throw new IOException("file closed");
        }
    }

    public void m464a(long j) {
        Object obj = null;
        if (j >= 0) {
            obj = 1;
        }
        if (obj == null) {
            throw new IOException("offset < 0: " + j);
        }
        m463h();
        if (this.bjo) {
            this.bjp.seek(j);
            return;
        }
        this.bjn.reset();
        this.bjn.skip(j);
    }

    public boolean m465a() {
        return this.bjs != null ? this.bjs.f117a : false;
    }

    public void m466b() {
        synchronized (this) {
            if (this.bjo) {
                if (this.bjp != null) {
                    this.bjp.close();
                    this.bjp = null;
                }
            } else if (this.bjn != null) {
                this.bjn.close();
                this.bjn = null;
            }
            this.bjq = true;
        }
    }

    public final long m467c() {
        m463h();
        if (this.bjo) {
            return this.bjp.readLong();
        }
        this.bjn.read(this.bjr);
        return C1253X.m133b(this.bjr);
    }

    public final int m468d() {
        m463h();
        if (this.bjo) {
            return this.bjp.readUnsignedShort();
        }
        this.bjn.read(this.bjr, 0, 2);
        return C1253X.bxg(this.bjr);
    }

    public final int m469e() {
        m463h();
        if (this.bjo) {
            return this.bjp.readInt();
        }
        this.bjn.read(this.bjr, 0, 4);
        return C1253X.bxh(this.bjr);
    }

    public final int m470f() {
        m463h();
        return !this.bjo ? this.bjn.read() : this.bjp.readUnsignedByte();
    }

    protected void finalize() {
        m466b();
        super.finalize();
    }

    public long m471g() {
        if (!this.bjq) {
            return !this.bjo ? this.f357b : this.bjp.length();
        } else {
            throw new IOException("file closed");
        }
    }
}
