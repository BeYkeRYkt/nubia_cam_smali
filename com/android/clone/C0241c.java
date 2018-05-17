package com.android.clone;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import com.android.camera.R;
import com.android.common.ui.MyVideoView;
import com.android.common.ui.ac;

public class C0241c {
    private Context amN = null;
    private ac amO = null;
    private View amP = null;
    private MyVideoView amQ = null;

    public C0241c(Context context, int i, int i2) {
        this.amN = context;
        this.amO = new ac(i, 1, i2, context);
    }

    public void show() {
        if (this.amO != null) {
            this.amO.show();
            this.amP = this.amO.findViewById(R.id.clone_dialog_button);
            this.amQ = (MyVideoView) this.amO.findViewById(R.id.clone_video);
            String str = "android.resource://" + this.amN.getPackageName() + "/" + R.raw.clone_video;
            this.amQ.setZOrderOnTop(true);
            this.amQ.hM(Uri.parse(str));
            this.amQ.hL(new C0251m(this));
            this.amQ.start();
            this.amP.setOnClickListener(new C0252n(this));
        }
    }

    public void cancel() {
        if (this.amO != null && this.amO.isShowing()) {
            this.amO.cancel();
        }
    }
}
