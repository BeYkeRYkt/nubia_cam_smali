package com.autonavi.aps.amapapi.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.loc.C1253X;
import com.loc.bx;
import com.umeng.analytics.ReportPolicy;
import org.json.JSONObject;

public class AmapLoc implements Parcelable {
    public static final Creator bmm = new C1227a();
    private String f86a = "";
    private double f87b = 0.0d;
    private float blU = 0.0f;
    private float blV = 0.0f;
    private float blW = 0.0f;
    private String blX = "";
    private String blY = "";
    private String blZ = "";
    private String bma = "";
    private String bmb = "";
    private String bmc = null;
    private String bmd = "";
    private String bme = "";
    private int bmf = -1;
    private String bmg = "";
    private String bmh = "";
    private String bmi = "";
    private boolean bmj = true;
    private boolean bmk = true;
    private JSONObject bml = null;
    private double f88c = 0.0d;
    private double f89d = 0.0d;
    private long f90h = 0;
    private String f91i = "new";
    private int f92j = 0;
    private String f93k = "success";
    private int f94l = 0;
    private String f95m = "";
    private String f96n = "";
    private String f97o = "";
    private String f98p = "";
    private String f99q = "";
    private String f100r = "";
    private String f101s = "";
    private String f102t = "";

    public AmapLoc(Parcel parcel) {
        boolean z = false;
        this.f86a = parcel.readString();
        this.f91i = parcel.readString();
        this.f93k = parcel.readString();
        this.f92j = parcel.readInt();
        this.blW = parcel.readFloat();
        this.blV = parcel.readFloat();
        this.blU = parcel.readFloat();
        this.f87b = parcel.readDouble();
        this.f88c = parcel.readDouble();
        this.f89d = parcel.readDouble();
        this.f90h = parcel.readLong();
        this.f96n = parcel.readString();
        this.f97o = parcel.readString();
        this.f98p = parcel.readString();
        this.f99q = parcel.readString();
        this.f100r = parcel.readString();
        this.f101s = parcel.readString();
        this.f102t = parcel.readString();
        this.blX = parcel.readString();
        this.blY = parcel.readString();
        this.blZ = parcel.readString();
        this.bma = parcel.readString();
        this.bmb = parcel.readString();
        this.bmc = parcel.readString();
        this.bmd = parcel.readString();
        this.bme = parcel.readString();
        this.bmg = parcel.readString();
        this.f95m = parcel.readString();
        this.bmf = parcel.readInt();
        this.f94l = parcel.readInt();
        this.bmh = parcel.readString();
        this.bmj = parcel.readByte() != (byte) 0;
        if (parcel.readByte() != (byte) 0) {
            z = true;
        }
        this.bmk = z;
        this.bmi = parcel.readString();
    }

