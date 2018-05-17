package com.android.common.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.widget.TextView;
import android.widget.Toast;
import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.p010a.C0090a;

public class C0744T extends C0743w {
    private boolean sQ = false;
    private C0329e sR = null;
    private int sS = -1;
    private final BroadcastReceiver sT = new be(this);
    private boolean sU;
    private Toast sV = null;
    private SharedPreferences sW;

    public C0744T(Context context) {
        super(context);
    }

    protected void onWindowVisibilityChanged(int i) {
        if (i == 8 && this.sV != null) {
            this.sV.cancel();
            this.sV = null;
        }
        super.onWindowVisibilityChanged(i);
    }

    public void onClick(View view) {
        if (!this.sU) {
            this.oT = 0;
            super.onClick(view);
        } else if (this.sR == null || this.sR.SM().arE()) {
            qz(this.sR.SN(), R.string.close_flash_in_low_power_mode);
        } else {
            if (this.sV != null) {
                this.sV.cancel();
                this.sV = null;
            }
            this.sV = Toast.makeText(getContext(), R.string.close_flash_in_low_power_mode, 300);
            this.sV.show();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void qy() {
        /*
        r4 = this;
        r3 = 15;
        monitor-enter(r4);
        r0 = r4.sS;	 Catch:{ all -> 0x00aa }
        r1 = -1;
        if (r0 == r1) goto L_0x0012;
    L_0x0008:
        r0 = r4.oS;	 Catch:{ all -> 0x00aa }
        r0 = r0.JZ();	 Catch:{ all -> 0x00aa }
        r1 = com.android.common.camerastate.FunctionState.DELAY_SHOOT;	 Catch:{ all -> 0x00aa }
        if (r0 != r1) goto L_0x0014;
    L_0x0012:
        monitor-exit(r4);
        return;
    L_0x0014:
        r0 = r4.sW;	 Catch:{ all -> 0x00aa }
        if (r0 == 0) goto L_0x0012;
    L_0x0018:
        r0 = r4.sW;	 Catch:{ all -> 0x00aa }
        r1 = "KEY_LOW_POWER_MODE";
        r2 = 0;
        r0 = r0.getBoolean(r1, r2);	 Catch:{ all -> 0x00aa }
        r4.sU = r0;	 Catch:{ all -> 0x00aa }
        r0 = r4.sS;	 Catch:{ all -> 0x00aa }
        if (r0 > r3) goto L_0x002c;
    L_0x0028:
        r0 = r4.sU;	 Catch:{ all -> 0x00aa }
        if (r0 == 0) goto L_0x0075;
    L_0x002c:
        r0 = r4.sS;	 Catch:{ all -> 0x00aa }
        if (r0 <= r3) goto L_0x0073;
    L_0x0030:
        r0 = r4.sU;	 Catch:{ all -> 0x00aa }
        if (r0 == 0) goto L_0x0073;
    L_0x0034:
        r0 = r4.sW;	 Catch:{ all -> 0x00aa }
        r0 = r0.edit();	 Catch:{ all -> 0x00aa }
        r1 = "KEY_LOW_POWER_MODE";
        r2 = 0;
        r0.putBoolean(r1, r2);	 Catch:{ all -> 0x00aa }
        r1 = 0;
        r4.sU = r1;	 Catch:{ all -> 0x00aa }
        r0.apply();	 Catch:{ all -> 0x00aa }
        r0 = r4.sW;	 Catch:{ all -> 0x00aa }
        r1 = "KEY_SAVED_FLASH_MODE";
        r2 = "off";
        r0 = r0.getString(r1, r2);	 Catch:{ all -> 0x00aa }
        r1 = r4.oY;	 Catch:{ all -> 0x00aa }
        r1 = r1.uW(r0);	 Catch:{ all -> 0x00aa }
        r4.mo(r1);	 Catch:{ all -> 0x00aa }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00aa }
        r1.<init>();	 Catch:{ all -> 0x00aa }
        r2 = "Power recovery. Enable Flash: ";
        r1 = r1.append(r2);	 Catch:{ all -> 0x00aa }
        r0 = r1.append(r0);	 Catch:{ all -> 0x00aa }
        r0 = r0.toString();	 Catch:{ all -> 0x00aa }
        r4.qx(r0);	 Catch:{ all -> 0x00aa }
    L_0x0073:
        monitor-exit(r4);
        return;
    L_0x0075:
        r0 = r4.sW;	 Catch:{ all -> 0x00aa }
        r0 = r0.edit();	 Catch:{ all -> 0x00aa }
        r1 = r4.oY;	 Catch:{ all -> 0x00aa }
        r1 = r1.tw();	 Catch:{ all -> 0x00aa }
        r2 = "KEY_SAVED_FLASH_MODE";
        r0.putString(r2, r1);	 Catch:{ all -> 0x00aa }
        r1 = "KEY_LOW_POWER_MODE";
        r2 = 1;
        r0.putBoolean(r1, r2);	 Catch:{ all -> 0x00aa }
        r1 = 1;
        r4.sU = r1;	 Catch:{ all -> 0x00aa }
        r0.apply();	 Catch:{ all -> 0x00aa }
        r0 = "Power is less than threshold. Disable Flash: off";
        r4.qx(r0);	 Catch:{ all -> 0x00aa }
        r0 = r4.oY;	 Catch:{ all -> 0x00aa }
        r1 = "off";
        r0 = r0.uW(r1);	 Catch:{ all -> 0x00aa }
        r4.mo(r0);	 Catch:{ all -> 0x00aa }
        r4.mb();	 Catch:{ all -> 0x00aa }
        goto L_0x0073;
    L_0x00aa:
        r0 = move-exception;
        monitor-exit(r4);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.ui.T.qy():void");
    }

    public void qv(SharedPreferences sharedPreferences) {
        if (!this.sQ) {
            this.sW = sharedPreferences;
            this.sQ = true;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            ((Activity) getContext()).registerReceiver(this.sT, intentFilter);
        }
    }

    public void qw() {
        if (this.sQ) {
            this.sQ = false;
            ((Activity) getContext()).unregisterReceiver(this.sT);
        }
    }

    private void qx(String str) {
        C0090a.m0d("ZtemtFlashButton", str);
    }

    protected boolean mi() {
        return !this.sU;
    }

    public void qu(C0329e c0329e) {
        this.sR = c0329e;
    }

    protected void qz(Activity activity, int i) {
        TextView textView = (TextView) activity.findViewById(R.id.visitor_toast);
        Animation animation = textView.getAnimation();
        if (animation == null) {
            textView.setText(i);
            Animation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(300);
            Animation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
            alphaAnimation2.setDuration(300);
            alphaAnimation2.setStartOffset(1700);
            animation = new AnimationSet(true);
            animation.addAnimation(alphaAnimation);
            animation.addAnimation(alphaAnimation2);
            animation.setAnimationListener(new bf(this, textView));
            textView.setAnimation(animation);
        }
        animation.cancel();
        textView.setVisibility(0);
        animation.start();
    }
}
