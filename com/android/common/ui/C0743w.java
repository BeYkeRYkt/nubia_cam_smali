package com.android.common.ui;

import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.camerastate.C0404b;
import com.android.common.camerastate.UIState;
import com.android.common.p012e.C0458b;
import com.android.common.p012e.C0460d;
import com.android.common.p014n.C0667i;
import com.android.common.setting.IconListPreference;
import com.p010a.C0090a;
import java.util.ArrayList;

public class C0743w extends RotateImageView implements OnClickListener {
    private static boolean pe = false;
    private static final int pf = Color.argb(255, 255, 255, 255);
    private static final int pg = Color.argb(255, 255, 170, 51);
    private boolean oO = false;
    private boolean oP = false;
    private aj oQ;
    private ArrayList oR = null;
    protected C0404b oS = null;
    protected int oT = 1;
    private AnimatorSet oU;
    private TextView oV = null;
    private TextView[] oW = null;
    private FrameLayout oX = null;
    protected IconListPreference oY;
    private int oZ = -1;
    private TextView pa = null;
    private AnimatorSet pb;
    private final int pc = getResources().getDimensionPixelSize(R.dimen.topbar_padding);
    private final int pd = getResources().getDimensionPixelOffset(R.dimen.dimens_16);

    public C0743w(Context context) {
        super(context);
    }

    public void lX(IconListPreference iconListPreference, C0404b c0404b) {
        this.oY = iconListPreference;
        this.oS = c0404b;
        this.oZ = this.oY.vc();
        setImageResource(this.oY.uP()[this.oZ]);
    }

    public void me(ArrayList arrayList) {
        this.oR = arrayList;
        pe = false;
        this.oO = false;
        setOnClickListener(this);
    }

    public void lY(aj ajVar) {
        this.oQ = ajVar;
    }

    public void mb() {
        if (this.oP && this.oO) {
            mk();
        }
    }

    public void mm(C0329e c0329e) {
        if (this.oY != null) {
            this.oY = (IconListPreference) c0329e.SR().tp(this.oY.vd());
            mo(this.oY.vc());
        }
    }

    public void mn() {
        mo(this.oY.ve());
    }

    protected void mo(int i) {
        if (this.oY != null && i >= 0 && i <= this.oY.uP().length) {
            int i2 = this.oZ;
            this.oY.uY(i);
            setImageResource(this.oY.uP()[i]);
            if (this.oW != null) {
                this.oW[i2].setTextColor(pf);
                this.oW[i].setTextColor(pg);
            }
            this.oZ = i;
            if (this.oQ != null) {
                this.oQ.si();
            }
        }
    }

    private void ml() {
        if (!pe && !mh()) {
            pe = true;
            this.pb.cancel();
            this.oU.cancel();
            this.pb.start();
        }
    }

    private void mk() {
        if (!pe && mh()) {
            pe = true;
            this.pb.cancel();
            this.oU.cancel();
            this.oU.start();
        }
    }

    private TextView ma(CharSequence charSequence, int i, FrameLayout frameLayout, int i2, int i3, int i4, int i5) {
        View textView = new TextView(getContext());
        textView.setText(charSequence);
        textView.setTextSize(0, (float) i5);
        textView.setPaddingRelative(i3, 0, i4, 0);
        textView.setGravity(17);
        textView.setSingleLine(true);
        textView.setEllipsize(TruncateAt.END);
        textView.setTextColor(pf);
        textView.setOnClickListener(new aK(this, i));
        LayoutParams layoutParams = new FrameLayout.LayoutParams((((int) textView.getPaint().measureText(charSequence.toString())) + i3) + i4, -1);
        layoutParams.gravity = 16;
        layoutParams.leftMargin = i2;
        frameLayout.addView(textView, layoutParams);
        return textView;
    }

    private void mf(FrameLayout frameLayout, TextView[] textViewArr) {
        int[] iArr = new int[2];
        ((C0667i) this.oR.get(0)).aiI().getLocationOnScreen(iArr);
        int[] iArr2 = new int[this.oY.vb().length];
        ViewTreeObserver viewTreeObserver = frameLayout.getViewTreeObserver();
        viewTreeObserver.addOnGlobalLayoutListener(new aL(this, textViewArr, viewTreeObserver, iArr, iArr2, frameLayout));
        viewTreeObserver.addOnPreDrawListener(new aO(this, viewTreeObserver));
    }

    private void md() {
        int i = 0;
        if (!this.oP) {
            CharSequence[] vb = this.oY.vb();
            this.oW = new TextView[vb.length];
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            int i2 = iArr[0];
            this.oX = new FrameLayout(getContext());
            ((RelativeLayout) getParent()).addView(this.oX, new RelativeLayout.LayoutParams(-1, -1));
            while (i < vb.length) {
                this.oW[i] = ma(vb[i], i, this.oX, i2, i == 0 ? this.pc * 2 : this.pc, this.pc, this.pd);
                i++;
            }
            this.oW[this.oZ].setTextColor(pg);
            mf(this.oX, this.oW);
            this.oP = true;
        }
    }

    public void lZ() {
        if (!this.oP) {
            md();
        } else if (mh()) {
            mk();
        } else {
            ml();
        }
    }

    public void mc(View view, int i) {
        if (!pe) {
            TextView textView = this.oW[this.oZ];
            if (textView != null) {
                textView.setTextColor(pf);
            }
            ((TextView) view).setTextColor(pg);
            this.oZ = i;
            if (this.oT == 0) {
                C0616j.apa(getContext(), "flash", ((TextView) view).getText() + "");
            } else if (this.oT == 1) {
                C0616j.apa(getContext(), "delay", ((TextView) view).getText() + "");
            }
            mk();
        }
    }

    public void onClick(View view) {
        if (this.oO) {
            mk();
        } else if (getVisibility() == 8 || !this.oS.JX(UIState.TOPBAR_SETTING_POPUP)) {
            C0090a.bvo("NubiaPopupSwitcherButton", "cannot expand, visibility = " + getVisibility());
        } else {
            C0458b.adi().adj(new C0460d(this));
        }
    }

    protected void onDetachedFromWindow() {
        if (this.oU != null) {
            this.oU.cancel();
            this.oU = null;
        }
        if (this.pb != null) {
            this.pb.cancel();
            this.pb = null;
        }
        if (this.oR != null) {
            this.oR.clear();
            this.oR = null;
        }
        mp(false);
        super.onDetachedFromWindow();
    }

    protected boolean mi() {
        return true;
    }

    private void mp(boolean z) {
        if (z) {
            this.oS.Ke(UIState.TOPBAR_SETTING_POPUP);
        } else {
            this.oS.Kf(UIState.TOPBAR_SETTING_POPUP);
        }
    }

    private boolean mh() {
        return this.oS.Kc() == UIState.TOPBAR_SETTING_POPUP;
    }

    private boolean mg() {
        return C0616j.ahp;
    }

    private void mj(String str) {
        C0090a.m0d("NubiaPopupSwitcherButton", str);
    }
}