    public AmapLoc(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (C1253X.bxc(jSONObject, "provider")) {
                    bHA(jSONObject.getString("provider"));
                }
                if (C1253X.bxc(jSONObject, "lon")) {
                    bHC(jSONObject.getDouble("lon"));
                }
                if (C1253X.bxc(jSONObject, "lat")) {
                    bHF(jSONObject.getDouble("lat"));
                }
                if (C1253X.bxc(jSONObject, "altitude")) {
                    bHH(jSONObject.getDouble("altitude"));
                }
                if (C1253X.bxc(jSONObject, "acc")) {
                    m73a(jSONObject.getString("acc"));
                }
                if (C1253X.bxc(jSONObject, "accuracy")) {
                    bHI((float) jSONObject.getLong("accuracy"));
                }
                if (C1253X.bxc(jSONObject, "speed")) {
                    bHJ((float) jSONObject.getLong("speed"));
                }
                if (C1253X.bxc(jSONObject, "dir")) {
                    bHK((float) jSONObject.getLong("dir"));
                }
                if (C1253X.bxc(jSONObject, "bearing")) {
                    bHK((float) jSONObject.getLong("bearing"));
                }
                if (C1253X.bxc(jSONObject, "type")) {
                    bHO(jSONObject.getString("type"));
                }
                if (C1253X.bxc(jSONObject, "retype")) {
                    bHQ(jSONObject.getString("retype"));
                }
                if (C1253X.bxc(jSONObject, "citycode")) {
                    bHU(jSONObject.getString("citycode"));
                }
                if (C1253X.bxc(jSONObject, "desc")) {
                    bHW(jSONObject.getString("desc"));
                }
                if (C1253X.bxc(jSONObject, "adcode")) {
                    bHY(jSONObject.getString("adcode"));
                }
                if (C1253X.bxc(jSONObject, "country")) {
                    bIa(jSONObject.getString("country"));
                }
                if (C1253X.bxc(jSONObject, "province")) {
                    bIc(jSONObject.getString("province"));
                }
                if (C1253X.bxc(jSONObject, "city")) {
                    bIe(jSONObject.getString("city"));
                }
                if (C1253X.bxc(jSONObject, "road")) {
                    bIi(jSONObject.getString("road"));
                }
                if (C1253X.bxc(jSONObject, "street")) {
                    bIk(jSONObject.getString("street"));
                }
                if (C1253X.bxc(jSONObject, "number")) {
                    bIm(jSONObject.getString("number"));
                }
                if (C1253X.bxc(jSONObject, "poiname")) {
                    bIo(jSONObject.getString("poiname"));
                }
                if (C1253X.bxc(jSONObject, "aoiname")) {
                    bIq(jSONObject.getString("aoiname"));
                }
                if (C1253X.bxc(jSONObject, "errorCode")) {
                    bHr(jSONObject.getInt("errorCode"));
                }
                if (C1253X.bxc(jSONObject, "errorInfo")) {
                    bHt(jSONObject.getString("errorInfo"));
                }
                if (C1253X.bxc(jSONObject, "locationType")) {
                    bHq(jSONObject.getInt("locationType"));
                }
                if (C1253X.bxc(jSONObject, "locationDetail")) {
                    bHv(jSONObject.getString("locationDetail"));
                }
                if (C1253X.bxc(jSONObject, "cens")) {
                    bIr(jSONObject.getString("cens"));
                }
                if (C1253X.bxc(jSONObject, "poiid")) {
                    bIt(jSONObject.getString("poiid"));
                }
                if (C1253X.bxc(jSONObject, "pid")) {
                    bIt(jSONObject.getString("pid"));
                }
                if (C1253X.bxc(jSONObject, "floor")) {
                    bIu(jSONObject.getString("floor"));
                }
                if (C1253X.bxc(jSONObject, "flr")) {
                    bIu(jSONObject.getString("flr"));
                }
                if (C1253X.bxc(jSONObject, "coord")) {
                    bIw(jSONObject.getString("coord"));
                }
                if (C1253X.bxc(jSONObject, "mcell")) {
                    bIz(jSONObject.getString("mcell"));
                }
                if (C1253X.bxc(jSONObject, "time")) {
                    bHM(jSONObject.getLong("time"));
                }
                if (C1253X.bxc(jSONObject, "district")) {
                    bIg(jSONObject.getString("district"));
                }
                if (C1253X.bxc(jSONObject, "isOffset")) {
                    bHx(jSONObject.getBoolean("isOffset"));
                }
                if (C1253X.bxc(jSONObject, "isReversegeo")) {
                    bHz(jSONObject.getBoolean("isReversegeo"));
                }
            } catch (Throwable th) {
                bx.bBw(th, "AmapLoc", "AmapLoc");
            }
        }
    }

    private void m73a(String str) {
        this.blU = Float.parseFloat(str);
    }

    public void bHA(String str) {
        this.f86a = str;
    }

    public double bHB() {
        return this.f87b;
    }

    public void bHC(double d) {
        this.f87b = C1253X.bxs(d);
    }

    public void bHD(String str) {
        this.f87b = Double.parseDouble(str);
    }

    public double bHE() {
        return this.f88c;
    }

    public void bHF(double d) {
        this.f88c = C1253X.bxs(d);
    }

    public void bHG(String str) {
        this.f88c = Double.parseDouble(str);
    }

    public void bHH(double d) {
        this.f89d = d;
    }

    public void bHI(float f) {
        m73a(String.valueOf(Math.round(f)));
    }

    public void bHJ(float f) {
        this.blV = f;
    }

    public void bHK(float f) {
        this.blW = f;
    }

    public long bHL() {
        return this.f90h;
    }

    public void bHM(long j) {
        this.f90h = j;
    }

    public String bHN() {
        return this.f91i;
    }

    public void bHO(String str) {
        this.f91i = str;
    }

    public String bHP() {
        return this.f96n;
    }

    public void bHQ(String str) {
        this.f96n = str;
    }

    public String bHR() {
        return this.f97o;
    }

    public void bHS(String str) {
        this.f97o = str;
    }

    public String bHT() {
        return this.f98p;
    }

    public void bHU(String str) {
        this.f98p = str;
    }

    public String bHV() {
        return this.f99q;
    }

    public void bHW(String str) {
        this.f99q = str;
    }

    public String bHX() {
        return this.f100r;
    }

    public void bHY(String str) {
        this.f100r = str;
    }

    public String bHZ() {
        return this.f101s;
    }

    public int bHo() {
        return this.f92j;
    }

    public int bHp() {
        return this.f94l;
    }

    public void bHq(int i) {
        this.f94l = i;
    }

    public void bHr(int i) {
        if (this.f92j == 0) {
            String str;
            switch (i) {
                case 0:
                    str = "success";
                    break;
                case 1:
                    str = "重要参数为空";
                    break;
                case 2:
                    str = "WIFI信息不足";
                    break;
                case 3:
                    str = "请求参数获取出现异常";
                    break;
                case 4:
                    str = "网络连接异常";
                    break;
                case 5:
                    str = "解析XML出错";
                    break;
                case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                    str = "定位结果错误";
                    break;
                case 7:
                    str = "KEY错误";
                    break;
                case 8:
                    str = "其他错误";
                    break;
                case 9:
                    str = "初始化异常";
                    break;
                case 10:
                    str = "定位服务启动失败";
                    break;
                case 11:
                    str = "错误的基站信息，请检查是否插入SIM卡";
                    break;
                case 12:
                    str = "缺少定位权限";
                    break;
                default:
                    this.f92j = i;
            }
            this.f93k = str;
            this.f92j = i;
        }
    }

    public String bHs() {
        return this.f93k;
    }

    public void bHt(String str) {
        this.f93k = str;
    }

    public String bHu() {
        return this.f95m;
    }

    public void bHv(String str) {
        if (this.f95m == null || this.f95m.length() == 0) {
            this.f95m = str;
        }
    }

    public boolean bHw() {
        return this.bmj;
    }

    public void bHx(boolean z) {
        this.bmj = z;
    }

    public boolean bHy() {
        return this.bmk;
    }

    public void bHz(boolean z) {
        this.bmk = z;
    }

    public JSONObject bIA() {
        return this.bml;
    }

    public void bIB(JSONObject jSONObject) {
        this.bml = jSONObject;
    }

    public String bIC() {
        return bID(1);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.String bID(int r7) {
        /*
        r6 = this;
        r1 = 0;
        r0 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x0121 }
        r0.<init>();	 Catch:{ Throwable -> 0x0121 }
        switch(r7) {
            case 1: goto L_0x0010;
            case 2: goto L_0x00de;
            case 3: goto L_0x00e6;
            default: goto L_0x0009;
        };
    L_0x0009:
        if (r0 == 0) goto L_0x0147;
    L_0x000b:
        r0 = r0.toString();
    L_0x000f:
        return r0;
    L_0x0010:
        r2 = "altitude";
        r4 = r6.f89d;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r4);	 Catch:{ Throwable -> 0x0121 }
        r2 = "speed";
        r3 = r6.blV;	 Catch:{ Throwable -> 0x0121 }
        r4 = (double) r3;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r4);	 Catch:{ Throwable -> 0x0121 }
        r2 = "bearing";
        r3 = r6.blW;	 Catch:{ Throwable -> 0x0121 }
        r4 = (double) r3;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r4);	 Catch:{ Throwable -> 0x0121 }
        r2 = "retype";
        r3 = r6.f96n;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "citycode";
        r3 = r6.f98p;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "desc";
        r3 = r6.f99q;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "adcode";
        r3 = r6.f100r;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "country";
        r3 = r6.f101s;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "province";
        r3 = r6.f102t;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "city";
        r3 = r6.blX;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "district";
        r3 = r6.blY;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "road";
        r3 = r6.blZ;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "street";
        r3 = r6.bma;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "number";
        r3 = r6.bmh;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "poiname";
        r3 = r6.bmb;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "cens";
        r3 = r6.bmc;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "poiid";
        r3 = r6.bmd;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "floor";
        r3 = r6.bme;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "coord";
        r3 = r6.bmf;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "mcell";
        r3 = r6.bmg;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "errorCode";
        r3 = r6.f92j;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "errorInfo";
        r3 = r6.f93k;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "locationType";
        r3 = r6.f94l;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "locationDetail";
        r3 = r6.f95m;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "aoiname";
        r3 = r6.bmi;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = r6.bml;	 Catch:{ Throwable -> 0x0121 }
        if (r2 != 0) goto L_0x012e;
    L_0x00de:
        r2 = "time";
        r4 = r6.f90h;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r4);	 Catch:{ Throwable -> 0x0121 }
    L_0x00e6:
        r2 = "provider";
        r3 = r6.f86a;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "lon";
        r4 = r6.f87b;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r4);	 Catch:{ Throwable -> 0x0121 }
        r2 = "lat";
        r4 = r6.f88c;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r4);	 Catch:{ Throwable -> 0x0121 }
        r2 = "accuracy";
        r3 = r6.blU;	 Catch:{ Throwable -> 0x0121 }
        r4 = (double) r3;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r4);	 Catch:{ Throwable -> 0x0121 }
        r2 = "type";
        r3 = r6.f91i;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "isOffset";
        r3 = r6.bmj;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        r2 = "isReversegeo";
        r3 = r6.bmk;	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        goto L_0x0009;
    L_0x0121:
        r0 = move-exception;
        r2 = "AmapLoc";
        r3 = "toStr";
        com.loc.bx.bBw(r0, r2, r3);
        r0 = r1;
        goto L_0x0009;
    L_0x012e:
        r2 = "offpct";
        r2 = com.loc.C1253X.bxc(r0, r2);	 Catch:{ Throwable -> 0x0121 }
        if (r2 == 0) goto L_0x00de;
    L_0x0137:
        r2 = "offpct";
        r3 = r6.bml;	 Catch:{ Throwable -> 0x0121 }
        r4 = "offpct";
        r3 = r3.getString(r4);	 Catch:{ Throwable -> 0x0121 }
        r0.put(r2, r3);	 Catch:{ Throwable -> 0x0121 }
        goto L_0x00de;
    L_0x0147:
        r0 = r1;
        goto L_0x000f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.autonavi.aps.amapapi.model.AmapLoc.bID(int):java.lang.String");
    }

    public void bIa(String str) {
        this.f101s = str;
    }

    public String bIb() {
        return this.f102t;
    }

    public void bIc(String str) {
        this.f102t = str;
    }

    public String bId() {
        return this.blX;
    }

    public void bIe(String str) {
        this.blX = str;
    }

    public String bIf() {
        return this.blY;
    }

    public void bIg(String str) {
        this.blY = str;
    }

    public String bIh() {
        return this.blZ;
    }

    public void bIi(String str) {
        this.blZ = str;
    }

    public String bIj() {
        return this.bma;
    }

    public void bIk(String str) {
        this.bma = str;
    }

    public String bIl() {
        return this.bmh;
    }

    public void bIm(String str) {
        this.bmh = str;
    }

    public String bIn() {
        return this.bmb;
    }

    public void bIo(String str) {
        this.bmb = str;
    }

    public String bIp() {
        return this.bmi;
    }

    public void bIq(String str) {
        this.bmi = str;
    }

    public void bIr(String str) {
        if (!TextUtils.isEmpty(str)) {
            for (Object obj : str.split("\\*")) {
                if (!TextUtils.isEmpty(obj)) {
                    String[] split = obj.split(",");
                    bHC(Double.parseDouble(split[0]));
                    bHF(Double.parseDouble(split[1]));
                    bHI((float) Integer.parseInt(split[2]));
                    break;
                }
            }
            this.bmc = str;
        }
    }

    public String bIs() {
        return this.bmd;
    }

    public void bIt(String str) {
        this.bmd = str;
    }

    public void bIu(String str) {
        if (!TextUtils.isEmpty(str)) {
            str = str.replace("F", "");
            try {
                Integer.parseInt(str);
            } catch (Throwable th) {
                str = null;
                bx.bBw(th, "AmapLoc", "setFloor");
            }
        }
        this.bme = str;
    }

    public int bIv() {
        return this.bmf;
    }

    public void bIw(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (this.f86a.equals("gps") || str.equals("0")) {
                this.bmf = 0;
                return;
            } else if (str.equals("1")) {
                this.bmf = 1;
                return;
            }
        }
        this.bmf = -1;
    }

    public String bIx() {
        return this.bmg;
    }

    public AmapLoc bIy() {
        Object bIx = bIx();
        if (TextUtils.isEmpty(bIx)) {
            return null;
        }
        String[] split = bIx.split(",");
        if (split.length != 3) {
            return null;
        }
        AmapLoc amapLoc = new AmapLoc();
        amapLoc.bHA(getProvider());
        amapLoc.bHD(split[0]);
        amapLoc.bHG(split[1]);
        amapLoc.bHI(Float.parseFloat(split[2]));
        amapLoc.bHU(bHT());
        amapLoc.bHY(bHX());
        amapLoc.bIa(bHZ());
        amapLoc.bIc(bIb());
        amapLoc.bIe(bId());
        amapLoc.bHM(bHL());
        amapLoc.bHO(bHN());
        amapLoc.bIw(String.valueOf(bIv()));
        return C1253X.bwV(amapLoc) ? amapLoc : null;
    }

    public void bIz(String str) {
        this.bmg = str;
    }

    public int describeContents() {
        return 0;
    }

    public float getAccuracy() {
        return this.blU;
    }

    public String getProvider() {
        return this.f86a;
    }

    public void writeToParcel(Parcel parcel, int i) {
        byte b = (byte) 0;
        parcel.writeString(this.f86a);
        parcel.writeString(this.f91i);
        parcel.writeString(this.f93k);
        parcel.writeInt(this.f92j);
        parcel.writeFloat(this.blW);
        parcel.writeFloat(this.blV);
        parcel.writeFloat(this.blU);
        parcel.writeDouble(this.f87b);
        parcel.writeDouble(this.f88c);
        parcel.writeDouble(this.f89d);
        parcel.writeLong(this.f90h);
        parcel.writeString(this.f96n);
        parcel.writeString(this.f97o);
        parcel.writeString(this.f98p);
        parcel.writeString(this.f99q);
        parcel.writeString(this.f100r);
        parcel.writeString(this.f101s);
        parcel.writeString(this.f102t);
        parcel.writeString(this.blX);
        parcel.writeString(this.blY);
        parcel.writeString(this.blZ);
        parcel.writeString(this.bma);
        parcel.writeString(this.bmb);
        parcel.writeString(this.bmc);
        parcel.writeString(this.bmd);
        parcel.writeString(this.bme);
        parcel.writeString(this.bmg);
        parcel.writeString(this.f95m);
        parcel.writeInt(this.bmf);
        parcel.writeInt(this.f94l);
        parcel.writeString(this.bmh);
        parcel.writeByte(!this.bmj ? (byte) 0 : (byte) 1);
        if (this.bmk) {
            b = (byte) 1;
        }
        parcel.writeByte(b);
        parcel.writeString(this.bmi);
    }
}
