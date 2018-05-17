package p043u.aly;

public class aN {
    public static final boolean bVw(byte b, int i) {
        return aN.bVx(b, i);
    }

    public static final boolean bVx(int i, int i2) {
        return ((1 << i2) & i) != 0;
    }

    public static final int bVy(int i, int i2) {
        return ((1 << i2) ^ -1) & i;
    }

    public static final byte bVz(byte b, int i, boolean z) {
        return (byte) aN.bVA(b, i, z);
    }

    public static final int bVA(int i, int i2, boolean z) {
        if (z) {
            return (1 << i2) | i;
        }
        return aN.bVy(i, i2);
    }
}
