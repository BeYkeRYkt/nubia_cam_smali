package com.loc;

import java.io.DataOutputStream;
import java.io.Serializable;
import java.util.ArrayList;

class dg implements Serializable {
    protected byte f468a = (byte) 0;
    protected ArrayList f469b = new ArrayList();
    private byte f470c = (byte) 3;

    dg() {
    }

    protected Boolean bFx(DataOutputStream dataOutputStream) {
        Boolean valueOf = Boolean.valueOf(false);
        try {
            dataOutputStream.writeByte(this.f470c);
            dataOutputStream.writeByte(this.f468a);
            for (int i = 0; i < this.f469b.size(); i++) {
                dh dhVar = (dh) this.f469b.get(i);
                dataOutputStream.writeByte(dhVar.f471a);
                Object obj = new byte[dhVar.f471a];
                System.arraycopy(dhVar.f472b, 0, obj, 0, dhVar.f471a >= dhVar.f472b.length ? dhVar.f472b.length : dhVar.f471a);
                dataOutputStream.write(obj);
                dataOutputStream.writeDouble(dhVar.f473c);
                dataOutputStream.writeInt(dhVar.f474d);
                dataOutputStream.writeInt(dhVar.f475e);
                dataOutputStream.writeDouble(dhVar.f476f);
                dataOutputStream.writeByte(dhVar.f477g);
                dataOutputStream.writeByte(dhVar.f478h);
                obj = new byte[dhVar.f478h];
                System.arraycopy(dhVar.f479i, 0, obj, 0, dhVar.f478h >= dhVar.f479i.length ? dhVar.f479i.length : dhVar.f478h);
                dataOutputStream.write(obj);
                dataOutputStream.writeByte(dhVar.f480j);
            }
            return Boolean.valueOf(true);
        } catch (Throwable th) {
            bx.bBw(th, "SensorData", "toBinary");
            return valueOf;
        }
    }
}
