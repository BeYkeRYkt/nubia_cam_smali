package com.loc;

import java.io.DataOutputStream;
import java.io.Serializable;
import java.util.ArrayList;

class di implements Serializable {
    protected byte f481a = (byte) 0;
    protected ArrayList f482b = new ArrayList();
    private byte f483c = (byte) 8;

    di() {
    }

    protected Boolean bFw(DataOutputStream dataOutputStream) {
        Boolean valueOf = Boolean.valueOf(false);
        try {
            dataOutputStream.writeByte(this.f483c);
            dataOutputStream.writeByte(this.f481a);
            for (byte b = (byte) 0; b < this.f481a; b++) {
                dj djVar = (dj) this.f482b.get(b);
                dataOutputStream.write(djVar.f484a);
                dataOutputStream.writeShort(djVar.f485b);
                dataOutputStream.write(aw.bzc(djVar.f486c, djVar.f486c.length));
            }
            return Boolean.valueOf(true);
        } catch (Throwable th) {
            bx.bBw(th, "WifiData", "toBinary");
            return valueOf;
        }
    }
}
