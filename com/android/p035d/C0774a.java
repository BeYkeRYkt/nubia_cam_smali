package com.android.p035d;

import com.android.common.independentutil.IndependenceUtil;
import com.p010a.C0090a;

public final class C0774a {
    private static final boolean aYg = IndependenceUtil.afZ;

    public static void boH(float[] fArr, int i, float[] fArr2, int i2, int i3) {
        int i4 = 0;
        if (aYg) {
            System.arraycopy(fArr, i, fArr2, i2, i3);
        } else if (fArr == null) {
            throw new NullPointerException("src == null");
        } else if (fArr2 == null) {
            throw new NullPointerException("dst == null");
        } else if (i < 0 || i2 < 0 || i3 < 0 || i > fArr.length - i3 || i2 > fArr2.length - i3) {
            throw new ArrayIndexOutOfBoundsException("src.length=" + fArr.length + " srcPos=" + i + " dst.length=" + fArr2.length + " dstPos=" + i2 + " length=" + i3);
        } else {
            if (i3 > 32) {
                C0090a.m1e("com.android.d.a", "arraycopy failed!");
                for (i4 = i; i4 < i2; i4++) {
                    fArr2[i4 - i] = fArr[i4];
                }
            } else if (fArr != fArr2 || i >= i2 || i2 >= i + i3) {
                while (i4 < i3) {
                    fArr2[i2 + i4] = fArr[i + i4];
                    i4++;
                }
            } else {
                for (i4 = i3 - 1; i4 >= 0; i4--) {
                    fArr2[i2 + i4] = fArr[i + i4];
                }
            }
        }
    }

    public static void boG(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4 = 0;
        if (aYg) {
            System.arraycopy(bArr, i, bArr2, i2, i3);
        } else if (bArr == null) {
            throw new NullPointerException("src == null");
        } else if (bArr2 == null) {
            throw new NullPointerException("dst == null");
        } else if (i < 0 || i2 < 0 || i3 < 0 || i > bArr.length - i3 || i2 > bArr2.length - i3) {
            throw new ArrayIndexOutOfBoundsException("src.length=" + bArr.length + " srcPos=" + i + " dst.length=" + bArr2.length + " dstPos=" + i2 + " length=" + i3);
        } else {
            if (i3 > 32) {
                C0090a.m1e("com.android.d.a", "arraycopy failed!");
                for (i4 = i; i4 < i2; i4++) {
                    bArr2[i4 - i] = bArr[i4];
                }
            } else if (bArr != bArr2 || i >= i2 || i2 >= i + i3) {
                while (i4 < i3) {
                    bArr2[i2 + i4] = bArr[i + i4];
                    i4++;
                }
            } else {
                for (i4 = i3 - 1; i4 >= 0; i4--) {
                    bArr2[i2 + i4] = bArr[i + i4];
                }
            }
        }
    }

    public static void boI(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        int i4 = 0;
        if (aYg) {
            System.arraycopy(iArr, i, iArr2, i2, i3);
        } else if (iArr == null) {
            throw new NullPointerException("src == null");
        } else if (iArr2 == null) {
            throw new NullPointerException("dst == null");
        } else if (i < 0 || i2 < 0 || i3 < 0 || i > iArr.length - i3 || i2 > iArr2.length - i3) {
            throw new ArrayIndexOutOfBoundsException("src.length=" + iArr.length + " srcPos=" + i + " dst.length=" + iArr2.length + " dstPos=" + i2 + " length=" + i3);
        } else {
            if (i3 > 32) {
                C0090a.m1e("com.android.d.a", "arraycopy failed!");
                for (i4 = i; i4 < i2; i4++) {
                    iArr2[i4 - i] = iArr[i4];
                }
            } else if (iArr != iArr2 || i >= i2 || i2 >= i + i3) {
                while (i4 < i3) {
                    iArr2[i2 + i4] = iArr[i + i4];
                    i4++;
                }
            } else {
                for (i4 = i3 - 1; i4 >= 0; i4--) {
                    iArr2[i2 + i4] = iArr[i + i4];
                }
            }
        }
    }

    public static void boF(CharSequence[] charSequenceArr, int i, CharSequence[] charSequenceArr2, int i2, int i3) {
        int i4 = 0;
        if (aYg) {
            System.arraycopy(charSequenceArr, i, charSequenceArr2, i2, i3);
        } else if (charSequenceArr == null) {
            throw new NullPointerException("src == null");
        } else if (charSequenceArr2 == null) {
            throw new NullPointerException("dst == null");
        } else if (i < 0 || i2 < 0 || i3 < 0 || i > charSequenceArr.length - i3 || i2 > charSequenceArr2.length - i3) {
            throw new ArrayIndexOutOfBoundsException("src.length=" + charSequenceArr.length + " srcPos=" + i + " dst.length=" + charSequenceArr2.length + " dstPos=" + i2 + " length=" + i3);
        } else {
            if (i3 > Integer.MAX_VALUE) {
                C0090a.m1e("com.android.d.a", "arraycopy failed!");
                for (i4 = i; i4 < i2; i4++) {
                    charSequenceArr2[i4 - i] = charSequenceArr[i4];
                }
            } else if (charSequenceArr != charSequenceArr2 || i >= i2 || i2 >= i + i3) {
                while (i4 < i3) {
                    charSequenceArr2[i2 + i4] = charSequenceArr[i + i4];
                    i4++;
                }
            } else {
                for (i4 = i3 - 1; i4 >= 0; i4--) {
                    charSequenceArr2[i2 + i4] = charSequenceArr[i + i4];
                }
            }
        }
    }
}
