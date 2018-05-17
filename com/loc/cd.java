package com.loc;

import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.SystemClock;
import android.text.TextUtils;
import com.autonavi.aps.amapapi.model.AmapLoc;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

public class cd {
    public static long f359a = 0;
    private static int bku = -1;
    public boolean f360b = false;
    private C1276w bjA = null;
    private WifiInfo bjB = null;
    private JSONObject bjC = null;
    private AmapLoc bjD = null;
    private long bjE = 0;
    private long bjF = 0;
    private boolean bjG = false;
    private boolean bjH = false;
    private long bjI = 0;
    private long bjJ = 0;
    private int bjK = 0;
    private String bjL = "00:00:00:00:00:00";
    private String bjM = null;
    private C1273t bjN = null;
    private Timer bjO = null;
    private TimerTask bjP = null;
    private int bjQ = 0;
    private af bjR = null;
    private bK bjS = null;
    private int[] bjT = new int[]{0, 0, 0};
    private String bjU = null;
    private String bjV = null;
    private long bjW = 0;
    private long bjX = 0;
    private String bjY = null;
    private am bjZ = null;
    private Context bjt = null;
    private ConnectivityManager bju = null;
    private C1272r bjv = null;
    private aJ bjw = null;
    private ArrayList bjx = new ArrayList();
    private ArrayList bjy = new ArrayList();
    private HashMap bjz = new HashMap();
    private bu bka = null;
    private StringBuilder bkb = new StringBuilder();
    bi bkc;
    boolean bkd = false;
    private AmapLoc bke = null;
    private String bkf = null;
    private Timer bkg = null;
    private TimerTask bkh = null;
    private String bki = null;
    private int bkj = 0;
    private int bkk = 0;
    private boolean bkl = true;
    private boolean bkm = true;
    private boolean bkn = true;
    Object bko = new Object();
    public boolean bkp = false;
    private boolean bkq = false;
    int bkr = 12;
    TreeMap bks = null;
    co bkt = new co(this);
    private String bkv = null;
    private String bkw = null;
    StringBuilder bkx = null;
    private boolean bky = false;
    int f361d = -1;
    boolean f362j = true;

    private AmapLoc m474a(String str, String str2) {
        int i = 0;
        if (!bQ.m339f()) {
            return null;
        }
        if (str != null && str.equals(this.bkf) && this.bke != null) {
            return this.bke;
        }
        bEU();
        ArrayList b = C1271p.m567a().m570b();
        try {
            int i2;
            AmapLoc bEW;
            if (by.m447b()) {
                ArrayList bBH = by.bBH(str, false);
                if (bBH != null) {
                    int size = bBH.size();
                    for (i2 = 0; i2 < size; i2++) {
                        String str3 = (String) bBH.get(i2);
                        bEW = bEW(str, str2, null, str3.substring(str3.lastIndexOf(File.separator) + 1, str3.length()), 0);
                        if (C1253X.bwV(bEW)) {
                            this.bkf = str;
                            this.bke = bEW;
                            return bEW;
                        }
                    }
                }
            }
            i2 = b.size();
            if (i2 != 0) {
                while (i < i2) {
                    bEW = bEW(str, str2, null, ((au) b.get(i)).m281a(), 0);
                    if (C1253X.bwV(bEW)) {
                        this.bkf = str;
                        this.bke = bEW;
                        return bEW;
                    }
                    i++;
                }
            }
        } catch (Throwable th) {
            bx.bBw(th, "APS", "getPureOfflineLocation");
        }
        return null;
    }

    private boolean m475a(int i) {
        int i2 = 20;
        try {
            i2 = WifiManager.calculateSignalLevel(i, 20);
        } catch (Throwable e) {
            bx.bBw(e, "APS", "wifiSigFine");
        }
        return i2 >= 1;
    }

    private boolean m476a(long j) {
        if (C1253X.m132b() - j >= 800) {
            return false;
        }
        long j2 = 0;
        if (C1253X.bwV(this.bjD)) {
            j2 = C1253X.m125a() - this.bjD.bHL();
        }
        return (j2 > 10000 ? 1 : (j2 == 10000 ? 0 : -1)) <= 0;
    }

    private void bEA() {
        if (bEx()) {
            bx.f343l = 20;
            try {
                this.bjR.m231d();
            } catch (Throwable th) {
                bx.bBw(th, "APS", "stop3rdCM");
            }
        }
    }

    private void bEB(SharedPreferences sharedPreferences) {
        if (this.bjt != null && sharedPreferences != null) {
            String str;
            String str2 = "smac";
            if (sharedPreferences.contains(str2)) {
                try {
                    str = new String(cz.m552b(sharedPreferences.getString(str2, null)), "UTF-8");
                } catch (Throwable th) {
                    bx.bBw(th, "APS", "getSmac");
                    sharedPreferences.edit().remove(str2).commit();
                }
                if (!(TextUtils.isEmpty(str) || str.equals("00:00:00:00:00:00"))) {
                    this.bjL = str;
                }
            }
            str = null;
            this.bjL = str;
        }
    }

    private void bEC() {
        if (this.bjt != null && !TextUtils.isEmpty(this.bjL)) {
            Object a;
            SharedPreferences sharedPreferences = this.bjt.getSharedPreferences("pref", 0);
            try {
                a = cz.m549a(this.bjL.getBytes("UTF-8"));
            } catch (Throwable th) {
                bx.bBw(th, "APS", "setSmac");
                a = null;
            }
            if (!TextUtils.isEmpty(a)) {
                sharedPreferences.edit().putString("smac", a).commit();
            }
        }
    }

    private void bED() {
        bx.f336d = "";
        bx.f337e = "";
        bx.f339g = "";
    }

    private void bEE(int i) {
        int i2 = 70254591;
        if (bEw()) {
            try {
                bEH();
                switch (i) {
                    case 2:
                        if (bEJ()) {
                            i2 = 2083520511;
                            break;
                        }
                    case 1:
                        i2 = 674234367;
                        break;
                }
                this.bjR.bxB(null, bEI(1, i2, 1));
                this.bjS = this.bjR.m233f();
                if (this.bjS != null) {
                    byte[] a = this.bjS.m313a();
                    Object bBf = this.bka.bBf(a, this.bjt, "http://cgicol.amap.com/collection/writedata?ver=v1.0_ali&", false);
                    if (bEw()) {
                        if (!TextUtils.isEmpty(bBf)) {
                            if (bBf.equals("true")) {
                                this.bjR.bxB(this.bjS, bEI(1, i2, 1));
                                String bxn = C1253X.bxn(0, "yyyyMMdd");
                                if (bxn.equals(String.valueOf(this.bjT[0]))) {
                                    int[] iArr = this.bjT;
                                    iArr[1] = a.length + iArr[1];
                                } else {
                                    this.bjT[0] = Integer.parseInt(bxn);
                                    this.bjT[1] = a.length;
                                }
                                this.bjT[2] = this.bjT[2] + 1;
                                bEP();
                            }
                        }
                        this.bjQ++;
                        this.bjR.bxB(this.bjS, bEI(1, i2, 0));
                    }
                }
            } catch (Throwable th) {
                bx.bBw(th, "APS", "up");
            }
            bEz();
            if (bEw() && this.bjR.m235h() == 0) {
                bEG();
            }
            if (this.bjQ >= 3) {
                bEG();
            }
        }
    }

    private void bEF(int i) {
        if (this.bjP == null) {
            this.bjP = new az(this, i);
        }
        if (this.bjO == null) {
            this.bjO = new Timer("T-U", false);
            this.bjO.schedule(this.bjP, 2000, 2000);
        }
    }

    private synchronized void bEG() {
        if (this.bjP != null) {
            this.bjP.cancel();
            this.bjP = null;
        }
        if (this.bjO != null) {
            this.bjO.cancel();
            this.bjO.purge();
            this.bjO = null;
        }
    }

    private void bEH() {
        if (bEw()) {
            try {
                this.bjR.m228a(768);
            } catch (Throwable th) {
                bx.bBw(th, "APS", "setCollSize");
            }
        }
    }

