package com.android.multiexposure;

import android.graphics.Bitmap;
import android.net.Uri;
import com.android.common.C0616j;
import com.android.common.p012e.C0458b;
import com.p010a.C0090a;

final class C0985u implements C0977l {
    final /* synthetic */ C0974i amz;

    C0985u(C0974i c0974i) {
        this.amz = c0974i;
    }

    public void axr(byte[] bArr, Uri uri) {
        boolean z = false;
        if (this.amz.alA() == null || this.amz.awm().Tz() == null) {
            String str = "MultiExposureFragment";
            StringBuilder append = new StringBuilder().append("onImageSaveDone mAppService.getHandler() == null:");
            if (this.amz.adA.Tz() == null) {
                z = true;
            }
            C0090a.m1e(str, append.append(z).toString());
        } else if (this.amz.alA().VC()) {
            this.amz.awm().WQ(bArr);
            if (this.amz.alV != 2) {
                this.amz.awR(bArr);
            } else {
                this.amz.awm().Ur();
            }
        } else {
            this.amz.alr();
            this.amz.awm().Tz().sendEmptyMessage(19);
            if (this.amz.alo instanceof C0983s) {
                C0090a.bvm("MultiExposureFragment", "play animation for alphaMultiExoposure!");
                this.amz.alA().Tz().sendEmptyMessage(19);
            }
            this.amz.awF();
            C0458b.adi().adk();
            if (this.amz.alV > 0) {
                C0616j.apa(this.amz.getActivity(), "multiexposure_" + this.amz.alV, "mType: " + this.amz.alV);
            } else if (this.amz.alV > 5) {
                C0616j.apa(this.amz.getActivity(), "multiexposure_6", "mType: " + this.amz.alV);
            }
        }
    }

    public void axs(boolean z) {
        this.amz.alQ.setVisibility(4);
        this.amz.alz();
        if (z) {
            this.amz.adA.Wb(0);
        }
    }

    public void axq(int i, Bitmap bitmap, int i2) {
        if (this.amz.alA() != null) {
            this.amz.alA().WL(false);
            this.amz.awQ(i);
            this.amz.awM();
            this.amz.awO(i, bitmap);
            if (this.amz.alV == 2) {
                this.amz.alx.setEnabled(true);
                this.amz.aly.setEnabled(true);
            }
            this.amz.awo(false);
            C0458b.adi().adk();
        }
    }

    public void axt(boolean z) {
        if (z) {
            this.amz.alu.removeMessages(1004);
            this.amz.awS(true);
            C0458b.adi().adl();
            this.amz.alU = true;
            return;
        }
        C0458b.adi().adk();
        this.amz.alU = false;
        this.amz.alu.sendEmptyMessage(1004);
    }
}
