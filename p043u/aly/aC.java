package p043u.aly;

import java.util.BitSet;

public final class aC extends C1344H {
    public Class bUv() {
        return dB.class;
    }

    public void bUw(BitSet bitSet, int i) {
        for (byte bQS : aC.bUy(bitSet, i)) {
            bQS(bQS);
        }
    }

    public BitSet bUx(int i) {
        int ceil = (int) Math.ceil(((double) i) / 8.0d);
        byte[] bArr = new byte[ceil];
        for (int i2 = 0; i2 < ceil; i2++) {
            bArr[i2] = (byte) bRc();
        }
        return aC.m830a(bArr);
    }

    public static BitSet m830a(byte[] bArr) {
        BitSet bitSet = new BitSet();
        for (int i = 0; i < bArr.length * 8; i++) {
            if ((bArr[(bArr.length - (i / 8)) - 1] & (1 << (i % 8))) > 0) {
                bitSet.set(i);
            }
        }
        return bitSet;
    }

    public static byte[] bUy(BitSet bitSet, int i) {
        byte[] bArr = new byte[((int) Math.ceil(((double) i) / 8.0d))];
        for (int i2 = 0; i2 < bitSet.length(); i2++) {
            if (bitSet.get(i2)) {
                int length = (bArr.length - (i2 / 8)) - 1;
                bArr[length] = (byte) ((byte) (bArr[length] | (1 << (i2 % 8))));
            }
        }
        return bArr;
    }
}
