package com.loc;

import android.text.TextUtils;
import java.util.zip.CRC32;

public class C1273t {
    public String f493a = "1";
    public short f494b = (short) 0;
    public String bdA = null;
    public String bdB = null;
    public String bdC = null;
    public String bdD = null;
    public String bdE = null;
    public String bdF = null;
    public String bdG = null;
    public String bdH = null;
    public String bdI = null;
    public String bdJ = null;
    public String bdK = null;
    public byte[] bdL = null;
    public String bdz = null;
    public String f495c = null;
    public String f496d = null;
    public String f497e = null;
    public String f498f = null;
    public String f499g = null;
    public String f500h = null;
    public String f501i = null;
    public String f502j = null;
    public String f503k = null;
    public String f504l = null;
    public String f505m = null;
    public String f506n = null;
    public String f507o = null;
    public String f508p = null;
    public String f509q = null;
    public String f510r = null;
    public String f511s = null;
    public String f512t = null;

    private byte[] m579b(String str) {
        int i = 0;
        String[] split = str.split(":");
        byte[] bArr = new byte[6];
        if (split == null || split.length != 6) {
            try {
                split = new String[6];
                for (int i2 = 0; i2 < split.length; i2++) {
                    split[i2] = "0";
                }
            } catch (Throwable th) {
                bx.bBw(th, "Req", "getMacBa " + str);
                return m579b("00:00:00:00:00:00");
            }
        }
        while (i < split.length) {
            if (split[i].length() > 2) {
                split[i] = split[i].substring(0, 2);
            }
            bArr[i] = (byte) ((byte) Integer.parseInt(split[i], 16));
            i++;
        }
        return bArr;
    }

    private String bwh(String str, int i) {
        String[] split = this.bdG.split("\\*")[i].split(",");
        return !str.equals("lac") ? !str.equals("cellid") ? !str.equals("signal") ? null : split[2] : split[1] : split[0];
    }

    public static void bwi(byte[] bArr, int i) {
    }

    public String m580a(String str) {
        if (!this.bdF.contains(str + ">")) {
            return "0";
        }
        int indexOf = this.bdF.indexOf(str + ">");
        return this.bdF.substring((indexOf + str.length()) + 1, this.bdF.indexOf("</" + str));
    }

