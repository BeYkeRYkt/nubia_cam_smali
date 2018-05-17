package com.fotonation.vfb;

public class VfbConfig {
    public static final int VFB_MAX_FACE_COUNT = 10;
    public int effectType;
    public int faceCount;
    public VfbFaceStrengths[] faceStrengths;
    public int skinSmoothing;
    public int skinToning;
    public int smartColor;
    public int smartLight;

    public void allocate(int i) {
        this.faceStrengths = new VfbFaceStrengths[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.faceStrengths[i2] = new VfbFaceStrengths();
        }
    }
}
