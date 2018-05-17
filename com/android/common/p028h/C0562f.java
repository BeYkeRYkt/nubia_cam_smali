package com.android.common.p028h;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.database.Cursor;
import android.database.sqlite.SQLiteDiskIOException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Debug;
import android.provider.MediaStore.Images;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video;
import android.provider.MediaStore.Video.Thumbnails;
import com.android.common.C0299a;
import com.android.common.C0616j;
import com.p010a.C0090a;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;

public class C0562f {
    private static Object Yu = new Object();
    public static String Yv = "";
    private Bitmap Yr;
    private boolean Ys = false;
    private Uri Yt;

    private C0562f(Uri uri, Bitmap bitmap, int i) {
        this.Yt = uri;
        this.Yr = C0299a.anY(bitmap, i);
    }

    public Uri afR() {
        return this.Yt;
    }

    public Bitmap afS() {
        return this.Yr;
    }

    public void agd(boolean z) {
        this.Ys = z;
    }

    public boolean afT() {
        return this.Ys;
    }

    public void afQ(File file) {
        Closeable bufferedOutputStream;
        Throwable e;
        Closeable closeable;
        Closeable closeable2 = null;
        if (this.Yt != null && this.Yr != null) {
            File file2 = new File(file, "last_thumb");
            synchronized (Yu) {
                Closeable fileOutputStream;
                try {
                    fileOutputStream = new FileOutputStream(file2);
                    try {
                        bufferedOutputStream = new BufferedOutputStream(fileOutputStream, 4096);
                    } catch (IOException e2) {
                        e = e2;
                        closeable = null;
                        bufferedOutputStream = fileOutputStream;
                        try {
                            C0090a.bvi("Thumbnail", "Fail to store bitmap. path=" + file2.getPath(), e);
                            C0616j.apt(bufferedOutputStream);
                            C0616j.apt(closeable2);
                            C0616j.apt(closeable);
                        } catch (Throwable th) {
                            e = th;
                            fileOutputStream = bufferedOutputStream;
                            C0616j.apt(fileOutputStream);
                            C0616j.apt(closeable2);
                            C0616j.apt(closeable);
                            throw e;
                        }
                    } catch (Throwable th2) {
                        e = th2;
                        closeable = null;
                        C0616j.apt(fileOutputStream);
                        C0616j.apt(closeable2);
                        C0616j.apt(closeable);
                        throw e;
                    }
                    try {
                        closeable = new DataOutputStream(bufferedOutputStream);
                        try {
                            closeable.writeUTF(this.Yt.toString());
                            this.Yr.compress(CompressFormat.JPEG, 90, closeable);
                            closeable.close();
                            C0616j.apt(fileOutputStream);
                            C0616j.apt(bufferedOutputStream);
                            C0616j.apt(closeable);
                        } catch (IOException e3) {
                            e = e3;
                            closeable2 = bufferedOutputStream;
                            bufferedOutputStream = fileOutputStream;
                            C0090a.bvi("Thumbnail", "Fail to store bitmap. path=" + file2.getPath(), e);
                            C0616j.apt(bufferedOutputStream);
                            C0616j.apt(closeable2);
                            C0616j.apt(closeable);
                        } catch (Throwable th3) {
                            e = th3;
                            closeable2 = bufferedOutputStream;
                            C0616j.apt(fileOutputStream);
                            C0616j.apt(closeable2);
                            C0616j.apt(closeable);
                            throw e;
                        }
                    } catch (IOException e4) {
                        e = e4;
                        closeable = null;
                        closeable2 = bufferedOutputStream;
                        bufferedOutputStream = fileOutputStream;
                        C0090a.bvi("Thumbnail", "Fail to store bitmap. path=" + file2.getPath(), e);
                        C0616j.apt(bufferedOutputStream);
                        C0616j.apt(closeable2);
                        C0616j.apt(closeable);
                    } catch (Throwable th4) {
                        e = th4;
                        closeable = null;
                        closeable2 = bufferedOutputStream;
                        C0616j.apt(fileOutputStream);
                        C0616j.apt(closeable2);
                        C0616j.apt(closeable);
                        throw e;
                    }
                } catch (IOException e5) {
                    e = e5;
                    closeable = null;
                    bufferedOutputStream = null;
                    C0090a.bvi("Thumbnail", "Fail to store bitmap. path=" + file2.getPath(), e);
                    C0616j.apt(bufferedOutputStream);
                    C0616j.apt(closeable2);
                    C0616j.apt(closeable);
                } catch (Throwable th5) {
                    e = th5;
                    closeable = null;
                    fileOutputStream = null;
                    C0616j.apt(fileOutputStream);
                    C0616j.apt(closeable2);
                    C0616j.apt(closeable);
                    throw e;
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.android.common.p028h.C0562f afO(java.io.File r9, android.content.ContentResolver r10) {
        /*
        r2 = 0;
        r0 = new java.io.File;
        r1 = "last_thumb";
        r0.<init>(r9, r1);
        r5 = Yu;
        monitor-enter(r5);
        r4 = new java.io.FileInputStream;	 Catch:{ IOException -> 0x0059, all -> 0x0082 }
        r4.<init>(r0);	 Catch:{ IOException -> 0x0059, all -> 0x0082 }
        r3 = new java.io.BufferedInputStream;	 Catch:{ IOException -> 0x009c, all -> 0x0093 }
        r1 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r3.<init>(r4, r1);	 Catch:{ IOException -> 0x009c, all -> 0x0093 }
        r1 = new java.io.DataInputStream;	 Catch:{ IOException -> 0x00a0, all -> 0x0097 }
        r1.<init>(r3);	 Catch:{ IOException -> 0x00a0, all -> 0x0097 }
        r6 = r1.readUTF();	 Catch:{ IOException -> 0x00a3 }
        r6 = android.net.Uri.parse(r6);	 Catch:{ IOException -> 0x00a3 }
        r7 = com.android.common.C0616j.aoR(r6, r10);	 Catch:{ IOException -> 0x00a3 }
        if (r7 != 0) goto L_0x003c;
    L_0x002b:
        r1.close();	 Catch:{ IOException -> 0x00a3 }
        r0.delete();	 Catch:{ IOException -> 0x00a3 }
        com.android.common.C0616j.apt(r4);	 Catch:{ all -> 0x0090 }
        com.android.common.C0616j.apt(r3);	 Catch:{ all -> 0x0090 }
        com.android.common.C0616j.apt(r1);	 Catch:{ all -> 0x0090 }
        monitor-exit(r5);
        return r2;
    L_0x003c:
        r0 = android.graphics.BitmapFactory.decodeStream(r1);	 Catch:{ IOException -> 0x00a3 }
        r1.close();	 Catch:{ IOException -> 0x00a3 }
        com.android.common.C0616j.apt(r4);	 Catch:{ all -> 0x0090 }
        com.android.common.C0616j.apt(r3);	 Catch:{ all -> 0x0090 }
        com.android.common.C0616j.apt(r1);	 Catch:{ all -> 0x0090 }
        monitor-exit(r5);
        r1 = 0;
        r0 = com.android.common.p028h.C0562f.afN(r6, r0, r1);
        if (r0 == 0) goto L_0x0058;
    L_0x0054:
        r1 = 1;
        r0.agd(r1);
    L_0x0058:
        return r0;
    L_0x0059:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        r4 = r2;
    L_0x005d:
        r6 = "Thumbnail";
        r7 = new java.lang.StringBuilder;	 Catch:{ all -> 0x009a }
        r7.<init>();	 Catch:{ all -> 0x009a }
        r8 = "Fail to load bitmap. ";
        r7 = r7.append(r8);	 Catch:{ all -> 0x009a }
        r0 = r7.append(r0);	 Catch:{ all -> 0x009a }
        r0 = r0.toString();	 Catch:{ all -> 0x009a }
        com.p010a.C0090a.bvm(r6, r0);	 Catch:{ all -> 0x009a }
        com.android.common.C0616j.apt(r4);	 Catch:{ all -> 0x0090 }
        com.android.common.C0616j.apt(r3);	 Catch:{ all -> 0x0090 }
        com.android.common.C0616j.apt(r1);	 Catch:{ all -> 0x0090 }
        monitor-exit(r5);
        return r2;
    L_0x0082:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        r4 = r2;
    L_0x0086:
        com.android.common.C0616j.apt(r4);	 Catch:{ all -> 0x0090 }
        com.android.common.C0616j.apt(r3);	 Catch:{ all -> 0x0090 }
        com.android.common.C0616j.apt(r1);	 Catch:{ all -> 0x0090 }
        throw r0;	 Catch:{ all -> 0x0090 }
    L_0x0090:
        r0 = move-exception;
        monitor-exit(r5);
        throw r0;
    L_0x0093:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        goto L_0x0086;
    L_0x0097:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0086;
    L_0x009a:
        r0 = move-exception;
        goto L_0x0086;
    L_0x009c:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        goto L_0x005d;
    L_0x00a0:
        r0 = move-exception;
        r1 = r2;
        goto L_0x005d;
    L_0x00a3:
        r0 = move-exception;
        goto L_0x005d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.h.f.afO(java.io.File, android.content.ContentResolver):com.android.common.h.f");
    }

    public static C0562f afW(String str, Uri uri, int i, int i2) {
        C0090a.bvo("Thumbnail", "PATH = " + str);
        Options options = new Options();
        options.inSampleSize = i2;
        return C0562f.afN(uri, BitmapFactory.decodeFile(str, options), i);
    }

    public static int afP(ContentResolver contentResolver, C0562f[] c0562fArr) {
        if (contentResolver == null) {
            return 0;
        }
        C0563g aga = C0562f.aga(contentResolver);
        C0563g agb = C0562f.agb(contentResolver);
        if (aga == null && agb == null) {
            return 0;
        }
        Bitmap thumbnail;
        if (aga == null || (agb != null && aga.Yw < agb.Yw)) {
            C0563g c0563g = agb;
            thumbnail = Thumbnails.getThumbnail(contentResolver, agb.Yx, 1, null);
            aga = c0563g;
        } else {
            thumbnail = Images.Thumbnails.getThumbnail(contentResolver, aga.Yx, 1, null);
        }
        C0090a.bvo("Thumbnail", "lastMedia.uri " + aga.Yy);
        if (!C0616j.aoR(aga.Yy, contentResolver)) {
            return 2;
        }
        c0562fArr[0] = C0562f.afN(aga.Yy, thumbnail, aga.orientation);
        return 1;
    }

    private static C0563g aga(ContentResolver contentResolver) {
        String str;
        Cursor query;
        Cursor cursor;
        Throwable th;
        Uri uri = Media.EXTERNAL_CONTENT_URI;
        Uri build = uri.buildUpon().appendQueryParameter("limit", "1").build();
        String[] strArr = new String[]{"_id", "orientation", "datetaken"};
        if ("".equals(Yv)) {
            str = "mime_type='image/jpeg' AND _data like '%/DCIM/Camera/%'";
        } else {
            str = Yv;
        }
        try {
            query = contentResolver.query(build, strArr, str, null, "datetaken DESC,_id DESC");
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        long j = query.getLong(0);
                        C0563g c0563g = new C0563g(j, query.getInt(1), query.getLong(2), ContentUris.withAppendedId(uri, j));
                        if (query != null) {
                            query.close();
                        }
                        return c0563g;
                    }
                } catch (SQLiteDiskIOException e) {
                    cursor = query;
                    try {
                        C0090a.bvo("Thumbnail", "sql i/o exctption in thumbnail");
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    } catch (Throwable th2) {
                        query = cursor;
                        th = th2;
                        if (query != null) {
                            query.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLiteDiskIOException e2) {
            cursor = null;
            C0090a.bvo("Thumbnail", "sql i/o exctption in thumbnail");
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th4) {
            th = th4;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
        return null;
    }

    public static C0562f afX(ContentResolver contentResolver, Uri uri) {
        Throwable e;
        Cursor cursor;
        C0562f c0562f = null;
        Cursor query;
        try {
            query = contentResolver.query(uri, new String[]{"_id", "orientation", "datetaken"}, "mime_type='image/jpeg' AND _data like '%/DCIM/Camera/%'", null, "datetaken DESC,_id DESC");
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        C0563g c0563g = new C0563g(query.getLong(0), query.getInt(1), query.getLong(2), uri);
                        Bitmap thumbnail = Images.Thumbnails.getThumbnail(contentResolver, c0563g.Yx, 1, null);
                        if (C0616j.aoR(c0563g.Yy, contentResolver)) {
                            c0562f = C0562f.afN(c0563g.Yy, thumbnail, c0563g.orientation);
                        }
                    }
                } catch (SQLiteDiskIOException e2) {
                    e = e2;
                    try {
                        C0090a.bvi("Thumbnail", "sql i/o exctption in thumbnail", e);
                        if (query != null) {
                            query.close();
                        }
                        return c0562f;
                    } catch (Throwable th) {
                        e = th;
                        if (query != null) {
                            query.close();
                        }
                        throw e;
                    }
                } catch (NullPointerException e3) {
                    e = e3;
                    cursor = query;
                    try {
                        C0090a.bvi("Thumbnail", "getThumbnailFromUri fail", e);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return c0562f;
                    } catch (Throwable th2) {
                        e = th2;
                        query = cursor;
                        if (query != null) {
                            query.close();
                        }
                        throw e;
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLiteDiskIOException e4) {
            e = e4;
            query = null;
            C0090a.bvi("Thumbnail", "sql i/o exctption in thumbnail", e);
            if (query != null) {
                query.close();
            }
            return c0562f;
        } catch (NullPointerException e5) {
            e = e5;
            cursor = null;
            C0090a.bvi("Thumbnail", "getThumbnailFromUri fail", e);
            if (cursor != null) {
                cursor.close();
            }
            return c0562f;
        } catch (Throwable th3) {
            e = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw e;
        }
        return c0562f;
    }

    private static C0563g agb(ContentResolver contentResolver) {
        String str;
        Cursor cursor;
        Throwable th;
        Uri uri = Video.Media.EXTERNAL_CONTENT_URI;
        Uri build = uri.buildUpon().appendQueryParameter("limit", "1").build();
        String[] strArr = new String[]{"_id", "_data", "datetaken"};
        if ("".equals(Yv)) {
            str = "_data like '%/DCIM/Camera/%'";
        } else {
            str = Yv;
        }
        Cursor query;
        try {
            query = contentResolver.query(build, strArr, str, null, "datetaken DESC,_id DESC");
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        C0090a.m0d("Thumbnail", "getLastVideoThumbnail: " + query.getString(1));
                        long j = query.getLong(0);
                        C0563g c0563g = new C0563g(j, 0, query.getLong(2), ContentUris.withAppendedId(uri, j));
                        if (query != null) {
                            query.close();
                        }
                        return c0563g;
                    }
                } catch (SQLiteDiskIOException e) {
                    cursor = query;
                    try {
                        C0090a.bvo("Thumbnail", "sql i/o exctption in thumbnail");
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    } catch (Throwable th2) {
                        query = cursor;
                        th = th2;
                        if (query != null) {
                            query.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    if (query != null) {
                        query.close();
                    }
                    throw th;
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLiteDiskIOException e2) {
            cursor = null;
            C0090a.bvo("Thumbnail", "sql i/o exctption in thumbnail");
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Throwable th4) {
            th = th4;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
        return null;
    }

    public static C0562f afV(byte[] bArr, int i, int i2, Uri uri) {
        Options options = new Options();
        options.inSampleSize = i2;
        try {
            return C0562f.afN(uri, BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options), i);
        } catch (OutOfMemoryError e) {
            try {
                Debug.dumpHprofData("/sdcard/camera_" + System.currentTimeMillis() + ".hprof");
            } catch (IOException e2) {
                C0090a.m1e("Thumbnail", "dumpHprofData fail " + e2.getMessage());
            }
            throw e;
        }
    }

    public static Bitmap afY(FileDescriptor fileDescriptor, int i) {
        return C0562f.afZ(null, fileDescriptor, i);
    }

    public static Bitmap afU(String str, int i) {
        return C0562f.afZ(str, null, i);
    }

    private static Bitmap afZ(String str, FileDescriptor fileDescriptor, int i) {
        Bitmap agc = C0562f.agc(str, fileDescriptor);
        if (agc == null) {
            C0090a.m1e("Thumbnail", "createVideoThumbnailBitmap fail");
            return null;
        }
        int width = agc.getWidth();
        int height = agc.getHeight();
        int min = Math.min(width, height);
        if (min > i) {
            float f = ((float) i) / ((float) min);
            agc = Bitmap.createScaledBitmap(agc, Math.round(((float) width) * f), Math.round(((float) height) * f), true);
        }
        return agc;
    }

    public static C0562f afN(Uri uri, Bitmap bitmap, int i) {
        if (uri == null) {
            C0090a.m1e("Thumbnail", "Failed to create thumbnail from null uri");
            return null;
        }
        if (bitmap == null) {
            C0090a.m1e("Thumbnail", "create thumbnail with null bitmap");
        }
        return new C0562f(uri, bitmap, i);
    }

    private static Bitmap agc(String str, FileDescriptor fileDescriptor) {
        try {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            if (str != null) {
                mediaMetadataRetriever.setDataSource(str);
            } else {
                mediaMetadataRetriever.setDataSource(fileDescriptor);
            }
            Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime();
            if (frameAtTime == null) {
                C0090a.m1e("Thumbnail", "getFrameAtTime fail: bitmap is null");
            }
            mediaMetadataRetriever.release();
            return frameAtTime;
        } catch (IllegalArgumentException e) {
            if (!(e == null || e.getMessage() == null)) {
                C0090a.m1e("Thumbnail", "getVideoFrame fail " + e.getMessage());
            }
            return null;
        }
    }
}
