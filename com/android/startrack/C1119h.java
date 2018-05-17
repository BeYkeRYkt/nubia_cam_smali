package com.android.startrack;

import android.os.Handler;
import android.os.Message;
import com.fotonation.utils.GtStatus;
import com.p010a.C0090a;

public class C1119h extends Handler {
    final /* synthetic */ C1117f aLn;

    public C1119h(C1117f c1117f) {
        this.aLn = c1117f;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case GtStatus.NO_SYSTEM_RESOURCES /*-3*/:
                this.aLn.ain(this.aLn.adA.To(), true);
                break;
            case GtStatus.FAIL /*-1*/:
                this.aLn.bbC();
                break;
            case 69:
                if (this.aLn.aLi != null) {
                    this.aLn.aLi.stop();
                }
                this.aLn.adA.Un(new C1124m(this));
                break;
            case 70:
                this.aLn.adA.Ti().alY(null);
                if (this.aLn.adA.Tl()) {
                    this.aLn.bbH();
                    break;
                }
                C0090a.bvm("StarTrackFragment", "Enough storage: " + this.aLn.adA.Tl() + "; stop capture.");
                this.aLn.bbD();
                return;
            case 114:
                this.aLn.bbD();
                break;
        }
    }
}
