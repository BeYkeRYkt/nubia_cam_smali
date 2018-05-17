package com.android.common.p024d;

import android.content.ContentValues;
import android.graphics.Matrix;
import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import android.location.Location;
import android.util.SparseArray;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.appService.C0329e;
import com.android.common.cameradevice.C0382m;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.FunctionState;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0523o;
import com.android.common.p001l.C0622a;
import com.android.common.p001l.C0625d;
import com.android.common.p012e.C0458b;
import com.android.common.p016a.C0291h;
import com.android.common.p028h.C0562f;
import com.android.common.storagemanager.C0721d;
import com.android.common.storagemanager.StorageManager$StorageStatusType;
import com.p010a.C0090a;
import java.nio.ByteBuffer;

public class C0445a implements PreviewCallback, C0291h {
    private C0329e NL = null;
    private C0404b NM = null;
    private int NN = 0;
    private Integer NO = Integer.valueOf(0);
    private int NP = 0;
    private int NQ = 0;
    private boolean NR = true;
    private boolean NS = false;
    private C0357i NT = null;
    private C0721d NU;
    private C0447c NV = new C0447c(this);
    public String NW;
    private Size NX = null;
    private int NY = 1;
    private long NZ = 0;
    public C0562f Oa = null;
    private int Ob = 0;
    private String mFileName = null;

    public C0445a(C0329e c0329e) {
        this.NL = c0329e;
        this.NM = c0329e.SX();
        this.NU = new C0721d(c0329e.Ti());
    }

    public void Qz() {
        this.NL.Tj(false);
        if (this.NT != null) {
            this.NT.Kt(2);
        }
        if (this.NS) {
            C0090a.bvo("MultiShoot", "stopMultishoot");
            this.NS = false;
            this.NM.JW(FunctionState.SPEED_MULTISHOOTING);
            QA();
            if (this.NO.intValue() == this.NN) {
                this.NR = true;
            }
            C0453h.Rc();
            this.NL.Tk(false);
            this.NV.sendEmptyMessageDelayed(0, 1000);
            C0458b.adi().adk();
        }
    }

    public void Qw(int i) {
        this.NY = i;
    }

    private void Qr() {
        this.NW = C0701s.aqX() + "/" + this.NL.SN().getString(R.string.contents_multiShoot) + '/' + C0616j.aoO(System.currentTimeMillis());
    }

    public boolean Qx() {
        if (!this.NM.JX(FunctionState.SPEED_MULTISHOOTING)) {
            return false;
        }
        if (Qs()) {
            this.NL.Tm();
            StorageManager$StorageStatusType alW = this.NL.Ti().alW((long) C0453h.Re(this.NL));
            if (alW != StorageManager$StorageStatusType.CAN_ADD_REQUEST) {
                C0090a.bvo("MultiShoot", "can not add request " + alW);
                return false;
            }
            C0090a.bvo("MultiShoot", "startSpeedMultiShoot");
            Qu();
            Qy();
            Qt();
            if (this.NT != null) {
                this.NT.Kr();
            }
            this.NM.JY(FunctionState.SPEED_MULTISHOOTING);
            C0458b.adi().adl();
            this.NL.Tj(true);
            return true;
        }
        C0090a.m1e("MultiShoot", "last multishoot haven't finished");
        C0453h.Rd(this.NL);
        this.NT.Kt(1);
        return false;
    }

    private void Qt() {
        this.NL.Tg();
        this.NL.Tk(true);
        C0453h.Rf(this.NL);
    }

    private void Qu() {
        this.NR = false;
        this.NS = true;
        this.NO = Integer.valueOf(0);
        this.NN = 0;
        this.NM.JY(FunctionState.SPEED_MULTISHOOTING);
        this.NX = this.NL.Tn().Gv();
        this.Ob = this.NX.width;
        this.NP = this.NX.height;
        this.NL.Th().afh(false);
        Qr();
    }

