package com.android.videomaker.p041a;

import com.android.common.C0701s;
import com.android.common.appService.CameraMember;
import com.p010a.C0090a;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class C1177d {
    private C1177d() {
    }

    public static String aKE(int i) {
        String str;
        long currentTimeMillis = System.currentTimeMillis();
        switch (i) {
            case 0:
                str = "movie_" + C1177d.aKF(currentTimeMillis) + ".3gp";
                break;
            case 1:
                str = "movie_" + C1177d.aKF(currentTimeMillis) + ".mp4";
                break;
            default:
                throw new IllegalArgumentException("Unsupported file type: " + i);
        }
        File file = new File(C0701s.ara(CameraMember.VIDEOMAKER.aan()));
        if (!file.exists()) {
            file.mkdirs();
        }
        return new File(file, str).getAbsolutePath();
    }

    public static String aKF(long j) {
        return new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date(j));
    }

    public static boolean aKC(File file) {
        if (file.isDirectory()) {
            String[] list = file.list();
            int i = 0;
            while (i < list.length) {
                File file2 = new File(file, list[i]);
                if (C1177d.aKC(file2)) {
                    i++;
                } else {
                    C0090a.m1e("FileUtils", "File cannot be deleted: " + file2.getAbsolutePath());
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static String aKD(String str, String str2) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, new SimpleDateFormat("yyyy-MM-dd-HH-mm-ss").format(new Date(System.currentTimeMillis())) + "." + str2);
        try {
            file2.createNewFile();
            return file2.getAbsolutePath();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
