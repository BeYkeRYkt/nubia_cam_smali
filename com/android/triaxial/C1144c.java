package com.android.triaxial;

import android.content.ContentValues;
import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.location.Location;
import android.media.MediaCodec.BufferInfo;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.exif.C0523o;
import com.android.common.image3d.C0572b;
import com.android.common.image3d.C0573c;
import com.android.common.image3d.C0581l;
import com.android.common.p001l.C0624c;
import com.android.common.p014n.C0111p;
import com.android.common.ui.RotateLayout;
import com.android.common.ui.ZtemtShutterButton;
import com.fotonation.utils.GtStatus;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

public class C1144c extends C0111p implements PreviewCallback, C0573c {
    private int aNM = 0;
    private long aNN = 0;
    private boolean aNO = false;
    private boolean aNP = false;
    private String aNQ = null;
    private int aNR = 0;
    private TextView aNS = null;
    private String aNT = null;
    private String aNU = null;
    private boolean aNV = false;
    private int aNW;
    private ProgressBar aNX = null;
    private RelativeLayout aNY = null;
    private int aNZ = 0;
    private ZtemtShutterButton aOa = null;
    private C0572b aOb = null;
    private RotateLayout aOc = null;
    private C0581l aOd = null;

    public C1144c(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.ztemt_triaxial_layout, viewGroup, false);
        bee(inflate);
        return inflate;
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!this.adB) {
        }
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
            if (this.aOb == null) {
                this.aOb = new C0572b(this.adA.SN().getBaseContext());
                this.aOb.CW(this);
            }
            alr();
        }
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        super.onPause();
        stop();
    }

    public static C1144c bef() {
        return new C1144c(1);
    }

    public boolean Sc() {
        if (this.aNO) {
            stop();
        } else {
            start();
        }
        return true;
    }

    public boolean onBackPressed() {
        if (!this.aNP) {
            return super.onBackPressed();
        }
        stop();
        return true;
    }

    protected void alG() {
        super.alG();
        this.adD.Kb(UIState.NORMAL, FunctionState.NORMAL, DeviceState.IDLE, DeviceState.SNAPSHOT_IN_PROGRESS);
    }

    protected void alF() {
        super.alF();
        this.adD.Ka();
    }

    private void bed(boolean z) {
        if (z) {
            alF();
        } else {
            alG();
        }
    }

    private synchronized void start() {
        alz();
        this.adA.Tj(true);
        if (this.aOa != null) {
            this.aOa.setVisibility(0);
        }
        bed(false);
        this.aNO = true;
        if (!this.aNP) {
            this.adA.Wb(2);
            this.aNR = C0616j.aoQ(this.adA.SQ(), this.adA.Tp());
            this.aNP = true;
            this.adA.Ts().abE(this, this.adA.SQ());
            this.aNW = ((this.adA.Tn().Gv().width * this.adA.Tn().Gv().height) * 3) / 2;
            this.aNM = 0;
            this.aNN = System.currentTimeMillis();
            this.aNU = C0701s.ara(this.adA.UW());
            this.aNQ = C0616j.aoP(this.aNN);
            this.aNT = this.aNU + "/" + this.aNQ + ".jpg";
            this.aOd = new C0581l();
            this.aOd.Dw(this.aNT, this.adA.Tn().Gv().width, this.adA.Tn().Gv().height);
            this.aOd.start();
            this.aOb.start();
            this.aNX.setProgress(this.aNM);
            this.aNY.setVisibility(0);
        }
    }

    private synchronized void stop() {
        alr();
        this.adA.Tj(false);
        if (this.aOa != null) {
            this.aOa.setVisibility(8);
        }
        bed(true);
        this.aNO = false;
        if (this.aNP) {
            this.adA.Wb(3);
            this.aOb.stop();
            this.adA.Ts().abD(this);
            this.aOd.Dx(this.aNR);
            this.aOd.Dy(this.aOb.CQ());
            this.aOd.Dz((int) this.aOb.CR());
            this.aOd.stop();
            this.aOd.release();
            this.aNS.setVisibility(8);
            this.aNY.setVisibility(8);
            this.aOc.setVisibility(0);
            if (new File(this.aNT).exists()) {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(this.aNT, "rw");
                    byte[] bArr = new byte[((int) randomAccessFile.length())];
                    randomAccessFile.read(bArr);
                    this.adA.Ti().alX(new C0624c(this.adA, bArr, beh(), this.aNU + "/", this.aNQ + ".jpg", bec(), this.aNR, null));
                } catch (FileNotFoundException e) {
                    e.printStackTrace();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
            this.aNP = false;
        }
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (bArr.length == this.aNW) {
            BufferInfo bufferInfo = new BufferInfo();
            bufferInfo.size = bArr.length;
            bufferInfo.flags = 0;
            bufferInfo.presentationTimeUs = (long) (this.aNM * 33000);
            this.aNM++;
            this.aOd.DA(bufferInfo, bArr, 8000);
            if (this.aNM == 180) {
                stop();
            } else {
                this.aNX.setProgress(this.aNM);
            }
        }
    }

    public void CY() {
        alA().Tr().IK(new byte[this.aNW]);
    }

    public void CX(int i) {
        switch (i) {
            case GtStatus.FAIL /*-1*/:
                stop();
                return;
            case 1:
            case 2:
            case 3:
            case 4:
                this.aNS.setVisibility(0);
                this.aOc.setVisibility(8);
                return;
            default:
                return;
        }
    }

    private void bee(View view) {
        this.aOc = (RotateLayout) view.findViewById(R.id.triaxial_tip_layout);
        this.aNY = (RelativeLayout) view.findViewById(R.id.progress_view_layout);
        this.aNX = (ProgressBar) view.findViewById(R.id.triaxial_progress_bar);
        this.aNX.setMax(180);
        this.aNS = (TextView) view.findViewById(R.id.move_tip_textid);
        this.aOa = (ZtemtShutterButton) view.findViewById(R.id.triaxial_stop_shutter_button);
        this.aOa.pZ(alo().KS());
        this.aOa.setVisibility(8);
    }

    private ContentValues bec() {
        ContentValues contentValues = new ContentValues(11);
        contentValues.put("_data", this.aNU + "/" + this.aNQ + ".jpg");
        contentValues.put("title", this.aNQ);
        contentValues.put("_display_name", this.aNQ + ".jpg");
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("orientation", Integer.valueOf(this.aNR));
        contentValues.put("datetaken", Long.valueOf(this.aNN));
        contentValues.put("width", Integer.valueOf(this.adA.Tn().Gv().width));
        contentValues.put("height", Integer.valueOf(this.adA.Tn().Gv().height));
        Location age = this.adA.Tq().age();
        if (age != null) {
            contentValues.put("latitude", Double.valueOf(age.getLatitude()));
            contentValues.put("longitude", Double.valueOf(age.getLongitude()));
        }
        return contentValues;
    }

    private SparseArray beh() {
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(C0523o.BX, "image3d");
        sparseArray.put(C0523o.BW, Short.valueOf(C0523o.BW(this.aNR)));
        return sparseArray;
    }

    protected void alr() {
        super.alr();
    }

    protected void alz() {
        super.alz();
    }

    public boolean beg() {
        if (this.aOa == null || this.aOa.getVisibility() != 0) {
            return false;
        }
        this.aOa.performClick();
        return true;
    }
}
