package com.loc;

import android.content.Context;
import android.os.HandlerThread;
import android.telephony.CellLocation;
import android.telephony.NeighboringCellInfo;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class aJ {
    boolean f164b = false;
    private Context bfU;
    private TelephonyManager bfV = null;
    private Object bfW;
    private JSONObject bfX;
    private PhoneStateListener bfY;
    private CellLocation bfZ;
    HandlerThread bga = null;
    private boolean bgb = false;
    private Object bgc = new Object();
    private PhoneStateListener bgd = null;
    private int f165d = 9;
    private ArrayList f166e = new ArrayList();
    private int f167f = -113;
    private long f168i = 0;

    public aJ(Context context, JSONObject jSONObject) {
        if (context != null) {
            this.bfX = jSONObject;
            this.bfU = context;
        } else {
            this.bfX = jSONObject;
            this.bfU = context;
        }
        if (this.bfV == null) {
            this.bfV = (TelephonyManager) C1253X.m126a(this.bfU, "phone");
        }
    }

    private CellLocation m172a(List list) {
        int i;
        Throwable th;
        CellLocation cellLocation;
        int i2;
        CellLocation cellLocation2;
        CellLocation gsmCellLocation;
        if (list == null || list.isEmpty()) {
            return null;
        }
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        int i3 = 0;
        CellLocation cellLocation3 = null;
        int i4 = 0;
        CellLocation cellLocation4 = null;
        while (i3 < list.size()) {
            Object obj = list.get(i3);
            if (obj != null) {
                try {
                    int i5;
                    Object cast;
                    Class loadClass = systemClassLoader.loadClass("android.telephony.CellInfoGsm");
                    Class loadClass2 = systemClassLoader.loadClass("android.telephony.CellInfoWcdma");
                    Class loadClass3 = systemClassLoader.loadClass("android.telephony.CellInfoLte");
                    Class loadClass4 = systemClassLoader.loadClass("android.telephony.CellInfoCdma");
                    if (loadClass.isInstance(obj)) {
                        i5 = 1;
                        try {
                            cast = loadClass.cast(obj);
                            i = i5;
                        } catch (Throwable th2) {
                            th = th2;
                            cellLocation = cellLocation4;
                            i2 = 1;
                            bx.bBw(th, "CgiManager", "getCgi");
                            cellLocation2 = cellLocation3;
                            i3++;
                            cellLocation3 = cellLocation2;
                            i4 = i2;
                            cellLocation4 = cellLocation;
                        }
                    } else {
                        if (loadClass2.isInstance(obj)) {
                            i5 = 2;
                            cast = loadClass2.cast(obj);
                        } else if (loadClass3.isInstance(obj)) {
                            i5 = 3;
                            cast = loadClass3.cast(obj);
                        } else if (loadClass4.isInstance(obj)) {
                            i5 = 4;
                            cast = loadClass4.cast(obj);
                        } else {
                            i = 0;
                            cast = null;
                        }
                        i = i5;
                    }
                    if (i > 0) {
                        try {
                            Object bBa = br.bBa(cast, "getCellIdentity", new Object[0]);
                            if (bBa != null) {
                                if (i != 4) {
                                    int bBb;
                                    if (i != 3) {
                                        bBb = br.bBb(bBa, "getLac", new Object[0]);
                                        i5 = br.bBb(bBa, "getCid", new Object[0]);
                                        gsmCellLocation = new GsmCellLocation();
                                        try {
                                            gsmCellLocation.setLacAndCid(bBb, i5);
                                        } catch (Throwable th3) {
                                            cellLocation3 = gsmCellLocation;
                                            th = th3;
                                            cellLocation = cellLocation4;
                                            i2 = i;
                                        }
                                    } else {
                                        bBb = br.bBb(bBa, "getTac", new Object[0]);
                                        i5 = br.bBb(bBa, "getCi", new Object[0]);
                                        gsmCellLocation = new GsmCellLocation();
                                        gsmCellLocation.setLacAndCid(bBb, i5);
                                    }
                                    cellLocation3 = gsmCellLocation;
                                } else {
                                    gsmCellLocation = new CdmaCellLocation();
                                    try {
                                        int bBb2 = br.bBb(bBa, "getSystemId", new Object[0]);
                                        int bBb3 = br.bBb(bBa, "getNetworkId", new Object[0]);
                                        gsmCellLocation.setCellLocationData(br.bBb(bBa, "getBasestationId", new Object[0]), br.bBb(bBa, "getLatitude", new Object[0]), br.bBb(bBa, "getLongitude", new Object[0]), bBb2, bBb3);
                                        cellLocation4 = gsmCellLocation;
                                    } catch (Throwable th4) {
                                        cellLocation = gsmCellLocation;
                                        th = th4;
                                        i2 = i;
                                    }
                                }
                                gsmCellLocation = cellLocation3;
                                break;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            cellLocation = cellLocation4;
                            i2 = i;
                            bx.bBw(th, "CgiManager", "getCgi");
                            cellLocation2 = cellLocation3;
                            i3++;
                            cellLocation3 = cellLocation2;
                            i4 = i2;
                            cellLocation4 = cellLocation;
                        }
                    }
                    cellLocation = cellLocation4;
                    cellLocation2 = cellLocation3;
                    i2 = i;
                } catch (Throwable th32) {
                    Throwable th6 = th32;
                    cellLocation = cellLocation4;
                    i2 = i4;
                    th = th6;
                    bx.bBw(th, "CgiManager", "getCgi");
                    cellLocation2 = cellLocation3;
                    i3++;
                    cellLocation3 = cellLocation2;
                    i4 = i2;
                    cellLocation4 = cellLocation;
                }
            } else {
                cellLocation = cellLocation4;
                cellLocation2 = cellLocation3;
                i2 = i4;
            }
            i3++;
            cellLocation3 = cellLocation2;
            i4 = i2;
            cellLocation4 = cellLocation;
        }
        i = i4;
        gsmCellLocation = cellLocation3;
        if (i == 4) {
            gsmCellLocation = cellLocation4;
        }
        return gsmCellLocation;
    }

    private void m173a(int i) {
        if (i != -113) {
            this.f167f = i;
            switch (this.f165d) {
                case 1:
                case 2:
                    if (!this.f166e.isEmpty()) {
                        try {
                            ((am) this.f166e.get(0)).f227j = this.f167f;
                            break;
                        } catch (Throwable th) {
                            bx.bBw(th, "CgiManager", "hdlCgiSigStrenChange");
                            break;
                        }
                    }
                    break;
            }
            return;
        }
        this.f167f = -113;
    }

    private void bzA() {
        this.bfZ = null;
        this.f165d = 9;
        this.f166e.clear();
    }

    private boolean bzr(int i, int i2) {
        return (i == -1 || i == 0 || i > 65535 || i2 == -1 || i2 == 0 || i2 == 65535 || i2 >= 268435455) ? false : true;
    }

    private synchronized CellLocation bzt(boolean z, boolean z2) {
        C1253X.m125a();
        this.f164b = z;
        if (!this.f164b) {
            if (this.bfV != null) {
                CellLocation l = m175l();
                if (!bzq(l)) {
                    l = m176m();
                }
                if (bzq(l)) {
                    this.bfZ = l;
                }
            }
        }
        if (!bzq(this.bfZ)) {
            return null;
        }
        switch (C1253X.bwX(this.f164b, this.bfZ, this.bfU)) {
            case 1:
                bzu(this.bfZ, z2);
                break;
            case 2:
                bzv(this.bfZ, z2);
                break;
        }
        return this.bfZ;
    }

    private void bzu(CellLocation cellLocation, boolean z) {
        if (cellLocation != null && this.bfV != null) {
            this.f166e.clear();
            if (bzq(cellLocation)) {
                this.f165d = 1;
                this.f166e.add(bzw(cellLocation));
                if (!z) {
                    List<NeighboringCellInfo> neighboringCellInfo = this.bfV.getNeighboringCellInfo();
                    if (neighboringCellInfo != null && !neighboringCellInfo.isEmpty()) {
                        for (NeighboringCellInfo neighboringCellInfo2 : neighboringCellInfo) {
                            if (neighboringCellInfo2 != null && bzr(neighboringCellInfo2.getLac(), neighboringCellInfo2.getCid())) {
                                am bzx = bzx(neighboringCellInfo2);
                                if (!(bzx == null || this.f166e.contains(bzx))) {
                                    this.f166e.add(bzx);
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private void bzv(CellLocation cellLocation, boolean z) {
        Object obj = 1;
        if (cellLocation != null) {
            this.f166e.clear();
            if (C1253X.m136c() >= 5) {
                try {
                    if (this.bfW != null) {
                        Field declaredField = cellLocation.getClass().getDeclaredField("mGsmCellLoc");
                        if (!declaredField.isAccessible()) {
                            declaredField.setAccessible(true);
                        }
                        GsmCellLocation gsmCellLocation = (GsmCellLocation) declaredField.get(cellLocation);
                        if (gsmCellLocation != null) {
                            if (bzq(gsmCellLocation)) {
                                bzu(gsmCellLocation, z);
                                int i = 1;
                                if (r0 != null) {
                                    return;
                                }
                            }
                        }
                        Object obj2 = null;
                        if (obj2 != null) {
                            return;
                        }
                    }
                } catch (Throwable th) {
                    bx.bBw(th, "CgiManager", "hdlCdmaLocChange");
                }
                if (bzq(cellLocation)) {
                    this.f165d = 2;
                    String[] bwW = C1253X.bwW(this.bfV);
                    am amVar = new am(2);
                    amVar.f220a = bwW[0];
                    amVar.f221b = bwW[1];
                    amVar.f226g = br.bBb(cellLocation, "getSystemId", new Object[0]);
                    amVar.bfj = br.bBb(cellLocation, "getNetworkId", new Object[0]);
                    amVar.bfk = br.bBb(cellLocation, "getBaseStationId", new Object[0]);
                    amVar.f227j = this.f167f;
                    amVar.f224e = br.bBb(cellLocation, "getBaseStationLatitude", new Object[0]);
                    amVar.f225f = br.bBb(cellLocation, "getBaseStationLongitude", new Object[0]);
                    if (amVar.f224e >= 0) {
                        if (!(amVar.f225f < 0 || amVar.f224e == Integer.MAX_VALUE || amVar.f225f == Integer.MAX_VALUE)) {
                            if (amVar.f224e == amVar.f225f) {
                                if (amVar.f224e <= 0) {
                                }
                            }
                            if (obj == null) {
                            }
                            if (!this.f166e.contains(amVar)) {
                                this.f166e.add(amVar);
                            }
                        }
                    }
                    amVar.f224e = 0;
                    amVar.f225f = 0;
                    obj = null;
                    if (obj == null) {
                    }
                    if (this.f166e.contains(amVar)) {
                        this.f166e.add(amVar);
                    }
                }
            }
        }
    }

    private am bzw(CellLocation cellLocation) {
        GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
        am amVar = new am(1);
        String[] bwW = C1253X.bwW(this.bfV);
        amVar.f220a = bwW[0];
        amVar.f221b = bwW[1];
        amVar.f222c = gsmCellLocation.getLac();
        amVar.f223d = gsmCellLocation.getCid();
        amVar.f227j = this.f167f;
        return amVar;
    }

    private am bzx(NeighboringCellInfo neighboringCellInfo) {
        if (C1253X.m136c() < 5) {
            return null;
        }
        try {
            am amVar = new am(1);
            String[] bwW = C1253X.bwW(this.bfV);
            amVar.f220a = bwW[0];
            amVar.f221b = bwW[1];
            amVar.f222c = br.bBb(neighboringCellInfo, "getLac", new Object[0]);
            amVar.f223d = neighboringCellInfo.getCid();
            amVar.f227j = C1253X.m124a(neighboringCellInfo.getRssi());
            return amVar;
        } catch (Throwable th) {
            bx.bBw(th, "CgiManager", "getGsm");
            return null;
        }
    }

    private void bzy() {
        Object obj = 1;
        JSONObject jSONObject = this.bfX;
        if (jSONObject != null) {
            try {
                if (jSONObject.has("cellupdate") && jSONObject.getString("cellupdate").equals("0")) {
                    obj = null;
                }
            } catch (Throwable th) {
                bx.bBw(th, "CgiManager", "updateCgi1");
            }
        }
        if (obj != null) {
            try {
                CellLocation.requestLocationUpdate();
            } catch (Throwable th2) {
                bx.bBw(th2, "CgiManager", "updateCgi");
            }
            this.f168i = C1253X.m132b();
        }
    }

    private void bzz() {
        int i = 0;
        this.bfY = new cq(this);
        String str = "android.telephony.PhoneStateListener";
        String str2 = "";
        if (C1253X.m136c() >= 7) {
            try {
                i = br.m425b(str, "LISTEN_SIGNAL_STRENGTHS");
            } catch (Throwable th) {
            }
        } else {
            try {
                i = br.m425b(str, "LISTEN_SIGNAL_STRENGTH");
            } catch (Throwable th2) {
            }
        }
        if (i != 0) {
            try {
                this.bfV.listen(this.bfY, i | 16);
            } catch (Throwable th3) {
                bx.bBw(th3, "CgiManager", "initPhoneStateListener1");
            }
        } else {
            this.bfV.listen(this.bfY, 16);
        }
        try {
            switch (m174k()) {
                case 0:
                    this.bfW = C1253X.m126a(this.bfU, "phone2");
                    return;
                case 1:
                    this.bfW = C1253X.m126a(this.bfU, "phone_msim");
                    return;
                case 2:
                    this.bfW = C1253X.m126a(this.bfU, "phone2");
                    return;
                default:
                    return;
            }
        } catch (Throwable th32) {
            bx.bBw(th32, "CgiManager", "initPhoneStateListener");
        }
        bx.bBw(th32, "CgiManager", "initPhoneStateListener");
    }

    public static int m174k() {
        int i = 0;
        try {
            Class.forName("android.telephony.MSimTelephonyManager");
            i = 1;
        } catch (Throwable th) {
        }
        if (i != 0) {
            return i;
        }
        try {
            Class.forName("android.telephony.TelephonyManager2");
            return 2;
        } catch (Throwable th2) {
            return i;
        }
    }

    private CellLocation m175l() {
        CellLocation cellLocation = null;
        TelephonyManager telephonyManager = this.bfV;
        if (telephonyManager == null) {
            return cellLocation;
        }
        CellLocation cellLocation2;
        try {
            cellLocation2 = telephonyManager.getCellLocation();
        } catch (Throwable th) {
            cellLocation2 = cellLocation;
        }
        if (bzq(cellLocation2)) {
            return cellLocation2;
        }
        try {
            cellLocation2 = m172a((List) br.bBa(telephonyManager, "getAllCellInfo", new Object[0]));
        } catch (NoSuchMethodException e) {
        } catch (Throwable th2) {
        }
        if (bzq(cellLocation2)) {
            return cellLocation2;
        }
        Object bBa;
        try {
            bBa = br.bBa(telephonyManager, "getCellLocationExt", Integer.valueOf(1));
            if (bBa != null) {
                cellLocation2 = (CellLocation) bBa;
            }
        } catch (NoSuchMethodException e2) {
        } catch (Throwable th3) {
        }
        if (bzq(cellLocation2)) {
            return cellLocation2;
        }
        try {
            bBa = br.bBa(telephonyManager, "getCellLocationGemini", Integer.valueOf(1));
            if (bBa != null) {
                cellLocation2 = (CellLocation) bBa;
            }
        } catch (NoSuchMethodException e3) {
        } catch (Throwable th4) {
        }
        return !bzq(cellLocation2) ? cellLocation2 : cellLocation2;
    }

    private CellLocation m176m() {
        CellLocation bBa;
        CellLocation bBa2;
        List list;
        Object obj = this.bfW;
        if (obj == null) {
            return null;
        }
        Object cast;
        String str;
        try {
            Class n = m177n();
            if (n.isInstance(obj)) {
                cast = n.cast(obj);
                str = "getCellLocation";
                bBa = br.bBa(cast, str, new Object[0]);
                if (bBa == null) {
                    try {
                        bBa = br.bBa(cast, str, Integer.valueOf(1));
                    } catch (NoSuchMethodException e) {
                    } catch (Throwable th) {
                        bx.bBw(th, "CgiManager", "getSim2Cgi14");
                    }
                }
                if (bBa == null) {
                    try {
                        bBa2 = br.bBa(cast, "getCellLocationGemini", Integer.valueOf(1));
                    } catch (NoSuchMethodException e2) {
                    } catch (Throwable th2) {
                        bx.bBw(th2, "CgiManager", "getSim2Cgi13");
                    }
                    if (bBa2 == null) {
                        try {
                            list = (List) br.bBa(cast, "getAllCellInfo", new Object[0]);
                        } catch (NoSuchMethodException e3) {
                            list = null;
                            bBa2 = m172a(list);
                            if (bBa2 == null) {
                            }
                            if (bBa2 != null) {
                                bBa2 = bBa2;
                                return bBa2;
                            }
                            bBa2 = null;
                            return bBa2;
                        } catch (Throwable th22) {
                            bx.bBw(th22, "CgiManager", "getSim2Cgi1");
                            list = null;
                            bBa2 = m172a(list);
                            if (bBa2 == null) {
                            }
                            if (bBa2 != null) {
                                bBa2 = bBa2;
                                return bBa2;
                            }
                            bBa2 = null;
                            return bBa2;
                        }
                        bBa2 = m172a(list);
                        if (bBa2 == null) {
                        }
                    }
                }
                bBa2 = bBa;
                if (bBa2 == null) {
                    list = (List) br.bBa(cast, "getAllCellInfo", new Object[0]);
                    bBa2 = m172a(list);
                    if (bBa2 == null) {
                    }
                }
            } else {
                bBa2 = null;
            }
        } catch (NoSuchMethodException e4) {
            bBa = null;
            if (bBa == null) {
                bBa = br.bBa(cast, str, Integer.valueOf(1));
            }
            if (bBa == null) {
                bBa2 = br.bBa(cast, "getCellLocationGemini", Integer.valueOf(1));
                if (bBa2 == null) {
                    list = (List) br.bBa(cast, "getAllCellInfo", new Object[0]);
                    bBa2 = m172a(list);
                    if (bBa2 == null) {
                    }
                }
                if (bBa2 != null) {
                    bBa2 = bBa2;
                    return bBa2;
                }
            }
            bBa2 = bBa;
            if (bBa2 == null) {
                list = (List) br.bBa(cast, "getAllCellInfo", new Object[0]);
                bBa2 = m172a(list);
                if (bBa2 == null) {
                }
            }
            if (bBa2 != null) {
                bBa2 = bBa2;
                return bBa2;
            }
        } catch (Throwable th222) {
            bx.bBw(th222, "CgiManager", "getSim2Cgi");
        }
        if (bBa2 != null) {
            bBa2 = bBa2;
            return bBa2;
        }
        bBa2 = null;
        return bBa2;
    }

    private Class m177n() {
        String str;
        Class cls = null;
        ClassLoader systemClassLoader = ClassLoader.getSystemClassLoader();
        switch (m174k()) {
            case 0:
                str = "android.telephony.TelephonyManager";
                break;
            case 1:
                str = "android.telephony.MSimTelephonyManager";
                break;
            case 2:
                str = "android.telephony.TelephonyManager2";
                break;
            default:
                str = cls;
                break;
        }
        try {
            cls = systemClassLoader.loadClass(str);
        } catch (Throwable th) {
            bx.bBw(th, "CgiManager", "getSim2TmClass");
        }
        return cls;
    }

    public void m178a() {
        bzy();
        try {
            this.f165d = C1253X.bwX(this.f164b, this.bfV.getCellLocation(), this.bfU);
        } catch (Throwable th) {
            bx.bBw(th, "CgiManager", "CgiManager");
            this.f165d = 9;
        }
        if (this.bga == null) {
            this.bga = new ab(this, "listenerPhoneStateThread");
            this.bga.start();
        }
    }

    public boolean m179a(boolean z) {
        if (z || this.f168i == 0) {
            return false;
        }
        return ((C1253X.m132b() - this.f168i) > 30000 ? 1 : ((C1253X.m132b() - this.f168i) == 30000 ? 0 : -1)) >= 0;
    }

    public ArrayList m180b() {
        return this.f166e;
    }

    public void bzB(PhoneStateListener phoneStateListener) {
        this.bgd = phoneStateListener;
    }

    public CellLocation bzp(boolean z, boolean z2) {
        return bzt(z, z2);
    }

    public boolean bzq(CellLocation cellLocation) {
        if (cellLocation == null) {
            return false;
        }
        boolean z = true;
        switch (C1253X.bwX(this.f164b, cellLocation, this.bfU)) {
            case 1:
                GsmCellLocation gsmCellLocation = (GsmCellLocation) cellLocation;
                z = bzr(gsmCellLocation.getLac(), gsmCellLocation.getCid());
                break;
            case 2:
                try {
                    if (br.bBb(cellLocation, "getSystemId", new Object[0]) <= 0 || br.bBb(cellLocation, "getNetworkId", new Object[0]) < 0 || br.bBb(cellLocation, "getBaseStationId", new Object[0]) < 0) {
                        z = false;
                        break;
                    }
                    break;
                } catch (Throwable th) {
                    bx.bBw(th, "CgiManager", "cgiUseful");
                    break;
                }
                break;
        }
        if (!z) {
            this.f165d = 9;
        }
        return z;
    }

    public void bzs(JSONObject jSONObject) {
        this.bfX = jSONObject;
    }

    public am m181c() {
        ArrayList arrayList = this.f166e;
        return arrayList.size() < 1 ? null : (am) arrayList.get(0);
    }

    public int m182d() {
        return this.f165d;
    }

    public CellLocation m183e() {
        CellLocation cellLocation = null;
        if (this.bfV == null) {
            return null;
        }
        try {
            cellLocation = this.bfV.getCellLocation();
            if (bzq(cellLocation)) {
                this.bfZ = cellLocation;
            }
        } catch (Throwable th) {
            bx.bBw(th, "CgiManager", "getCellLocation");
        }
        return cellLocation;
    }

    public TelephonyManager m184f() {
        return this.bfV;
    }

    public void m185g() {
        bzA();
    }

    public void m186h() {
        bzy();
    }

    public void m187i() {
        if (!(this.bfV == null || this.bfY == null)) {
            try {
                this.bfV.listen(this.bfY, 0);
            } catch (Throwable th) {
                bx.bBw(th, "CgiManager", "destroy");
            }
        }
        this.bfY = null;
        synchronized (this.bgc) {
            this.bgb = true;
        }
        if (this.bga != null) {
            this.bga.quit();
            this.bga = null;
        }
        this.f166e.clear();
        this.f167f = -113;
        this.bfV = null;
        this.bfW = null;
    }

    public void m188j() {
        switch (this.f165d) {
            case 1:
                if (!this.f166e.isEmpty()) {
                    return;
                }
                break;
            case 2:
                if (!this.f166e.isEmpty()) {
                    return;
                }
                break;
            default:
                return;
        }
        this.f165d = 9;
    }
}
