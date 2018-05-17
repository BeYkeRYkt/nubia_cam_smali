package com.android.common;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.android.camera.R;
import com.p010a.C0090a;

public class C0369b {
    private static int agB = 1;
    private boolean agC = false;
    private ActivityBase agD = null;
    private AlertDialog agE = null;
    private TextView agF = null;
    private boolean agG;
    private boolean agH;
    private boolean agI;
    private boolean agJ;
    private boolean agK;
    private int agL;
    private int agM;
    private int agN;
    private int agO;
    private int agP;
    private boolean agQ;
    private boolean agR;
    private boolean agS;
    private boolean agT;
    private TextView agU = null;
    private View agV = null;

    public C0369b(Context context) {
        this.agD = (ActivityBase) context;
        this.agV = LayoutInflater.from(this.agD).inflate(R.layout.permission_tips, null);
        this.agF = (TextView) this.agV.findViewById(R.id.permission_tips_content);
        this.agU = (TextView) this.agV.findViewById(R.id.permission_tips_title);
        this.agU.setText(R.string.permission_tips_title);
        this.agE = new Builder(this.agD).setCustomTitle(this.agV).setNegativeButton(R.string.cancel, new C0263E(this)).setCancelable(false).setOnKeyListener(new C0264F(this)).setPositiveButton(this.agD.getResources().getString(R.string.permission_tips_dialog_goset), new C0265G(this)).create();
    }

    private StringBuilder aoe(int i, StringBuilder stringBuilder) {
        stringBuilder.append(this.agD.getString(R.string.permission_dots));
        stringBuilder.append(" ");
        stringBuilder.append(this.agD.getString(i));
        stringBuilder.append("\n");
        return stringBuilder;
    }

    private void anZ() {
        StringBuilder stringBuilder = new StringBuilder();
        if (this.agD.checkSelfPermission("android.permission.CAMERA") != 0) {
            stringBuilder = aoe(R.string.camera_app_name, stringBuilder);
        }
        if (this.agD.checkSelfPermission("android.permission.RECORD_AUDIO") != 0) {
            stringBuilder = aoe(R.string.record_audio_permission, stringBuilder);
        }
        if (this.agD.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
            stringBuilder = aoe(R.string.read_external_Storage_permission, stringBuilder);
        }
        this.agF.setText(stringBuilder.toString());
    }

    public boolean aoc() {
        if (this.agD.checkSelfPermission("android.permission.CAMERA") == 0 && this.agD.checkSelfPermission("android.permission.RECORD_AUDIO") == 0 && this.agD.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0) {
            this.agK = true;
            return true;
        }
        this.agK = false;
        return false;
    }

    public boolean aod() {
        boolean z = false;
        if (this.agD.checkSelfPermission("android.permission.CAMERA") == 0 && this.agD.checkSelfPermission("android.permission.RECORD_AUDIO") == 0 && this.agD.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0) {
            this.agK = true;
            return true;
        }
        this.agK = false;
        if (!(this.agD.checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0 && this.agK)) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.agD);
            if (!(defaultSharedPreferences.getBoolean("request_permission", false) && this.agK)) {
                C0090a.bvo("PermissionRequest", "Request permission");
                this.agP = 0;
                aob();
                Editor edit = defaultSharedPreferences.edit();
                edit.putBoolean("request_permission", true);
                edit.apply();
                z = true;
            }
        }
        return z;
    }

    private void aob() {
        if (this.agD.checkSelfPermission("android.permission.CAMERA") != 0) {
            this.agP++;
            this.agQ = true;
        } else {
            this.agH = true;
        }
        if (this.agD.checkSelfPermission("android.permission.RECORD_AUDIO") != 0) {
            this.agP++;
            this.agS = true;
        } else {
            this.agI = true;
        }
        if (this.agD.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0) {
            this.agP++;
            this.agT = true;
        } else {
            this.agJ = true;
        }
        if (this.agD.checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
            this.agP++;
            this.agR = true;
        }
        if (this.agP != 0) {
            aoa();
        }
    }

    private void aoa() {
        int i = 0;
        String[] strArr = new String[this.agP];
        if (this.agQ) {
            strArr[0] = "android.permission.CAMERA";
            this.agL = 0;
            i = 1;
        }
        if (this.agS) {
            strArr[i] = "android.permission.RECORD_AUDIO";
            this.agN = i;
            i++;
        }
        if (this.agT) {
            strArr[i] = "android.permission.READ_EXTERNAL_STORAGE";
            this.agO = i;
            i++;
        }
        if (this.agR) {
            strArr[i] = "android.permission.ACCESS_COARSE_LOCATION";
            this.agM = i;
        }
        C0090a.m0d("PermissionRequest", "request permission+++mHasCriticalPermissions===" + this.agK);
        this.agD.requestPermissions(strArr, agB);
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.agQ) {
            if (this.agL >= iArr.length || iArr[this.agL] != 0) {
                this.agG = true;
            } else {
                C0090a.bvo("PermissionRequest", "Hold Camera Permission");
                this.agH = true;
            }
        }
        if (this.agS) {
            if (this.agN >= iArr.length || iArr[this.agN] != 0) {
                this.agG = true;
            } else {
                C0090a.bvo("PermissionRequest", "Hold Microphone Permission");
                this.agI = true;
            }
        }
        if (this.agT) {
            if (this.agO >= iArr.length || iArr[this.agO] != 0) {
                this.agG = true;
            } else {
                C0090a.bvo("PermissionRequest", "Hold Storage Permission");
                this.agJ = true;
            }
        }
        if (this.agR && this.agM < iArr.length && iArr[this.agM] == 0) {
            C0090a.bvo("PermissionRequest", "Hold Location Permission");
        }
        if (this.agH && this.agI && this.agJ) {
            this.agK = true;
        } else if (this.agG) {
            C0090a.m1e("PermissionRequest", "Critical permission denied");
            if (!this.agC) {
                aof();
            }
        }
    }

    public boolean aog() {
        return this.agK;
    }

    public boolean aoh() {
        return this.agC;
    }

    public void aof() {
        this.agC = true;
        anZ();
        this.agE.show();
    }
}