    public void aM(ByteBuffer byteBuffer, int i, int i2, Matrix matrix) {
        if (this.NS) {
            if (this.NU.alU()) {
                this.NZ = System.currentTimeMillis();
                this.mFileName = C0616j.aoP(this.NZ);
                int To = this.NL.To();
                matrix.postRotate((float) To);
                this.NQ = 0;
                if (To % 180 == 0) {
                    this.Ob = i;
                    this.NP = i2;
                } else {
                    this.Ob = i2;
                    this.NP = i;
                }
                StorageManager$StorageStatusType alX = this.NL.Ti().alX(new C0625d(this.NL, byteBuffer, i, i2, matrix, 60, this.NW + "/", this.mFileName + ".jpg", Qq(), Qp(), new C0446b()));
                if (alX == StorageManager$StorageStatusType.ADD_REQUEST_SUCCESS) {
                    this.NO = Integer.valueOf(this.NO.intValue() + 1);
                    if (this.NT != null) {
                        this.NT.Kq(this.NO.intValue());
                    }
                    this.NL.SM().arz(this);
                } else {
                    C0090a.bvo("MultiShoot", "storage fail " + alX);
                    if (alX == StorageManager$StorageStatusType.STORAGE_INSUFFICIENT) {
                        Qz();
                        this.NL.Ti().alY(null);
                    } else {
                        this.NL.SM().arz(this);
                    }
                }
            } else {
                C0090a.bvo("MultiShoot", "drop picture");
                this.NL.SM().arz(this);
            }
        }
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (this.NS) {
            if (this.NU.alU()) {
                this.NZ = System.currentTimeMillis();
                this.mFileName = C0616j.aoP(this.NZ);
                this.NQ = C0616j.aoQ(this.NL.SQ(), this.NL.Tp());
                StorageManager$StorageStatusType alX = this.NL.Ti().alX(new C0622a(this.NL, bArr, this.NX.width, this.NX.height, Qq(), this.NW + "/", this.mFileName, this.NQ, false, false, Qp(), new C0446b()));
                if (alX == StorageManager$StorageStatusType.ADD_REQUEST_SUCCESS) {
                    this.NO = Integer.valueOf(this.NO.intValue() + 1);
                    if (this.NT != null) {
                        this.NT.Kq(this.NO.intValue());
                    }
                    Qo().IK(new byte[(((this.NX.width * this.NX.height) * 3) / 2)]);
                } else {
                    C0090a.bvo("MultiShoot", "storage fail " + alX);
                    if (alX == StorageManager$StorageStatusType.STORAGE_INSUFFICIENT || alX == StorageManager$StorageStatusType.OUT_OF_MEMORY) {
                        Qz();
                        this.NL.Ti().alY(null);
                    } else {
                        Qo().IK(bArr);
                    }
                }
            } else {
                C0090a.bvo("MultiShoot", "drop picture");
                Qo().IK(bArr);
            }
        }
    }

    private SparseArray Qq() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(C0523o.BW, Short.valueOf(C0523o.BW(this.NQ)));
        sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
        sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
        return sparseArray;
    }

    private ContentValues Qp() {
        ContentValues contentValues = new ContentValues(9);
        contentValues.put("title", this.mFileName);
        contentValues.put("_display_name", this.mFileName + ".jpg");
        contentValues.put("datetaken", Long.valueOf(this.NZ));
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("orientation", Integer.valueOf(this.NQ));
        contentValues.put("_data", this.NW + "/" + this.mFileName + ".jpg");
        contentValues.put("width", Integer.valueOf(this.Ob));
        contentValues.put("height", Integer.valueOf(this.NP));
        Location age = this.NL.Tq().age();
        if (age != null) {
            contentValues.put("latitude", Double.valueOf(age.getLatitude()));
            contentValues.put("longitude", Double.valueOf(age.getLongitude()));
        }
        return contentValues;
    }

    public void Qv(C0357i c0357i) {
        if (this.NT != null && c0357i == null) {
            this.NT.Ks();
        }
        this.NT = c0357i;
    }

    private boolean Qs() {
        if (this.NR && this.NL.Ti().alZ()) {
            return true;
        }
        return false;
    }

    private C0382m Qo() {
        return this.NL.Tr();
    }

    private void Qy() {
        switch (this.NY) {
            case 0:
                C0453h.Rg(this.NL, this);
                return;
            case 1:
                this.NL.SM().arz(this);
                return;
            default:
                return;
        }
    }

    private void QA() {
        switch (this.NY) {
            case 0:
                this.NL.Ts().abD(this);
                return;
            case 1:
                this.NL.SM().arA(this);
                return;
            default:
                return;
        }
    }
}
