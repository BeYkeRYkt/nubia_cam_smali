package com.loc;

import java.io.DataOutputStream;
import java.io.Serializable;

class cr implements Serializable {
    protected int f402a = 0;
    protected int f403b = 0;
    protected short f404c = (short) 0;
    protected short f405d = (short) 0;
    protected int f406e = 0;
    protected byte f407f = (byte) 0;
    private byte f408g = (byte) 4;

    cr() {
    }

    protected Boolean bzP(DataOutputStream dataOutputStream) {
        Boolean valueOf = Boolean.valueOf(false);
        try {
            dataOutputStream.writeByte(this.f408g);
            dataOutputStream.writeInt(this.f402a);
            dataOutputStream.writeInt(this.f403b);
            dataOutputStream.writeShort(this.f404c);
            dataOutputStream.writeShort(this.f405d);
            dataOutputStream.writeInt(this.f406e);
            dataOutputStream.writeByte(this.f407f);
            valueOf = Boolean.valueOf(true);
        } catch (Throwable th) {
        }
        return valueOf;
    }
}
