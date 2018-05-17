package cn.nubia.bigAperture;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.android.common.C0616j;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0514f;
import com.android.common.exif.C0523o;
import com.android.common.p032o.C0685a;
import com.android.common.p032o.C0689e;
import com.nubia.camera.common.Native.BufferCell;
import com.nubia.camera.common.Native.CodecDataAlgorithm;
import com.nubia.camera.common.Native.YUVAlgorithm;
import com.p010a.C0090a;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class C0027c {
    private static final boolean bod = Log.isLoggable("ApertureBackground", 3);

    public static void bKn(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
            } else if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                for (File bKn : listFiles) {
                    C0027c.bKn(bKn);
                }
                file.delete();
            }
            file.delete();
            return;
        }
        C0090a.bvo("BigApertureUtil", "file no exist");
    }

    public static boolean bKp(String str) {
        boolean z = false;
        C0523o c0523o = new C0523o();
        try {
            c0523o.BX(str);
            C0514f BY = c0523o.BY(C0523o.BX);
            if (BY != null) {
                String Ak = BY.Ak();
                if (Ak != null) {
                    z = Ak.contains("aper");
                }
                return z;
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        return false;
    }

    public static byte[] bKr(File file, int i) {
        byte[] bArr = null;
        C0027c.bKo("[perf test] parseData E: " + file.getAbsolutePath());
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            int available = fileInputStream.available();
            if (i != -1 && available < i) {
                return null;
            }
            bArr = new byte[available];
            fileInputStream.read(bArr);
            fileInputStream.close();
            C0027c.bKo("[perf test] parseData X: " + file.getAbsolutePath());
            return bArr;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static byte[] bKq(File file) {
        return C0027c.bKr(file, -1);
    }

    public static byte[] bKk(BufferCell bufferCell, int i, int i2, int i3) {
        BufferCell bufferCell2 = null;
        if (i3 != 0) {
            bufferCell2 = new BufferCell(((i * i2) * 3) / 2);
            if (i3 == 90 || i3 == 270) {
                int i4 = i;
                i = i2;
                i2 = i4;
            }
            C0027c.bKo("[perf test] roate E");
            YUVAlgorithm.btM(bufferCell, bufferCell2, i, i2, 360 - i3);
            C0027c.bKo("[perf test] roate X");
        }
        if (i3 != 0) {
            bufferCell = bufferCell2;
        }
        BufferCell btO = YUVAlgorithm.btO(bufferCell, i, i2);
        byte[] btH = CodecDataAlgorithm.btH(btO, i, i2, 95);
        if (bufferCell2 != null) {
            bufferCell2.release();
        }
        btO.release();
        return btH;
    }

    public static byte[] bKl(BufferCell bufferCell, int i, int i2, int i3) {
        BufferCell bufferCell2;
        if (i3 != 0) {
            BufferCell bufferCell3 = new BufferCell(((i * i2) * 3) / 2);
            if (i3 == 90 || i3 == 270) {
                int i4 = i;
                i = i2;
                i2 = i4;
            }
            C0027c.bKo("[perf test] roate E");
            YUVAlgorithm.btM(bufferCell, bufferCell3, i, i2, 360 - i3);
            C0027c.bKo("[perf test] roate X");
            bufferCell2 = bufferCell3;
        } else {
            bufferCell2 = null;
        }
        byte[] btD = i3 == 0 ? bufferCell.btD() : bufferCell2.btD();
        if (bufferCell2 != null) {
            bufferCell2.release();
        }
        return C0689e.amE(btD, i, i2, 100).afp;
    }

    public static C0028d bKs(Uri uri, ContentResolver contentResolver) {
        if (!C0616j.aoR(uri, contentResolver)) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        C0028d c0028d = new C0028d();
        ContentResolver contentResolver2 = contentResolver;
        Uri uri2 = uri;
        Cursor query = contentResolver2.query(uri2, new String[]{"_data", "datetaken"}, "mime_type='image/jpeg' AND _data like '%/DCIM/Camera/%'", null, "datetaken DESC,_id DESC");
        if (query != null && query.moveToFirst()) {
            c0028d.bof = query.getString(query.getColumnIndexOrThrow("_data"));
            c0028d.boe = query.getLong(query.getColumnIndexOrThrow("datetaken"));
        }
        if (query != null) {
            query.close();
        }
        C0027c.bKo(c0028d.toString());
        C0027c.bKo("parseGalleryUri: " + (System.currentTimeMillis() - currentTimeMillis));
        return c0028d;
    }

    public static C0029e bKt(byte[] bArr) {
        C0029e c0029e = new C0029e();
        C0523o c0523o = new C0523o();
        try {
            c0523o.BZ(bArr);
            Integer Ca = c0523o.Ca(C0523o.Ca);
            if (Ca != null) {
                c0029e.boi = Ca.intValue();
            }
            C0513e Cb = c0523o.Cb(C0523o.Cb);
            if (Cb != null) {
                c0029e.bog = (float) Cb.zZ();
            }
            C0513e Cb2 = c0523o.Cb(C0523o.Cc);
            if (Cb2 != null) {
                c0029e.boh = (float) Cb2.zZ();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return c0029e;
    }

    public static void bKv(String str, byte[] bArr) {
        C0685a.amA(str, bArr);
    }

    public static C0039o bKu(String str) {
        if (str == null || "".equals(str)) {
            return null;
        }
        String[] split = str.split("\\,");
        return new C0039o(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]), Integer.parseInt(split[3]));
    }

    public static byte[] bKm(byte[] bArr, int i, int i2, C0039o c0039o) {
        if (c0039o.bLR() == i && c0039o.bLS() == i2) {
            return bArr;
        }
        BufferCell bufferCell = new BufferCell(bArr);
        BufferCell bKw = BigAperAlgorithm.bKw(bufferCell, i, i2, c0039o.left, c0039o.top, c0039o.bpk, c0039o.bpl);
        bufferCell.release();
        bArr = bKw.btD();
        bKw.release();
        return bArr;
    }

    private static void bKo(String str) {
        if (bod) {
            C0090a.m0d("BigApertureUtil", str);
        }
    }
}
