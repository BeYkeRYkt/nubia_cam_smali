package com.loc;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;

class C1276w extends BroadcastReceiver {
    final /* synthetic */ cd bdN;

    private C1276w(cd cdVar) {
        this.bdN = cdVar;
    }

    public void onReceive(Context context, Intent intent) {
        Collection collection = null;
        if (context != null && intent != null) {
            try {
                String action = intent.getAction();
                if (!TextUtils.isEmpty(action)) {
                    C1272r bFc = this.bdN.bjv;
                    if (!action.equals("android.net.wifi.SCAN_RESULTS")) {
                        if (action.equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                            if (this.bdN.bjv != null) {
                                int i = 4;
                                try {
                                    i = bFc.m575c();
                                } catch (Throwable th) {
                                    bx.bBw(th, "APS", "onReceive part");
                                }
                                if (this.bdN.bjy == null) {
                                    this.bdN.bjy = new ArrayList();
                                }
                                switch (i) {
                                    case 0:
                                        this.bdN.bEt();
                                        break;
                                    case 1:
                                        this.bdN.bEt();
                                        break;
                                    case 2:
                                    case 3:
                                        break;
                                    case 4:
                                        this.bdN.bEt();
                                        break;
                                    default:
                                        break;
                                }
                            }
                        } else if (action.equals("android.intent.action.SCREEN_ON")) {
                            this.bdN.f362j = true;
                        } else if (action.equals("android.intent.action.SCREEN_OFF")) {
                            this.bdN.f362j = false;
                            if (this.bdN.bjR != null) {
                                this.bdN.bEA();
                            }
                        } else if (!action.equals("android.intent.action.AIRPLANE_MODE") && !action.equals("android.location.GPS_FIX_CHANGE") && action.equals("android.net.conn.CONNECTIVITY_CHANGE") && this.bdN.bEJ()) {
                            this.bdN.bEm(true, 2);
                        }
                    } else if (bFc != null) {
                        collection = bFc.m572a();
                        if (collection != null) {
                            synchronized (this.bdN.bko) {
                                this.bdN.bjy.clear();
                                this.bdN.bjy.addAll(collection);
                            }
                        }
                        if (this.bdN.bjR != null) {
                            this.bdN.bjR.m227a();
                        }
                        this.bdN.bjJ = C1253X.m132b();
                    }
                }
            } catch (Throwable th2) {
                bx.bBw(th2, "APS", "onReceive");
            }
        }
    }
}
