package com.fotonation.vfb;

import com.fotonation.utils.Size;

public class VfbEngineCtx {
    public static final int EYE_CIRCLES_REMOVAL_STRENGTH_BIT = 16;
    public static final int EYE_ENLARGEMENT_STRENGTH_BIT = 8;
    public static final int INIT_FLAG_BEAUTIFY_WHEN_NO_FACES = 16;
    public static final int INIT_FLAG_LOW_POWER_MODE = 2;
    public static final int INIT_FLAG_MIRROR_FRAME = 4;
    public static final int INIT_FLAG_MODE_IMAGE_TO_TEXTURE = 131072;
    public static final int INIT_FLAG_MODE_TEXTURE_TO_TEXTURE = 65536;
    public static final int INIT_FLAG_STILL_MODE = 8;
    public static final int INIT_FLAG_USE_ROLL_ANGLE = 1;
    public static final int LIBRARY_TYPE_DEBUG = 2;
    public static final int LIBRARY_TYPE_GET_GPU_BINARIES = 3;
    public static final int LIBRARY_TYPE_RELEASE = 1;
    public static final int ORIENTATION_MIRROR = 1;
    public static final int ORIENTATION_NO_MIRROR = 0;
    public static final int ORIENTATION_ROTATION_0_DEGREES = 2;
    public static final int ORIENTATION_ROTATION_180_DEGREES = 4;
    public static final int ORIENTATION_ROTATION_270_DEGREES = 5;
    public static final int ORIENTATION_ROTATION_90_DEGREES = 3;
    public static final int SLIMMING_STRENGTH_BIT = 4;
    public static final int SMART_COLOR_STRENGTH_BIT = 64;
    public static final int SMART_LIGHT_STRENGTH_BIT = 32;
    public static final int SMOOTHING_STRENGTH_BIT = 1;
    public static final int TONING_STRENGTH_BIT = 2;
    private long mCtx;

    private final native int NtvCreate(int i, int i2, int i3, int i4, int i5);

    private final native void NtvDestroy();

    private final native int NtvDetectFaces(long j, int i, int i2, int i3, int i4);

    private final native int NtvDetectFacesInTexture(long j, int i, int i2, int i3, int i4);

    private static final native String NtvGetEmbeddedProgramsGpu();

    private final native int NtvGetFaceCount(long j);

    private final native int NtvGetFaces(long j, VfbFaceArray vfbFaceArray);

    private static final native int NtvGetLibraryType();

    private static final native String NtvGetVersion();

    private static final native String NtvGetVfbCpuVersion();

    private static final native String NtvGetVfbGpuVersion();

    private final native int NtvProcess(long j, int i, int i2, int i3, int i4, VfbFaceArray vfbFaceArray, float[] fArr, int i5);

    private final native int NtvProcessTexture(long j, int i, int i2, int i3, int i4, VfbFaceArray vfbFaceArray, float[] fArr, int i5);

    private final native void NtvSetConfiguration(long j, VfbConfig vfbConfig);

    private final native int NtvSetPreviewSize(long j, int i, int i2);

    private final native void NtvSetShowFaceRectangles(long j, boolean z, boolean z2);

    private final native int NtvSetViewSize(long j, int i, int i2);

    static {
        System.loadLibrary("FNVfbEngineLib");
    }

    public boolean create(Size size, Size size2, int i) {
        return NtvCreate(size.Width, size.Height, size2.Width, size2.Height, i) == 0;
    }

    public void setConfiguration(VfbConfig vfbConfig) {
        NtvSetConfiguration(this.mCtx, vfbConfig);
    }

    public void destroy() {
        NtvDestroy();
    }

    public boolean detectFacesInTexture(int i, int i2, int i3, int i4) {
        if (NtvDetectFaces(this.mCtx, i, i2, i3, i4) == 0) {
            return true;
        }
        return false;
    }

    public boolean processTexture(int i, int i2, int i3, int i4, VfbFaceArray vfbFaceArray, float[] fArr, int i5) {
        return NtvProcess(this.mCtx, i, i2, i3, i4, vfbFaceArray, fArr, i5) == 0;
    }

    public void setShowFaceRectangles(boolean z, boolean z2) {
        NtvSetShowFaceRectangles(this.mCtx, z, z2);
    }

    public boolean setViewSize(int i, int i2) {
        if (NtvSetViewSize(this.mCtx, i, i2) == 0) {
            return true;
        }
        return false;
    }

    public boolean setPreviewSize(int i, int i2) {
        int NtvSetPreviewSize = NtvSetPreviewSize(this.mCtx, i, i2);
        if (NtvSetPreviewSize != 0) {
            NtvDestroy();
        }
        if (NtvSetPreviewSize == 0) {
            return true;
        }
        return false;
    }

    public int getFacesCnt() {
        return NtvGetFaceCount(this.mCtx);
    }

    public boolean getFaces(VfbFaceArray vfbFaceArray) {
        if (NtvGetFaces(this.mCtx, vfbFaceArray) == 0) {
            return true;
        }
        return false;
    }

    public static String GetEmbeddedProgramsGpu() {
        return NtvGetEmbeddedProgramsGpu();
    }

    public static String GetVfbCpuVersion() {
        return NtvGetVfbCpuVersion();
    }

    public static String GetVfbGpuVersion() {
        return NtvGetVfbGpuVersion();
    }

    public static String GetVfbEngineVersion() {
        return NtvGetVersion();
    }

    public static int GetLibraryType() {
        return NtvGetLibraryType();
    }
}
