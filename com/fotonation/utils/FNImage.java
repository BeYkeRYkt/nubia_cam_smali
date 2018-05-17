package com.fotonation.utils;

import android.graphics.Bitmap;
import com.umeng.analytics.ReportPolicy;
import java.io.IOException;
import java.io.RandomAccessFile;

public class FNImage extends Referenced {
    public byte[] data = null;
    public Format format = Format.IMG_FORMAT_UNKNOWN;
    public int height = 0;
    public int orientation = 0;
    public int stride = 0;
    public int width = 0;

    public enum Format {
        IMG_FORMAT_UNKNOWN,
        IMG_FORMAT_GRAY8,
        IMG_FORMAT_YUV420P,
        IMG_FORMAT_YVU420P,
        IMG_FORMAT_YUV420SP,
        IMG_FORMAT_YVU420SP,
        IMG_FORMAT_YUV422P,
        IMG_FORMAT_YUV422SP,
        IMG_FORMAT_YUYV422,
        IMG_FORMAT_YVYU422,
        IMG_FORMAT_UYVY422,
        IMG_FORMAT_YUV444,
        IMG_FORMAT_AYUV444,
        IMG_FORMAT_ARGB8888,
        IMG_FORMAT_RGBA8888,
        IMG_FORMAT_BGRA8888,
        IMG_FORMAT_RGB888,
        IMG_FORMAT_BGR888,
        IMG_FORMAT_RGB565LE,
        IMG_FORMAT_BGR565LE,
        IMG_FORMAT_RGB565BE,
        IMG_FORMAT_BGR565BE;

        public int GetLineSize(int i, int i2) {
            switch (i2) {
                case 0:
                    switch (btW()[ordinal()]) {
                        case 1:
                        case 2:
                        case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                        case 11:
                            return i * 4;
                        case 3:
                        case 4:
                        case 8:
                        case 9:
                            return i * 2;
                        case 5:
                        case 10:
                        case 17:
                            return i * 3;
                        case 7:
                            return i;
                        case 12:
                        case 18:
                        case 21:
                            return ((i + 1) & -2) * 2;
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 19:
                        case 20:
                            return (i + 1) & -2;
                        default:
                            return 0;
                    }
                case 1:
                    switch (btW()[ordinal()]) {
                        case 13:
                        case 19:
                            return (i + 1) >> 1;
                        case 14:
                        case 20:
                            return (i + 1) & -2;
                        case 15:
                            return (i + 1) >> 1;
                        case 16:
                            return (i + 1) & -2;
                        default:
                            return 0;
                    }
                case 2:
                    switch (btW()[ordinal()]) {
                        case 13:
                        case 19:
                            return (i + 1) >> 1;
                        case 15:
                            return (i + 1) >> 1;
                        default:
                            return 0;
                    }
                default:
                    return 0;
            }
        }

        public int GetPlaneSize(int i, int i2, int i3) {
            switch (btW()[ordinal()]) {
                case 13:
                case 14:
                case 19:
                case 20:
                    if (i3 == 0) {
                        return GetLineSize(i, 0) * ((i2 + 1) & -2);
                    }
                    return GetLineSize(i, i3) * ((i2 + 1) >> 1);
                case 15:
                case 16:
                    return GetLineSize(i, i3) * i2;
                default:
                    return GetLineSize(i, i3) * i2;
            }
        }

        public int GetBufferSize(int i, int i2) {
            return (GetPlaneSize(i, i2, 0) + GetPlaneSize(i, i2, 1)) + GetPlaneSize(i, i2, 2);
        }
    }

    public static FNImage Create(int i, int i2, Format format) {
        if (i <= 0 || i2 <= 0 || format == Format.IMG_FORMAT_UNKNOWN) {
            return null;
        }
        FNImage fNImage;
        try {
            fNImage = new FNImage();
            fNImage.format = format;
            fNImage.width = i;
            fNImage.height = i2;
            fNImage.stride = format.GetLineSize(i, 0);
            fNImage.data = new byte[format.GetBufferSize(i, i2)];
        } catch (OutOfMemoryError e) {
            fNImage = null;
        }
        return fNImage;
    }

    public Size GetSize() {
        return new Size(this.width, this.height);
    }

    public static FNImage CreateBGRA8888_From_Bitmap(Bitmap bitmap) {
        int i = 0;
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        FNImage Create = Create(width, height, Format.IMG_FORMAT_BGRA8888);
        if (Create != null) {
            int[] iArr = new int[(width * height)];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            for (int width2 : iArr) {
                int i2 = i + 1;
                Create.data[i] = (byte) ((width2 >>> 0) & 255);
                int i3 = i2 + 1;
                Create.data[i2] = (byte) ((width2 >>> 8) & 255);
                i2 = i3 + 1;
                Create.data[i3] = (byte) ((width2 >>> 16) & 255);
                i = i2 + 1;
                Create.data[i2] = (byte) ((width2 >>> 24) & 255);
            }
        }
        return Create;
    }

    public int Release() {
        int Release = super.Release();
        if (Release == 0) {
            this.data = null;
        }
        return Release;
    }

    public FNImage shallowCopy() {
        try {
            FNImage fNImage = new FNImage();
            fNImage.format = this.format;
            fNImage.width = this.width;
            fNImage.height = this.height;
            fNImage.stride = this.stride;
            fNImage.data = this.data;
            return fNImage;
        } catch (OutOfMemoryError e) {
            return null;
        }
    }

    public void SaveAsRaw(String str) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(str, "rw");
            randomAccessFile.write(this.data);
            randomAccessFile.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static FNImage LoadFromRaw(String str, int i, int i2, Format format) {
        FNImage Create = Create(i, i2, format);
        if (Create == null) {
            return null;
        }
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(str, "rw");
            randomAccessFile.read(Create.data);
            randomAccessFile.close();
            return Create;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }
}
