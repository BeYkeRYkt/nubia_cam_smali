package com.loc;

import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import java.lang.reflect.Method;

public class bA {
    private static Method bhE;

    public static void bBP(Editor editor) {
        if (editor != null) {
            if (VERSION.SDK_INT < 9) {
                bBQ(editor);
            } else {
                try {
                    if (bhE == null) {
                        bhE = Editor.class.getDeclaredMethod("apply", new Class[0]);
                    }
                    bhE.invoke(editor, new Object[0]);
                } catch (Throwable th) {
                    bx.bBw(th, "SPUtil", "applySharedPreference");
                    bBQ(editor);
                }
            }
        }
    }

    private static void bBQ(Editor editor) {
        try {
            new aF(editor).execute(new Void[]{null, null, null});
        } catch (Throwable th) {
            bx.bBw(th, "SPUtil", "commit1");
        }
    }

    public static void bBR(Context context, String str, String str2, long j) {
        try {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putLong(str2, j);
            bBP(edit);
        } catch (Throwable th) {
            bx.bBw(th, "SPUtil", "setPrefsLong");
        }
    }

    public static long bBS(Context context, String str, String str2, long j) {
        try {
            j = context.getSharedPreferences(str, 0).getLong(str2, j);
        } catch (Throwable th) {
            bx.bBw(th, "SPUtil", "getPrefsLong");
        }
        return j;
    }

    public static void bBT(Context context, String str, String str2, int i) {
        try {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putInt(str2, i);
            bBP(edit);
        } catch (Throwable th) {
            bx.bBw(th, "SPUtil", "setPrefsInt");
        }
    }

    public static int bBU(Context context, String str, String str2, int i) {
        try {
            i = context.getSharedPreferences(str, 0).getInt(str2, i);
        } catch (Throwable th) {
            bx.bBw(th, "SPUtil", "getPrefsInt");
        }
        return i;
    }

    public static void bBV(Context context, String str, String str2, boolean z) {
        try {
            Editor edit = context.getSharedPreferences(str, 0).edit();
            edit.putBoolean(str2, z);
            bBP(edit);
        } catch (Throwable th) {
            bx.bBw(th, "SPUtil", "updatePrefsBoolean");
        }
    }

    public static boolean bBW(Context context, String str, String str2, boolean z) {
        try {
            z = context.getSharedPreferences(str, 0).getBoolean(str2, z);
        } catch (Throwable th) {
            bx.bBw(th, "SPUtil", "getPrefsBoolean");
        }
        return z;
    }
}
