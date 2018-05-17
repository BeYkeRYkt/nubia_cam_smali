package com.android.common.appService;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.custom.C0421M;
import com.android.common.ui.C0325a;
import com.android.common.ui.ZoomSeekBar;
import com.p010a.C0090a;
import java.text.DecimalFormat;
import java.util.List;

public class C0303E {
    private C0329e SR = null;
    private DecimalFormat SS = new DecimalFormat("0.0");
    private View ST = null;
    private Handler SU = new aw(this);
    private C0325a SV = new au(this);
    private TextView SW = null;
    private ImageView SX = null;
    private C0320Z SY = new at(this);
    private OnClickListener SZ = new av(this);
    private C0319Y Ta = null;
    private ImageView Tb = null;
    private List Tc = null;
    private ZoomSeekBar Td = null;
    private RelativeLayout Te = null;

    public C0303E(View view, C0329e c0329e) {
        this.SR = c0329e;
        if (!(this.SR == null || this.SR.Tn() == null)) {
            this.Tc = this.SR.Tn().GM();
        }
        aaC(view);
    }

    public void aaG() {
        if (this.Te != null) {
            this.Te.setVisibility(0);
            aaE();
        }
    }

    private void aaE() {
        this.Te.getLocationOnScreen(new int[2]);
        int width = this.Te.getWidth();
        int height = this.Te.getHeight();
        this.SR.WJ(new int[]{r0[0], width + r0[0], r0[1], r0[1] + height});
    }

    public void aaA() {
        if (this.Te != null) {
            this.Te.setVisibility(8);
        }
        this.SR.WJ(new int[]{0, 0, 0, 0});
        this.SU.removeMessages(1);
    }

    private void aaC(View view) {
        this.Te = (RelativeLayout) view.findViewById(R.id.zoom_layout);
        this.Td = (ZoomSeekBar) view.findViewById(R.id.zoom_seekbar);
        this.SX = (ImageView) view.findViewById(R.id.zoom_add);
        this.Tb = (ImageView) view.findViewById(R.id.zoom_cut);
        this.SW = (TextView) view.findViewById(R.id.zoom_textview);
        this.ST = view.findViewById(R.id.zoom_gap);
        this.Td.gx(this.SV);
        if (C0421M.dC().dD().cQ() && this.SR.SQ() == C0384o.Jr().Js()) {
            if (this.SR.SP() == CameraMember.NORMAL) {
                this.Td.gy(true);
            } else {
                this.Td.gy(false);
            }
        }
        this.SX.setOnClickListener(this.SZ);
        this.Tb.setOnClickListener(this.SZ);
    }

    public void aay(boolean z) {
        this.Td.gu(z);
    }

    public void aax(C0319Y c0319y) {
        this.Ta = c0319y;
        if (this.Ta != null) {
            if (C0421M.dC().dD().cQ()) {
                if (this.SR.SP() == CameraMember.NORMAL) {
                    this.Ta.acR(true);
                } else {
                    this.Ta.acR(false);
                }
            }
            this.Ta.acS(this.SY);
            if (this.Td != null) {
                this.Td.gw(this.Ta.acT());
            }
        }
    }

    public void aaz(boolean z) {
        if (this.ST != null) {
            if (z) {
                this.ST.setVisibility(4);
            } else {
                this.ST.setVisibility(8);
            }
        }
    }

    private void aaF(boolean z) {
        if (this.Td != null) {
            this.Td.gt(z);
            C0090a.bvo("ZoomManager", "setEnable flag : " + z);
        }
    }

    private String aaB(int i) {
        if (this.Tc == null) {
            return null;
        }
        return this.SS.format((double) (((float) ((Integer) this.Tc.get(i)).intValue()) / 100.0f)) + "x";
    }

    private boolean aaD() {
        boolean z = false;
        if (this.SR == null) {
            return false;
        }
        if (this.SR.SX().JV() != DeviceState.SNAPSHOT_IN_PROGRESS && this.SR.SX().JZ() == FunctionState.NORMAL) {
            z = true;
        }
        return z;
    }
}
