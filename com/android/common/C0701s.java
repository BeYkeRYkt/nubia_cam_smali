package com.android.common;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.location.Location;
import android.net.Uri;
import android.os.StatFs;
import android.provider.MediaStore.Images.Media;
import android.util.SparseArray;
import com.android.common.appService.CameraMember;
import com.p010a.C0090a;
import java.io.File;
import java.io.FileOutputStream;

public class C0701s {
    public static final String aid = (aie + "/Camera");
    public static final String aie = C0700r.aqT();
    public static Uri aif = null;
    public static final String aig = String.valueOf(aid.toLowerCase().hashCode());
    public static String aih = C0700r.aqV();
    public static String aii = (aih + "/Camera");
    private static boolean aij = false;

    public static Uri are(ContentResolver contentResolver, byte[] bArr, String str, ContentValues contentValues) {
        if (!C0701s.aqY(bArr, str)) {
            return null;
        }
        C0701s.arl(contentResolver, contentValues);
        return aif;
    }

    public static Uri ard(ContentResolver contentResolver, ContentValues contentValues) {
        C0701s.arl(contentResolver, contentValues);
        return aif;
    }

    public static Uri arb(ContentResolver contentResolver, long j, String str, Location location, int i, byte[] bArr, int i2, int i3, int i4, String str2, SparseArray sparseArray, String str3) {
        String ark;
        Throwable e;
        if (str2 == null) {
            str2 = C0701s.arj(i4, str3);
            ark = C0701s.ark(str, i4, str3);
        } else {
            if (str3 == null || "jpeg".equalsIgnoreCase(str3)) {
                ark = ".jpg";
            } else {
                ark = ".raw";
            }
            ark = str2 + '/' + str + ark;
        }
        String str4 = ark + ".tmp";
        FileOutputStream fileOutputStream = null;
        try {
            File file = new File(str2);
            if (!file.exists()) {
                file.mkdirs();
            }
            FileOutputStream fileOutputStream2 = new FileOutputStream(str4);
            try {
                fileOutputStream2.write(bArr);
                fileOutputStream2.close();
                new File(str4).renameTo(new File(ark));
                try {
                    fileOutputStream2.close();
                } catch (Exception e2) {
                }
                if (sparseArray != null) {
                    C0616j.apW(sparseArray, ark);
                }
                ContentValues contentValues = new ContentValues(11);
                contentValues.put("datetaken", Long.valueOf(j));
                contentValues.put("_data", ark);
                contentValues.put("title", str);
                if (str3 != null) {
                    if (!str3.equalsIgnoreCase("jpeg")) {
                        contentValues.put("_display_name", str + ".raw");
                        contentValues.put("mime_type", "image/jpeg");
                        contentValues.put("orientation", Integer.valueOf(i));
                        contentValues.put("_size", Integer.valueOf(bArr.length));
                        contentValues.put("width", Integer.valueOf(i2));
                        contentValues.put("height", Integer.valueOf(i3));
                        if (location != null) {
                            contentValues.put("latitude", Double.valueOf(location.getLatitude()));
                            contentValues.put("longitude", Double.valueOf(location.getLongitude()));
                        }
                        return C0701s.arl(contentResolver, contentValues);
                    }
                }
                contentValues.put("_display_name", str + ".jpg");
                contentValues.put("mime_type", "image/jpeg");
                contentValues.put("orientation", Integer.valueOf(i));
                contentValues.put("_size", Integer.valueOf(bArr.length));
                contentValues.put("width", Integer.valueOf(i2));
                contentValues.put("height", Integer.valueOf(i3));
                if (location != null) {
                    contentValues.put("latitude", Double.valueOf(location.getLatitude()));
                    contentValues.put("longitude", Double.valueOf(location.getLongitude()));
                }
                return C0701s.arl(contentResolver, contentValues);
            } catch (Exception e3) {
                e = e3;
                fileOutputStream = fileOutputStream2;
                try {
                    C0090a.bvi("CameraStorage", "Failed to write image", e);
                    try {
                        fileOutputStream.close();
                    } catch (Exception e4) {
                    }
                    return null;
                } catch (Throwable th) {
                    e = th;
                    try {
                        fileOutputStream.close();
                    } catch (Exception e5) {
                    }
                    throw e;
                }
            } catch (Throwable th2) {
                e = th2;
                fileOutputStream = fileOutputStream2;
                fileOutputStream.close();
                throw e;
            }
        } catch (Exception e6) {
            e = e6;
            C0090a.bvi("CameraStorage", "Failed to write image", e);
            fileOutputStream.close();
            return null;
        }
    }

