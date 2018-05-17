package com.loc;

import java.io.File;
import java.io.RandomAccessFile;
import java.util.BitSet;

public class aT {
    protected long f178a;
    private RandomAccessFile bgo;
    private C1242N bgp;
    private File bgq = null;
    private String f179d = "";

    protected aT(C1242N c1242n) {
        this.bgp = c1242n;
    }

    protected synchronized void bAj(long j, byte[] bArr) {
        this.bgq = this.bgp.m107a(j);
        if (this.bgq != null) {
            try {
                this.bgo = new RandomAccessFile(this.bgq, "rw");
                byte[] bArr2 = new byte[this.bgp.m106a()];
                int readInt = this.bgo.read(bArr2) != -1 ? this.bgo.readInt() : 0;
                BitSet a = cw.m543a(bArr2);
                int a2 = (this.bgp.m106a() + 4) + (readInt * 1500);
                if (readInt >= 0) {
                    if (readInt <= this.bgp.m106a() * 8) {
                        this.bgo.seek((long) a2);
                        byte[] a3 = C1253X.m131a(bArr);
                        this.bgo.writeInt(a3.length);
                        this.bgo.writeLong(j);
                        this.bgo.write(a3);
                        a.set(readInt, true);
                        this.bgo.seek(0);
                        this.bgo.write(cw.bGK(a));
                        readInt++;
                        if (readInt == this.bgp.m106a() * 8) {
                            readInt = 0;
                        }
                        this.bgo.writeInt(readInt);
                        if (!this.f179d.equalsIgnoreCase(this.bgq.getName())) {
                            this.f179d = this.bgq.getName();
                        }
                        this.f178a = this.bgq.length();
                        if (this.bgo != null) {
                            try {
                                this.bgo.close();
                            } catch (Throwable th) {
                            }
                        }
                        this.bgq = null;
                        return;
                    }
                }
                this.bgo.close();
                this.bgq.delete();
                if (this.bgo != null) {
                    try {
                        this.bgo.close();
                    } catch (Throwable th2) {
                    }
                }
            } catch (Throwable th3) {
            }
        }
    }
}
