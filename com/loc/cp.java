package com.loc;

import android.telephony.CellLocation;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;

class cp extends PhoneStateListener {
    final /* synthetic */ at bkL;

    private cp(at atVar) {
        this.bkL = atVar;
    }

    public void onCellLocationChanged(CellLocation cellLocation) {
        try {
            this.bkL.bfx = System.currentTimeMillis();
            this.bkL.bfB = cellLocation;
            super.onCellLocationChanged(cellLocation);
        } catch (Throwable th) {
        }
    }

    public void onServiceStateChanged(ServiceState serviceState) {
        try {
            if (serviceState.getState() == 0) {
                String[] bwW = C1253X.bwW(this.bkL.bfo);
                this.bkL.f240u = Integer.parseInt(bwW[0]);
                this.bkL.bfu = Integer.parseInt(bwW[1]);
            }
            super.onServiceStateChanged(serviceState);
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "onServiceStateChanged");
        }
    }

    public void onSignalStrengthsChanged(SignalStrength signalStrength) {
        try {
            if (this.bkL.bfr) {
                this.bkL.bfs = signalStrength.getCdmaDbm();
            } else {
                this.bkL.bfs = signalStrength.getGsmSignalStrength();
                if (this.bkL.bfs != 99) {
                    this.bkL.bfs = (this.bkL.bfs * 2) - 113;
                } else {
                    this.bkL.bfs = -1;
                }
            }
            super.onSignalStrengthsChanged(signalStrength);
        } catch (Throwable th) {
            bx.bBw(th, "ClientInfoUtil", "onSignalStrengthsChanged");
        }
    }
}
