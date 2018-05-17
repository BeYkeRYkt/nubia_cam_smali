package com.android.common.p032o;

import android.util.SparseArray;
import com.android.common.exif.C0523o;
import com.p010a.C0090a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.TimeZone;

public class C0686b {
    public static byte[] amC(byte[] bArr, SparseArray sparseArray) {
        C0523o c0523o = new C0523o();
        c0523o.Ch(C0523o.Cd, System.currentTimeMillis(), TimeZone.getDefault());
        try {
            c0523o.BZ(bArr);
        } catch (IOException e) {
            e.printStackTrace();
        }
        Collection arrayList = new ArrayList();
        for (int i = 0; i < sparseArray.size(); i++) {
            arrayList.add(c0523o.Ce(sparseArray.keyAt(i), sparseArray.valueAt(i)));
        }
        c0523o.Ci(arrayList);
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            c0523o.Cc(bArr, byteArrayOutputStream);
        } catch (Throwable e2) {
            C0090a.bvi("SaveExif", "Could not write EXIF", e2);
        }
        return byteArrayOutputStream.toByteArray();
    }
}
