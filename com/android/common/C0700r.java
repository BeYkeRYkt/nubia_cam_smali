package com.android.common;

import android.os.Environment;
import com.android.common.independentutil.IndependenceUtil;
import com.p010a.C0090a;
import java.io.File;

public class C0700r {
    public static boolean aqR() {
        return IndependenceUtil.ans();
    }

    public static String aqT() {
        if (Environment.isExternalStorageRemovable()) {
            return C0700r.aqW();
        }
        return Environment.getExternalStorageDirectory() + "/DCIM";
    }

    public static String aqV() {
        if (!C0700r.aqR()) {
            return null;
        }
        if (Environment.isExternalStorageRemovable()) {
            return Environment.getExternalStorageDirectory() + "/DCIM";
        }
        return C0700r.aqW();
    }

    private static String aqW() {
        return IndependenceUtil.ant() + "/DCIM";
    }

    public static boolean aqS() {
        String externalStorageState = Environment.getExternalStorageState(new File(C0700r.aqT()));
        C0090a.m0d("StorageHelper", "PhoneCard storage path = " + C0700r.aqT() + " state= " + externalStorageState);
        if ("mounted".equals(externalStorageState)) {
            return true;
        }
        return false;
    }

    public static boolean aqU() {
        if (!C0700r.aqR()) {
            return false;
        }
        String externalStorageState = Environment.getExternalStorageState(new File(C0700r.aqV()));
        C0090a.m0d("StorageHelper", "SdcardCard storage path = " + C0700r.aqV() + " state= " + externalStorageState);
        if ("mounted".equals(externalStorageState)) {
            return true;
        }
        return false;
    }
}