    public byte[] m581a() {
        Object bxl;
        m582b();
        int i = 3072;
        if (this.bdL != null) {
            i = (this.bdL.length + 1) + 3072;
        }
        Object obj = new byte[i];
        obj[0] = (byte) Byte.parseByte(this.f493a);
        Object bxm = C1253X.bxm(this.f494b);
        System.arraycopy(bxm, 0, obj, 1, bxm.length);
        int length = bxm.length + 1;
        try {
            bxm = this.f495c.getBytes("GBK");
            obj[length] = (byte) ((byte) bxm.length);
            length++;
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            length += bxm.length;
        } catch (Throwable th) {
            bx.bBw(th, "Req", "buildV4Dot2");
            obj[length] = null;
            length++;
        }
        try {
            bxm = this.f496d.getBytes("GBK");
            obj[length] = (byte) ((byte) bxm.length);
            length++;
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            length += bxm.length;
        } catch (Throwable th2) {
            bx.bBw(th2, "Req", "buildV4Dot21");
            obj[length] = null;
            length++;
        }
        try {
            bxm = this.f507o.getBytes("GBK");
            obj[length] = (byte) ((byte) bxm.length);
            length++;
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            length += bxm.length;
        } catch (Throwable th22) {
            bx.bBw(th22, "Req", "buildV4Dot22");
            obj[length] = null;
            length++;
        }
        try {
            bxm = this.f497e.getBytes("GBK");
            obj[length] = (byte) ((byte) bxm.length);
            length++;
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            length += bxm.length;
        } catch (Throwable th222) {
            bx.bBw(th222, "Req", "buildV4Dot23");
            obj[length] = null;
            length++;
        }
        try {
            bxm = this.f498f.getBytes("GBK");
            obj[length] = (byte) ((byte) bxm.length);
            length++;
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            length += bxm.length;
        } catch (Throwable th2222) {
            bx.bBw(th2222, "Req", "buildV4Dot24");
            obj[length] = null;
            length++;
        }
        try {
            bxm = this.f499g.getBytes("GBK");
            obj[length] = (byte) ((byte) bxm.length);
            length++;
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            length += bxm.length;
        } catch (Throwable th22222) {
            bx.bBw(th22222, "Req", "buildV4Dot25");
            obj[length] = null;
            length++;
        }
        try {
            bxm = this.bdz.getBytes("GBK");
            obj[length] = (byte) ((byte) bxm.length);
            length++;
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            length += bxm.length;
        } catch (Throwable th222222) {
            bx.bBw(th222222, "Req", "buildV4Dot26");
            obj[length] = null;
            length++;
        }
        try {
            bxm = this.f500h.getBytes("GBK");
            obj[length] = (byte) ((byte) bxm.length);
            length++;
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            length += bxm.length;
        } catch (Throwable th2222222) {
            bx.bBw(th2222222, "Req", "buildV4Dot27");
            obj[length] = null;
            length++;
        }
        try {
            bxm = this.f508p.getBytes("GBK");
            obj[length] = (byte) ((byte) bxm.length);
            length++;
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            length += bxm.length;
        } catch (Throwable th22222222) {
            bx.bBw(th22222222, "Req", "buildV4Dot28");
            obj[length] = null;
            length++;
        }
        try {
            bxm = this.f509q.getBytes("GBK");
            obj[length] = (byte) ((byte) bxm.length);
            length++;
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            length += bxm.length;
        } catch (Throwable th222222222) {
            bx.bBw(th222222222, "Req", "buildV4Dot29");
            obj[length] = null;
            length++;
        }
        try {
            if (TextUtils.isEmpty(this.f512t)) {
                obj[length] = (byte) 0;
                i = length + 1;
            } else {
                bxm = m579b(this.f512t);
                obj[length] = (byte) ((byte) bxm.length);
                length++;
                System.arraycopy(bxm, 0, obj, length, bxm.length);
                i = bxm.length + length;
            }
            length = i;
        } catch (Throwable th2222222222) {
            bx.bBw(th2222222222, "Req", "buildV4Dot219");
            obj[length] = null;
            length++;
        }
        try {
            bxm = this.bdA.getBytes("GBK");
            obj[length] = (byte) ((byte) bxm.length);
            length++;
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            length += bxm.length;
        } catch (Throwable th22222222222) {
            bx.bBw(th22222222222, "Req", "buildV4Dot211");
            obj[length] = null;
            length++;
        }
        try {
            bxm = this.bdB.getBytes("GBK");
            obj[length] = (byte) ((byte) bxm.length);
            length++;
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            length += bxm.length;
        } catch (Throwable th222222222222) {
            bx.bBw(th222222222222, "Req", "buildV4Dot212");
            obj[length] = null;
            length++;
        }
        try {
            bxm = this.bdC.getBytes("GBK");
            obj[length] = (byte) ((byte) bxm.length);
            length++;
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            i = bxm.length + length;
        } catch (Throwable th2222222222222) {
            bx.bBw(th2222222222222, "Req", "buildV4Dot213");
            obj[length] = null;
            i = length + 1;
        }
        obj[i] = (byte) Byte.parseByte(this.bdD);
        i++;
        obj[i] = (byte) Byte.parseByte(this.f502j);
        i++;
        obj[i] = (byte) Byte.parseByte(this.bdE);
        i++;
        if (this.bdE.equals("1")) {
            bxl = C1253X.bxl(m580a("mcc"));
            System.arraycopy(bxl, 0, obj, i, bxl.length);
            i += bxl.length;
            bxl = C1253X.bxl(m580a("mnc"));
            System.arraycopy(bxl, 0, obj, i, bxl.length);
            i += bxl.length;
            bxl = C1253X.bxl(m580a("lac"));
            System.arraycopy(bxl, 0, obj, i, bxl.length);
            i += bxl.length;
            bxl = C1253X.bxq(m580a("cellid"));
            System.arraycopy(bxl, 0, obj, i, bxl.length);
            length = bxl.length + i;
            i = Integer.parseInt(m580a("signal"));
            if (i > 127) {
                i = 0;
            }
            obj[length] = (byte) ((byte) i);
            i = length + 1;
            if (this.bdG.length() != 0) {
                int length2 = this.bdG.split("\\*").length;
                obj[i] = (byte) ((byte) length2);
                i++;
                length = 0;
                while (length < length2) {
                    Object bxl2 = C1253X.bxl(bwh("lac", length));
                    System.arraycopy(bxl2, 0, obj, i, bxl2.length);
                    i += bxl2.length;
                    bxl2 = C1253X.bxq(bwh("cellid", length));
                    System.arraycopy(bxl2, 0, obj, i, bxl2.length);
                    int length3 = bxl2.length + i;
                    i = Integer.parseInt(bwh("signal", length));
                    if (i > 127) {
                        i = 0;
                    }
                    obj[length3] = (byte) ((byte) i);
                    length++;
                    i = length3 + 1;
                }
            } else {
                obj[i] = null;
                i++;
            }
        } else if (this.bdE.equals("2")) {
            bxl = C1253X.bxl(m580a("mcc"));
            System.arraycopy(bxl, 0, obj, i, bxl.length);
            i += bxl.length;
            bxl = C1253X.bxl(m580a("sid"));
            System.arraycopy(bxl, 0, obj, i, bxl.length);
            i += bxl.length;
            bxl = C1253X.bxl(m580a("nid"));
            System.arraycopy(bxl, 0, obj, i, bxl.length);
            i += bxl.length;
            bxl = C1253X.bxl(m580a("bid"));
            System.arraycopy(bxl, 0, obj, i, bxl.length);
            i += bxl.length;
            bxl = C1253X.bxq(m580a("lon"));
            System.arraycopy(bxl, 0, obj, i, bxl.length);
            i += bxl.length;
            bxl = C1253X.bxq(m580a("lat"));
            System.arraycopy(bxl, 0, obj, i, bxl.length);
            length = bxl.length + i;
            i = Integer.parseInt(m580a("signal"));
            if (i > 127) {
                i = 0;
            }
            obj[length] = (byte) ((byte) i);
            i = length + 1;
            obj[i] = null;
            i++;
        }
        if (this.bdH.length() != 0) {
            String[] split;
            obj[i] = 1;
            length = i + 1;
            try {
                split = this.bdH.split(",");
                bxm = m579b(split[0]);
                System.arraycopy(bxm, 0, obj, length, bxm.length);
                length += bxm.length;
                bxm = split[2].getBytes("GBK");
                obj[length] = (byte) ((byte) bxm.length);
                length++;
                System.arraycopy(bxm, 0, obj, length, bxm.length);
                length += bxm.length;
            } catch (Throwable th22222222222222) {
                bx.bBw(th22222222222222, "Req", "buildV4Dot216");
                bxm = m579b("00:00:00:00:00:00");
                System.arraycopy(bxm, 0, obj, length, bxm.length);
                i = bxm.length + length;
                obj[i] = null;
                i++;
                obj[i] = (byte) Byte.parseByte("0");
            }
            i = Integer.parseInt(split[1]);
            if (i > 127) {
                i = 0;
            }
            obj[length] = (byte) Byte.parseByte(String.valueOf(i));
            i = length + 1;
        } else {
            obj[i] = null;
            i++;
        }
        String[] split2 = this.bdI.split("\\*");
        if (TextUtils.isEmpty(this.bdI) || split2.length == 0) {
            obj[i] = null;
            length = i + 1;
        } else {
            obj[i] = (byte) ((byte) split2.length);
            length = i + 1;
            for (String split3 : split2) {
                String[] split4 = split3.split(",");
                try {
                    bxl2 = m579b(split4[0]);
                } catch (Throwable th3) {
                    bx.bBw(th3, "Req", "buildV4Dot2110");
                    bxl2 = m579b("00:00:00:00:00:00");
                }
                System.arraycopy(bxl2, 0, obj, length, bxl2.length);
                length3 = bxl2.length + length;
                try {
                    bxl = split4[2].getBytes("GBK");
                    obj[length3] = (byte) ((byte) bxl.length);
                    length3++;
                    System.arraycopy(bxl, 0, obj, length3, bxl.length);
                    length = bxl.length + length3;
                } catch (Throwable th4) {
                    bx.bBw(th4, "Req", "buildV4Dot217");
                    obj[length3] = null;
                    length = length3 + 1;
                }
                length3 = Integer.parseInt(split4[1]);
                if (length3 > 127) {
                    length3 = 0;
                }
                obj[length] = (byte) Byte.parseByte(String.valueOf(length3));
                length++;
            }
            bxm = C1253X.bxm(Integer.parseInt(this.bdJ));
            System.arraycopy(bxm, 0, obj, length, bxm.length);
            length += bxm.length;
        }
        try {
            bxm = this.bdK.getBytes("GBK");
            if (bxm.length > 127) {
                bxm = null;
            }
            CRC32 crc32;
            Object obj2;
            if (bxm != null) {
                obj[length] = (byte) ((byte) bxm.length);
                length++;
                System.arraycopy(bxm, 0, obj, length, bxm.length);
                i = bxm.length + length;
                length = this.bdL != null ? 0 : this.bdL.length;
                bxl2 = C1253X.bxm(length);
                System.arraycopy(bxl2, 0, obj, i, bxl2.length);
                i += bxl2.length;
                if (length > 0) {
                    System.arraycopy(this.bdL, 0, obj, i, this.bdL.length);
                    i += this.bdL.length;
                }
                bxl = new byte[i];
                System.arraycopy(obj, 0, bxl, 0, i);
                crc32 = new CRC32();
                crc32.update(bxl);
                bxl2 = C1253X.m129a(crc32.getValue());
                obj2 = new byte[(bxl2.length + i)];
                System.arraycopy(bxl, 0, obj2, 0, i);
                System.arraycopy(bxl2, 0, obj2, i, bxl2.length);
                i = bxl2.length;
                C1273t.bwi(obj2, 0);
                return obj2;
            }
            obj[length] = (byte) 0;
            i = length + 1;
            if (this.bdL != null) {
            }
            bxl2 = C1253X.bxm(length);
            System.arraycopy(bxl2, 0, obj, i, bxl2.length);
            i += bxl2.length;
            if (length > 0) {
                System.arraycopy(this.bdL, 0, obj, i, this.bdL.length);
                i += this.bdL.length;
            }
            bxl = new byte[i];
            System.arraycopy(obj, 0, bxl, 0, i);
            crc32 = new CRC32();
            crc32.update(bxl);
            bxl2 = C1253X.m129a(crc32.getValue());
            obj2 = new byte[(bxl2.length + i)];
            System.arraycopy(bxl, 0, obj2, 0, i);
            System.arraycopy(bxl2, 0, obj2, i, bxl2.length);
            i = bxl2.length;
            C1273t.bwi(obj2, 0);
            return obj2;
        } catch (Throwable th222222222222222) {
            bx.bBw(th222222222222222, "Req", "buildV4Dot218");
            obj[length] = null;
        }
    }

