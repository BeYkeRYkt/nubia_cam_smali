package com.loc;

import android.telephony.CellLocation;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;

class cq extends PhoneStateListener {
    final /* synthetic */ aJ bkM;

    cq(aJ aJVar) {
        this.bkM = aJVar;
    }

    public void onCellLocationChanged(CellLocation cellLocation) {
        try {
            if (this.bkM.bzq(cellLocation)) {
                this.bkM.bfZ = cellLocation;
                if (this.bkM.bgd != null) {
                    this.bkM.bgd.onCellLocationChanged(cellLocation);
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "CgiManager", "initPhoneStateListener7");
        }
    }

    public void onServiceStateChanged(ServiceState serviceState) {
        try {
            switch (serviceState.getState()) {
                case 0:
                    this.bkM.bzy();
                    break;
                case 1:
                    this.bkM.bzA();
                    break;
            }
            if (this.bkM.bgd != null) {
                this.bkM.bgd.onServiceStateChanged(serviceState);
            }
        } catch (Throwable th) {
            bx.bBw(th, "CgiManager", "initPhoneStateListener4");
        }
    }

    public void onSignalStrengthChanged(int i) {
        int i2 = -113;
        try {
            switch (this.bkM.f165d) {
                case 1:
                    i2 = C1253X.m124a(i);
                    break;
                case 2:
                    i2 = C1253X.m124a(i);
                    break;
            }
            this.bkM.m173a(i2);
            if (this.bkM.bgd != null) {
                this.bkM.bgd.onSignalStrengthChanged(i);
            }
        } catch (Throwable th) {
            bx.bBw(th, "CgiManager", "initPhoneStateListener6");
        }
    }

    public void onSignalStrengthsChanged(SignalStrength signalStrength) {
        if (signalStrength != null) {
            int i = -113;
            try {
                switch (this.bkM.f165d) {
                    case 1:
                        i = C1253X.m124a(signalStrength.getGsmSignalStrength());
                        break;
                    case 2:
                        i = signalStrength.getCdmaDbm();
                        break;
                }
                this.bkM.m173a(i);
                if (this.bkM.bgd != null) {
                    this.bkM.bgd.onSignalStrengthsChanged(signalStrength);
                }
            } catch (Throwable th) {
                bx.bBw(th, "CgiManager", "initPhoneStateListener5");
            }
        }
    }
}
