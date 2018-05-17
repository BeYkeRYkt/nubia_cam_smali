package com.loc;

import java.io.DataOutputStream;
import java.io.Serializable;
import java.util.ArrayList;

class db implements Serializable {
    protected short f432a = (short) 0;
    protected int f433b = 0;
    protected byte f434c = (byte) 0;
    protected byte f435d = (byte) 0;
    protected ArrayList f436e = new ArrayList();
    private byte f437f = (byte) 2;

    db() {
    }

    protected Boolean bvA(DataOutputStream dataOutputStream) {
        Boolean valueOf = Boolean.valueOf(false);
        try {
            dataOutputStream.writeByte(this.f437f);
            dataOutputStream.writeShort(this.f432a);
            dataOutputStream.writeInt(this.f433b);
            dataOutputStream.writeByte(this.f434c);
            dataOutputStream.writeByte(this.f435d);
            for (byte b = (byte) 0; b < this.f435d; b++) {
                dataOutputStream.writeShort(((cs) this.f436e.get(b)).f409a);
                dataOutputStream.writeInt(((cs) this.f436e.get(b)).f410b);
                dataOutputStream.writeByte(((cs) this.f436e.get(b)).f411c);
            }
            return Boolean.valueOf(true);
        } catch (Throwable th) {
            bx.bBw(th, "GTWData", "toBinary");
            return valueOf;
        }
    }
}
