package cn.nubia.p000a;

import android.content.ContentValues;
import android.graphics.Matrix;
import android.hardware.Camera;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.Size;
import android.location.Location;
import android.util.SparseArray;
import com.android.camera.R;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.C0329e;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.p001l.C0622a;
import com.android.common.storagemanager.StorageManager$StorageStatusType;
import com.p010a.C0090a;
import java.io.File;

public class C0012i implements PictureCallback {
    private C0006k bnB = null;
    private C0329e bnC = null;
    private int bnD;
    private Matrix bnE = null;

    public C0012i(int i, C0329e c0329e, C0006k c0006k) {
        this.bnC = c0329e;
        this.bnD = i;
        this.bnB = c0006k;
        this.bnE = new Matrix();
    }

    public void onPictureTaken(byte[] bArr, Camera camera) {
        if (bArr != null) {
            C0090a.bvo("BigAperturePostViewCallback", "postview onPictureTaken mCameraId: " + this.bnD);
            Size Gv = this.bnC.Tn().Gv();
            int i = Gv.width;
            int i2 = Gv.height;
            String bJO = bJO();
            String bJP = bJP(this.bnC.TI());
            SparseArray bJN = bJN(this.bnC.TW());
            ContentValues bJM = bJM(Gv, this.bnC.To(), this.bnC.TI(), bJO, bJP);
            if (this.bnC.Ti().alX(new C0622a(this.bnC, bArr, i, i2, bJN, bJO + "/", bJP, this.bnC.TW(), false, true, bJM, new C0013j(this))) != StorageManager$StorageStatusType.ADD_REQUEST_SUCCESS) {
                this.bnB.bJw(null, false);
                return;
            }
            return;
        }
        C0090a.bvo("MonoCameraConnector", "postview received. data is null; cameraId: " + this.bnD);
    }

    private String bJO() {
        C0701s.aqX();
        String str = C0701s.aqX() + CameraMember.aar(this.bnC.SP().aan());
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    private String bJP(long j) {
        return C0616j.aoP(j);
    }

    private ContentValues bJM(Size size, int i, long j, String str, String str2) {
        int i2;
        int i3;
        if (i % 180 == 0) {
            i2 = size.height;
            i3 = size.width;
        } else {
            i2 = size.width;
            i3 = size.height;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("datetaken", Long.valueOf(j));
        contentValues.put("_data", str + "/" + str2 + ".jpg");
        contentValues.put("title", str2);
        contentValues.put("_display_name", str2 + ".jpg");
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("orientation", Integer.valueOf(this.bnC.TW()));
        contentValues.put("width", Integer.valueOf(i2));
        contentValues.put("height", Integer.valueOf(i3));
        Location age = this.bnC.Tq().age();
        if (age != null) {
            contentValues.put("latitude", Double.valueOf(age.getLatitude()));
            contentValues.put("longitude", Double.valueOf(age.getLongitude()));
        }
        return contentValues;
    }

    private SparseArray bJN(int i) {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(C0523o.Cc, new C0513e(Float.valueOf(this.bnC.SS().getFloat("pref_bigaperture_focus_length", 2.0f)).floatValue(), 0.01f));
        sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
        sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
        sparseArray.put(C0523o.BW, Integer.valueOf(C0472e.aoB(i)));
        return sparseArray;
    }

    private boolean bJR() {
        return bJQ(R.string.switch_value_on).equals(this.bnC.SS().getString("pref_refocus_after_capture", bJQ(R.string.switch_value_off)));
    }

    private String bJQ(int i) {
        return this.bnC.SN().getString(i);
    }
}