    public void m582b() {
        String str;
        if (TextUtils.isEmpty(this.f493a)) {
            this.f493a = "";
        }
        if (TextUtils.isEmpty(this.f495c)) {
            this.f495c = "";
        }
        if (TextUtils.isEmpty(this.f496d)) {
            this.f496d = "";
        }
        if (TextUtils.isEmpty(this.f497e)) {
            this.f497e = "";
        }
        if (TextUtils.isEmpty(this.f498f)) {
            this.f498f = "";
        }
        if (TextUtils.isEmpty(this.f499g)) {
            this.f499g = "";
        }
        if (TextUtils.isEmpty(this.f500h)) {
            this.f500h = "";
        }
        if (TextUtils.isEmpty(this.f501i)) {
            this.f501i = "";
        }
        if (TextUtils.isEmpty(this.f502j)) {
            str = "0";
            this.f502j = str;
        } else if (!(this.f502j.equals("1") || this.f502j.equals("2"))) {
            str = "0";
            this.f502j = str;
        }
        if (TextUtils.isEmpty(this.f503k)) {
            str = "0";
            this.f503k = str;
        } else if (!(this.f503k.equals("0") || this.f503k.equals("1"))) {
            str = "0";
            this.f503k = str;
        }
        if (TextUtils.isEmpty(this.f504l)) {
            this.f504l = "";
        }
        if (TextUtils.isEmpty(this.f505m)) {
            this.f505m = "";
        }
        if (TextUtils.isEmpty(this.f506n)) {
            this.f506n = "";
        }
        if (TextUtils.isEmpty(this.f507o)) {
            this.f507o = "";
        }
        if (TextUtils.isEmpty(this.f508p)) {
            this.f508p = "";
        }
        if (TextUtils.isEmpty(this.f509q)) {
            this.f509q = "";
        }
        if (TextUtils.isEmpty(this.f510r)) {
            this.f510r = "";
        }
        if (TextUtils.isEmpty(this.f511s)) {
            this.f511s = "";
        }
        if (TextUtils.isEmpty(this.f512t)) {
            this.f512t = "";
        }
        if (TextUtils.isEmpty(this.bdz)) {
            this.bdz = "";
        }
        if (TextUtils.isEmpty(this.bdA)) {
            this.bdA = "";
        }
        if (TextUtils.isEmpty(this.bdB)) {
            this.bdB = "";
        }
        if (TextUtils.isEmpty(this.bdC)) {
            this.bdC = "";
        }
        if (TextUtils.isEmpty(this.bdD)) {
            str = "0";
            this.bdD = str;
        } else if (!(this.bdD.equals("1") || this.bdD.equals("2"))) {
            str = "0";
            this.bdD = str;
        }
        if (TextUtils.isEmpty(this.bdE)) {
            str = "0";
            this.bdE = str;
        } else if (!(this.bdE.equals("1") || this.bdE.equals("2"))) {
            str = "0";
            this.bdE = str;
        }
        if (TextUtils.isEmpty(this.bdF)) {
            this.bdF = "";
        }
        if (TextUtils.isEmpty(this.bdG)) {
            this.bdG = "";
        }
        if (TextUtils.isEmpty(this.bdH)) {
            this.bdH = "";
        }
        if (TextUtils.isEmpty(this.bdI)) {
            this.bdI = "";
        }
        if (TextUtils.isEmpty(this.bdJ)) {
            this.bdJ = "";
        }
        if (TextUtils.isEmpty(this.bdK)) {
            this.bdK = "";
        }
        if (this.bdL == null) {
            this.bdL = new byte[0];
        }
    }
}
