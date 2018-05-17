package com.android.common.appService;

import android.os.SystemProperties;
import java.util.ArrayList;
import java.util.StringTokenizer;

public class C0301C {
    private static ArrayList aak(String str, String str2) {
        if (str == null) {
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, str2);
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreElements()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return arrayList;
    }

    private static ArrayList aaj(String str) {
        if (str == null || str.length() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : C0301C.aak(str, ",")) {
            if (str2.contains("~")) {
                ArrayList aak = C0301C.aak(str2, "~");
                arrayList.add(new C0302D((String) aak.get(0), (String) aak.get(1)));
            } else {
                arrayList.add(new C0302D(str2, str2));
            }
        }
        return arrayList;
    }

    private static NubiaHardwareFeature$JudgeState aai(String str) {
        NubiaHardwareFeature$JudgeState nubiaHardwareFeature$JudgeState = NubiaHardwareFeature$JudgeState.UNDEFINED;
        if (str == null || str.length() <= 0) {
            return nubiaHardwareFeature$JudgeState;
        }
        if (Integer.parseInt(str) == 0) {
            return NubiaHardwareFeature$JudgeState.UNSUPPROTED;
        }
        return NubiaHardwareFeature$JudgeState.SUPPORTED;
    }

    private static String aab(String str) {
        return SystemProperties.get(str, null);
    }

    public static ArrayList aac() {
        return C0301C.aaj(C0301C.aab("nubia.feature.CCT"));
    }

    public static NubiaHardwareFeature$JudgeState aaf() {
        return C0301C.aai(C0301C.aab("nubia.feature.ROI_WB"));
    }

    public static ArrayList aad() {
        return C0301C.aaj(C0301C.aab("nubia.feature.MAF"));
    }

    public static ArrayList aae() {
        return C0301C.aaj(C0301C.aab("nubia.feature.NZSL_Slowshutter"));
    }

    public static boolean aag(ArrayList arrayList) {
        if (arrayList == null) {
            return true;
        }
        boolean z;
        for (C0302D c0302d : arrayList) {
            if (!c0302d.aal().equals("0")) {
                if (c0302d.aam().equals("0")) {
                }
            }
            z = false;
        }
        z = true;
        return z;
    }

    public static boolean aah(NubiaHardwareFeature$JudgeState nubiaHardwareFeature$JudgeState) {
        if (nubiaHardwareFeature$JudgeState == NubiaHardwareFeature$JudgeState.UNDEFINED || nubiaHardwareFeature$JudgeState == NubiaHardwareFeature$JudgeState.SUPPORTED) {
            return true;
        }
        return false;
    }
}