    private String bEI(int i, int i2, int i3) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("e", i);
        jSONObject.put("d", i2);
        jSONObject.put("u", i3);
        return jSONObject.toString();
    }

    private boolean bEJ() {
        return (this.bjv == null || this.bju == null) ? false : this.bjv.bwb(this.bju);
    }

    private void bEK() {
        if (C1253X.bxc(this.bjC, "poiid")) {
            try {
                String string = this.bjC.getString("poiid");
                if (TextUtils.isEmpty(string)) {
                    this.bjM = null;
                    return;
                } else if (string.length() <= 32) {
                    this.bjM = string;
                    return;
                } else {
                    this.bjM = null;
                    return;
                }
            } catch (Throwable th) {
                bx.bBw(th, "APS", "setPoiid");
                return;
            }
        }
        this.bjM = null;
    }

    private String bEL() {
        try {
            return af.m220a("version");
        } catch (Throwable th) {
            bx.bBw(th, "APS", "getCollVer");
            return null;
        }
    }

    private void bEM() {
        if (this.bjv != null && this.bjt != null && this.f360b) {
            this.bjv.m573a(this.f360b);
        }
    }

    private boolean bEN() {
        if (this.bjt == null) {
            this.bkb.append("context is null");
            return false;
        } else if (TextUtils.isEmpty(bx.f336d)) {
            this.bkb.append("src is null");
            return false;
        } else if (!TextUtils.isEmpty(bx.f337e)) {
            return true;
        } else {
            this.bkb.append("license is null");
            return false;
        }
    }

    private void bEO(SharedPreferences sharedPreferences) {
        int i = 0;
        if (this.bjt != null) {
            SharedPreferences sharedPreferences2 = this.bjt.getSharedPreferences("pref", 0);
            if (sharedPreferences2 != null && sharedPreferences2.contains("coluphist")) {
                try {
                    String[] split = cz.m549a(sharedPreferences2.getString("coluphist", null).getBytes("UTF-8")).split(",");
                    while (i < 3) {
                        this.bjT[i] = Integer.parseInt(split[i]);
                        i++;
                    }
                } catch (Throwable th) {
                    bx.bBw(th, "APS", "getColUpHist");
                    sharedPreferences2.edit().remove("coluphist").commit();
                }
            }
        }
    }

    private void bEP() {
        if (this.bjt != null && this.bjT[0] != 0) {
            SharedPreferences sharedPreferences = this.bjt.getSharedPreferences("pref", 0);
            if (sharedPreferences != null) {
                StringBuilder stringBuilder = new StringBuilder();
                for (int append : this.bjT) {
                    stringBuilder.append(append).append(",");
                }
                try {
                    stringBuilder.deleteCharAt(this.bjT.length - 1);
                    sharedPreferences.edit().putString("coluphist", cz.m549a(stringBuilder.toString().getBytes("UTF-8")));
                } catch (Throwable th) {
                    bx.bBw(th, "APS", "setColUpHist");
                }
                stringBuilder.delete(0, stringBuilder.length());
            }
        }
    }

    private synchronized void bEQ() {
        if (this.bkv != null) {
            this.bkv = null;
            this.bkw = null;
            this.bkx = null;
        }
        try {
            if (!this.bjG) {
                this.bjw.bzp(this.bjG, true);
            }
            m491e();
            if (this.bjx != null) {
                if (this.bjx.isEmpty()) {
                    this.bjJ = C1253X.m132b();
                    Collection a = this.bjv.m572a();
                    if (a != null) {
                        this.bjx.addAll(a);
                        synchronized (this.bko) {
                            if (this.bjy != null) {
                                if (this.bjy.isEmpty()) {
                                    this.bjy.addAll(a);
                                }
                            }
                        }
                    }
                }
            }
            m492f();
        } catch (Throwable th) {
            bx.bBw(th, "APS", "initFirstLocateParam");
        }
        this.bkv = m483a(false);
        if (!TextUtils.isEmpty(this.bkv)) {
            this.bkw = this.bkv + "&" + this.bkm + "&" + this.bkl;
            this.bkx = bEp(true);
        }
        this.bky = true;
    }

    private void bET() {
        this.bke = null;
        this.bkf = null;
    }

    private void bEU() {
        if (!bQ.m339f()) {
            bEV();
        } else if (by.f346a[1] > 2000) {
            bEV();
        } else if (this.bkg == null || this.bkh == null) {
            this.bkh = new bq(this);
            this.bkg = new Timer("T-O", false);
            this.bkg.schedule(this.bkh, 0, 60000);
        }
    }

    private void bEV() {
        if (this.bkh != null) {
            this.bkh.cancel();
            this.bkh = null;
        }
        if (this.bkg != null) {
            this.bkg.cancel();
            this.bkg.purge();
            this.bkg = null;
        }
    }

    private AmapLoc bEW(String str, String str2, double[] dArr, String str3, int i) {
        if (!C1253X.m146k()) {
            return null;
        }
        double[] dArr2;
        if (TextUtils.isEmpty(str3)) {
            if (dArr == null) {
                dArr = bEZ();
            }
            if (dArr[0] == 0.0d || dArr[1] == 0.0d) {
                return null;
            }
            dArr2 = dArr;
        } else {
            dArr2 = dArr;
        }
        C1253X.m132b();
        return by.bBy(dArr2, str3, str, str2, i, this.bjt, new int[]{this.bkk, this.bkj});
    }

    private void bEX() {
        this.bkj = 0;
        this.bkk = 0;
    }

    private void bEY() {
        if (this.bjt != null && by.f346a[0] != 0) {
            SharedPreferences sharedPreferences = this.bjt.getSharedPreferences("pref", 0);
            if (sharedPreferences != null) {
                StringBuilder stringBuilder = new StringBuilder();
                String str = "activityoffdl";
                for (int append : by.f346a) {
                    stringBuilder.append(append).append(",");
                }
                try {
                    stringBuilder.deleteCharAt(stringBuilder.length() - 1);
                    sharedPreferences.edit().putString(str, C1253X.bxi(stringBuilder.toString())).commit();
                } catch (Throwable th) {
                    bx.bBw(th, "APS", "setOffDlHist");
                }
                stringBuilder.delete(0, stringBuilder.length());
            }
        }
    }

    private double[] bEZ() {
        double[] dArr = new double[2];
        if (C1253X.bwV(this.bjD)) {
            dArr[0] = this.bjD.bHE();
            dArr[1] = this.bjD.bHB();
        } else {
            dArr[0] = 0.0d;
            dArr[1] = 0.0d;
        }
        return dArr;
    }

    private void bEm(boolean z, int i) {
        if (z) {
            bEF(i);
        } else {
            bEG();
        }
    }

    private boolean bEo(WifiInfo wifiInfo) {
        return (wifiInfo == null || TextUtils.isEmpty(wifiInfo.getBSSID()) || TextUtils.isEmpty(wifiInfo.getSSID()) || wifiInfo.getBSSID().equals("00:00:00:00:00:00") || wifiInfo.getBSSID().contains(" :")) ? false : true;
    }

    private boolean bEq() {
        boolean z = true;
        if (!TextUtils.isEmpty(this.bjM)) {
            return true;
        }
        if (bEv()) {
            if (this.bjI != 0) {
                if (C1253X.m132b() - this.bjI >= 3000) {
                    if (!(C1253X.m132b() - this.bjJ >= 1500)) {
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    private AmapLoc bEr(boolean z, boolean z2, boolean z3) {
        if (!z) {
            f359a = C1253X.m132b();
            if (this.bjt == null) {
                this.bkb.append("context is null");
                AmapLoc amapLoc = new AmapLoc();
                amapLoc.bHr(1);
                amapLoc.bHv(this.bkb.toString());
                return amapLoc;
            }
        }
        try {
            m480m();
            AmapLoc amapLoc2 = new AmapLoc();
            C1240L c1240l = new C1240L();
            try {
                byte[] bBe = this.bka.bBe(this.bjt, this.bjC, this.bjN, bx.m435a(), z3);
                if (z) {
                    amapLoc = amapLoc2;
                } else if (bBe == null || bBe.length == 0) {
                    amapLoc = new AmapLoc();
                    amapLoc.bHr(4);
                    this.bkb.append("please check the network");
                    amapLoc.bHv(this.bkb.toString());
                    return amapLoc;
                } else {
                    String str = new String(bBe, "UTF-8");
                    if (str.contains("\"status\":\"0\"")) {
                        return c1240l.m93b(str);
                    }
                    String a = ak.m249a(bBe);
                    if (a != null) {
                        AmapLoc a2 = c1240l.m92a(a);
                        if (C1253X.bwV(a2)) {
                            if (a2.bIA() == null) {
                            }
                            if (a2.bHo() == 0 && a2.bHp() == 0) {
                                if ("-5".equals(a2.bHP()) || "1".equals(a2.bHP()) || "2".equals(a2.bHP()) || "14".equals(a2.bHP()) || "24".equals(a2.bHP()) || "-1".equals(a2.bHP())) {
                                    a2.bHq(5);
                                } else {
                                    a2.bHq(6);
                                }
                                a2.bHv(a2.bHP());
                            }
                            a2.bHx(this.bkm);
                            a2.bHz(this.bkl);
                            amapLoc = a2;
                        } else if (a2 == null) {
                            amapLoc = new AmapLoc();
                            amapLoc.bHr(6);
                            this.bkb.append("location is null");
                            amapLoc.bHv(this.bkb.toString());
                            return amapLoc;
                        } else {
                            this.bjU = a2.bHR();
                            a2.bHr(6);
                            this.bkb.append("location faile retype:" + a2.bHP() + " rdesc:" + (this.bjU == null ? "null" : this.bjU));
                            a2.bHv(this.bkb.toString());
                            return a2;
                        }
                    }
                    amapLoc = new AmapLoc();
                    amapLoc.bHr(5);
                    this.bkb.append("decrypt response data error");
                    amapLoc.bHv(this.bkb.toString());
                    return amapLoc;
                }
                return amapLoc;
            } catch (Throwable th) {
                amapLoc = new AmapLoc();
                amapLoc.bHr(4);
                this.bkb.append("please check the network");
                amapLoc.bHv(this.bkb.toString());
                return amapLoc;
            }
        } catch (Throwable th2) {
            this.bkb.append("get parames error:" + th2.getMessage());
            amapLoc = new AmapLoc();
            amapLoc.bHr(3);
            amapLoc.bHv(this.bkb.toString());
            return amapLoc;
        }
    }

    private boolean bEs() {
        boolean z = true;
        if (f359a == 0) {
            return true;
        }
        if (C1253X.m132b() - f359a <= 20000) {
            z = false;
        }
        return z;
    }

    private void bEt() {
        this.bjJ = 0;
        this.bjB = null;
        synchronized (this.bko) {
            this.bjy.clear();
            this.bjz.clear();
        }
    }

    private void bEu() {
        boolean z = false;
        if (bEv()) {
            boolean equals;
            if (C1253X.m136c() < 18 && C1253X.m136c() > 3 && C1253X.bxc(this.bjC, "wifiactivescan")) {
                try {
                    equals = "1".equals(this.bjC.getString("wifiactivescan"));
                } catch (Throwable th) {
                    bx.bBw(th, "APS", "updateWifi part1");
                }
                if (equals) {
                    try {
                        z = this.bjv.m577e();
                        if (z) {
                            this.bjI = C1253X.m132b();
                        }
                    } catch (Throwable th2) {
                        bx.bBw(th2, "APS", "updateWifi part");
                    }
                }
                if (!z) {
                    try {
                        if (this.bjv.m576d()) {
                            this.bjI = C1253X.m132b();
                        }
                    } catch (Throwable th22) {
                        bx.bBw(th22, "APS", "updateWifi");
                    }
                }
            }
            equals = false;
            if (equals) {
                z = this.bjv.m577e();
                if (z) {
                    this.bjI = C1253X.m132b();
                }
            }
            if (z) {
                if (this.bjv.m576d()) {
                    this.bjI = C1253X.m132b();
                }
            }
        }
    }

    private boolean bEv() {
        return this.bjv == null ? false : this.bjv.m578f();
    }

    private boolean bEw() {
        return this.bjR != null;
    }

    private boolean bEx() {
        boolean z = false;
        try {
            if (bEw()) {
                z = this.bjR.m232e();
            }
        } catch (Throwable th) {
            bx.bBw(th, "APS", "collStarted");
        }
        return z;
    }

    private void bEy() {
        if (bEw()) {
            Object obj = 1;
            if (C1253X.bxc(this.bjC, "coll")) {
                try {
                    if (this.bjC.getString("coll").equals("0")) {
                        obj = null;
                    }
                } catch (Throwable th) {
                    bx.bBw(th, "APS", "start3rdCM");
                }
            }
            if (obj == null) {
                bEA();
            } else if (!bEx()) {
                try {
                    this.bjR.bxC(bx.f343l * 1000);
                    bEH();
                    bEz();
                    this.bjR.m229b();
                } catch (Throwable th2) {
                    bx.bBw(th2, "APS", "start3rdCM");
                }
            }
        }
    }

    private void bEz() {
        if (!bEw()) {
            return;
        }
        if (!bEw() || this.bjR.m235h() <= 0) {
            try {
                if (bEw()) {
                    if (!this.bjR.m234g()) {
                    }
                }
            } catch (Throwable th) {
                bx.bBw(th, "APS", "collFileSwitch");
            }
        }
    }

    private void bFa(SharedPreferences sharedPreferences) {
        if (sharedPreferences != null) {
            String str = "activityoffdl";
            if (sharedPreferences.contains(str)) {
                try {
                    String[] split = C1253X.bxk(sharedPreferences.getString(str, null)).split(",");
                    for (int i = 0; i < 2; i++) {
                        by.f346a[i] = Integer.parseInt(split[i]);
                    }
                } catch (Throwable th) {
                    bx.bBw(th, "APS", "getOffDlHist");
                    sharedPreferences.edit().remove(str).commit();
                }
            }
        }
    }

    private void bFb() {
        try {
            this.bjY = null;
            this.bjD = null;
            this.bjX = 0;
            f359a = 0;
            C1261d.m554a().m556b();
        } catch (Throwable th) {
            bx.bBw(th, "APS", "cleanCache");
        }
    }

    private void m477j() {
        boolean z;
        boolean z2;
        boolean z3;
        try {
            z = !C1253X.bxc(this.bjC, "reversegeo") ? true : this.bjC.getBoolean("reversegeo");
            try {
                z2 = !C1253X.bxc(this.bjC, "isOffset") ? true : this.bjC.getBoolean("isOffset");
                try {
                    z3 = !C1253X.bxc(this.bjC, "isLocationCacheEnable") ? true : this.bjC.getBoolean("isLocationCacheEnable");
                    try {
                        if (z2 == this.bkm) {
                            if (z == this.bkl && z3 == this.bkn) {
                                this.bkm = z2;
                                this.bkl = z;
                                this.bkn = z3;
                                this.bjG = C1253X.m127a(this.bjt);
                                this.bkq = true;
                            }
                        }
                        bFb();
                    } catch (JSONException e) {
                    }
                } catch (JSONException e2) {
                    z3 = true;
                }
            } catch (JSONException e3) {
                z3 = true;
                z2 = true;
            }
        } catch (JSONException e4) {
            z3 = true;
            z = true;
            z2 = true;
        }
        this.bkm = z2;
        this.bkl = z;
        this.bkn = z3;
        this.bjG = C1253X.m127a(this.bjt);
        this.bkq = true;
    }

    private void m478k() {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            intentFilter.addAction("android.location.GPS_FIX_CHANGE");
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            this.bjt.registerReceiver(this.bjA, intentFilter);
            bEu();
        } catch (Throwable th) {
            bx.bBw(th, "APS", "initBroadcastListener");
        }
    }

    private void m479l() {
        this.bjw.m178a();
        this.bjw.m186h();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void m480m() {
        /*
        r24 = this;
        r0 = r24;
        r2 = r0.bjw;
        r0 = r24;
        r3 = r0.bjG;
        r2 = r2.m179a(r3);
        if (r2 != 0) goto L_0x01f2;
    L_0x000e:
        r5 = "0";
        r11 = "0";
        r12 = "0";
        r13 = "0";
        r14 = "0";
        r15 = com.loc.bx.f340h;
        r2 = "";
        com.loc.bx.f335c = r2;
        r2 = -32768; // 0xffffffffffff8000 float:NaN double:NaN;
        r3 = 32767; // 0x7fff float:4.5916E-41 double:1.6189E-319;
        r16 = com.loc.C1253X.bxb(r2, r3);
        r7 = "";
        r6 = "";
        r8 = "";
        r3 = com.loc.bx.f336d;
        r2 = com.loc.bx.f337e;
        r0 = r24;
        r4 = r0.bkm;
        if (r4 == 0) goto L_0x01fb;
    L_0x003f:
        r4 = r3;
        r3 = r2;
        r17 = new java.lang.StringBuilder;
        r17.<init>();
        r18 = new java.lang.StringBuilder;
        r18.<init>();
        r19 = new java.lang.StringBuilder;
        r19.<init>();
        r0 = r24;
        r2 = r0.bjw;
        r20 = r2.m182d();
        r9 = r2.m184f();
        r21 = r2.m180b();
        r2 = 2;
        r0 = r20;
        if (r0 == r2) goto L_0x0203;
    L_0x0065:
        r10 = r5;
    L_0x0066:
        if (r9 != 0) goto L_0x0209;
    L_0x0068:
        r5 = 0;
        r0 = r24;
        r2 = r0.bju;	 Catch:{ Throwable -> 0x0262 }
        r2 = r2.getActiveNetworkInfo();	 Catch:{ Throwable -> 0x0262 }
    L_0x0071:
        r2 = com.loc.C1253X.bxe(r2);
        r5 = -1;
        if (r2 != r5) goto L_0x0273;
    L_0x0078:
        r2 = 0;
        r0 = r24;
        r0.bjB = r2;
        r5 = r6;
        r6 = r7;
    L_0x007f:
        r24.bEK();
        r2 = r21.isEmpty();
        if (r2 == 0) goto L_0x02ab;
    L_0x0088:
        r2 = r24.bEv();
        if (r2 != 0) goto L_0x043b;
    L_0x008e:
        r24.bEt();
    L_0x0091:
        r2 = r18.length();
        if (r2 == 0) goto L_0x0513;
    L_0x0097:
        r2 = r18.length();
        r2 = r2 + -1;
        r0 = r18;
        r0.deleteCharAt(r2);
    L_0x00a2:
        r7 = 1;
        r0 = r24;
        r2 = r0.bjC;
        r9 = "reversegeo";
        r2 = com.loc.C1253X.bxc(r2, r9);
        if (r2 != 0) goto L_0x0518;
    L_0x00b0:
        r2 = r7;
    L_0x00b1:
        if (r2 == 0) goto L_0x0533;
    L_0x00b3:
        r0 = r24;
        r2 = r0.bjN;
        r7 = 0;
        r2.f494b = r7;
    L_0x00ba:
        r0 = r24;
        r2 = r0.bjC;
        r7 = "multi";
        r2 = com.loc.C1253X.bxc(r2, r7);
        if (r2 != 0) goto L_0x053c;
    L_0x00c7:
        r0 = r24;
        r2 = r0.bjN;
        r2.f495c = r4;
        r0 = r24;
        r2 = r0.bjN;
        r2.f496d = r3;
        r0 = r24;
        r2 = r0.bjN;
        r3 = com.loc.C1253X.m141f();
        r2.f498f = r3;
        r0 = r24;
        r2 = r0.bjN;
        r3 = new java.lang.StringBuilder;
        r3.<init>();
        r4 = "android";
        r3 = r3.append(r4);
        r4 = com.loc.C1253X.m142g();
        r3 = r3.append(r4);
        r3 = r3.toString();
        r2.f499g = r3;
        r0 = r24;
        r2 = r0.bjN;
        r0 = r24;
        r3 = r0.bjt;
        r3 = com.loc.C1253X.m134b(r3);
        r2.f500h = r3;
        r0 = r24;
        r2 = r0.bjN;
        r2.f501i = r10;
        r0 = r24;
        r2 = r0.bjN;
        r2.f502j = r11;
        r0 = r24;
        r3 = r0.bjN;
        r0 = r24;
        r2 = r0.bjH;
        if (r2 != 0) goto L_0x0565;
    L_0x011f:
        r2 = "0";
    L_0x0122:
        r3.f503k = r2;
        r0 = r24;
        r2 = r0.bjN;
        r2.f504l = r12;
        r0 = r24;
        r2 = r0.bjN;
        r2.f505m = r13;
        r0 = r24;
        r2 = r0.bjN;
        r2.f506n = r14;
        r0 = r24;
        r2 = r0.bjN;
        r2.f507o = r15;
        r0 = r24;
        r2 = r0.bjN;
        r3 = com.loc.bx.f333a;
        r2.f508p = r3;
        r0 = r24;
        r2 = r0.bjN;
        r3 = com.loc.bx.f334b;
        r2.f509q = r3;
        r0 = r24;
        r2 = r0.bjN;
        r3 = java.lang.String.valueOf(r16);
        r2.f511s = r3;
        r0 = r24;
        r2 = r0.bjN;
        r0 = r24;
        r3 = r0.bjL;
        r2.f512t = r3;
        r0 = r24;
        r2 = r0.bjN;
        r3 = r24.m490d();
        r2.bdA = r3;
        r0 = r24;
        r2 = r0.bjN;
        r3 = r24.bEL();
        r2.bdB = r3;
        r0 = r24;
        r2 = r0.bjN;
        r0 = r24;
        r3 = r0.bjM;
        r2.bdK = r3;
        r0 = r24;
        r2 = r0.bjN;
        r3 = com.loc.bx.f335c;
        r2.bdz = r3;
        r0 = r24;
        r2 = r0.bjN;
        r2.bdC = r6;
        r0 = r24;
        r2 = r0.bjN;
        r2.bdD = r5;
        r0 = r24;
        r2 = r0.bjN;
        r3 = java.lang.String.valueOf(r20);
        r2.bdE = r3;
        r0 = r24;
        r2 = r0.bjN;
        r2.bdF = r8;
        r0 = r24;
        r2 = r0.bjN;
        r3 = r17.toString();
        r2.bdG = r3;
        r0 = r24;
        r2 = r0.bjN;
        r3 = r18.toString();
        r2.bdI = r3;
        r0 = r24;
        r2 = r0.bjN;
        r4 = com.loc.C1253X.m132b();
        r0 = r24;
        r6 = r0.bjJ;
        r4 = r4 - r6;
        r3 = java.lang.String.valueOf(r4);
        r2.bdJ = r3;
        r0 = r24;
        r2 = r0.bjN;
        r3 = r19.toString();
        r2.bdH = r3;
        r2 = 0;
        r3 = r17.length();
        r0 = r17;
        r0.delete(r2, r3);
        r2 = 0;
        r3 = r18.length();
        r0 = r18;
        r0.delete(r2, r3);
        r2 = 0;
        r3 = r19.length();
        r0 = r19;
        r0.delete(r2, r3);
        return;
    L_0x01f2:
        r0 = r24;
        r2 = r0.bjw;
        r2.m186h();
        goto L_0x000e;
    L_0x01fb:
        r3 = "UC_nlp_20131029";
        r2 = "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U";
        goto L_0x003f;
    L_0x0203:
        r2 = "1";
        r10 = r2;
        goto L_0x0066;
    L_0x0209:
        r2 = com.loc.bx.f333a;
        r2 = android.text.TextUtils.isEmpty(r2);
        if (r2 != 0) goto L_0x0230;
    L_0x0211:
        r2 = com.loc.bx.f333a;
        r2 = android.text.TextUtils.isEmpty(r2);
        if (r2 != 0) goto L_0x0248;
    L_0x0219:
        r2 = com.loc.bx.f334b;
        r2 = android.text.TextUtils.isEmpty(r2);
        if (r2 != 0) goto L_0x024e;
    L_0x0221:
        r2 = com.loc.bx.f334b;
        r2 = android.text.TextUtils.isEmpty(r2);
        if (r2 == 0) goto L_0x0068;
    L_0x0229:
        r2 = "888888888888888";
        com.loc.bx.f334b = r2;
        goto L_0x0068;
    L_0x0230:
        r0 = r24;
        r2 = r0.bjt;	 Catch:{ Throwable -> 0x023b }
        r2 = com.loc.cn.bFT(r2);	 Catch:{ Throwable -> 0x023b }
        com.loc.bx.f333a = r2;	 Catch:{ Throwable -> 0x023b }
        goto L_0x0211;
    L_0x023b:
        r2 = move-exception;
        r5 = "APS";
        r22 = "getApsReq part4";
        r0 = r22;
        com.loc.bx.bBw(r2, r5, r0);
        goto L_0x0211;
    L_0x0248:
        r2 = "888888888888888";
        com.loc.bx.f333a = r2;
        goto L_0x0219;
    L_0x024e:
        r2 = r9.getSubscriberId();	 Catch:{ Throwable -> 0x0255 }
        com.loc.bx.f334b = r2;	 Catch:{ Throwable -> 0x0255 }
        goto L_0x0221;
    L_0x0255:
        r2 = move-exception;
        r5 = "APS";
        r22 = "getApsReq part2";
        r0 = r22;
        com.loc.bx.bBw(r2, r5, r0);
        goto L_0x0221;
    L_0x0262:
        r2 = move-exception;
        r22 = "APS";
        r23 = "getApsReq part";
        r0 = r22;
        r1 = r23;
        com.loc.bx.bBw(r2, r0, r1);
        r2 = r5;
        goto L_0x0071;
    L_0x0273:
        r5 = com.loc.C1253X.bxf(r9);
        r2 = r24.bEv();
        if (r2 != 0) goto L_0x028a;
    L_0x027d:
        r2 = "1";
    L_0x0280:
        r6 = r24.bEv();
        if (r6 == 0) goto L_0x029a;
    L_0x0286:
        r6 = r5;
        r5 = r2;
        goto L_0x007f;
    L_0x028a:
        r0 = r24;
        r2 = r0.bjB;
        r0 = r24;
        r2 = r0.bEo(r2);
        if (r2 == 0) goto L_0x027d;
    L_0x0296:
        r2 = "2";
        goto L_0x0280;
    L_0x029a:
        r24.bEt();
        r0 = r24;
        r6 = r0.bjx;
        if (r6 == 0) goto L_0x0286;
    L_0x02a3:
        r0 = r24;
        r6 = r0.bjx;
        r6.clear();
        goto L_0x0286;
    L_0x02ab:
        r9 = new java.lang.StringBuilder;
        r9.<init>();
        switch(r20) {
            case 1: goto L_0x02c2;
            case 2: goto L_0x0387;
            default: goto L_0x02b3;
        };
    L_0x02b3:
        r24.bEX();
    L_0x02b6:
        r2 = r8;
    L_0x02b7:
        r7 = 0;
        r8 = r9.length();
        r9.delete(r7, r8);
        r8 = r2;
        goto L_0x0088;
    L_0x02c2:
        r24.bEX();
        r2 = 0;
        r0 = r21;
        r2 = r0.get(r2);
        r2 = (com.loc.am) r2;
        r7 = 0;
        r8 = r9.length();
        r9.delete(r7, r8);
        r7 = "<mcc>";
        r7 = r9.append(r7);
        r8 = r2.f220a;
        r7 = r7.append(r8);
        r8 = "</mcc>";
        r7.append(r8);
        r7 = "<mnc>";
        r7 = r9.append(r7);
        r8 = r2.f221b;
        r7 = r7.append(r8);
        r8 = "</mnc>";
        r7.append(r8);
        r7 = "<lac>";
        r7 = r9.append(r7);
        r8 = r2.f222c;
        r7 = r7.append(r8);
        r8 = "</lac>";
        r7.append(r8);
        r7 = "<cellid>";
        r7 = r9.append(r7);
        r8 = r2.f223d;
        r7.append(r8);
        r7 = "</cellid>";
        r9.append(r7);
        r7 = "<signal>";
        r7 = r9.append(r7);
        r2 = r2.f227j;
        r7.append(r2);
        r2 = "</signal>";
        r9.append(r2);
        r8 = r9.toString();
        r2 = 1;
        r7 = r2;
    L_0x0339:
        r2 = r21.size();
        if (r7 >= r2) goto L_0x02b6;
    L_0x033f:
        r0 = r21;
        r2 = r0.get(r7);
        r2 = (com.loc.am) r2;
        r0 = r2.f222c;
        r22 = r0;
        r0 = r17;
        r1 = r22;
        r22 = r0.append(r1);
        r23 = ",";
        r22.append(r23);
        r0 = r2.f223d;
        r22 = r0;
        r0 = r17;
        r1 = r22;
        r22 = r0.append(r1);
        r23 = ",";
        r22.append(r23);
        r2 = r2.f227j;
        r0 = r17;
        r0.append(r2);
        r2 = r21.size();
        r2 = r2 + -1;
        if (r7 < r2) goto L_0x037e;
    L_0x037a:
        r2 = r7 + 1;
        r7 = r2;
        goto L_0x0339;
    L_0x037e:
        r2 = "*";
        r0 = r17;
        r0.append(r2);
        goto L_0x037a;
    L_0x0387:
        r2 = 0;
        r0 = r21;
        r2 = r0.get(r2);
        r2 = (com.loc.am) r2;
        r7 = 0;
        r8 = r9.length();
        r9.delete(r7, r8);
        r7 = "<mcc>";
        r7 = r9.append(r7);
        r8 = r2.f220a;
        r7 = r7.append(r8);
        r8 = "</mcc>";
        r7.append(r8);
        r7 = "<sid>";
        r7 = r9.append(r7);
        r8 = r2.f226g;
        r7 = r7.append(r8);
        r8 = "</sid>";
        r7.append(r8);
        r7 = "<nid>";
        r7 = r9.append(r7);
        r8 = r2.bfj;
        r7 = r7.append(r8);
        r8 = "</nid>";
        r7.append(r8);
        r7 = "<bid>";
        r7 = r9.append(r7);
        r8 = r2.bfk;
        r7 = r7.append(r8);
        r8 = "</bid>";
        r7.append(r8);
        r7 = r2.f225f;
        if (r7 > 0) goto L_0x0404;
    L_0x03e8:
        r24.bEX();
    L_0x03eb:
        r7 = "<signal>";
        r7 = r9.append(r7);
        r2 = r2.f227j;
        r2 = r7.append(r2);
        r7 = "</signal>";
        r2.append(r7);
        r2 = r9.toString();
        goto L_0x02b7;
    L_0x0404:
        r7 = r2.f224e;
        if (r7 <= 0) goto L_0x03e8;
    L_0x0408:
        r7 = r2.f225f;
        r0 = r24;
        r0.bkj = r7;
        r7 = r2.f224e;
        r0 = r24;
        r0.bkk = r7;
        r7 = "<lon>";
        r7 = r9.append(r7);
        r8 = r2.f225f;
        r7 = r7.append(r8);
        r8 = "</lon>";
        r7.append(r8);
        r7 = "<lat>";
        r7 = r9.append(r7);
        r8 = r2.f224e;
        r7 = r7.append(r8);
        r8 = "</lat>";
        r7.append(r8);
        goto L_0x03eb;
    L_0x043b:
        r0 = r24;
        r2 = r0.bjB;
        r0 = r24;
        r2 = r0.bEo(r2);
        if (r2 != 0) goto L_0x049b;
    L_0x0447:
        r2 = 0;
        r0 = r24;
        r7 = r0.bjx;
        r7 = r7.size();
        r9 = 15;
        r9 = java.lang.Math.min(r7, r9);
        r7 = r2;
    L_0x0457:
        if (r7 >= r9) goto L_0x0091;
    L_0x0459:
        r0 = r24;
        r2 = r0.bjx;
        r2 = r2.get(r7);
        r2 = (android.net.wifi.ScanResult) r2;
        r0 = r2.BSSID;
        r21 = r0;
        r0 = r18;
        r1 = r21;
        r21 = r0.append(r1);
        r22 = ",";
        r21.append(r22);
        r0 = r2.level;
        r21 = r0;
        r0 = r18;
        r1 = r21;
        r21 = r0.append(r1);
        r22 = ",";
        r21.append(r22);
        r2 = r2.SSID;
        r0 = r18;
        r2 = r0.append(r2);
        r21 = "*";
        r0 = r21;
        r2.append(r0);
        r2 = r7 + 1;
        r7 = r2;
        goto L_0x0457;
    L_0x049b:
        r0 = r24;
        r2 = r0.bjB;
        r2 = r2.getBSSID();
        r0 = r19;
        r2 = r0.append(r2);
        r7 = ",";
        r2.append(r7);
        r0 = r24;
        r2 = r0.bjB;
        r2 = r2.getRssi();
        r7 = -128; // 0xffffffffffffff80 float:NaN double:NaN;
        if (r2 < r7) goto L_0x04fd;
    L_0x04bb:
        r7 = 127; // 0x7f float:1.78E-43 double:6.27E-322;
        if (r2 > r7) goto L_0x04fd;
    L_0x04bf:
        r0 = r19;
        r2 = r0.append(r2);
        r7 = ",";
        r2.append(r7);
        r0 = r24;
        r2 = r0.bjB;
        r7 = r2.getSSID();
        r9 = 32;
        r0 = r24;
        r2 = r0.bjB;	 Catch:{ Throwable -> 0x04ff }
        r2 = r2.getSSID();	 Catch:{ Throwable -> 0x04ff }
        r21 = "UTF-8";
        r0 = r21;
        r2 = r2.getBytes(r0);	 Catch:{ Throwable -> 0x04ff }
        r2 = r2.length;	 Catch:{ Throwable -> 0x04ff }
    L_0x04e7:
        r9 = 32;
        if (r2 >= r9) goto L_0x050f;
    L_0x04eb:
        r2 = r7;
    L_0x04ec:
        r7 = "*";
        r9 = ".";
        r2 = r2.replace(r7, r9);
        r0 = r19;
        r0.append(r2);
        goto L_0x0447;
    L_0x04fd:
        r2 = 0;
        goto L_0x04bf;
    L_0x04ff:
        r2 = move-exception;
        r21 = "APS";
        r22 = "getApsReq";
        r0 = r21;
        r1 = r22;
        com.loc.bx.bBw(r2, r0, r1);
        r2 = r9;
        goto L_0x04e7;
    L_0x050f:
        r2 = "unkwn";
        goto L_0x04ec;
    L_0x0513:
        r18.append(r19);
        goto L_0x00a2;
    L_0x0518:
        r0 = r24;
        r2 = r0.bjC;	 Catch:{ Throwable -> 0x0525 }
        r9 = "reversegeo";
        r2 = r2.getBoolean(r9);	 Catch:{ Throwable -> 0x0525 }
        goto L_0x00b1;
    L_0x0525:
        r2 = move-exception;
        r9 = "APS";
        r21 = "getApsReq part";
        r0 = r21;
        com.loc.bx.bBw(r2, r9, r0);
        goto L_0x00b0;
    L_0x0533:
        r0 = r24;
        r2 = r0.bjN;
        r7 = 2;
        r2.f494b = r7;
        goto L_0x00ba;
    L_0x053c:
        r0 = r24;
        r2 = r0.bjC;	 Catch:{ Throwable -> 0x0559 }
        r7 = "multi";
        r2 = r2.getString(r7);	 Catch:{ Throwable -> 0x0559 }
        r7 = "1";
        r2 = r2.equals(r7);	 Catch:{ Throwable -> 0x0559 }
        if (r2 == 0) goto L_0x00c7;
    L_0x0550:
        r0 = r24;
        r2 = r0.bjN;	 Catch:{ Throwable -> 0x0559 }
        r7 = 1;
        r2.f494b = r7;	 Catch:{ Throwable -> 0x0559 }
        goto L_0x00c7;
    L_0x0559:
        r2 = move-exception;
        r7 = "APS";
        r9 = "getApsReq";
        com.loc.bx.bBw(r2, r7, r9);
        goto L_0x00c7;
    L_0x0565:
        r2 = "1";
        goto L_0x0122;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.cd.m():void");
    }

    private void m481n() {
        Object obj = 1;
        long b = C1253X.m132b();
        if (bEq()) {
            if ((b - this.bjE < 10000 ? 1 : null) == null) {
                synchronized (this.bko) {
                    this.bjy.clear();
                }
            }
            bEu();
            if (b - this.bjE >= 10000) {
                obj = null;
            }
            if (obj == null) {
                for (int i = 20; i > 0 && this.bjy.isEmpty(); i--) {
                    try {
                        Thread.sleep(150);
                    } catch (Throwable th) {
                        bx.bBw(th, "APS", "mayWaitForWifi");
                    }
                }
            }
            synchronized (this.bko) {
            }
        }
        if (this.bjy.isEmpty() && this.bjv != null) {
            this.bjJ = C1253X.m132b();
            C1253X.m125a();
            Collection a = this.bjv.m572a();
            if (a != null) {
                synchronized (this.bko) {
                    this.bjy.addAll(a);
                }
            }
        }
    }

    public synchronized AmapLoc m482a() {
        Object obj = 1;
        synchronized (this) {
            if (this.bkb.length() > 0) {
                this.bkb.delete(0, this.bkb.length());
            }
            AmapLoc amapLoc;
            if (bEN()) {
                m477j();
                this.bjK++;
                bEz();
                bEM();
                if (this.bjt != null) {
                    SharedPreferences sharedPreferences = this.bjt.getSharedPreferences("pref", 0);
                    bEO(sharedPreferences);
                    bFa(sharedPreferences);
                    bEB(sharedPreferences);
                }
                bEU();
                if (m476a(f359a) && C1253X.bwV(this.bjD)) {
                    if (this.bkn) {
                        if (bQ.bCL()) {
                            this.bjD.bHq(2);
                        }
                    }
                    amapLoc = this.bjD;
                    return amapLoc;
                }
                this.bjw.bzp(this.bjG, false);
                try {
                    m481n();
                    this.bjE = C1253X.m132b();
                    m491e();
                    m492f();
                } catch (Throwable th) {
                    bx.bBw(th, "APS", "getLocation");
                }
                this.bkv = m483a(false);
                int i;
                if (TextUtils.isEmpty(this.bkv)) {
                    if (!this.bkd) {
                        m493g();
                    }
                    for (i = 4; i > 0 && this.f361d != 0; i--) {
                        SystemClock.sleep(500);
                    }
                    if (this.f361d == 0) {
                        this.bjD = this.bkc.m415d();
                        if (this.bjD != null) {
                            amapLoc = this.bjD;
                            return amapLoc;
                        }
                    }
                    amapLoc = new AmapLoc();
                    amapLoc.bHr(this.bkr);
                    amapLoc.bHv(this.bkb.toString());
                    return amapLoc;
                }
                Object obj2;
                boolean bEs;
                Object obj3;
                Object obj4;
                boolean bAO;
                AmapLoc amapLoc2;
                this.bkx = bEp(false);
                am c = this.bjG ? null : this.bjw.m181c();
                if (!(c == null && this.bjZ == null)) {
                    if (this.bjZ == null || !this.bjZ.bye(c)) {
                        obj2 = 1;
                        bEs = bEs();
                        if (this.bjD != null) {
                            obj3 = null;
                        } else {
                            i = this.bjx.size();
                            if (this.bjD.getAccuracy() > 299.0f || i <= 5) {
                                obj4 = null;
                            } else {
                                i = 1;
                            }
                            obj3 = obj4;
                        }
                        if (this.bjD != null && this.bjY != null && obj3 == null && r4 == null && this.bkn && bQ.bCL()) {
                            if ((C1253X.m125a() - this.bjD.bHL() <= bQ.bCM() ? 1 : null) == null) {
                                bAO = bj.m416a().bAO(this.bjY, this.bkx);
                                if (!bAO) {
                                    if (this.bjX != 0) {
                                        if ((C1253X.m132b() - this.bjX < 3000 ? 1 : null) == null) {
                                        }
                                    }
                                    if (bAO) {
                                        this.bjX = C1253X.m132b();
                                    } else {
                                        this.bjX = 0;
                                    }
                                    if (this.bjV != null && !this.bkv.equals(this.bjV)) {
                                        if (C1253X.m125a() - this.bjW < 3000) {
                                            obj = null;
                                        }
                                        if (obj != null) {
                                            this.bkv = this.bjV;
                                        } else {
                                            this.bjW = C1253X.m125a();
                                            this.bjV = this.bkv;
                                        }
                                    } else if (this.bjV == null) {
                                        this.bjW = C1253X.m125a();
                                    } else {
                                        this.bjW = C1253X.m125a();
                                        this.bjV = this.bkv;
                                    }
                                    this.bkw = this.bkv + "&" + this.bkm + "&" + this.bkl;
                                    amapLoc = (this.bkn && obj3 == null && !bEs) ? bj.m416a().bAI(this.bkw, this.bkx, this.bkn) : null;
                                    if ((bEs && !C1253X.bwV(amapLoc)) || obj3 != null) {
                                        this.bjD = bEr(false, false, true);
                                        if (C1253X.bwV(this.bjD)) {
                                            this.bjD.bHO("new");
                                            this.bjY = this.bkx.toString();
                                            this.bjZ = c;
                                            bET();
                                        }
                                    } else if (bEs) {
                                        this.bjD = bEr(false, false, true);
                                        if (C1253X.bwV(this.bjD)) {
                                            this.bjY = this.bkx.toString();
                                            this.bjZ = c;
                                            bET();
                                        }
                                    } else {
                                        this.bjX = 0;
                                        amapLoc.bHq(4);
                                        this.bjD = amapLoc;
                                        bET();
                                    }
                                    bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                    C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                    if (!C1253X.bwV(this.bjD)) {
                                        amapLoc = m474a(this.bkv, this.bkx.toString());
                                        if (C1253X.bwV(amapLoc)) {
                                            this.bjY = this.bkx.toString();
                                            amapLoc2 = this.bjD;
                                            this.bjD = amapLoc;
                                            this.bjD.bHq(8);
                                            this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                        }
                                    }
                                    this.bkx.delete(0, this.bkx.length());
                                    this.bkx = null;
                                    amapLoc = this.bjD;
                                    return amapLoc;
                                }
                                if (this.bjw.m179a(this.bjG)) {
                                    this.bjw.m186h();
                                }
                                if (C1253X.bwV(this.bjD)) {
                                    this.bjD.bHO("mem");
                                    this.bjD.bHq(2);
                                    amapLoc = this.bjD;
                                    return amapLoc;
                                }
                                if (bAO) {
                                    this.bjX = C1253X.m132b();
                                } else {
                                    this.bjX = 0;
                                }
                                if (this.bjV != null) {
                                    if (C1253X.m125a() - this.bjW < 3000) {
                                        obj = null;
                                    }
                                    if (obj != null) {
                                        this.bjW = C1253X.m125a();
                                        this.bjV = this.bkv;
                                    } else {
                                        this.bkv = this.bjV;
                                    }
                                    this.bkw = this.bkv + "&" + this.bkm + "&" + this.bkl;
                                    if (this.bkn) {
                                        if (!bEs) {
                                            this.bjD = bEr(false, false, true);
                                            if (C1253X.bwV(this.bjD)) {
                                                this.bjD.bHO("new");
                                                this.bjY = this.bkx.toString();
                                                this.bjZ = c;
                                                bET();
                                            }
                                            bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                            C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                            if (C1253X.bwV(this.bjD)) {
                                                amapLoc = m474a(this.bkv, this.bkx.toString());
                                                if (C1253X.bwV(amapLoc)) {
                                                    this.bjY = this.bkx.toString();
                                                    amapLoc2 = this.bjD;
                                                    this.bjD = amapLoc;
                                                    this.bjD.bHq(8);
                                                    this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                                }
                                            }
                                            this.bkx.delete(0, this.bkx.length());
                                            this.bkx = null;
                                            amapLoc = this.bjD;
                                            return amapLoc;
                                        }
                                        this.bjD = bEr(false, false, true);
                                        if (C1253X.bwV(this.bjD)) {
                                            this.bjD.bHO("new");
                                            this.bjY = this.bkx.toString();
                                            this.bjZ = c;
                                            bET();
                                        }
                                        bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                        C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                        if (C1253X.bwV(this.bjD)) {
                                            amapLoc = m474a(this.bkv, this.bkx.toString());
                                            if (C1253X.bwV(amapLoc)) {
                                                this.bjY = this.bkx.toString();
                                                amapLoc2 = this.bjD;
                                                this.bjD = amapLoc;
                                                this.bjD.bHq(8);
                                                this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                            }
                                        }
                                        this.bkx.delete(0, this.bkx.length());
                                        this.bkx = null;
                                        amapLoc = this.bjD;
                                        return amapLoc;
                                    }
                                    if (bEs) {
                                        this.bjD = bEr(false, false, true);
                                        if (C1253X.bwV(this.bjD)) {
                                            this.bjD.bHO("new");
                                            this.bjY = this.bkx.toString();
                                            this.bjZ = c;
                                            bET();
                                        }
                                        bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                        C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                        if (C1253X.bwV(this.bjD)) {
                                            amapLoc = m474a(this.bkv, this.bkx.toString());
                                            if (C1253X.bwV(amapLoc)) {
                                                this.bjY = this.bkx.toString();
                                                amapLoc2 = this.bjD;
                                                this.bjD = amapLoc;
                                                this.bjD.bHq(8);
                                                this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                            }
                                        }
                                        this.bkx.delete(0, this.bkx.length());
                                        this.bkx = null;
                                        amapLoc = this.bjD;
                                        return amapLoc;
                                    }
                                    this.bjD = bEr(false, false, true);
                                    if (C1253X.bwV(this.bjD)) {
                                        this.bjD.bHO("new");
                                        this.bjY = this.bkx.toString();
                                        this.bjZ = c;
                                        bET();
                                    }
                                    bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                    C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                    if (C1253X.bwV(this.bjD)) {
                                        amapLoc = m474a(this.bkv, this.bkx.toString());
                                        if (C1253X.bwV(amapLoc)) {
                                            this.bjY = this.bkx.toString();
                                            amapLoc2 = this.bjD;
                                            this.bjD = amapLoc;
                                            this.bjD.bHq(8);
                                            this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                        }
                                    }
                                    this.bkx.delete(0, this.bkx.length());
                                    this.bkx = null;
                                    amapLoc = this.bjD;
                                    return amapLoc;
                                }
                                if (this.bjV == null) {
                                    this.bjW = C1253X.m125a();
                                    this.bjV = this.bkv;
                                } else {
                                    this.bjW = C1253X.m125a();
                                }
                                this.bkw = this.bkv + "&" + this.bkm + "&" + this.bkl;
                                if (this.bkn) {
                                    if (bEs) {
                                        this.bjD = bEr(false, false, true);
                                        if (C1253X.bwV(this.bjD)) {
                                            this.bjD.bHO("new");
                                            this.bjY = this.bkx.toString();
                                            this.bjZ = c;
                                            bET();
                                        }
                                        bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                        C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                        if (C1253X.bwV(this.bjD)) {
                                            amapLoc = m474a(this.bkv, this.bkx.toString());
                                            if (C1253X.bwV(amapLoc)) {
                                                this.bjY = this.bkx.toString();
                                                amapLoc2 = this.bjD;
                                                this.bjD = amapLoc;
                                                this.bjD.bHq(8);
                                                this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                            }
                                        }
                                        this.bkx.delete(0, this.bkx.length());
                                        this.bkx = null;
                                        amapLoc = this.bjD;
                                        return amapLoc;
                                    }
                                    this.bjD = bEr(false, false, true);
                                    if (C1253X.bwV(this.bjD)) {
                                        this.bjD.bHO("new");
                                        this.bjY = this.bkx.toString();
                                        this.bjZ = c;
                                        bET();
                                    }
                                    bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                    C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                    if (C1253X.bwV(this.bjD)) {
                                        amapLoc = m474a(this.bkv, this.bkx.toString());
                                        if (C1253X.bwV(amapLoc)) {
                                            this.bjY = this.bkx.toString();
                                            amapLoc2 = this.bjD;
                                            this.bjD = amapLoc;
                                            this.bjD.bHq(8);
                                            this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                        }
                                    }
                                    this.bkx.delete(0, this.bkx.length());
                                    this.bkx = null;
                                    amapLoc = this.bjD;
                                    return amapLoc;
                                }
                                if (bEs) {
                                    this.bjD = bEr(false, false, true);
                                    if (C1253X.bwV(this.bjD)) {
                                        this.bjD.bHO("new");
                                        this.bjY = this.bkx.toString();
                                        this.bjZ = c;
                                        bET();
                                    }
                                    bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                    C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                    if (C1253X.bwV(this.bjD)) {
                                        amapLoc = m474a(this.bkv, this.bkx.toString());
                                        if (C1253X.bwV(amapLoc)) {
                                            this.bjY = this.bkx.toString();
                                            amapLoc2 = this.bjD;
                                            this.bjD = amapLoc;
                                            this.bjD.bHq(8);
                                            this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                        }
                                    }
                                    this.bkx.delete(0, this.bkx.length());
                                    this.bkx = null;
                                    amapLoc = this.bjD;
                                    return amapLoc;
                                }
                                this.bjD = bEr(false, false, true);
                                if (C1253X.bwV(this.bjD)) {
                                    this.bjD.bHO("new");
                                    this.bjY = this.bkx.toString();
                                    this.bjZ = c;
                                    bET();
                                }
                                bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                if (C1253X.bwV(this.bjD)) {
                                    amapLoc = m474a(this.bkv, this.bkx.toString());
                                    if (C1253X.bwV(amapLoc)) {
                                        this.bjY = this.bkx.toString();
                                        amapLoc2 = this.bjD;
                                        this.bjD = amapLoc;
                                        this.bjD.bHq(8);
                                        this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                    }
                                }
                                this.bkx.delete(0, this.bkx.length());
                                this.bkx = null;
                                amapLoc = this.bjD;
                                return amapLoc;
                            }
                        }
                        bAO = false;
                        if (bAO) {
                            this.bjX = 0;
                        } else {
                            this.bjX = C1253X.m132b();
                        }
                        if (this.bjV != null) {
                            if (C1253X.m125a() - this.bjW < 3000) {
                                obj = null;
                            }
                            if (obj != null) {
                                this.bkv = this.bjV;
                            } else {
                                this.bjW = C1253X.m125a();
                                this.bjV = this.bkv;
                            }
                            this.bkw = this.bkv + "&" + this.bkm + "&" + this.bkl;
                            if (this.bkn) {
                                if (bEs) {
                                    this.bjD = bEr(false, false, true);
                                    if (C1253X.bwV(this.bjD)) {
                                        this.bjD.bHO("new");
                                        this.bjY = this.bkx.toString();
                                        this.bjZ = c;
                                        bET();
                                    }
                                    bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                    C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                    if (C1253X.bwV(this.bjD)) {
                                        amapLoc = m474a(this.bkv, this.bkx.toString());
                                        if (C1253X.bwV(amapLoc)) {
                                            this.bjY = this.bkx.toString();
                                            amapLoc2 = this.bjD;
                                            this.bjD = amapLoc;
                                            this.bjD.bHq(8);
                                            this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                        }
                                    }
                                    this.bkx.delete(0, this.bkx.length());
                                    this.bkx = null;
                                    amapLoc = this.bjD;
                                    return amapLoc;
                                }
                                this.bjD = bEr(false, false, true);
                                if (C1253X.bwV(this.bjD)) {
                                    this.bjD.bHO("new");
                                    this.bjY = this.bkx.toString();
                                    this.bjZ = c;
                                    bET();
                                }
                                bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                if (C1253X.bwV(this.bjD)) {
                                    amapLoc = m474a(this.bkv, this.bkx.toString());
                                    if (C1253X.bwV(amapLoc)) {
                                        this.bjY = this.bkx.toString();
                                        amapLoc2 = this.bjD;
                                        this.bjD = amapLoc;
                                        this.bjD.bHq(8);
                                        this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                    }
                                }
                                this.bkx.delete(0, this.bkx.length());
                                this.bkx = null;
                                amapLoc = this.bjD;
                                return amapLoc;
                            }
                            if (bEs) {
                                this.bjD = bEr(false, false, true);
                                if (C1253X.bwV(this.bjD)) {
                                    this.bjD.bHO("new");
                                    this.bjY = this.bkx.toString();
                                    this.bjZ = c;
                                    bET();
                                }
                                bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                if (C1253X.bwV(this.bjD)) {
                                    amapLoc = m474a(this.bkv, this.bkx.toString());
                                    if (C1253X.bwV(amapLoc)) {
                                        this.bjY = this.bkx.toString();
                                        amapLoc2 = this.bjD;
                                        this.bjD = amapLoc;
                                        this.bjD.bHq(8);
                                        this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                    }
                                }
                                this.bkx.delete(0, this.bkx.length());
                                this.bkx = null;
                                amapLoc = this.bjD;
                                return amapLoc;
                            }
                            this.bjD = bEr(false, false, true);
                            if (C1253X.bwV(this.bjD)) {
                                this.bjD.bHO("new");
                                this.bjY = this.bkx.toString();
                                this.bjZ = c;
                                bET();
                            }
                            bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                            C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                            if (C1253X.bwV(this.bjD)) {
                                amapLoc = m474a(this.bkv, this.bkx.toString());
                                if (C1253X.bwV(amapLoc)) {
                                    this.bjY = this.bkx.toString();
                                    amapLoc2 = this.bjD;
                                    this.bjD = amapLoc;
                                    this.bjD.bHq(8);
                                    this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                }
                            }
                            this.bkx.delete(0, this.bkx.length());
                            this.bkx = null;
                            amapLoc = this.bjD;
                            return amapLoc;
                        }
                        if (this.bjV == null) {
                            this.bjW = C1253X.m125a();
                        } else {
                            this.bjW = C1253X.m125a();
                            this.bjV = this.bkv;
                        }
                        this.bkw = this.bkv + "&" + this.bkm + "&" + this.bkl;
                        if (this.bkn) {
                            if (bEs) {
                                this.bjD = bEr(false, false, true);
                                if (C1253X.bwV(this.bjD)) {
                                    this.bjD.bHO("new");
                                    this.bjY = this.bkx.toString();
                                    this.bjZ = c;
                                    bET();
                                }
                                bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                if (C1253X.bwV(this.bjD)) {
                                    amapLoc = m474a(this.bkv, this.bkx.toString());
                                    if (C1253X.bwV(amapLoc)) {
                                        this.bjY = this.bkx.toString();
                                        amapLoc2 = this.bjD;
                                        this.bjD = amapLoc;
                                        this.bjD.bHq(8);
                                        this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                    }
                                }
                                this.bkx.delete(0, this.bkx.length());
                                this.bkx = null;
                                amapLoc = this.bjD;
                                return amapLoc;
                            }
                            this.bjD = bEr(false, false, true);
                            if (C1253X.bwV(this.bjD)) {
                                this.bjD.bHO("new");
                                this.bjY = this.bkx.toString();
                                this.bjZ = c;
                                bET();
                            }
                            bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                            C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                            if (C1253X.bwV(this.bjD)) {
                                amapLoc = m474a(this.bkv, this.bkx.toString());
                                if (C1253X.bwV(amapLoc)) {
                                    this.bjY = this.bkx.toString();
                                    amapLoc2 = this.bjD;
                                    this.bjD = amapLoc;
                                    this.bjD.bHq(8);
                                    this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                }
                            }
                            this.bkx.delete(0, this.bkx.length());
                            this.bkx = null;
                            amapLoc = this.bjD;
                            return amapLoc;
                        }
                        if (bEs) {
                            this.bjD = bEr(false, false, true);
                            if (C1253X.bwV(this.bjD)) {
                                this.bjD.bHO("new");
                                this.bjY = this.bkx.toString();
                                this.bjZ = c;
                                bET();
                            }
                            bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                            C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                            if (C1253X.bwV(this.bjD)) {
                                amapLoc = m474a(this.bkv, this.bkx.toString());
                                if (C1253X.bwV(amapLoc)) {
                                    this.bjY = this.bkx.toString();
                                    amapLoc2 = this.bjD;
                                    this.bjD = amapLoc;
                                    this.bjD.bHq(8);
                                    this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                }
                            }
                            this.bkx.delete(0, this.bkx.length());
                            this.bkx = null;
                            amapLoc = this.bjD;
                            return amapLoc;
                        }
                        this.bjD = bEr(false, false, true);
                        if (C1253X.bwV(this.bjD)) {
                            this.bjD.bHO("new");
                            this.bjY = this.bkx.toString();
                            this.bjZ = c;
                            bET();
                        }
                        bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                        C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                        if (C1253X.bwV(this.bjD)) {
                            amapLoc = m474a(this.bkv, this.bkx.toString());
                            if (C1253X.bwV(amapLoc)) {
                                this.bjY = this.bkx.toString();
                                amapLoc2 = this.bjD;
                                this.bjD = amapLoc;
                                this.bjD.bHq(8);
                                this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                            }
                        }
                        this.bkx.delete(0, this.bkx.length());
                        this.bkx = null;
                        amapLoc = this.bjD;
                        return amapLoc;
                    }
                }
                obj2 = null;
                bEs = bEs();
                if (this.bjD != null) {
                    i = this.bjx.size();
                    if (this.bjD.getAccuracy() > 299.0f) {
                    }
                    obj4 = null;
                    obj3 = obj4;
                } else {
                    obj3 = null;
                }
                if (C1253X.m125a() - this.bjD.bHL() <= bQ.bCM()) {
                }
                if ((C1253X.m125a() - this.bjD.bHL() <= bQ.bCM() ? 1 : null) == null) {
                    bAO = bj.m416a().bAO(this.bjY, this.bkx);
                    if (bAO) {
                        if (this.bjX != 0) {
                            if (C1253X.m132b() - this.bjX < 3000) {
                            }
                            if ((C1253X.m132b() - this.bjX < 3000 ? 1 : null) == null) {
                            }
                        }
                        if (bAO) {
                            this.bjX = C1253X.m132b();
                        } else {
                            this.bjX = 0;
                        }
                        if (this.bjV != null) {
                            if (C1253X.m125a() - this.bjW < 3000) {
                                obj = null;
                            }
                            if (obj != null) {
                                this.bjW = C1253X.m125a();
                                this.bjV = this.bkv;
                            } else {
                                this.bkv = this.bjV;
                            }
                            this.bkw = this.bkv + "&" + this.bkm + "&" + this.bkl;
                            if (this.bkn) {
                                if (bEs) {
                                    this.bjD = bEr(false, false, true);
                                    if (C1253X.bwV(this.bjD)) {
                                        this.bjD.bHO("new");
                                        this.bjY = this.bkx.toString();
                                        this.bjZ = c;
                                        bET();
                                    }
                                    bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                    C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                    if (C1253X.bwV(this.bjD)) {
                                        amapLoc = m474a(this.bkv, this.bkx.toString());
                                        if (C1253X.bwV(amapLoc)) {
                                            this.bjY = this.bkx.toString();
                                            amapLoc2 = this.bjD;
                                            this.bjD = amapLoc;
                                            this.bjD.bHq(8);
                                            this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                        }
                                    }
                                    this.bkx.delete(0, this.bkx.length());
                                    this.bkx = null;
                                    amapLoc = this.bjD;
                                    return amapLoc;
                                }
                                this.bjD = bEr(false, false, true);
                                if (C1253X.bwV(this.bjD)) {
                                    this.bjD.bHO("new");
                                    this.bjY = this.bkx.toString();
                                    this.bjZ = c;
                                    bET();
                                }
                                bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                if (C1253X.bwV(this.bjD)) {
                                    amapLoc = m474a(this.bkv, this.bkx.toString());
                                    if (C1253X.bwV(amapLoc)) {
                                        this.bjY = this.bkx.toString();
                                        amapLoc2 = this.bjD;
                                        this.bjD = amapLoc;
                                        this.bjD.bHq(8);
                                        this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                    }
                                }
                                this.bkx.delete(0, this.bkx.length());
                                this.bkx = null;
                                amapLoc = this.bjD;
                                return amapLoc;
                            }
                            if (bEs) {
                                this.bjD = bEr(false, false, true);
                                if (C1253X.bwV(this.bjD)) {
                                    this.bjD.bHO("new");
                                    this.bjY = this.bkx.toString();
                                    this.bjZ = c;
                                    bET();
                                }
                                bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                if (C1253X.bwV(this.bjD)) {
                                    amapLoc = m474a(this.bkv, this.bkx.toString());
                                    if (C1253X.bwV(amapLoc)) {
                                        this.bjY = this.bkx.toString();
                                        amapLoc2 = this.bjD;
                                        this.bjD = amapLoc;
                                        this.bjD.bHq(8);
                                        this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                    }
                                }
                                this.bkx.delete(0, this.bkx.length());
                                this.bkx = null;
                                amapLoc = this.bjD;
                                return amapLoc;
                            }
                            this.bjD = bEr(false, false, true);
                            if (C1253X.bwV(this.bjD)) {
                                this.bjD.bHO("new");
                                this.bjY = this.bkx.toString();
                                this.bjZ = c;
                                bET();
                            }
                            bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                            C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                            if (C1253X.bwV(this.bjD)) {
                                amapLoc = m474a(this.bkv, this.bkx.toString());
                                if (C1253X.bwV(amapLoc)) {
                                    this.bjY = this.bkx.toString();
                                    amapLoc2 = this.bjD;
                                    this.bjD = amapLoc;
                                    this.bjD.bHq(8);
                                    this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                }
                            }
                            this.bkx.delete(0, this.bkx.length());
                            this.bkx = null;
                            amapLoc = this.bjD;
                            return amapLoc;
                        }
                        if (this.bjV == null) {
                            this.bjW = C1253X.m125a();
                            this.bjV = this.bkv;
                        } else {
                            this.bjW = C1253X.m125a();
                        }
                        this.bkw = this.bkv + "&" + this.bkm + "&" + this.bkl;
                        if (this.bkn) {
                            if (bEs) {
                                this.bjD = bEr(false, false, true);
                                if (C1253X.bwV(this.bjD)) {
                                    this.bjD.bHO("new");
                                    this.bjY = this.bkx.toString();
                                    this.bjZ = c;
                                    bET();
                                }
                                bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                if (C1253X.bwV(this.bjD)) {
                                    amapLoc = m474a(this.bkv, this.bkx.toString());
                                    if (C1253X.bwV(amapLoc)) {
                                        this.bjY = this.bkx.toString();
                                        amapLoc2 = this.bjD;
                                        this.bjD = amapLoc;
                                        this.bjD.bHq(8);
                                        this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                    }
                                }
                                this.bkx.delete(0, this.bkx.length());
                                this.bkx = null;
                                amapLoc = this.bjD;
                                return amapLoc;
                            }
                            this.bjD = bEr(false, false, true);
                            if (C1253X.bwV(this.bjD)) {
                                this.bjD.bHO("new");
                                this.bjY = this.bkx.toString();
                                this.bjZ = c;
                                bET();
                            }
                            bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                            C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                            if (C1253X.bwV(this.bjD)) {
                                amapLoc = m474a(this.bkv, this.bkx.toString());
                                if (C1253X.bwV(amapLoc)) {
                                    this.bjY = this.bkx.toString();
                                    amapLoc2 = this.bjD;
                                    this.bjD = amapLoc;
                                    this.bjD.bHq(8);
                                    this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                }
                            }
                            this.bkx.delete(0, this.bkx.length());
                            this.bkx = null;
                            amapLoc = this.bjD;
                            return amapLoc;
                        }
                        if (bEs) {
                            this.bjD = bEr(false, false, true);
                            if (C1253X.bwV(this.bjD)) {
                                this.bjD.bHO("new");
                                this.bjY = this.bkx.toString();
                                this.bjZ = c;
                                bET();
                            }
                            bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                            C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                            if (C1253X.bwV(this.bjD)) {
                                amapLoc = m474a(this.bkv, this.bkx.toString());
                                if (C1253X.bwV(amapLoc)) {
                                    this.bjY = this.bkx.toString();
                                    amapLoc2 = this.bjD;
                                    this.bjD = amapLoc;
                                    this.bjD.bHq(8);
                                    this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                }
                            }
                            this.bkx.delete(0, this.bkx.length());
                            this.bkx = null;
                            amapLoc = this.bjD;
                            return amapLoc;
                        }
                        this.bjD = bEr(false, false, true);
                        if (C1253X.bwV(this.bjD)) {
                            this.bjD.bHO("new");
                            this.bjY = this.bkx.toString();
                            this.bjZ = c;
                            bET();
                        }
                        bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                        C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                        if (C1253X.bwV(this.bjD)) {
                            amapLoc = m474a(this.bkv, this.bkx.toString());
                            if (C1253X.bwV(amapLoc)) {
                                this.bjY = this.bkx.toString();
                                amapLoc2 = this.bjD;
                                this.bjD = amapLoc;
                                this.bjD.bHq(8);
                                this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                            }
                        }
                        this.bkx.delete(0, this.bkx.length());
                        this.bkx = null;
                        amapLoc = this.bjD;
                        return amapLoc;
                    }
                    if (this.bjw.m179a(this.bjG)) {
                        this.bjw.m186h();
                    }
                    if (C1253X.bwV(this.bjD)) {
                        this.bjD.bHO("mem");
                        this.bjD.bHq(2);
                        amapLoc = this.bjD;
                        return amapLoc;
                    }
                    if (bAO) {
                        this.bjX = 0;
                    } else {
                        this.bjX = C1253X.m132b();
                    }
                    if (this.bjV != null) {
                        if (C1253X.m125a() - this.bjW < 3000) {
                            obj = null;
                        }
                        if (obj != null) {
                            this.bkv = this.bjV;
                        } else {
                            this.bjW = C1253X.m125a();
                            this.bjV = this.bkv;
                        }
                        this.bkw = this.bkv + "&" + this.bkm + "&" + this.bkl;
                        if (this.bkn) {
                            if (bEs) {
                                this.bjD = bEr(false, false, true);
                                if (C1253X.bwV(this.bjD)) {
                                    this.bjD.bHO("new");
                                    this.bjY = this.bkx.toString();
                                    this.bjZ = c;
                                    bET();
                                }
                                bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                                C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                                if (C1253X.bwV(this.bjD)) {
                                    amapLoc = m474a(this.bkv, this.bkx.toString());
                                    if (C1253X.bwV(amapLoc)) {
                                        this.bjY = this.bkx.toString();
                                        amapLoc2 = this.bjD;
                                        this.bjD = amapLoc;
                                        this.bjD.bHq(8);
                                        this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                    }
                                }
                                this.bkx.delete(0, this.bkx.length());
                                this.bkx = null;
                                amapLoc = this.bjD;
                                return amapLoc;
                            }
                            this.bjD = bEr(false, false, true);
                            if (C1253X.bwV(this.bjD)) {
                                this.bjD.bHO("new");
                                this.bjY = this.bkx.toString();
                                this.bjZ = c;
                                bET();
                            }
                            bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                            C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                            if (C1253X.bwV(this.bjD)) {
                                amapLoc = m474a(this.bkv, this.bkx.toString());
                                if (C1253X.bwV(amapLoc)) {
                                    this.bjY = this.bkx.toString();
                                    amapLoc2 = this.bjD;
                                    this.bjD = amapLoc;
                                    this.bjD.bHq(8);
                                    this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                }
                            }
                            this.bkx.delete(0, this.bkx.length());
                            this.bkx = null;
                            amapLoc = this.bjD;
                            return amapLoc;
                        }
                        if (bEs) {
                            this.bjD = bEr(false, false, true);
                            if (C1253X.bwV(this.bjD)) {
                                this.bjD.bHO("new");
                                this.bjY = this.bkx.toString();
                                this.bjZ = c;
                                bET();
                            }
                            bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                            C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                            if (C1253X.bwV(this.bjD)) {
                                amapLoc = m474a(this.bkv, this.bkx.toString());
                                if (C1253X.bwV(amapLoc)) {
                                    this.bjY = this.bkx.toString();
                                    amapLoc2 = this.bjD;
                                    this.bjD = amapLoc;
                                    this.bjD.bHq(8);
                                    this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                }
                            }
                            this.bkx.delete(0, this.bkx.length());
                            this.bkx = null;
                            amapLoc = this.bjD;
                            return amapLoc;
                        }
                        this.bjD = bEr(false, false, true);
                        if (C1253X.bwV(this.bjD)) {
                            this.bjD.bHO("new");
                            this.bjY = this.bkx.toString();
                            this.bjZ = c;
                            bET();
                        }
                        bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                        C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                        if (C1253X.bwV(this.bjD)) {
                            amapLoc = m474a(this.bkv, this.bkx.toString());
                            if (C1253X.bwV(amapLoc)) {
                                this.bjY = this.bkx.toString();
                                amapLoc2 = this.bjD;
                                this.bjD = amapLoc;
                                this.bjD.bHq(8);
                                this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                            }
                        }
                        this.bkx.delete(0, this.bkx.length());
                        this.bkx = null;
                        amapLoc = this.bjD;
                        return amapLoc;
                    }
                    if (this.bjV == null) {
                        this.bjW = C1253X.m125a();
                    } else {
                        this.bjW = C1253X.m125a();
                        this.bjV = this.bkv;
                    }
                    this.bkw = this.bkv + "&" + this.bkm + "&" + this.bkl;
                    if (this.bkn) {
                        if (bEs) {
                            this.bjD = bEr(false, false, true);
                            if (C1253X.bwV(this.bjD)) {
                                this.bjD.bHO("new");
                                this.bjY = this.bkx.toString();
                                this.bjZ = c;
                                bET();
                            }
                            bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                            C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                            if (C1253X.bwV(this.bjD)) {
                                amapLoc = m474a(this.bkv, this.bkx.toString());
                                if (C1253X.bwV(amapLoc)) {
                                    this.bjY = this.bkx.toString();
                                    amapLoc2 = this.bjD;
                                    this.bjD = amapLoc;
                                    this.bjD.bHq(8);
                                    this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                }
                            }
                            this.bkx.delete(0, this.bkx.length());
                            this.bkx = null;
                            amapLoc = this.bjD;
                            return amapLoc;
                        }
                        this.bjD = bEr(false, false, true);
                        if (C1253X.bwV(this.bjD)) {
                            this.bjD.bHO("new");
                            this.bjY = this.bkx.toString();
                            this.bjZ = c;
                            bET();
                        }
                        bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                        C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                        if (C1253X.bwV(this.bjD)) {
                            amapLoc = m474a(this.bkv, this.bkx.toString());
                            if (C1253X.bwV(amapLoc)) {
                                this.bjY = this.bkx.toString();
                                amapLoc2 = this.bjD;
                                this.bjD = amapLoc;
                                this.bjD.bHq(8);
                                this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                            }
                        }
                        this.bkx.delete(0, this.bkx.length());
                        this.bkx = null;
                        amapLoc = this.bjD;
                        return amapLoc;
                    }
                    if (bEs) {
                        this.bjD = bEr(false, false, true);
                        if (C1253X.bwV(this.bjD)) {
                            this.bjD.bHO("new");
                            this.bjY = this.bkx.toString();
                            this.bjZ = c;
                            bET();
                        }
                        bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                        C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                        if (C1253X.bwV(this.bjD)) {
                            amapLoc = m474a(this.bkv, this.bkx.toString());
                            if (C1253X.bwV(amapLoc)) {
                                this.bjY = this.bkx.toString();
                                amapLoc2 = this.bjD;
                                this.bjD = amapLoc;
                                this.bjD.bHq(8);
                                this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                            }
                        }
                        this.bkx.delete(0, this.bkx.length());
                        this.bkx = null;
                        amapLoc = this.bjD;
                        return amapLoc;
                    }
                    this.bjD = bEr(false, false, true);
                    if (C1253X.bwV(this.bjD)) {
                        this.bjD.bHO("new");
                        this.bjY = this.bkx.toString();
                        this.bjZ = c;
                        bET();
                    }
                    bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                    C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                    if (C1253X.bwV(this.bjD)) {
                        amapLoc = m474a(this.bkv, this.bkx.toString());
                        if (C1253X.bwV(amapLoc)) {
                            this.bjY = this.bkx.toString();
                            amapLoc2 = this.bjD;
                            this.bjD = amapLoc;
                            this.bjD.bHq(8);
                            this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                        }
                    }
                    this.bkx.delete(0, this.bkx.length());
                    this.bkx = null;
                    amapLoc = this.bjD;
                    return amapLoc;
                }
                bAO = false;
                if (bAO) {
                    this.bjX = C1253X.m132b();
                } else {
                    this.bjX = 0;
                }
                if (this.bjV != null) {
                    if (C1253X.m125a() - this.bjW < 3000) {
                        obj = null;
                    }
                    if (obj != null) {
                        this.bjW = C1253X.m125a();
                        this.bjV = this.bkv;
                    } else {
                        this.bkv = this.bjV;
                    }
                    this.bkw = this.bkv + "&" + this.bkm + "&" + this.bkl;
                    if (this.bkn) {
                        if (bEs) {
                            this.bjD = bEr(false, false, true);
                            if (C1253X.bwV(this.bjD)) {
                                this.bjD.bHO("new");
                                this.bjY = this.bkx.toString();
                                this.bjZ = c;
                                bET();
                            }
                            bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                            C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                            if (C1253X.bwV(this.bjD)) {
                                amapLoc = m474a(this.bkv, this.bkx.toString());
                                if (C1253X.bwV(amapLoc)) {
                                    this.bjY = this.bkx.toString();
                                    amapLoc2 = this.bjD;
                                    this.bjD = amapLoc;
                                    this.bjD.bHq(8);
                                    this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                                }
                            }
                            this.bkx.delete(0, this.bkx.length());
                            this.bkx = null;
                            amapLoc = this.bjD;
                            return amapLoc;
                        }
                        this.bjD = bEr(false, false, true);
                        if (C1253X.bwV(this.bjD)) {
                            this.bjD.bHO("new");
                            this.bjY = this.bkx.toString();
                            this.bjZ = c;
                            bET();
                        }
                        bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                        C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                        if (C1253X.bwV(this.bjD)) {
                            amapLoc = m474a(this.bkv, this.bkx.toString());
                            if (C1253X.bwV(amapLoc)) {
                                this.bjY = this.bkx.toString();
                                amapLoc2 = this.bjD;
                                this.bjD = amapLoc;
                                this.bjD.bHq(8);
                                this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                            }
                        }
                        this.bkx.delete(0, this.bkx.length());
                        this.bkx = null;
                        amapLoc = this.bjD;
                        return amapLoc;
                    }
                    if (bEs) {
                        this.bjD = bEr(false, false, true);
                        if (C1253X.bwV(this.bjD)) {
                            this.bjD.bHO("new");
                            this.bjY = this.bkx.toString();
                            this.bjZ = c;
                            bET();
                        }
                        bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                        C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                        if (C1253X.bwV(this.bjD)) {
                            amapLoc = m474a(this.bkv, this.bkx.toString());
                            if (C1253X.bwV(amapLoc)) {
                                this.bjY = this.bkx.toString();
                                amapLoc2 = this.bjD;
                                this.bjD = amapLoc;
                                this.bjD.bHq(8);
                                this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                            }
                        }
                        this.bkx.delete(0, this.bkx.length());
                        this.bkx = null;
                        amapLoc = this.bjD;
                        return amapLoc;
                    }
                    this.bjD = bEr(false, false, true);
                    if (C1253X.bwV(this.bjD)) {
                        this.bjD.bHO("new");
                        this.bjY = this.bkx.toString();
                        this.bjZ = c;
                        bET();
                    }
                    bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                    C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                    if (C1253X.bwV(this.bjD)) {
                        amapLoc = m474a(this.bkv, this.bkx.toString());
                        if (C1253X.bwV(amapLoc)) {
                            this.bjY = this.bkx.toString();
                            amapLoc2 = this.bjD;
                            this.bjD = amapLoc;
                            this.bjD.bHq(8);
                            this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                        }
                    }
                    this.bkx.delete(0, this.bkx.length());
                    this.bkx = null;
                    amapLoc = this.bjD;
                    return amapLoc;
                }
                if (this.bjV == null) {
                    this.bjW = C1253X.m125a();
                    this.bjV = this.bkv;
                } else {
                    this.bjW = C1253X.m125a();
                }
                this.bkw = this.bkv + "&" + this.bkm + "&" + this.bkl;
                if (this.bkn) {
                    if (bEs) {
                        this.bjD = bEr(false, false, true);
                        if (C1253X.bwV(this.bjD)) {
                            this.bjD.bHO("new");
                            this.bjY = this.bkx.toString();
                            this.bjZ = c;
                            bET();
                        }
                        bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                        C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                        if (C1253X.bwV(this.bjD)) {
                            amapLoc = m474a(this.bkv, this.bkx.toString());
                            if (C1253X.bwV(amapLoc)) {
                                this.bjY = this.bkx.toString();
                                amapLoc2 = this.bjD;
                                this.bjD = amapLoc;
                                this.bjD.bHq(8);
                                this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                            }
                        }
                        this.bkx.delete(0, this.bkx.length());
                        this.bkx = null;
                        amapLoc = this.bjD;
                        return amapLoc;
                    }
                    this.bjD = bEr(false, false, true);
                    if (C1253X.bwV(this.bjD)) {
                        this.bjD.bHO("new");
                        this.bjY = this.bkx.toString();
                        this.bjZ = c;
                        bET();
                    }
                    bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                    C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                    if (C1253X.bwV(this.bjD)) {
                        amapLoc = m474a(this.bkv, this.bkx.toString());
                        if (C1253X.bwV(amapLoc)) {
                            this.bjY = this.bkx.toString();
                            amapLoc2 = this.bjD;
                            this.bjD = amapLoc;
                            this.bjD.bHq(8);
                            this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                        }
                    }
                    this.bkx.delete(0, this.bkx.length());
                    this.bkx = null;
                    amapLoc = this.bjD;
                    return amapLoc;
                }
                if (bEs) {
                    this.bjD = bEr(false, false, true);
                    if (C1253X.bwV(this.bjD)) {
                        this.bjD.bHO("new");
                        this.bjY = this.bkx.toString();
                        this.bjZ = c;
                        bET();
                    }
                    bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                    C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                    if (C1253X.bwV(this.bjD)) {
                        amapLoc = m474a(this.bkv, this.bkx.toString());
                        if (C1253X.bwV(amapLoc)) {
                            this.bjY = this.bkx.toString();
                            amapLoc2 = this.bjD;
                            this.bjD = amapLoc;
                            this.bjD.bHq(8);
                            this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                        }
                    }
                    this.bkx.delete(0, this.bkx.length());
                    this.bkx = null;
                    amapLoc = this.bjD;
                    return amapLoc;
                }
                this.bjD = bEr(false, false, true);
                if (C1253X.bwV(this.bjD)) {
                    this.bjD.bHO("new");
                    this.bjY = this.bkx.toString();
                    this.bjZ = c;
                    bET();
                }
                bj.m416a().bAH(this.bkw, this.bkx, this.bjD, this.bjt, true);
                C1271p.m567a().bvX(this.bjt, this.bkv, this.bjD);
                if (C1253X.bwV(this.bjD)) {
                    amapLoc = m474a(this.bkv, this.bkx.toString());
                    if (C1253X.bwV(amapLoc)) {
                        this.bjY = this.bkx.toString();
                        amapLoc2 = this.bjD;
                        this.bjD = amapLoc;
                        this.bjD.bHq(8);
                        this.bjD.bHv("离线定位，在线定位失败原因:" + amapLoc2.bHu());
                    }
                }
                this.bkx.delete(0, this.bkx.length());
                this.bkx = null;
                amapLoc = this.bjD;
                return amapLoc;
            }
            amapLoc = new AmapLoc();
            amapLoc.bHr(1);
            amapLoc.bHv(this.bkb.toString());
            return amapLoc;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized java.lang.String m483a(boolean r8) {
        /*
        r7 = this;
        r3 = 1;
        r2 = 0;
        monitor-enter(r7);
        r0 = r7.bjG;	 Catch:{ all -> 0x004b }
        if (r0 != 0) goto L_0x0045;
    L_0x0007:
        r0 = r7.bjw;	 Catch:{ all -> 0x004b }
        r0.m188j();	 Catch:{ all -> 0x004b }
    L_0x000c:
        r0 = "";
        r1 = "";
        r4 = "network";
        r1 = r7.bEv();	 Catch:{ all -> 0x004b }
        if (r1 != 0) goto L_0x004e;
    L_0x001b:
        r7.bEt();	 Catch:{ all -> 0x004b }
        r1 = r7.bjx;	 Catch:{ all -> 0x004b }
        if (r1 != 0) goto L_0x0057;
    L_0x0022:
        r1 = "";
        r1 = r7.bjw;	 Catch:{ all -> 0x004b }
        r1 = r1.m182d();	 Catch:{ all -> 0x004b }
        r5 = r7.bjw;	 Catch:{ all -> 0x004b }
        r5 = r5.m180b();	 Catch:{ all -> 0x004b }
        if (r5 != 0) goto L_0x005d;
    L_0x0033:
        r6 = r7.bjx;	 Catch:{ all -> 0x004b }
        if (r6 != 0) goto L_0x007a;
    L_0x0037:
        r1 = r7.bkb;	 Catch:{ all -> 0x004b }
        r2 = "⊗ lstCgi & ⊗ wifis";
        r1.append(r2);	 Catch:{ all -> 0x004b }
        r1 = 12;
        r7.bkr = r1;	 Catch:{ all -> 0x004b }
        monitor-exit(r7);
        return r0;
    L_0x0045:
        r0 = r7.bjw;	 Catch:{ all -> 0x004b }
        r0.m185g();	 Catch:{ all -> 0x004b }
        goto L_0x000c;
    L_0x004b:
        r0 = move-exception;
        monitor-exit(r7);
        throw r0;
    L_0x004e:
        r1 = r7.bjv;	 Catch:{ all -> 0x004b }
        r1 = r1.m574b();	 Catch:{ all -> 0x004b }
        r7.bjB = r1;	 Catch:{ all -> 0x004b }
        goto L_0x0022;
    L_0x0057:
        r1 = r7.bjx;	 Catch:{ all -> 0x004b }
        r1.clear();	 Catch:{ all -> 0x004b }
        goto L_0x0022;
    L_0x005d:
        r6 = r5.isEmpty();	 Catch:{ all -> 0x004b }
        if (r6 != 0) goto L_0x0033;
    L_0x0063:
        switch(r1) {
            case 1: goto L_0x0083;
            case 2: goto L_0x00ee;
            case 9: goto L_0x0166;
            default: goto L_0x0066;
        };	 Catch:{ all -> 0x004b }
    L_0x0066:
        r1 = 11;
        r7.bkr = r1;	 Catch:{ all -> 0x004b }
        r1 = r7.bkb;	 Catch:{ all -> 0x004b }
        r2 = "get cgi failure";
        r1.append(r2);	 Catch:{ all -> 0x004b }
    L_0x0072:
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ all -> 0x004b }
        if (r1 == 0) goto L_0x0214;
    L_0x0078:
        monitor-exit(r7);
        return r0;
    L_0x007a:
        r6 = r7.bjx;	 Catch:{ all -> 0x004b }
        r6 = r6.isEmpty();	 Catch:{ all -> 0x004b }
        if (r6 != 0) goto L_0x0037;
    L_0x0082:
        goto L_0x0063;
    L_0x0083:
        r1 = r5.isEmpty();	 Catch:{ all -> 0x004b }
        if (r1 != 0) goto L_0x0072;
    L_0x0089:
        r0 = 0;
        r0 = r5.get(r0);	 Catch:{ all -> 0x004b }
        r0 = (com.loc.am) r0;	 Catch:{ all -> 0x004b }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x004b }
        r1.<init>();	 Catch:{ all -> 0x004b }
        r2 = r0.f220a;	 Catch:{ all -> 0x004b }
        r2 = r1.append(r2);	 Catch:{ all -> 0x004b }
        r3 = "#";
        r2.append(r3);	 Catch:{ all -> 0x004b }
        r2 = r0.f221b;	 Catch:{ all -> 0x004b }
        r2 = r1.append(r2);	 Catch:{ all -> 0x004b }
        r3 = "#";
        r2.append(r3);	 Catch:{ all -> 0x004b }
        r2 = r0.f222c;	 Catch:{ all -> 0x004b }
        r2 = r1.append(r2);	 Catch:{ all -> 0x004b }
        r3 = "#";
        r2.append(r3);	 Catch:{ all -> 0x004b }
        r0 = r0.f223d;	 Catch:{ all -> 0x004b }
        r0 = r1.append(r0);	 Catch:{ all -> 0x004b }
        r2 = "#";
        r0.append(r2);	 Catch:{ all -> 0x004b }
        r0 = r1.append(r4);	 Catch:{ all -> 0x004b }
        r2 = "#";
        r0.append(r2);	 Catch:{ all -> 0x004b }
        r0 = r7.bjx;	 Catch:{ all -> 0x004b }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x004b }
        if (r0 != 0) goto L_0x00e2;
    L_0x00d7:
        r0 = "cgiwifi";
    L_0x00da:
        r1.append(r0);	 Catch:{ all -> 0x004b }
        r0 = r1.toString();	 Catch:{ all -> 0x004b }
        goto L_0x0072;
    L_0x00e2:
        r0 = r7.bjB;	 Catch:{ all -> 0x004b }
        r0 = r7.bEo(r0);	 Catch:{ all -> 0x004b }
        if (r0 != 0) goto L_0x00d7;
    L_0x00ea:
        r0 = "cgi";
        goto L_0x00da;
    L_0x00ee:
        r1 = r5.isEmpty();	 Catch:{ all -> 0x004b }
        if (r1 != 0) goto L_0x0072;
    L_0x00f4:
        r0 = 0;
        r0 = r5.get(r0);	 Catch:{ all -> 0x004b }
        r0 = (com.loc.am) r0;	 Catch:{ all -> 0x004b }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x004b }
        r1.<init>();	 Catch:{ all -> 0x004b }
        r2 = r0.f220a;	 Catch:{ all -> 0x004b }
        r2 = r1.append(r2);	 Catch:{ all -> 0x004b }
        r3 = "#";
        r2.append(r3);	 Catch:{ all -> 0x004b }
        r2 = r0.f221b;	 Catch:{ all -> 0x004b }
        r2 = r1.append(r2);	 Catch:{ all -> 0x004b }
        r3 = "#";
        r2.append(r3);	 Catch:{ all -> 0x004b }
        r2 = r0.f226g;	 Catch:{ all -> 0x004b }
        r2 = r1.append(r2);	 Catch:{ all -> 0x004b }
        r3 = "#";
        r2.append(r3);	 Catch:{ all -> 0x004b }
        r2 = r0.bfj;	 Catch:{ all -> 0x004b }
        r2 = r1.append(r2);	 Catch:{ all -> 0x004b }
        r3 = "#";
        r2.append(r3);	 Catch:{ all -> 0x004b }
        r0 = r0.bfk;	 Catch:{ all -> 0x004b }
        r0 = r1.append(r0);	 Catch:{ all -> 0x004b }
        r2 = "#";
        r0.append(r2);	 Catch:{ all -> 0x004b }
        r0 = r1.append(r4);	 Catch:{ all -> 0x004b }
        r2 = "#";
        r0.append(r2);	 Catch:{ all -> 0x004b }
        r0 = r7.bjx;	 Catch:{ all -> 0x004b }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x004b }
        if (r0 != 0) goto L_0x015a;
    L_0x014e:
        r0 = "cgiwifi";
    L_0x0151:
        r1.append(r0);	 Catch:{ all -> 0x004b }
        r0 = r1.toString();	 Catch:{ all -> 0x004b }
        goto L_0x0072;
    L_0x015a:
        r0 = r7.bjB;	 Catch:{ all -> 0x004b }
        r0 = r7.bEo(r0);	 Catch:{ all -> 0x004b }
        if (r0 != 0) goto L_0x014e;
    L_0x0162:
        r0 = "cgi";
        goto L_0x0151;
    L_0x0166:
        r0 = r7.bjx;	 Catch:{ all -> 0x004b }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x004b }
        if (r0 != 0) goto L_0x019b;
    L_0x016e:
        r1 = r3;
    L_0x016f:
        if (r8 == 0) goto L_0x01a5;
    L_0x0171:
        r0 = java.util.Locale.US;	 Catch:{ all -> 0x004b }
        r2 = "#%s#";
        r3 = 1;
        r3 = new java.lang.Object[r3];	 Catch:{ all -> 0x004b }
        r5 = 0;
        r3[r5] = r4;	 Catch:{ all -> 0x004b }
        r0 = java.lang.String.format(r0, r2, r3);	 Catch:{ all -> 0x004b }
        if (r1 != 0) goto L_0x01fe;
    L_0x0182:
        r1 = "network";
        r1 = r4.equals(r1);	 Catch:{ all -> 0x004b }
        if (r1 == 0) goto L_0x0072;
    L_0x018b:
        r0 = "";
        r1 = 2;
        r7.bkr = r1;	 Catch:{ all -> 0x004b }
        r1 = r7.bkb;	 Catch:{ all -> 0x004b }
        r2 = "is network & no wifi";
        r1.append(r2);	 Catch:{ all -> 0x004b }
        goto L_0x0072;
    L_0x019b:
        r0 = r7.bjB;	 Catch:{ all -> 0x004b }
        r0 = r7.bEo(r0);	 Catch:{ all -> 0x004b }
        if (r0 != 0) goto L_0x016e;
    L_0x01a3:
        r1 = r2;
        goto L_0x016f;
    L_0x01a5:
        r0 = r7.bjB;	 Catch:{ all -> 0x004b }
        r0 = r7.bEo(r0);	 Catch:{ all -> 0x004b }
        if (r0 != 0) goto L_0x01e1;
    L_0x01ad:
        r0 = r7.bjx;	 Catch:{ all -> 0x004b }
        r0 = r0.size();	 Catch:{ all -> 0x004b }
        if (r0 != r3) goto L_0x0171;
    L_0x01b5:
        r0 = 2;
        r7.bkr = r0;	 Catch:{ all -> 0x004b }
        r0 = r7.bjB;	 Catch:{ all -> 0x004b }
        r0 = r7.bEo(r0);	 Catch:{ all -> 0x004b }
        if (r0 == 0) goto L_0x01f5;
    L_0x01c0:
        r0 = r7.bjx;	 Catch:{ all -> 0x004b }
        r3 = 0;
        r0 = r0.get(r3);	 Catch:{ all -> 0x004b }
        r0 = (android.net.wifi.ScanResult) r0;	 Catch:{ all -> 0x004b }
        r0 = r0.BSSID;	 Catch:{ all -> 0x004b }
        r3 = r7.bjB;	 Catch:{ all -> 0x004b }
        r3 = r3.getBSSID();	 Catch:{ all -> 0x004b }
        r0 = r3.equals(r0);	 Catch:{ all -> 0x004b }
        if (r0 == 0) goto L_0x0171;
    L_0x01d7:
        r0 = r7.bkb;	 Catch:{ all -> 0x004b }
        r1 = "same access wifi & around wifi 1";
        r0.append(r1);	 Catch:{ all -> 0x004b }
    L_0x01df:
        r1 = r2;
        goto L_0x0171;
    L_0x01e1:
        r0 = r7.bjx;	 Catch:{ all -> 0x004b }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x004b }
        if (r0 == 0) goto L_0x01ad;
    L_0x01e9:
        r0 = 2;
        r7.bkr = r0;	 Catch:{ all -> 0x004b }
        r0 = r7.bkb;	 Catch:{ all -> 0x004b }
        r1 = "⊗ around wifi(s) & has access wifi";
        r0.append(r1);	 Catch:{ all -> 0x004b }
        goto L_0x01df;
    L_0x01f5:
        r0 = r7.bkb;	 Catch:{ all -> 0x004b }
        r1 = "⊗ access wifi & around wifi 1";
        r0.append(r1);	 Catch:{ all -> 0x004b }
        goto L_0x01df;
    L_0x01fe:
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x004b }
        r1.<init>();	 Catch:{ all -> 0x004b }
        r0 = r1.append(r0);	 Catch:{ all -> 0x004b }
        r1 = "wifi";
        r0 = r0.append(r1);	 Catch:{ all -> 0x004b }
        r0 = r0.toString();	 Catch:{ all -> 0x004b }
        goto L_0x0072;
    L_0x0214:
        r1 = "#";
        r1 = r0.startsWith(r1);	 Catch:{ all -> 0x004b }
        if (r1 == 0) goto L_0x0234;
    L_0x021d:
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x004b }
        r1.<init>();	 Catch:{ all -> 0x004b }
        r2 = com.loc.C1253X.m145j();	 Catch:{ all -> 0x004b }
        r1 = r1.append(r2);	 Catch:{ all -> 0x004b }
        r0 = r1.append(r0);	 Catch:{ all -> 0x004b }
        r0 = r0.toString();	 Catch:{ all -> 0x004b }
        goto L_0x0078;
    L_0x0234:
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x004b }
        r1.<init>();	 Catch:{ all -> 0x004b }
        r2 = "#";
        r1 = r1.append(r2);	 Catch:{ all -> 0x004b }
        r0 = r1.append(r0);	 Catch:{ all -> 0x004b }
        r0 = r0.toString();	 Catch:{ all -> 0x004b }
        goto L_0x021d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.cd.a(boolean):java.lang.String");
    }

    public void m484a(String str) {
        if (!TextUtils.isEmpty(str) && str.contains("##")) {
            String[] split = str.split("##");
            if (split.length == 4) {
                bx.f336d = split[0];
                bx.f337e = split[1];
                bx.f339g = split[2];
                bx.f340h = split[3];
                return;
            }
            bED();
            return;
        }
        bED();
    }

    public synchronized boolean m485a(Context context) {
        if (this.bjt != null) {
            return true;
        }
        if (context == null) {
            return false;
        }
        this.bjt = context.getApplicationContext();
        bQ.m333b(this.bjt);
        C1253X.m134b(this.bjt);
        if (this.bjv == null) {
            this.bjv = new C1272r(this.bjt, (WifiManager) C1253X.m126a(this.bjt, "wifi"), this.bjC);
        }
        if (this.bjw == null) {
            this.bjw = new aJ(this.bjt, this.bjC);
        }
        bj.m416a().m417a(this.bjt);
        return true;
    }

    public void m486b() {
        try {
            m477j();
            bEQ();
            bES(bEr(true, true, true));
        } catch (Throwable th) {
            bx.bBw(th, "APS", "doFusionLocation");
        }
    }

    public synchronized void m487b(Context context) {
        if (bEk(context, true)) {
            bx.bhv = true;
            if (this.bjA == null) {
                this.bjA = new C1276w();
            }
            try {
                this.bjR = af.bxA(this.bjt, this.bjv, this.bjw);
                this.bjF = C1253X.m132b();
            } catch (Throwable th) {
                bx.bBw(th, "APS", "setExtra");
            }
            m478k();
            m479l();
            this.bjw.m183e();
            C1271p.m567a().m569a(this.bjt);
            this.bkp = true;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized com.autonavi.aps.amapapi.model.AmapLoc bER(boolean r5) {
        /*
        r4 = this;
        r0 = 0;
        monitor-enter(r4);
        r1 = r4.bkb;	 Catch:{ all -> 0x004b }
        r1 = r1.length();	 Catch:{ all -> 0x004b }
        if (r1 > 0) goto L_0x003e;
    L_0x000a:
        r1 = r4.bkq;	 Catch:{ all -> 0x004b }
        if (r1 == 0) goto L_0x004e;
    L_0x000e:
        r1 = r4.bky;	 Catch:{ all -> 0x004b }
        if (r1 == 0) goto L_0x0052;
    L_0x0012:
        r1 = r4.bjG;	 Catch:{ Throwable -> 0x005d }
        if (r1 == 0) goto L_0x0056;
    L_0x0016:
        r1 = r4.bkv;	 Catch:{ all -> 0x004b }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x004b }
        if (r1 != 0) goto L_0x0068;
    L_0x001e:
        r1 = 0;
        r2 = 1;
        r1 = r4.bEr(r1, r2, r5);	 Catch:{ all -> 0x004b }
        r2 = com.loc.C1253X.bwV(r1);	 Catch:{ all -> 0x004b }
        if (r2 != 0) goto L_0x007d;
    L_0x002a:
        r0 = r4.bkx;	 Catch:{ all -> 0x004b }
        r0 = r0.toString();	 Catch:{ all -> 0x004b }
        r2 = r4.bkv;	 Catch:{ all -> 0x004b }
        r0 = r4.m474a(r2, r0);	 Catch:{ all -> 0x004b }
        r2 = com.loc.C1253X.bwV(r0);	 Catch:{ all -> 0x004b }
        if (r2 != 0) goto L_0x0094;
    L_0x003c:
        monitor-exit(r4);
        return r1;
    L_0x003e:
        r1 = r4.bkb;	 Catch:{ all -> 0x004b }
        r2 = 0;
        r3 = r4.bkb;	 Catch:{ all -> 0x004b }
        r3 = r3.length();	 Catch:{ all -> 0x004b }
        r1.delete(r2, r3);	 Catch:{ all -> 0x004b }
        goto L_0x000a;
    L_0x004b:
        r0 = move-exception;
        monitor-exit(r4);
        throw r0;
    L_0x004e:
        r4.m477j();	 Catch:{ all -> 0x004b }
        goto L_0x000e;
    L_0x0052:
        r4.bEQ();	 Catch:{ all -> 0x004b }
        goto L_0x0012;
    L_0x0056:
        r1 = r4.bjw;	 Catch:{ Throwable -> 0x005d }
        r0 = r1.m181c();	 Catch:{ Throwable -> 0x005d }
        goto L_0x0016;
    L_0x005d:
        r1 = move-exception;
        r2 = "APS";
        r3 = "doFirstNetLocate";
        com.loc.bx.bBw(r1, r2, r3);	 Catch:{ all -> 0x004b }
        goto L_0x0016;
    L_0x0068:
        r0 = new com.autonavi.aps.amapapi.model.AmapLoc;	 Catch:{ all -> 0x004b }
        r0.<init>();	 Catch:{ all -> 0x004b }
        r1 = r4.bkr;	 Catch:{ all -> 0x004b }
        r0.bHr(r1);	 Catch:{ all -> 0x004b }
        r1 = r4.bkb;	 Catch:{ all -> 0x004b }
        r1 = r1.toString();	 Catch:{ all -> 0x004b }
        r0.bHv(r1);	 Catch:{ all -> 0x004b }
    L_0x007b:
        monitor-exit(r4);
        return r0;
    L_0x007d:
        r2 = "new";
        r1.bHO(r2);	 Catch:{ all -> 0x004b }
        r2 = r4.bkx;	 Catch:{ all -> 0x004b }
        r2 = r2.toString();	 Catch:{ all -> 0x004b }
        r4.bjY = r2;	 Catch:{ all -> 0x004b }
        r4.bjZ = r0;	 Catch:{ all -> 0x004b }
        r4.bjD = r1;	 Catch:{ all -> 0x004b }
        r4.bET();	 Catch:{ all -> 0x004b }
        r0 = r1;
        goto L_0x007b;
    L_0x0094:
        r2 = r4.bkx;	 Catch:{ all -> 0x004b }
        r2 = r2.toString();	 Catch:{ all -> 0x004b }
        r4.bjY = r2;	 Catch:{ all -> 0x004b }
        r2 = "file";
        r0.bHO(r2);	 Catch:{ all -> 0x004b }
        r2 = 8;
        r0.bHq(r2);	 Catch:{ all -> 0x004b }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x004b }
        r2.<init>();	 Catch:{ all -> 0x004b }
        r3 = "离线定位结果，在线定位失败原因:";
        r2 = r2.append(r3);	 Catch:{ all -> 0x004b }
        r1 = r1.bHu();	 Catch:{ all -> 0x004b }
        r1 = r2.append(r1);	 Catch:{ all -> 0x004b }
        r1 = r1.toString();	 Catch:{ all -> 0x004b }
        r0.bHv(r1);	 Catch:{ all -> 0x004b }
        r4.bjD = r0;	 Catch:{ all -> 0x004b }
        goto L_0x007b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.cd.bER(boolean):com.autonavi.aps.amapapi.model.AmapLoc");
    }

    public synchronized void bES(AmapLoc amapLoc) {
        if (C1253X.bwV(amapLoc)) {
            bj.m416a().bAH(this.bkw, this.bkx, amapLoc, this.bjt, true);
        }
    }

    public synchronized boolean bEk(Context context, boolean z) {
        if (!m485a(context)) {
            return false;
        }
        this.bka = bu.bBd(this.bjt, z);
        if (this.bju == null) {
            this.bju = (ConnectivityManager) C1253X.m126a(this.bjt, "connectivity");
        }
        this.bjN = new C1273t();
        return true;
    }

    public void bEl(JSONObject jSONObject) {
        this.bjC = jSONObject;
        if (C1253X.bxc(jSONObject, "collwifiscan")) {
            try {
                Object string = jSONObject.getString("collwifiscan");
                if (TextUtils.isEmpty(string)) {
                    bx.f343l = 20;
                } else {
                    bx.f343l = Integer.parseInt(string) / 1000;
                }
                if (bEx()) {
                    this.bjR.bxC(bx.f343l * 1000);
                }
            } catch (Throwable th) {
                bx.bBw(th, "APS", "setExtra");
            }
        }
        if (this.bjw != null) {
            this.bjw.bzs(jSONObject);
        }
        if (this.bjv != null) {
            this.bjv.bwa(jSONObject);
        }
    }

    public AmapLoc bEn(AmapLoc amapLoc, String... strArr) {
        C1261d.m554a().m555a(this.bkn);
        return (strArr == null || strArr.length == 0) ? C1261d.m554a().bvv(amapLoc) : !strArr[0].equals("shake") ? !strArr[0].equals("fusion") ? amapLoc : C1261d.m554a().bvx(amapLoc) : C1261d.m554a().bvv(amapLoc);
    }

    public synchronized StringBuilder bEp(boolean z) {
        StringBuilder stringBuilder;
        Object obj = null;
        synchronized (this) {
            aJ aJVar = this.bjw;
            if (this.bjG) {
                aJVar.m185g();
            }
            stringBuilder = new StringBuilder(700);
            int d = aJVar.m182d();
            ArrayList b = aJVar.m180b();
            switch (d) {
                case 1:
                    for (d = 1; d < b.size(); d++) {
                        stringBuilder.append("#").append(((am) b.get(d)).f221b);
                        stringBuilder.append("|").append(((am) b.get(d)).f222c);
                        stringBuilder.append("|").append(((am) b.get(d)).f223d);
                    }
                    break;
            }
            if (((!z && TextUtils.isEmpty(this.bjL)) || this.bjL.equals("00:00:00:00:00:00")) && this.bjB != null) {
                this.bjL = this.bjB.getMacAddress();
                bEC();
                if (TextUtils.isEmpty(this.bjL)) {
                    this.bjL = "00:00:00:00:00:00";
                }
            }
            if (bEv()) {
                String str = "";
                if (bEo(this.bjB)) {
                    str = this.bjB.getBSSID();
                }
                String str2 = str;
                int size = this.bjx.size();
                for (d = 0; d < size; d++) {
                    str = "nb";
                    if (str2.equals(((ScanResult) this.bjx.get(d)).BSSID)) {
                        str = "access";
                        int i = 1;
                    }
                    stringBuilder.append(String.format(Locale.US, "#%s,%s", new Object[]{((ScanResult) this.bjx.get(d)).BSSID, str}));
                }
                if (obj == null && !TextUtils.isEmpty(str2)) {
                    stringBuilder.append("#").append(str2);
                    stringBuilder.append(",access");
                }
            } else {
                bEt();
                if (this.bjx != null) {
                    this.bjx.clear();
                }
            }
            if (stringBuilder.length() > 0) {
                stringBuilder.deleteCharAt(0);
            }
        }
        return stringBuilder;
    }

    public synchronized void m488c() {
        this.bkq = false;
        this.bky = false;
        this.bkp = false;
        bx.bhv = false;
        bEA();
        this.bjR = null;
        this.bjS = null;
        this.bjY = null;
        bET();
        if (this.bkc != null) {
            this.bkc.m412a();
            this.bkc = null;
            this.bkd = false;
            this.f361d = -1;
        }
        bEG();
        try {
            bI.m309a().bCl(this.bjt, 1);
        } catch (Throwable th) {
            bx.bBw(th, "APS", "destroy part");
        }
        C1261d.m554a().m556b();
        C1253X.m144i();
        try {
            if (this.bjt != null) {
                if (this.bjA != null) {
                    this.bjt.unregisterReceiver(this.bjA);
                }
            }
            this.bjA = null;
        } catch (Throwable th2) {
            this.bjA = null;
        }
        if (this.bjw != null) {
            this.bjw.m187i();
        }
        C1271p.m567a().m571c();
        by.m445a();
        bEV();
        this.bjW = 0;
        bEt();
        if (this.bjx != null) {
            this.bjx.clear();
        }
        this.bjD = null;
        this.bjt = null;
        if (this.bks != null) {
            this.bks.clear();
            this.bks = null;
        }
        bku = -1;
    }

    public synchronized void m489c(Context context) {
        try {
            if (bku == -1) {
                bku = 1;
                bQ.m331a(context);
            }
        } catch (Throwable th) {
            bx.bBw(th, "APS", "initAuth");
        }
    }

    public String m490d() {
        return "2.5.1";
    }

    public synchronized void m491e() {
        List list = this.bjx;
        Collection collection = this.bjy;
        list.clear();
        synchronized (this.bko) {
            if (collection != null) {
                if (collection.size() > 0) {
                    list.addAll(collection);
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void m492f() {
        /*
        r8 = this;
        r3 = 32;
        r2 = 1;
        r1 = 0;
        monitor-enter(r8);
        r0 = r8.bjx;	 Catch:{ all -> 0x0071 }
        if (r0 != 0) goto L_0x000b;
    L_0x0009:
        monitor-exit(r8);
        return;
    L_0x000b:
        r0 = r8.bjx;	 Catch:{ all -> 0x0071 }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x0071 }
        if (r0 != 0) goto L_0x0009;
    L_0x0013:
        r4 = com.loc.C1253X.m132b();	 Catch:{ all -> 0x0071 }
        r6 = r8.bjJ;	 Catch:{ all -> 0x0071 }
        r4 = r4 - r6;
        r6 = 3600000; // 0x36ee80 float:5.044674E-39 double:1.7786363E-317;
        r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r0 > 0) goto L_0x0069;
    L_0x0021:
        r0 = r2;
    L_0x0022:
        if (r0 != 0) goto L_0x002b;
    L_0x0024:
        r8.bEt();	 Catch:{ all -> 0x0071 }
        r0 = r8.bjx;	 Catch:{ all -> 0x0071 }
        if (r0 != 0) goto L_0x006b;
    L_0x002b:
        r0 = com.loc.C1253X.m143h();	 Catch:{ all -> 0x0071 }
        r4 = r8.bjC;	 Catch:{ all -> 0x0071 }
        r5 = "nbssid";
        r4 = com.loc.C1253X.bxc(r4, r5);	 Catch:{ all -> 0x0071 }
        if (r4 != 0) goto L_0x0074;
    L_0x003a:
        r4 = r0;
    L_0x003b:
        r0 = r8.bks;	 Catch:{ all -> 0x0071 }
        if (r0 == 0) goto L_0x00a9;
    L_0x003f:
        r0 = r8.bks;	 Catch:{ all -> 0x0071 }
        r0.clear();	 Catch:{ all -> 0x0071 }
        r0 = r8.bjx;	 Catch:{ all -> 0x0071 }
        r5 = r0.size();	 Catch:{ all -> 0x0071 }
        r2 = r1;
    L_0x004b:
        if (r2 < r5) goto L_0x00b5;
    L_0x004d:
        r0 = r8.bjx;	 Catch:{ all -> 0x0071 }
        r0.clear();	 Catch:{ all -> 0x0071 }
        r0 = r8.bks;	 Catch:{ all -> 0x0071 }
        r0 = r0.values();	 Catch:{ all -> 0x0071 }
        r1 = r0.iterator();	 Catch:{ all -> 0x0071 }
    L_0x005c:
        r0 = r1.hasNext();	 Catch:{ all -> 0x0071 }
        if (r0 != 0) goto L_0x0126;
    L_0x0062:
        r0 = r8.bks;	 Catch:{ all -> 0x0071 }
        r0.clear();	 Catch:{ all -> 0x0071 }
        monitor-exit(r8);
        return;
    L_0x0069:
        r0 = r1;
        goto L_0x0022;
    L_0x006b:
        r0 = r8.bjx;	 Catch:{ all -> 0x0071 }
        r0.clear();	 Catch:{ all -> 0x0071 }
        goto L_0x002b;
    L_0x0071:
        r0 = move-exception;
        monitor-exit(r8);
        throw r0;
    L_0x0074:
        r4 = r8.bjC;	 Catch:{ Throwable -> 0x009e }
        r5 = "nbssid";
        r4 = r4.getString(r5);	 Catch:{ Throwable -> 0x009e }
        r5 = "1";
        r4 = r4.equals(r5);	 Catch:{ Throwable -> 0x009e }
        if (r4 != 0) goto L_0x009a;
    L_0x0086:
        r2 = r8.bjC;	 Catch:{ Throwable -> 0x009e }
        r4 = "nbssid";
        r2 = r2.getString(r4);	 Catch:{ Throwable -> 0x009e }
        r4 = "0";
        r2 = r2.equals(r4);	 Catch:{ Throwable -> 0x009e }
        if (r2 != 0) goto L_0x009c;
    L_0x0098:
        r4 = r0;
        goto L_0x003b;
    L_0x009a:
        r0 = r2;
        goto L_0x0098;
    L_0x009c:
        r0 = r1;
        goto L_0x0098;
    L_0x009e:
        r2 = move-exception;
        r4 = "APS";
        r5 = "setWifiOrder part";
        com.loc.bx.bBw(r2, r4, r5);	 Catch:{ all -> 0x0071 }
        goto L_0x003a;
    L_0x00a9:
        r0 = new java.util.TreeMap;	 Catch:{ all -> 0x0071 }
        r2 = java.util.Collections.reverseOrder();	 Catch:{ all -> 0x0071 }
        r0.<init>(r2);	 Catch:{ all -> 0x0071 }
        r8.bks = r0;	 Catch:{ all -> 0x0071 }
        goto L_0x003f;
    L_0x00b5:
        r0 = r8.bjx;	 Catch:{ all -> 0x0071 }
        r0 = r0.get(r2);	 Catch:{ all -> 0x0071 }
        r0 = (android.net.wifi.ScanResult) r0;	 Catch:{ all -> 0x0071 }
        r1 = com.loc.C1253X.bxd(r0);	 Catch:{ all -> 0x0071 }
        if (r1 == 0) goto L_0x00e2;
    L_0x00c3:
        r1 = 20;
        if (r5 > r1) goto L_0x00e7;
    L_0x00c7:
        r1 = r0.SSID;	 Catch:{ all -> 0x0071 }
        r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x0071 }
        if (r1 == 0) goto L_0x00f0;
    L_0x00cf:
        r1 = "unkwn";
        r0.SSID = r1;	 Catch:{ all -> 0x0071 }
    L_0x00d4:
        r1 = r8.bks;	 Catch:{ all -> 0x0071 }
        r6 = r0.level;	 Catch:{ all -> 0x0071 }
        r6 = r6 * 30;
        r6 = r6 + r2;
        r6 = java.lang.Integer.valueOf(r6);	 Catch:{ all -> 0x0071 }
        r1.put(r6, r0);	 Catch:{ all -> 0x0071 }
    L_0x00e2:
        r1 = r2 + 1;
        r2 = r1;
        goto L_0x004b;
    L_0x00e7:
        r1 = r0.level;	 Catch:{ all -> 0x0071 }
        r1 = r8.m475a(r1);	 Catch:{ all -> 0x0071 }
        if (r1 == 0) goto L_0x00e2;
    L_0x00ef:
        goto L_0x00c7;
    L_0x00f0:
        if (r4 != 0) goto L_0x00f9;
    L_0x00f2:
        r1 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x0071 }
        r0.SSID = r1;	 Catch:{ all -> 0x0071 }
        goto L_0x00d4;
    L_0x00f9:
        r1 = r0.SSID;	 Catch:{ all -> 0x0071 }
        r6 = "*";
        r7 = ".";
        r1 = r1.replace(r6, r7);	 Catch:{ all -> 0x0071 }
        r0.SSID = r1;	 Catch:{ all -> 0x0071 }
        r1 = r0.SSID;	 Catch:{ Throwable -> 0x011a }
        r6 = "UTF-8";
        r1 = r1.getBytes(r6);	 Catch:{ Throwable -> 0x011a }
        r1 = r1.length;	 Catch:{ Throwable -> 0x011a }
    L_0x0111:
        if (r1 < r3) goto L_0x00d4;
    L_0x0113:
        r1 = java.lang.String.valueOf(r2);	 Catch:{ all -> 0x0071 }
        r0.SSID = r1;	 Catch:{ all -> 0x0071 }
        goto L_0x00d4;
    L_0x011a:
        r1 = move-exception;
        r6 = "APS";
        r7 = "setWifiOrder";
        com.loc.bx.bBw(r1, r6, r7);	 Catch:{ all -> 0x0071 }
        r1 = r3;
        goto L_0x0111;
    L_0x0126:
        r0 = r1.next();	 Catch:{ all -> 0x0071 }
        r0 = (android.net.wifi.ScanResult) r0;	 Catch:{ all -> 0x0071 }
        r2 = r8.bjx;	 Catch:{ all -> 0x0071 }
        r2.add(r0);	 Catch:{ all -> 0x0071 }
        goto L_0x005c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.cd.f():void");
    }

    public synchronized void m493g() {
        if (this.bjK >= 1) {
            if (!this.bkd) {
                if (this.bkc == null) {
                    this.bkc = new bi(this.bjt.getApplicationContext());
                    this.bkc.bAE(this.bkt);
                }
                try {
                    if (this.bkc != null) {
                        this.bkc.m413b();
                    }
                    this.bkd = true;
                } catch (Throwable th) {
                    bx.bBw(th, "APS", "bindService");
                    this.bkd = true;
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized com.autonavi.aps.amapapi.model.AmapLoc m494h() {
        /*
        r4 = this;
        monitor-enter(r4);
        r0 = r4.bkb;	 Catch:{ all -> 0x003b }
        r0 = r0.length();	 Catch:{ all -> 0x003b }
        if (r0 > 0) goto L_0x002e;
    L_0x0009:
        r0 = r4.bkq;	 Catch:{ all -> 0x003b }
        if (r0 == 0) goto L_0x003e;
    L_0x000d:
        r4.bEQ();	 Catch:{ all -> 0x003b }
        r0 = r4.bkv;	 Catch:{ all -> 0x003b }
        r0 = android.text.TextUtils.isEmpty(r0);	 Catch:{ all -> 0x003b }
        if (r0 != 0) goto L_0x0042;
    L_0x0018:
        r0 = com.loc.bj.m416a();	 Catch:{ all -> 0x003b }
        r1 = r4.bkw;	 Catch:{ all -> 0x003b }
        r2 = r4.bkx;	 Catch:{ all -> 0x003b }
        r3 = r4.bkn;	 Catch:{ all -> 0x003b }
        r0 = r0.bAI(r1, r2, r3);	 Catch:{ all -> 0x003b }
        r1 = com.loc.C1253X.bwV(r0);	 Catch:{ all -> 0x003b }
        if (r1 != 0) goto L_0x0056;
    L_0x002c:
        monitor-exit(r4);
        return r0;
    L_0x002e:
        r0 = r4.bkb;	 Catch:{ all -> 0x003b }
        r1 = 0;
        r2 = r4.bkb;	 Catch:{ all -> 0x003b }
        r2 = r2.length();	 Catch:{ all -> 0x003b }
        r0.delete(r1, r2);	 Catch:{ all -> 0x003b }
        goto L_0x0009;
    L_0x003b:
        r0 = move-exception;
        monitor-exit(r4);
        throw r0;
    L_0x003e:
        r4.m477j();	 Catch:{ all -> 0x003b }
        goto L_0x000d;
    L_0x0042:
        r0 = new com.autonavi.aps.amapapi.model.AmapLoc;	 Catch:{ all -> 0x003b }
        r0.<init>();	 Catch:{ all -> 0x003b }
        r1 = r4.bkr;	 Catch:{ all -> 0x003b }
        r0.bHr(r1);	 Catch:{ all -> 0x003b }
        r1 = r4.bkb;	 Catch:{ all -> 0x003b }
        r1 = r1.toString();	 Catch:{ all -> 0x003b }
        r0.bHv(r1);	 Catch:{ all -> 0x003b }
        goto L_0x002c;
    L_0x0056:
        r2 = 0;
        r4.bjX = r2;	 Catch:{ all -> 0x003b }
        r1 = 4;
        r0.bHq(r1);	 Catch:{ all -> 0x003b }
        r4.bjD = r0;	 Catch:{ all -> 0x003b }
        r4.bET();	 Catch:{ all -> 0x003b }
        monitor-exit(r4);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.cd.h():com.autonavi.aps.amapapi.model.AmapLoc");
    }

    public void m495i() {
        if (this.f362j && !bEx()) {
            bEy();
        }
    }
}
