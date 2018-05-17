package com.android.common.ui;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.EditText;
import android.widget.TextView;
import com.android.camera.R;

class C0738N extends Dialog {
    private TextView sf = null;
    private OnClickListener sg = null;
    private TextView sh = null;
    private OnClickListener si = null;
    private EditText sj = null;
    private String sk = null;

    public C0738N(Context context) {
        super(context, R.style.dialog);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.more_settings_text_dialog);
        pS();
        Window window = getWindow();
        LayoutParams attributes = window.getAttributes();
        window.setGravity(80);
        attributes.width = getContext().getResources().getDimensionPixelSize(R.dimen.dimens_339);
    }

    private void pS() {
        this.sh = (TextView) findViewById(R.id.confirm_btn);
        this.sh.setOnClickListener(new aY(this));
        this.sf = (TextView) findViewById(R.id.cancel_btn);
        this.sf.setOnClickListener(new aZ(this));
        this.sj = (EditText) findViewById(R.id.editor_id);
        this.sj.setHighlightColor(getContext().getResources().getColor(R.color.alpha30_select_text_green));
        if (!TextUtils.isEmpty(this.sk)) {
            this.sj.setText(this.sk);
            this.sj.setSelection(this.sk.length());
        }
        View decorView = getWindow().getDecorView();
        if (decorView != null) {
            decorView.setBackground(null);
            decorView.setBackgroundDrawable(null);
        }
    }

    public void pU(OnClickListener onClickListener) {
        this.si = onClickListener;
    }

    public void pT(OnClickListener onClickListener) {
        this.sg = onClickListener;
    }

    public void pV(String str) {
        this.sk = str;
    }
}
