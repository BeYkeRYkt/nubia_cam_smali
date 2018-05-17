package com.loc;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.ArrayList;

class de implements Serializable {
    protected short f456a = (short) 0;
    protected byte[] f457b = new byte[16];
    protected byte[] f458c = new byte[16];
    protected byte[] f459d = new byte[16];
    protected short f460e = (short) 0;
    protected short f461f = (short) 0;
    protected byte f462g = (byte) 0;
    protected byte[] f463h = new byte[16];
    protected byte[] f464i = new byte[32];
    protected short f465j = (short) 0;
    protected ArrayList f466k = new ArrayList();
    private byte f467l = (byte) 41;

    de() {
    }

    protected byte[] m557a() {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bAV(new DataOutputStream(byteArrayOutputStream));
        return byteArrayOutputStream.toByteArray();
    }

    protected Boolean bAV(DataOutputStream dataOutputStream) {
        Boolean valueOf = Boolean.valueOf(true);
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream2.flush();
            dataOutputStream2.write(this.f457b);
            dataOutputStream2.write(this.f458c);
            dataOutputStream2.write(this.f459d);
            dataOutputStream2.writeShort(this.f460e);
            dataOutputStream2.writeShort(this.f461f);
            dataOutputStream2.writeByte(this.f462g);
            this.f463h[15] = (byte) 0;
            dataOutputStream2.write(aw.bzc(this.f463h, this.f463h.length));
            this.f464i[31] = (byte) 0;
            dataOutputStream2.write(aw.bzc(this.f464i, this.f464i.length));
            dataOutputStream2.writeShort(this.f465j);
            for (short s = (short) 0; s < this.f465j; s = (short) (s + 1)) {
                OutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream3 = new DataOutputStream(byteArrayOutputStream2);
                dataOutputStream3.flush();
                dc dcVar = (dc) this.f466k.get(s);
                if (!(dcVar.f440c == null || dcVar.f440c.bCp(dataOutputStream3).booleanValue())) {
                    valueOf = Boolean.valueOf(false);
                }
                if (!(dcVar.f441d == null || dcVar.f441d.bvA(dataOutputStream3).booleanValue())) {
                    valueOf = Boolean.valueOf(false);
                }
                if (!(dcVar.f442e == null || dcVar.f442e.bzP(dataOutputStream3).booleanValue())) {
                    valueOf = Boolean.valueOf(false);
                }
                if (!(dcVar.f443f == null || dcVar.f443f.bFw(dataOutputStream3).booleanValue())) {
                    valueOf = Boolean.valueOf(false);
                }
                if (!(dcVar.f444g == null || dcVar.f444g.bFx(dataOutputStream3).booleanValue())) {
                    valueOf = Boolean.valueOf(false);
                }
                dcVar.f438a = (short) Integer.valueOf(byteArrayOutputStream2.size() + 4).shortValue();
                dataOutputStream2.writeShort(dcVar.f438a);
                dataOutputStream2.writeInt(dcVar.f439b);
                dataOutputStream2.write(byteArrayOutputStream2.toByteArray());
            }
            this.f456a = (short) Integer.valueOf(byteArrayOutputStream.size()).shortValue();
            dataOutputStream.writeByte(this.f467l);
            dataOutputStream.writeShort(this.f456a);
            dataOutputStream.write(byteArrayOutputStream.toByteArray());
            return Boolean.valueOf(true);
        } catch (Throwable th) {
            bx.bBw(th, "Record", "toBinary");
            return valueOf;
        }
    }
}
