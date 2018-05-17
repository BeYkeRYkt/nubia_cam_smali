package com.android.common.gles;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import android.os.Debug;
import com.p010a.C0090a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class C0545b {
    public static int DX(Context context, int i) {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        if (iArr[0] != 0) {
            try {
                Options options = new Options();
                options.inScaled = false;
                Bitmap decodeResource = BitmapFactory.decodeResource(context.getResources(), i, options);
                GLES20.glBindTexture(3553, iArr[0]);
                GLES20.glTexParameteri(3553, 10241, 9729);
                GLES20.glTexParameteri(3553, 10240, 9729);
                GLUtils.texImage2D(3553, 0, decodeResource, 0);
                decodeResource.recycle();
            } catch (OutOfMemoryError e) {
                try {
                    Debug.dumpHprofData("/sdcard/camera_" + System.currentTimeMillis() + ".hprof");
                } catch (IOException e2) {
                    C0090a.m1e("TextureHelper", "dump hprof fail " + e2.getMessage());
                }
                throw e;
            }
        }
        if (iArr[0] != 0) {
            return iArr[0];
        }
        throw new RuntimeException("Error loading texture.");
    }

    public static String DT(Context context, int i) {
        return C0545b.DZ(context.getResources().openRawResource(i));
    }

    public static String DU(Context context, int i, int i2) {
        String DT = C0545b.DT(context, i);
        Matcher matcher;
        if (i2 == 3553) {
            matcher = Pattern.compile("uniform\\s+samplerExternalOES\\s+sTexture").matcher(DT);
            return matcher.find() ? matcher.replaceFirst("uniform sampler2D sTexture") : DT;
        } else if (i2 == 36197) {
            matcher = Pattern.compile("uniform\\s+sampler2D\\s+sTexture").matcher(DT);
            if (matcher.find()) {
                return matcher.replaceFirst("uniform samplerExternalOES sTexture");
            }
            return DT;
        } else {
            C0090a.m1e("TextureHelper", "unknow target " + i2);
            return DT;
        }
    }

    private static String DZ(InputStream inputStream) {
        if (inputStream != null) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                StringBuilder stringBuilder = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        stringBuilder.append(readLine).append("\n");
                    } else {
                        inputStream.close();
                        return stringBuilder.toString();
                    }
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        C0090a.m1e("wq", "is is null: ");
        return "";
    }

    private static int DY(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        if (glCreateShader != 0) {
            GLES20.glShaderSource(glCreateShader, str);
            GLES20.glCompileShader(glCreateShader);
            int[] iArr = new int[1];
            GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
            if (iArr[0] == 0) {
                C0090a.m1e("==wq", "Could not compile shader " + i + ":");
                C0090a.m1e("==wq", GLES20.glGetShaderInfoLog(glCreateShader));
                GLES20.glDeleteShader(glCreateShader);
                return 0;
            }
        }
        return glCreateShader;
    }

    public static int[] DV(String str, String str2) {
        return new int[]{C0545b.DY(35633, str), C0545b.DY(35632, str2)};
    }

    public static int DW(int i, int i2) {
        int i3 = 0;
        if (i == 0 || i2 == 0) {
            return 0;
        }
        int glCreateProgram = GLES20.glCreateProgram();
        if (glCreateProgram != 0) {
            GLES20.glAttachShader(glCreateProgram, i);
            GLES20.glAttachShader(glCreateProgram, i2);
            GLES20.glLinkProgram(glCreateProgram);
            int[] iArr = new int[1];
            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
            if (iArr[0] != 1) {
                GLES20.glDeleteProgram(glCreateProgram);
                return i3;
            }
        }
        i3 = glCreateProgram;
        return i3;
    }
}
