package com.fotonation.vfb;

public class VfbFaceArray {
    public static final int VFB_FACE_INFO_BLINK = 32;
    public static final int VFB_FACE_INFO_EYES = 8;
    public static final int VFB_FACE_INFO_FACE_PITCH = 4;
    public static final int VFB_FACE_INFO_FACE_ROLL = 1;
    public static final int VFB_FACE_INFO_FACE_YAW = 2;
    public static final int VFB_FACE_INFO_SMILE = 16;
    public static final int VFB_MAX_FACE_COUNT = 10;
    public int mFaceCount;
    public int mFaceFlags;
    public VfbFace[] mFaces;

    public void allocate(int i) {
        this.mFaces = new VfbFace[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.mFaces[i2] = new VfbFace();
        }
    }
}
