package com.android.camera.p020b;

import android.app.Dialog;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import com.android.camera.R;

public class C0163a extends Dialog {
    private Context aGx;

    public C0163a(Context context) {
        super(context);
        this.aGx = context;
        setCancelable(false);
        getWindow().setGravity(16);
    }

    private void aWm(Window window) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) window.getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        if (i >= i2) {
            i = i2;
        }
        LayoutParams attributes = window.getAttributes();
        attributes.width = (int) (((double) i) * 0.8d);
        attributes.height = -2;
        window.setAttributes(attributes);
        setCanceledOnTouchOutside(false);
        getWindow().setWindowAnimations(R.style.Animation.NubiaDialog.AlertInCenter);
    }

    public void show() {
        super.show();
        aWm(getWindow());
    }
}
