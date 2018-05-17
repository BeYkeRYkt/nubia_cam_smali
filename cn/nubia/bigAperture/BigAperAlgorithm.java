package cn.nubia.bigAperture;

import com.nubia.camera.common.Native.BufferCell;
import java.nio.ByteBuffer;

public class BigAperAlgorithm {
    static native ByteBuffer CropYUV(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, int i5, int i6);

    static native ByteBuffer ReadDataFromFile(String str, int i);

    native void Generate3DPhoto(ByteBuffer byteBuffer, int i, int i2, ByteBuffer byteBuffer2, int i3, int i4, int i5, int i6, ByteBuffer byteBuffer3, int[] iArr);

    native ByteBuffer GenerateAltekDepth(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9);

    native ByteBuffer GenerateBokehData(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, int i, int i2, int i3, int i4, float f, float f2, float f3, int i5, int i6, int i7, float f4, float f5);

    static {
        System.loadLibrary("BigAperture");
    }

    public BufferCell bKy(BufferCell bufferCell, BufferCell bufferCell2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        ByteBuffer GenerateAltekDepth = GenerateAltekDepth(bufferCell.btE(), bufferCell2.btE(), i, i2, i3, i4, i5, i6, i7, i8, i9);
        if (GenerateAltekDepth == null) {
            return null;
        }
        return new BufferCell(GenerateAltekDepth);
    }

    public BufferCell bKz(BufferCell bufferCell, BufferCell bufferCell2, int i, int i2, int i3, int i4, float f, float f2, float f3, int i5, int i6, int i7, float f4, float f5) {
        ByteBuffer GenerateBokehData = GenerateBokehData(bufferCell.btE(), bufferCell2.btE(), i, i2, i3, i4, f, f2, f3, i5, i6, i7, f4, f5);
        if (GenerateBokehData == null) {
            return null;
        }
        return new BufferCell(GenerateBokehData);
    }

    public static BufferCell bKA(String str, int i) {
        ByteBuffer ReadDataFromFile = ReadDataFromFile(str, i);
        if (ReadDataFromFile == null) {
            return null;
        }
        return new BufferCell(ReadDataFromFile);
    }

    public void bKx(BufferCell bufferCell, int i, int i2, BufferCell bufferCell2, int i3, int i4, int i5, int i6, BufferCell bufferCell3, int[] iArr) {
        Generate3DPhoto(bufferCell.btE(), i, i2, bufferCell2.btE(), i3, i4, i5, i6, bufferCell3.btE(), iArr);
    }

    public static BufferCell bKw(BufferCell bufferCell, int i, int i2, int i3, int i4, int i5, int i6) {
        ByteBuffer CropYUV = CropYUV(bufferCell.btE(), i, i2, i3, i4, i5, i6);
        if (CropYUV == null) {
            return null;
        }
        return new BufferCell(CropYUV);
    }
}
