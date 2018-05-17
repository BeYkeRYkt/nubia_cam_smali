package com.loc;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
import java.util.BitSet;
import java.util.List;

public class cw {
    protected static File m542a(Context context) {
        try {
            return new File(Environment.getExternalStorageDirectory().getPath() + ("/Android/data/" + context.getPackageName() + "/files/"));
        } catch (Throwable th) {
            bx.bBw(th, "CollectorTools", "getExternalFilesDir");
            return null;
        }
    }

    protected static BitSet m543a(byte[] bArr) {
        BitSet bitSet;
        try {
            bitSet = new BitSet(bArr.length * 8);
            int i = 0;
            int i2 = 0;
            while (i < bArr.length) {
                try {
                    int i3 = i2;
                    i2 = 7;
                    while (i2 >= 0) {
                        int i4 = i3 + 1;
                        bitSet.set(i3, ((bArr[i] & (1 << i2)) >> i2) == 1);
                        i2--;
                        i3 = i4;
                    }
                    i++;
                    i2 = i3;
                } catch (Throwable th) {
                    th = th;
                }
            }
        } catch (Throwable th2) {
            Throwable th3;
            th3 = th2;
            bitSet = null;
            bx.bBw(th3, "CollectorTools", "byteArray2BitSet");
            return bitSet;
        }
        return bitSet;
    }

    protected static boolean m544a() {
        if (VERSION.SDK_INT >= 9) {
            try {
                return ((Boolean) Environment.class.getMethod("isExternalStorageRemovable", (Class[]) null).invoke(null, (Object[]) null)).booleanValue();
            } catch (Throwable th) {
                bx.bBw(th, "CollectorTools", "isExternalStorageRemovable");
            }
        }
        return true;
    }

    protected static long m545b() {
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return ((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks());
        } catch (Throwable th) {
            bx.bBw(th, "CollectorTools", "getSDCardFreeSpace");
            return 0;
        }
    }

