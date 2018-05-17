package com.loc;

import java.io.DataOutputStream;
import java.io.Serializable;

class dd implements Serializable {
    protected int f445a = 0;
    protected int f446b = 0;
    protected int f447c = 0;
    protected int f448d = 0;
    protected int f449e = 0;
    protected short f450f = (short) 0;
    protected byte f451g = (byte) 0;
    protected byte f452h = (byte) 0;
    protected long f453i = 0;
    protected long f454j = 0;
    private byte f455k = (byte) 1;

    dd() {
    }

    protected Boolean bCp(DataOutputStream dataOutputStream) {
        Boolean valueOf = Boolean.valueOf(false);
        if (dataOutputStream == null) {
            return valueOf;
        }
        Boolean valueOf2;
        try {
            dataOutputStream.writeByte(this.f455k);
            dataOutputStream.writeInt(this.f445a);
            dataOutputStream.writeInt(this.f446b);
            dataOutputStream.writeInt(this.f447c);
            dataOutputStream.writeInt(this.f448d);
            dataOutputStream.writeInt(this.f449e);
            dataOutputStream.writeShort(this.f450f);
            dataOutputStream.writeByte(this.f451g);
            dataOutputStream.writeByte(this.f452h);
            dataOutputStream.writeLong(this.f453i);
            dataOutputStream.writeLong(this.f454j);
            valueOf2 = Boolean.valueOf(true);
        } catch (Throwable th) {
            bx.bBw(th, "PositionData", "toBinary");
            valueOf2 = valueOf;
        }
        return valueOf2;
    }
}
