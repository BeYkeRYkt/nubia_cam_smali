package com.android.common.appService;

import android.hardware.Camera.PreviewCallback;
import com.android.common.cameradevice.C0382m;
import com.android.common.cameradevice.C0384o;

public class C0309M {
    private PreviewCallback[] TH = new PreviewCallback[C0384o.Jr().Jv()];

    public void abI(PreviewCallback previewCallback, int i) {
        abN(i).Jl(previewCallback);
        this.TH[i] = previewCallback;
    }

    public void abK(PreviewCallback previewCallback, int i) {
        abN(i).Jm(previewCallback);
        this.TH[i] = previewCallback;
    }

    public void abE(PreviewCallback previewCallback, int i) {
        abN(i).Jn(previewCallback);
        this.TH[i] = previewCallback;
    }

    public void abL(PreviewCallback previewCallback) {
        int abM = abM(previewCallback);
        if (abM != -1) {
            this.TH[abM] = null;
            C0382m abN = abN(abM);
            if (abN != null) {
                abN.Jm(null);
            }
        }
    }

    public void abD(PreviewCallback previewCallback) {
        int abM = abM(previewCallback);
        if (abM != -1) {
            this.TH[abM] = null;
            C0382m abN = abN(abM);
            if (abN != null) {
                abN.Jn(null);
            }
        }
    }

    public void abF(PreviewCallback previewCallback) {
        int abM = abM(previewCallback);
        if (abM != -1) {
            this.TH[abM] = null;
            C0382m abN = abN(abM);
            if (abN != null) {
                abN.Jl(null);
            }
        }
    }

    public void abG(int i) {
        if (i != -1) {
            abN(i).Jm(null);
            this.TH[i] = null;
        }
    }

    public void abJ(int i) {
        if (i != -1) {
            this.TH[i] = null;
        }
    }

    public void abH(int i) {
        if (i != -1) {
            this.TH[i] = null;
        }
    }

    private C0382m abN(int i) {
        return C0384o.Jr().Jw(i);
    }

    private int abM(PreviewCallback previewCallback) {
        for (int i = 0; i < this.TH.length; i++) {
            if (this.TH[i] == previewCallback) {
                return i;
            }
        }
        return -1;
    }
}
