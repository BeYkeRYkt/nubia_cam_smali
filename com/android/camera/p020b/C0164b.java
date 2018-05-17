package com.android.camera.p020b;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.camera.R;

public class C0164b {
    private String aGA;
    private OnClickListener aGB;
    private String aGC;
    private OnClickListener aGD;
    private String aGE;
    private String aGF;
    private View aGy;
    private Context aGz;

    public C0164b(Context context) {
        this.aGz = context;
    }

    public C0164b aWp(int i) {
        this.aGA = (String) this.aGz.getText(i);
        return this;
    }

    public C0164b aWo(int i) {
        this.aGF = (String) this.aGz.getText(i);
        return this;
    }

    public C0164b aWq(int i, OnClickListener onClickListener) {
        this.aGE = (String) this.aGz.getText(i);
        this.aGD = onClickListener;
        return this;
    }

    public C0164b aWr(int i, OnClickListener onClickListener) {
        this.aGC = (String) this.aGz.getText(i);
        this.aGB = onClickListener;
        return this;
    }

    public C0163a aWs() {
        LayoutInflater layoutInflater = (LayoutInflater) this.aGz.getSystemService("layout_inflater");
        C0163a c0163a = new C0163a(this.aGz);
        View inflate = layoutInflater.inflate(R.layout.center_dialog_layout1, null);
        ((TextView) inflate.findViewById(R.id.title)).setText(this.aGF);
        if (this.aGE != null) {
            ((Button) inflate.findViewById(R.id.positiveButton)).setText(this.aGE);
            if (this.aGD != null) {
                ((Button) inflate.findViewById(R.id.positiveButton)).setOnClickListener(new C0167e(this, c0163a));
            }
        } else {
            inflate.findViewById(R.id.positiveButton).setVisibility(8);
        }
        if (this.aGC != null) {
            ((Button) inflate.findViewById(R.id.negativeButton)).setText(this.aGC);
            if (this.aGB != null) {
                ((Button) inflate.findViewById(R.id.negativeButton)).setOnClickListener(new C0168f(this, c0163a));
            }
        } else {
            inflate.findViewById(R.id.negativeButton).setVisibility(8);
        }
        if (this.aGA != null) {
            ((TextView) inflate.findViewById(R.id.message)).setText(this.aGA);
        } else if (this.aGy != null) {
            ((LinearLayout) inflate.findViewById(R.id.content)).removeAllViews();
            ((LinearLayout) inflate.findViewById(R.id.content)).addView(this.aGy, new LayoutParams(-1, -1));
        }
        View findViewById = c0163a.findViewById(16908310);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        findViewById = c0163a.getWindow().getDecorView();
        if (!(findViewById == null || findViewById.getBackground() == null)) {
            findViewById.setBackground(null);
        }
        ViewGroup.LayoutParams marginLayoutParams = new MarginLayoutParams(-1, -1);
        int aWt = aWt(c0163a.aGx.getResources(), 46);
        marginLayoutParams.leftMargin = aWt;
        marginLayoutParams.rightMargin = aWt;
        c0163a.setContentView(inflate, marginLayoutParams);
        return c0163a;
    }

    private int aWt(Resources resources, int i) {
        return (int) ((resources.getDisplayMetrics().density * ((float) i)) + 0.5f);
    }
}
