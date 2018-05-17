package cn.nubia.bigAperture;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.p010a.C0090a;

public class BigApertureTask implements Parcelable {
    public static final Creator bpo = new C0045u();
    public float bpA;
    public float bpB;
    public int bpC;
    public int bpD;
    public int bpE;
    public int bpF;
    public int bpG;
    public int bpH;
    public int bpI;
    public String bpJ;
    public int bpK;
    public int[] bpL;
    public int bpM;
    public int bpN;
    public Uri bpO;
    public String bpp;
    public Uri bpq;
    public int bpr;
    public int bps;
    public int bpt;
    public int bpu;
    public int bpv;
    public int bpw;
    public int bpx;
    public float bpy;
    public float bpz;
    public int mState;

    public BigApertureTask(Uri uri, Uri uri2, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f, float f2, float f3, float f4, int i9, int i10, int i11, int i12, int i13, String str2, int i14, int[] iArr, int i15, int i16) {
        this(uri, uri2, str, i, i2, i3, i4, i5, i6, i7, i8, f, f2, f3, f4, i9, i10, i11, i12, i13, 0, str2, i14, iArr, i15, i16);
    }

    public BigApertureTask(Uri uri, Uri uri2, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f, float f2, float f3, float f4, int i9, int i10, int i11, int i12, int i13, int i14, String str2, int i15, int[] iArr, int i16, int i17) {
        this.mState = 0;
        this.bpO = uri;
        this.bpp = str;
        this.bpq = uri2;
        this.bpu = i;
        this.bpv = i2;
        this.bpH = i3;
        this.bpI = i4;
        this.bpw = i5;
        this.bpx = i6;
        this.bpr = i7;
        this.bps = i8;
        this.bpt = i13;
        this.bpy = f;
        this.bpz = f2;
        this.bpA = f3;
        this.bpB = f4;
        this.bpC = i9;
        this.bpE = i10;
        this.bpG = i12;
        this.bpF = i11;
        this.bpL = iArr;
        this.bpM = i16;
        this.bpN = i17;
        this.bpD = i14;
        this.bpJ = str2;
        this.bpK = i15;
    }

    public BigApertureTask(BigApertureTask bigApertureTask) {
        this.mState = 0;
        this.bpp = bigApertureTask.bpp;
        this.bpq = bigApertureTask.bpq;
        this.bpO = bigApertureTask.bpO;
        this.bpu = bigApertureTask.bpu;
        this.bpv = bigApertureTask.bpv;
        this.bpH = bigApertureTask.bpH;
        this.bpI = bigApertureTask.bpI;
        this.bpw = bigApertureTask.bpw;
        this.bpx = bigApertureTask.bpx;
        this.bpr = bigApertureTask.bpr;
        this.bps = bigApertureTask.bps;
        this.bpt = bigApertureTask.bpt;
        this.bpy = bigApertureTask.bpy;
        this.bpz = bigApertureTask.bpz;
        this.bpA = bigApertureTask.bpA;
        this.bpB = bigApertureTask.bpB;
        this.bpC = bigApertureTask.bpC;
        this.mState = bigApertureTask.mState;
        this.bpE = bigApertureTask.bpE;
        this.bpG = bigApertureTask.bpG;
        this.bpF = bigApertureTask.bpF;
        this.bpL = bigApertureTask.bpL;
        this.bpM = bigApertureTask.bpM;
        this.bpN = bigApertureTask.bpN;
        this.bpD = bigApertureTask.bpD;
        this.bpJ = bigApertureTask.bpJ;
        this.bpK = bigApertureTask.bpK;
    }

    public void bLV() {
        this.mState = 1;
    }

    public void bLX() {
        this.mState = 3;
    }

    public void bLY() {
        this.mState = 0;
    }

    public void bLW() {
        this.mState = 2;
    }

    public void bLZ() {
        this.mState = 4;
    }

    public void bLU() {
        this.mState = 5;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        Uri.writeToParcel(parcel, this.bpO);
        Uri.writeToParcel(parcel, this.bpq);
        parcel.writeString(this.bpp);
        parcel.writeInt(this.bpu);
        parcel.writeInt(this.bpv);
        parcel.writeInt(this.bpH);
        parcel.writeInt(this.bpI);
        parcel.writeInt(this.bpw);
        parcel.writeInt(this.bpx);
        parcel.writeInt(this.bpr);
        parcel.writeInt(this.bps);
        parcel.writeFloat(this.bpy);
        parcel.writeFloat(this.bpz);
        parcel.writeFloat(this.bpA);
        parcel.writeFloat(this.bpB);
        parcel.writeInt(this.bpC);
        parcel.writeInt(this.bpE);
        parcel.writeInt(this.bpF);
        parcel.writeInt(this.bpG);
        parcel.writeInt(this.bpt);
        parcel.writeInt(this.bpD);
        parcel.writeString(this.bpJ);
        parcel.writeInt(this.bpK);
        bMa(parcel, this.bpL);
        parcel.writeInt(this.bpM);
        parcel.writeInt(this.bpN);
    }

    private void bMa(Parcel parcel, int[] iArr) {
        if (iArr == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(iArr.length);
        parcel.writeIntArray(iArr);
    }

    public String toString() {
        return "BokehDepthTask: bigApertureUri: " + this.bpO + "; BokehDirectoryPath: " + this.bpp + "; Uri: " + this.bpq + "; MainDacValue: " + this.bpr + "; SubDacValue: " + this.bps + "; DualCameraLayout: " + this.bpt + "; ColorYUVWidth: " + this.bpu + "; COlorYUVHeight: " + this.bpv + "; MonoYUVWidth: " + this.bpH + "; MonoYUVHeight: " + this.bpI + "; DepthWidth: " + this.bpw + "; DepthHeight: " + this.bpx + "; FocusX: " + this.bpy + "; FocusY: " + this.bpz + "; FocusLength: " + this.bpA + "; BokehLevel: " + this.bpB + "; Rotation: " + this.bpC + "; SkinSmooth: " + this.bpE + "; SkinTone: " + this.bpF + "; SkinSlim: " + this.bpG + "; mPendingProcessCount: " + this.bpD + "; mArtist: " + this.bpJ + "; mLogoType: " + this.bpK;
    }

    public void bLT() {
        C0090a.bvo("BigApertureTask", toString());
    }
}
