package cn.nubia.arcsoft;

import android.util.Log;
import cn.nubia.bigAperture.BigApertureTask;
import cn.nubia.p004d.C0048a;
import com.nubia.camera.common.Native.BufferCell;
import com.p010a.C0090a;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class C0020b {
    private static boolean bqb = Log.isLoggable("ArcsoftAlgorithmAdapter", 3);

    public static void bMC(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            fileOutputStream.write(bArr2);
            fileOutputStream.write(bArr);
            fileOutputStream.write(bArr3);
            byte[] bArr4 = new byte[60];
            ByteBuffer order = ByteBuffer.allocateDirect(60).order(ByteOrder.nativeOrder());
            order.putInt(0);
            order.putInt(0);
            order.putInt(bArr.length);
            order.putInt(bArr3.length);
            order.putInt(i);
            order.putInt(i2);
            order.putInt(i3);
            order.putInt(i4);
            order.putInt(i5);
            order.putInt(0);
            order.putInt(0);
            order.putInt(0);
            order.putInt(0);
            order.putInt(0);
            order.putInt(0);
            order.position(0);
            order.get(bArr4);
            fileOutputStream.write(bArr4);
            C0048a bPS = C0048a.bPS();
            bPS.bPT(0, 3);
            bPS.bPT(1, 2);
            bPS.bPT(4, (bArr.length + bArr3.length) + 60);
            fileOutputStream.write(bPS.bPU());
            fileOutputStream.close();
        } catch (IOException e) {
            C0090a.m1e("ArcsoftAlgorithmAdapter", e.getMessage());
        }
    }

    public static BufferCell bMB(BufferCell bufferCell, BufferCell bufferCell2, BigApertureTask bigApertureTask) {
        ArcsoftAlgorithm bMz = ArcsoftAlgorithm.bMz(2);
        BufferCell bufferCell3 = new BufferCell((bigApertureTask.bpu * bigApertureTask.bpv) * 4);
        r1 = new float[2];
        C0019a.bMr(new float[]{bigApertureTask.bpy, bigApertureTask.bpz}, bigApertureTask.bpC, r1);
        bMz.bMw(bufferCell, bigApertureTask.bpu, bigApertureTask.bpv, bufferCell2, (int) (r1[0] * ((float) bigApertureTask.bpu)), (int) (r1[1] * ((float) bigApertureTask.bpv)), (int) bigApertureTask.bpB, bufferCell3);
        bMz.release();
        return bufferCell3;
    }

    public static BufferCell bMA(BufferCell bufferCell, BufferCell bufferCell2, BigApertureTask bigApertureTask) {
        ArcsoftAlgorithm bMz = ArcsoftAlgorithm.bMz(1);
        bMz.bMy(bigApertureTask.bpu, bigApertureTask.bpv, bigApertureTask.bpH, bigApertureTask.bpI);
        if (C0019a.bMs()) {
            bMz.bMx(bigApertureTask.bpr, bigApertureTask.bpt, bqb);
        }
        bMz.bMt(bufferCell, bigApertureTask.bpu, bigApertureTask.bpv, bufferCell2, bigApertureTask.bpH, bigApertureTask.bpI, bigApertureTask.bpL, bigApertureTask.bpM, bigApertureTask.bpN);
        BufferCell bufferCell3 = new BufferCell(bMz.bMv());
        bMz.bMu(bufferCell3);
        bMz.release();
        return bufferCell3;
    }
}
