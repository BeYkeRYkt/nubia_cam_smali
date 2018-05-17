package com.android.common.effects;

import android.content.res.Resources;
import android.content.res.TypedArray;
import com.android.camera.R;
import com.p010a.C0090a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class C0507d {
    public static void fy(Resources resources) {
        if (new File("/data/nubiaeffect").exists()) {
            C0507d.fz(resources, "/data/nubiaeffect");
            return;
        }
        File file = new File("/data/data/com.android.camera/effect");
        if (!file.exists()) {
            C0507d.fA(file);
        } else if (file.isFile()) {
            file.delete();
            C0507d.fA(file);
        }
        C0507d.fz(resources, "/data/data/com.android.camera/effect");
    }

    private static void fz(Resources resources, String str) {
        String[] stringArray = resources.getStringArray(R.array.pref_camera_ztemt_fun_effect_file);
        TypedArray obtainTypedArray = resources.obtainTypedArray(R.array.pref_camera_ztemt_fun_effect_res);
        for (int i = 0; i < stringArray.length; i++) {
            File file = new File(str + "/" + stringArray[i]);
            if (!file.exists()) {
                try {
                    InputStream openRawResource = resources.openRawResource(obtainTypedArray.getResourceId(i, 0));
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    byte[] bArr = new byte[1024000];
                    while (true) {
                        int read = openRawResource.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    openRawResource.close();
                    fileOutputStream.close();
                    file.setReadable(true, false);
                    file.setWritable(true, false);
                    file.setExecutable(true, false);
                } catch (FileNotFoundException e) {
                    C0090a.m1e("EffectUtil", "FileNotFoundException " + e.getMessage());
                } catch (IOException e2) {
                    C0090a.m1e("EffectUtil", "IOException " + e2.getMessage());
                }
            }
        }
        obtainTypedArray.recycle();
    }

    private static void fA(File file) {
        file.mkdir();
        file.setReadable(true, false);
        file.setWritable(true, false);
        file.setExecutable(true, false);
    }
}
