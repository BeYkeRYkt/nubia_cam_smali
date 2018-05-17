package com.loc;

import android.telephony.CellLocation;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;

class aj {
    int f213a = Integer.MAX_VALUE;
    int f214b = Integer.MAX_VALUE;
    int f215c = Integer.MAX_VALUE;
    int f216d = Integer.MAX_VALUE;
    int f217e = Integer.MAX_VALUE;

    aj(CellLocation cellLocation) {
        if (cellLocation != null) {
            bxY(cellLocation);
        }
    }

    private void bxY(CellLocation cellLocation) {
        try {
            if (cellLocation instanceof GsmCellLocation) {
                GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                this.f217e = gsmCellLocation.getCid();
                this.f216d = gsmCellLocation.getLac();
            } else if (cellLocation instanceof CdmaCellLocation) {
                CdmaCellLocation cdmaCellLocation = (CdmaCellLocation) cellLocation;
                this.f215c = cdmaCellLocation.getBaseStationId();
                this.f214b = cdmaCellLocation.getNetworkId();
                this.f213a = cdmaCellLocation.getSystemId();
            }
        } catch (Throwable th) {
            bx.bBw(th, "CustomCellLocation", "load");
        }
    }

    boolean bxZ(aj ajVar) {
        return ajVar.f217e == this.f217e && ajVar.f216d == this.f216d && ajVar.f215c == this.f215c && ajVar.f214b == this.f214b && ajVar.f213a == this.f213a;
    }
}
