package com.android.pretty;

import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.hardware.Camera.Size;
import com.android.camera.R;
import com.android.common.C0701s;
import com.android.common.appService.C0329e;
import com.android.common.exif.C0523o;
import com.android.common.p012e.C0458b;
import com.nubia.camera.common.Native.BufferCell;
import com.p010a.C0090a;
import com.ucamera.ucam.jni.BurstProcessJni;
import com.ucamera.ucam.jni.BurstProcessJni.CallBackJNI;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public class C1084p implements CallBackJNI {
    public static final String aux = (C0701s.aie + "/UCam");
    private final int STATE_IDLE = 0;
    private final int auA = 2;
    private final int auB = 1;
    private final int auC = 8;
    private boolean auD = false;
    private C0329e auE = null;
    private int auF = 0;
    private int auG = 0;
    private Bitmap[] auH = null;
    private boolean auI = false;
    private C0523o auJ = null;
    private C1085q auK = new C1085q(this);
    private BufferCell[] auL = null;
    private C1086s auM = null;
    private C1082r auN = null;
    private int auO = 0;
    private int auP = 0;
    private byte[] auQ = null;
    private int auR = 0;
    private boolean auS = false;
    private C1087t auT = null;
    public ArrayList auU = new ArrayList();
    private Bitmap[] auV = null;
    private final int auy = 4;
    private final int auz = 3;

    public C1084p(C0329e c0329e) {
        this.auE = c0329e;
    }

    public void aIw() {
        BurstProcessJni.setBurstListener(this);
    }

    public void release() {
        BurstProcessJni.setBurstListener(null);
    }

    public void aIx(C1082r c1082r) {
        this.auN = c1082r;
    }

    public void aIV(byte[] bArr) {
        if (aIy()) {
            this.auR++;
            C0090a.m1e("BestPhotoService", "receiverawpircture " + this.auR + "; data = " + bArr);
            aIE(bArr);
            this.auT.putData(this.auR - 1, bArr);
            if (this.auR == 10) {
                this.auT.aJx();
            }
            return;
        }
        C0090a.m1e("BestPhotoService", "receive raw picture after cancel best photoing.");
    }

    public void aIv(byte[] bArr) {
        aII(bArr);
        this.auL[this.auO].btF(bArr);
        this.auO++;
        C0090a.m1e("BestPhotoService", "receivejpegpircture " + this.auO + "; data = " + bArr);
        if (10 == this.auO) {
            aJc();
            aIP();
        }
    }

    public void updateJniStatus(int i, int i2, String str) {
        C0090a.m1e("BestPhotoService", "callback from CMM Jni(updateJniStatus):  result = " + i + " number = " + i2 + " name = " + str);
        if (i == 2 && aIy() && this.auR == 10) {
            this.auF = i2;
            C0090a.m1e("BestPhotoService", "Get best photo(updateJniStatus): " + this.auF);
            this.auK.sendEmptyMessage(1);
        }
    }

    public boolean aIu() {
        return this.auE.Vu();
    }

    public void aIt() {
        if (!this.auE.VD() && aIu()) {
            aIM();
            Size Gv = this.auE.Tn().Gv();
            aJa(Gv.width, Gv.height);
            this.auT = new C1087t(this);
            this.auT.start();
            this.auE.UR().m31h();
            aIR();
            this.auG = 1;
        }
    }

    public void aIz(boolean z) {
        if (aIy()) {
            if (this.auM != null) {
                this.auM.cancel();
                try {
                    this.auM.join();
                } catch (InterruptedException e) {
                }
                this.auM = null;
            }
            if (this.auT != null) {
                this.auT.cancel();
                try {
                    this.auT.join();
                } catch (InterruptedException e2) {
                }
                this.auT = null;
            }
            if (this.auD) {
                stopCMM();
            }
            if (this.auJ != null) {
                this.auJ = null;
            }
            aIY();
            aIX();
            aIQ();
            this.auE.UR().m36n();
            if (z) {
                aJb();
            }
            C0458b.adi().adk();
            this.auG = 0;
            this.auO = 0;
            this.auR = 0;
            this.auI = false;
            this.auS = false;
        }
    }

    public Bitmap aIB(int i) {
        this.auP = i;
        return this.auH[i];
    }

    public void aIA() {
        if (!aIy() || this.auG == 3) {
            C0090a.m1e("BestPhotoService", "receive save button click after cancel best photoing or .");
            return;
        }
        this.auG = 3;
        aIT();
        aIZ(this.auL[this.auP]);
    }

    public boolean aIy() {
        return this.auG != 0;
    }

    public boolean aID() {
        return this.auG == 3;
    }

    public boolean aIC() {
        return this.auG == 1;
    }

    private void aIR() {
        if (this.auN != null) {
            this.auN.aIh();
        }
    }

    private void aIP() {
        if (this.auN != null) {
            this.auN.aIf();
        }
    }

    private void aIO(List list, int i) {
        if (this.auN != null) {
            this.auN.aIe(list, i);
        }
    }

    private void aIT() {
        if (this.auN != null) {
            this.auN.aIj();
        }
    }

    private void aIS() {
        if (this.auN != null) {
            this.auN.aIi();
        }
    }

    private void aIQ() {
        if (this.auN != null) {
            this.auN.aIg();
        }
    }

    private void aIM() {
        aIL();
        aIN();
        aIF();
    }

    private void aIN() {
        if (this.auL == null) {
            this.auL = new BufferCell[10];
        }
        Size Gr = this.auE.Tn().Gr();
        for (int i = 0; i < 10; i++) {
            this.auL[i] = new BufferCell(((Gr.width * Gr.height) * 3) / 2);
        }
    }

    private void aIZ(BufferCell bufferCell) {
        boolean z = true;
        String aIH = aIH();
        if (aIJ().getInt("pretty_expandable_item", 5) == 0) {
            z = false;
        }
        if ("none".equals(aIH)) {
            this.auM = new C1086s(this, bufferCell, aIH, z, Integer.parseInt(aIJ().getString("pref_camera_pretty_smooth_key", aIK(R.string.pref_camera_pretty_smooth_default))), Integer.parseInt(aIJ().getString("pref_camera_pretty_toning_key", aIK(R.string.pref_camera_pretty_toning_default))), Integer.parseInt(aIJ().getString("pref_camera_pretty_slimming_key", aIK(R.string.pref_camera_pretty_slimming_default))));
            this.auM.start();
        } else {
            this.auM = new C1086s(this, bufferCell, aIH, z, Integer.parseInt(aIJ().getString("pref_camera_pretty_smooth_key", aIK(R.string.pref_camera_pretty_smooth_default))), Integer.parseInt(aIJ().getString("pref_camera_pretty_toning_key", aIK(R.string.pref_camera_pretty_toning_default))), Integer.parseInt(aIJ().getString("pref_camera_pretty_slimming_key", aIK(R.string.pref_camera_pretty_slimming_default))));
            this.auM.start();
        }
    }

    private String aIK(int i) {
        return this.auE.SN().getString(i);
    }

    private void aJa(int i, int i2) {
        if (this.auD) {
            C0090a.m1e("BestPhotoService", "CMM is already start. Warning, return..");
            return;
        }
        String aIG = aIG();
        BurstProcessJni.initCMM(aux + "/" + aIG, aIG, new byte[(((i * i2) * 3) / 2)].length, i, i2, 270, 1, false, true, 10);
        this.auD = true;
    }

    private void aIX() {
        int i = 0;
        while (i < 10) {
            if (!(this.auH[i] == null || this.auH[i].isRecycled())) {
                this.auH[i].recycle();
                this.auH[i] = null;
            }
            if (!(this.auV[i] == null || this.auV[i].isRecycled())) {
                this.auV[i].recycle();
                this.auV[i] = null;
            }
            i++;
        }
    }

    private String aIG() {
        String str = "";
        str = new SimpleDateFormat("'Burst'_yyyyMMdd_HHmmss", Locale.US).format(new Date(System.currentTimeMillis()));
        String str2 = aux;
        int indexOf = str2.indexOf("/Burst_");
        if (indexOf > 0) {
            str2.substring(0, indexOf);
        }
        return str;
    }

    private void aIE(byte[] bArr) {
        BurstProcessJni.addToCMM(bArr, null, bArr.length);
    }

    private void aIL() {
        if (this.auH == null) {
            this.auH = new Bitmap[10];
        }
        if (this.auV == null) {
            this.auV = new Bitmap[10];
        }
        for (int i = 0; i < 10; i++) {
            this.auH[i] = null;
            this.auV[i] = null;
        }
    }

    private void aIW() {
        if (this.auS && this.auI) {
            C0090a.bvo("BestPhotoService", "Reveive CMM Callback");
            if (aIy()) {
                aIO(Arrays.asList(this.auV), this.auF);
                this.auG = 2;
            }
            this.auR = 0;
            this.auO = 0;
            stopCMM();
            return;
        }
        C0090a.bvo("BestPhotoService", "mRawDataProcessDone = " + this.auS + "; mRawDataProcessDone = " + this.auI);
    }

    private void stopCMM() {
        if (this.auD) {
            BurstProcessJni.stopCMM();
            this.auD = false;
            return;
        }
        C0090a.m1e("BestPhotoService", "CMM is already stop. Warning, return..");
    }

    private void aJc() {
        this.auE.TA();
    }

    private void aJb() {
        this.auE.TB();
    }

    private void aIU(byte[] bArr) {
        this.auE.UR().m36n();
        aJb();
        aIY();
        aIX();
        this.auG = 0;
        this.auI = false;
        this.auS = false;
        aIS();
        C0458b.adi().adk();
    }

    private void aIY() {
        if (this.auL != null) {
            for (int i = 0; i < 10; i++) {
                if (this.auL[i] != null) {
                    this.auL[i].release();
                    this.auL[i] = null;
                }
            }
        }
    }

    private void aIF() {
        Size Gv = this.auE.Tn().Gv();
        for (int i = 0; i < 10; i++) {
            this.auE.Tr().IR(new byte[(((Gv.width * Gv.height) * 3) / 2)]);
        }
    }

    private String aIH() {
        return aIJ().getString("pref_camera_pretty_effect_key", "none");
    }

    private void aII(byte[] bArr) {
        if (this.auJ == null) {
            try {
                this.auJ = new C0523o();
                this.auJ.BZ(bArr);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private SharedPreferences aIJ() {
        return this.auE.SS();
    }
}