    protected static de bGI(Location location, at atVar, int i, byte b, long j, boolean z) {
        de deVar = new de();
        if (i < 1 || i > 3 || atVar == null) {
            return null;
        }
        int i2;
        int i3;
        Object obj = (i == 1 || i == 3) ? 1 : null;
        Object obj2 = (i == 2 || i == 3) ? 1 : null;
        Object bytes = atVar.m279m().getBytes("UTF-8");
        System.arraycopy(bytes, 0, deVar.f459d, 0, bGJ(bytes.length, deVar.f459d.length));
        bytes = C1253X.m141f().getBytes("UTF-8");
        System.arraycopy(bytes, 0, deVar.f463h, 0, bGJ(bytes.length, deVar.f463h.length));
        bytes = atVar.m271e().getBytes("UTF-8");
        System.arraycopy(bytes, 0, deVar.f457b, 0, bGJ(bytes.length, deVar.f457b.length));
        bytes = atVar.m272f().getBytes("UTF-8");
        System.arraycopy(bytes, 0, deVar.f458c, 0, bGJ(bytes.length, deVar.f458c.length));
        deVar.f460e = (short) ((short) atVar.m280n());
        deVar.f461f = (short) ((short) atVar.byj());
        deVar.f462g = (byte) ((byte) atVar.byk());
        bytes = atVar.byl().getBytes("UTF-8");
        System.arraycopy(bytes, 0, deVar.f464i, 0, bGJ(bytes.length, deVar.f464i.length));
        long j2 = j / 1000;
        bytes = (location != null && atVar.m270d()) ? 1 : null;
        dc dcVar;
        if (bytes != null) {
            dcVar = new dc();
            dcVar.f439b = (int) j2;
            dd ddVar = new dd();
            ddVar.f445a = (int) (location.getLongitude() * 1000000.0d);
            ddVar.f446b = (int) (location.getLatitude() * 1000000.0d);
            ddVar.f447c = (int) location.getAltitude();
            ddVar.f448d = (int) location.getAccuracy();
            ddVar.f449e = (int) location.getSpeed();
            ddVar.f450f = (short) ((short) ((int) location.getBearing()));
            if (!Build.MODEL.equals("sdk")) {
                if (!at.m262a(atVar.byG()) || !af.f196b) {
                    ddVar.f451g = (byte) 0;
                    ddVar.f452h = (byte) b;
                    if (ddVar.f448d > 25) {
                        ddVar.f452h = (byte) 5;
                    }
                    ddVar.f453i = System.currentTimeMillis();
                    ddVar.f454j = atVar.m278l();
                    dcVar.f440c = ddVar;
                    i2 = 1;
                    deVar.f466k.add(dcVar);
                }
            }
            ddVar.f451g = (byte) 1;
            ddVar.f452h = (byte) b;
            if (ddVar.f448d > 25) {
                ddVar.f452h = (byte) 5;
            }
            ddVar.f453i = System.currentTimeMillis();
            ddVar.f454j = atVar.m278l();
            dcVar.f440c = ddVar;
            i2 = 1;
            deVar.f466k.add(dcVar);
        } else if (!z) {
            return null;
        } else {
            dcVar = new dc();
            dcVar.f439b = (int) j2;
            dg dgVar = new dg();
            dgVar.f468a = (byte) atVar.byr();
            for (byte b2 = (byte) 0; b2 < dgVar.f468a; b2++) {
                dh dhVar = new dh();
                dhVar.f471a = (byte) ((byte) atVar.bys(b2).length());
                System.arraycopy(atVar.bys(b2).getBytes("UTF-8"), 0, dhVar.f472b, 0, dhVar.f471a);
                dhVar.f473c = atVar.byt(b2);
                dhVar.f474d = atVar.byu(b2);
                dhVar.f475e = atVar.byv(b2);
                dhVar.f476f = atVar.byw(b2);
                dhVar.f477g = (byte) atVar.byx(b2);
                dhVar.f478h = (byte) ((byte) atVar.byy(b2).length());
                System.arraycopy(atVar.byy(b2).getBytes("UTF-8"), 0, dhVar.f479i, 0, dhVar.f478h);
                dhVar.f480j = (byte) atVar.byz(b2);
                dgVar.f469b.add(dhVar);
            }
            dcVar.f444g = dgVar;
            i2 = 1;
            deVar.f466k.add(dcVar);
        }
        if (!(atVar.m273g() || obj == null || z)) {
            dc dcVar2 = new dc();
            dcVar2.f439b = (int) j2;
            db dbVar = new db();
            List bym = atVar.bym(location.getSpeed());
            if (bym != null && bym.size() >= 3) {
                dbVar.f432a = (short) ((short) ((Integer) bym.get(0)).intValue());
                dbVar.f433b = ((Integer) bym.get(1)).intValue();
            }
            dbVar.f434c = (byte) atVar.m275i();
            List j3 = atVar.m276j();
            if (j3 != null) {
                dbVar.f435d = (byte) ((byte) j3.size());
                for (i3 = 0; i3 < j3.size(); i3++) {
                    cs csVar = new cs();
                    csVar.f409a = (short) ((short) ((am) j3.get(i3)).f222c);
                    csVar.f410b = ((am) j3.get(i3)).f223d;
                    csVar.f411c = (byte) ((byte) ((am) j3.get(i3)).f227j);
                    dbVar.f436e.add(csVar);
                }
            }
            dcVar2.f441d = dbVar;
            i2 = 2;
            deVar.f466k.add(dcVar2);
        }
        i3 = i2;
        if (!(!atVar.m273g() || obj == null || z)) {
            dc dcVar3 = new dc();
            dcVar3.f439b = (int) j2;
            cr crVar = new cr();
            List byn = atVar.byn(location.getSpeed());
            if (byn != null && byn.size() >= 6) {
                crVar.f402a = ((Integer) byn.get(3)).intValue();
                crVar.f403b = ((Integer) byn.get(4)).intValue();
                crVar.f404c = (short) ((short) ((Integer) byn.get(0)).intValue());
                crVar.f405d = (short) ((short) ((Integer) byn.get(1)).intValue());
                crVar.f406e = ((Integer) byn.get(2)).intValue();
                crVar.f407f = (byte) atVar.m275i();
            }
            dcVar3.f442e = crVar;
            i3++;
            deVar.f466k.add(dcVar3);
        }
        if (!(!atVar.m269c() || obj2 == null || z)) {
            dcVar2 = new dc();
            di diVar = new di();
            List byo = atVar.byo();
            dcVar2.f439b = (int) (((Long) byo.get(0)).longValue() / 1000);
            diVar.f481a = (byte) ((byte) (byo.size() - 1));
            for (int i4 = 1; i4 < byo.size(); i4++) {
                List list = (List) byo.get(i4);
                if (list != null && list.size() >= 3) {
                    dj djVar = new dj();
                    obj2 = ((String) list.get(0)).getBytes("UTF-8");
                    System.arraycopy(obj2, 0, djVar.f484a, 0, bGJ(obj2.length, djVar.f484a.length));
                    djVar.f485b = (short) ((short) ((Integer) list.get(1)).intValue());
                    bytes = ((String) list.get(2)).getBytes("UTF-8");
                    System.arraycopy(bytes, 0, djVar.f486c, 0, bGJ(bytes.length, djVar.f486c.length));
                    diVar.f482b.add(djVar);
                }
            }
            dcVar2.f443f = diVar;
            i3++;
            deVar.f466k.add(dcVar2);
        }
        deVar.f465j = (short) ((short) i3);
        return (i3 < 2 && !z) ? null : deVar;
    }

    private static int bGJ(int i, int i2) {
        return i >= i2 ? i2 : i;
    }

    protected static byte[] bGK(BitSet bitSet) {
        byte[] bArr = null;
        try {
            bArr = new byte[(bitSet.size() / 8)];
            for (int i = 0; i < bitSet.size(); i++) {
                int i2 = i / 8;
                bArr[i2] = (byte) ((byte) (((!bitSet.get(i) ? 0 : 1) << (7 - (i % 8))) | bArr[i2]));
            }
        } catch (Throwable th) {
            bx.bBw(th, "CollectorTools", "bitSet2ByteArray");
        }
        return bArr;
    }
}
