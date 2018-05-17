package com.loc;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;

public class bK {
    protected ArrayList f263b;
    protected File bhM;
    protected int[] bhN;
    protected boolean f264d = false;

    protected bK(File file, ArrayList arrayList, int[] iArr) {
        this.bhM = file;
        this.f263b = arrayList;
        this.bhN = iArr;
    }

    public void m312a(boolean z) {
        this.f264d = z;
    }

    public byte[] m313a() {
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            Iterator it = this.f263b.iterator();
            while (it.hasNext()) {
                byte[] bArr = (byte[]) it.next();
                try {
                    dataOutputStream.writeInt(bArr.length);
                    dataOutputStream.write(bArr);
                } catch (Throwable th) {
                }
            }
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                    if (dataOutputStream != null) {
                        dataOutputStream.close();
                    }
                } catch (Throwable th2) {
                }
            }
        } catch (Throwable th3) {
            bx.bBw(th3, "WrapData", "getReport");
        }
        return byteArrayOutputStream.toByteArray();
    }

    protected boolean m314b() {
        return this.f264d;
    }

    protected int m315c() {
        Throwable th;
        int i;
        try {
            if (this.f263b == null) {
                return 0;
            }
            int i2 = 0;
            i = 0;
            while (i2 < this.f263b.size()) {
                try {
                    i += this.f263b.get(i2) == null ? 0 : ((byte[]) this.f263b.get(i2)).length;
                    i2++;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            return i;
        } catch (Throwable th3) {
            th = th3;
            i = 0;
            bx.bBw(th, "WrapData", "getDataLength");
            return i;
        }
    }
}