    public static boolean aqY(byte[] bArr, String str) {
        FileOutputStream fileOutputStream;
        Throwable e;
        try {
            fileOutputStream = new FileOutputStream(str);
            try {
                fileOutputStream.write(bArr);
                try {
                    fileOutputStream.close();
                } catch (Exception e2) {
                }
                return true;
            } catch (Exception e3) {
                e = e3;
                try {
                    C0090a.bvi("CameraStorage", "Failed to write image", e);
                    try {
                        fileOutputStream.close();
                    } catch (Exception e4) {
                    }
                    return false;
                } catch (Throwable th) {
                    e = th;
                    try {
                        fileOutputStream.close();
                    } catch (Exception e5) {
                    }
                    throw e;
                }
            }
        } catch (Exception e6) {
            e = e6;
            fileOutputStream = null;
            C0090a.bvi("CameraStorage", "Failed to write image", e);
            fileOutputStream.close();
            return false;
        } catch (Throwable th2) {
            e = th2;
            fileOutputStream = null;
            fileOutputStream.close();
            throw e;
        }
    }

    private static Uri arl(ContentResolver contentResolver, ContentValues contentValues) {
        Uri insert;
        try {
            insert = contentResolver.insert(Media.EXTERNAL_CONTENT_URI, contentValues);
        } catch (Throwable th) {
            C0090a.m1e("CameraStorage", "Failed to write MediaStore" + th);
            insert = null;
        }
        aif = insert;
        return insert;
    }

    public static String ara(int i) {
        return C0701s.ari(i, 0);
    }

    public static String ari(int i, int i2) {
        String aqq;
        if (i == -1) {
            aqq = C0636m.aqq();
        } else {
            aqq = C0701s.aqX() + CameraMember.aaq(i, i2);
        }
        File file = new File(aqq);
        if (!file.exists()) {
            file.mkdirs();
        }
        return aqq;
    }

    private static String arj(int i, String str) {
        String aqX = C0701s.aqX();
        if (str != null && !str.equalsIgnoreCase("jpeg")) {
            aqX = aqX + "/Raw";
        } else if (i == -1) {
            aqX = C0636m.aqq();
        } else {
            aqX = C0701s.aqX() + CameraMember.aar(i);
        }
        File file = new File(aqX);
        if (!file.exists()) {
            file.mkdirs();
        }
        return aqX;
    }

    public static String arc(String str, int i) {
        return C0701s.ara(i) + '/' + str + ".jpg";
    }

    private static String ark(String str, int i, String str2) {
        String str3;
        if (str2 == null || str2.equalsIgnoreCase("jpeg")) {
            str3 = ".jpg";
        } else {
            str3 = ".raw";
        }
        return C0701s.arj(i, str2) + '/' + str + str3;
    }

    public static long arh() {
        if (aij) {
            return C0701s.arg();
        }
        return C0701s.aqZ();
    }

    public static void arf() {
        File file = new File(aie, "100ANDRO");
        if (!(!file.exists() ? file.mkdirs() : true)) {
            C0090a.m1e("CameraStorage", "Failed to create " + file.getPath());
        }
    }

    public static void arn(boolean z) {
        aij = z;
    }

    public static boolean arm() {
        return aij;
    }

    public static String aqX() {
        return aij ? aii : aid;
    }

    public static long aqZ() {
        if (!C0700r.aqS()) {
            return -3;
        }
        File file = new File(aid);
        if (!file.exists()) {
            file.mkdirs();
        }
        if (file.isDirectory() && file.canWrite()) {
            try {
                StatFs statFs = new StatFs(aid);
                return ((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks());
            } catch (Throwable e) {
                C0090a.bvn("CameraStorage", "Fail to access external storage", e);
                return -1;
            }
        }
        C0090a.m1e("CameraStorage", "create " + aid + " fail");
        return -1;
    }

    private static long arg() {
        if (!C0700r.aqU()) {
            return -3;
        }
        File file = new File(aii);
        if (!file.exists()) {
            file.mkdirs();
        }
        if (!file.isDirectory() || !file.canWrite()) {
            return -1;
        }
        try {
            StatFs statFs = new StatFs(aii);
            return ((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks());
        } catch (Throwable e) {
            C0090a.bvn("CameraStorage", "Fail to access sd storage", e);
            return -1;
        }
    }
}
