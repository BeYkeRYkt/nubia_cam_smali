package com.android.dng;

import android.content.ContentValues;
import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.hardware.camera2.DngCreator;
import android.os.Debug;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.storagemanager.StorageManager$StorageStatusType;
import com.p010a.C0090a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;

final class C0801q implements PictureCallback {
    private long aNr = 0;
    private int aNs = 0;
    final /* synthetic */ C0785a aNt;

    C0801q(C0785a c0785a) {
        this.aNt = c0785a;
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        C0090a.m0d("MTKDngShot", "rawPictureCallbackTime = " + System.currentTimeMillis() + "ms");
        if (bArr == null) {
            C0090a.m0d("MTKDngShot", "[mRawPictureCallback] data is null ");
        } else if (this.aNt.aLM) {
            this.aNt.aLM = false;
            if (this.aNt.aLL.Ti().ama(41943040, false) != StorageManager$StorageStatusType.CAN_ADD_REQUEST) {
                try {
                    C0616j.aoW(62914560);
                } catch (OutOfMemoryError e) {
                    System.gc();
                    C0090a.bvo("MTKDngShot", "dng out of memory");
                }
                return;
            }
            bdV(bArr);
        }
    }

    private void bdV(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        OutOfMemoryError e;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            DngCreator dngCreator = new DngCreator(this.aNt.aLR, this.aNt.aLQ);
            byteArrayOutputStream = new ByteArrayOutputStream(31457280);
            try {
                dngCreator.writeByteBuffer(byteArrayOutputStream, this.aNt.aLT, ByteBuffer.wrap(bArr), 0);
                bdU(byteArrayOutputStream.toByteArray());
                if (byteArrayOutputStream != null) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (IOException e2) {
                        C0090a.m1e("MTKDngShot", "convertRawToDng outputStream close error");
                    }
                }
            } catch (IOException e3) {
                byteArrayOutputStream2 = byteArrayOutputStream;
                try {
                    C0090a.m1e("MTKDngShot", "convertRawToDng, dng write error");
                    if (byteArrayOutputStream2 != null) {
                        try {
                            byteArrayOutputStream2.close();
                        } catch (IOException e4) {
                            C0090a.m1e("MTKDngShot", "convertRawToDng outputStream close error");
                        }
                    }
                    C0090a.bvm("MTKDngShot", "convertRawToDng");
                } catch (Throwable th2) {
                    th = th2;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (IOException e5) {
                            C0090a.m1e("MTKDngShot", "convertRawToDng outputStream close error");
                        }
                    }
                    throw th;
                }
            } catch (OutOfMemoryError e6) {
                e = e6;
                try {
                    Debug.dumpHprofData("/sdcard/camera_" + System.currentTimeMillis() + ".hprof");
                } catch (IOException e7) {
                    C0090a.m1e("MTKDngShot", "dump hprof fail " + e7.getMessage());
                } catch (Throwable th3) {
                    th = th3;
                }
                throw e;
            }
        } catch (IOException e8) {
            C0090a.m1e("MTKDngShot", "convertRawToDng, dng write error");
            if (byteArrayOutputStream2 != null) {
                byteArrayOutputStream2.close();
            }
            C0090a.bvm("MTKDngShot", "convertRawToDng");
        } catch (OutOfMemoryError e9) {
            e = e9;
            byteArrayOutputStream = null;
            Debug.dumpHprofData("/sdcard/camera_" + System.currentTimeMillis() + ".hprof");
            throw e;
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            throw th;
        }
        C0090a.bvm("MTKDngShot", "convertRawToDng");
    }

    private void bdU(byte[] bArr) {
        String ara = C0701s.ara(this.aNt.aLL.TH());
        long TI = this.aNt.aLL.TI();
        String aoX = C0616j.aoX(TI, this.aNt.aLL.Tb(R.string.image_file_name_format));
        if (TI / 1000 == this.aNr / 1000) {
            this.aNs++;
            aoX = aoX + "_" + this.aNs;
        } else {
            this.aNr = TI;
            this.aNs = 0;
        }
        String str = aoX + ".dng";
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("_data", ara + "/" + str);
        this.aNt.aLL.Ti().alX(new C0786b(bArr, ara, str, contentValues, this.aNt.aLL));
    }
}
