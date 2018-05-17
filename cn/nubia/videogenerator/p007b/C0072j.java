package cn.nubia.videogenerator.p007b;

import android.media.MediaCodec.BufferInfo;
import android.util.Log;
import java.nio.ByteBuffer;

public class C0072j {
    private static String brH = "VideoCrop";
    public static int brI = 0;
    public static int brJ = 1;
    private final int brK;
    private byte[] brL;
    private final int brM;
    private final int brN;
    private final int brO;
    private final int brP;
    private int brQ;
    private int brR;

    public int bOK() {
        return this.brQ;
    }

    public int bOL() {
        return this.brR;
    }

    public byte[] bOM(ByteBuffer byteBuffer, BufferInfo bufferInfo) {
        byte[] bArr = new byte[bufferInfo.size];
        byteBuffer.get(bArr);
        if (bArr != null && bArr.length == (this.brN * 3) / 2) {
            if (this.brK == brI) {
                bON(bArr);
            } else if (this.brK == brJ) {
                bOO(bArr);
            }
            return this.brL;
        }
        Log.d(brH, "crop:wrong oriData!!!");
        return this.brL;
    }

    private void bON(byte[] bArr) {
        int bOP = bOP(bArr, this.brO + (this.brM * this.brP), this.brM * (this.brP + this.brR), this.brM, this.brQ, 0);
        bOP(bArr, (this.brN + ((this.brM * this.brP) / 2)) + this.brO, this.brN + ((this.brM * (this.brP + this.brR)) / 2), this.brM, this.brQ, bOP);
    }

    private void bOO(byte[] bArr) {
        int i = this.brN + (((this.brM * this.brP) / 4) + (this.brO / 2));
        int i2 = this.brN + ((this.brM * (this.brP + this.brR)) / 4);
        int i3 = this.brM / 2;
        int i4 = this.brQ / 2;
        int bOP = bOP(bArr, i, i2, i3, i4, bOP(bArr, this.brO + (this.brP * this.brM), this.brM * (this.brP + this.brR), this.brM, this.brQ, 0));
        bOP(bArr, (((this.brN / 4) * 5) + ((this.brM * this.brP) / 4)) + (this.brO / 2), ((this.brN / 4) * 5) + ((this.brM * (this.brP + this.brR)) / 4), i3, i4, bOP);
    }

    private int bOP(byte[] bArr, int i, int i2, int i3, int i4, int i5) {
        while (i < i2) {
            System.arraycopy(bArr, i, this.brL, i5, i4);
            i5 += i4;
            i += i3;
        }
        return i5;
    }
}
