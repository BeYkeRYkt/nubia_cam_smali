package com.android.gallery3d.p021b;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.TextView;
import com.android.camera.R;

class C0890c extends Dialog {
    private TextView arU;
    private TextView arV;
    private OnClickListener arW;
    private OnClickListener arX;
    final /* synthetic */ C0889a arY;

    public C0890c(C0889a c0889a, Context context) {
        this.arY = c0889a;
        super(context, R.style.dialog);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.bottom_without_title_dialog);
        aFP();
        Window window = getWindow();
        LayoutParams attributes = window.getAttributes();
        window.setGravity(80);
        attributes.width = getContext().getResources().getDimensionPixelSize(R.dimen.dimens_339);
    }

    private void aFP() {
        this.arV = (TextView) findViewById(R.id.confirm_btn);
        this.arV.setOnClickListener(new C0894f(this));
        this.arU = (TextView) findViewById(R.id.cancel_btn);
        this.arU.setOnClickListener(new C0895g(this));
        View decorView = getWindow().getDecorView();
        if (decorView != null) {
            decorView.setBackground(null);
        }
    }

    private void aFR(OnClickListener onClickListener) {
        this.arX = onClickListener;
    }

    private void aFQ(OnClickListener onClickListener) {
        this.arW = onClickListener;
    }
}
