package com.amap.api.location;

import android.location.Location;
import android.os.Bundle;
import com.loc.bx;
import com.umeng.analytics.ReportPolicy;
import org.json.JSONObject;

public class AMapLocation extends Location {
    private String f8a = "";
    private String f9b = "";
    private boolean bcG = true;
    private int bcH = 0;
    private int bcI = 0;
    private double bcJ = 0.0d;
    private double bcK = 0.0d;
    private int bcL = 0;
    private String f10c = "";
    private String f11d = "";
    private String f12e = "";
    private String f13f = "";
    private String f14g = "";
    private String f15h = "";
    private String f16i = "";
    private String f17j = "";
    private String f18k = "";
    private String f19n = "success";
    private String f20o = "";
    private String f21t = "";

    public AMapLocation(Location location) {
        super(location);
        this.bcJ = location.getLatitude();
        this.bcK = location.getLongitude();
    }

    public AMapLocation(String str) {
        super(str);
    }

    public void buA(String str) {
        this.f12e = str;
    }

    public void buB(String str) {
        this.f14g = str;
    }

    public void buC(int i) {
        this.bcL = i;
    }

    public void buD(String str) {
        this.f17j = str;
    }

    public void buE(String str) {
        this.f18k = str;
    }

    public void buF(boolean z) {
        this.bcG = z;
    }

    public void buG(String str) {
        this.f21t = str;
    }

    public String buH() {
        return buI(1);
    }

    public String buI(int i) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        try {
            jSONObject = new JSONObject();
            switch (i) {
                case 1:
                    jSONObject.put("country", this.f15h);
                    jSONObject.put("province", this.f8a);
                    jSONObject.put("city", this.f9b);
                    jSONObject.put("cityCode", this.f11d);
                    jSONObject.put("district", this.f10c);
                    jSONObject.put("adCode", this.f12e);
                    jSONObject.put("address", this.f13f);
                    jSONObject.put("road", this.f16i);
                    jSONObject.put("street", this.f17j);
                    jSONObject.put("number", this.f18k);
                    jSONObject.put("poiName", this.f14g);
                    jSONObject.put("errorCode", this.bcH);
                    jSONObject.put("errorInfo", this.f19n);
                    jSONObject.put("locationDetail", this.f20o);
                    jSONObject.put("altitude", getAltitude());
                    jSONObject.put("bearing", (double) getBearing());
                    jSONObject.put("speed", (double) getSpeed());
                    jSONObject.put("satellites", this.bcL);
                    jSONObject.put("aoiName", this.f21t);
                    Bundle extras = getExtras();
                    if (extras != null) {
                        if (extras.containsKey("desc")) {
                            jSONObject.put("desc", extras.getString("desc"));
                        }
                    }
                case 2:
                    jSONObject.put("time", getTime());
                    break;
                case 3:
                    break;
            }
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocation", "toStr part2");
            jSONObject2 = null;
        }
        jSONObject.put("locationType", this.bcI);
        jSONObject.put("accuracy", (double) getAccuracy());
        jSONObject.put("latitude", getLatitude());
        jSONObject.put("longitude", getLongitude());
        jSONObject.put("provider", getProvider());
        jSONObject2 = jSONObject;
        return jSONObject2 != null ? jSONObject2.toString() : null;
    }

    public int bum() {
        return this.bcI;
    }

    public void bun(int i) {
        this.bcI = i;
    }

    public void buo(String str) {
        this.f20o = str;
    }

    public int bup() {
        return this.bcH;
    }

    public void buq(int i) {
        if (this.bcH == 0) {
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
                    this.bcH = i;
            }
            this.f19n = str;
            this.bcH = i;
        }
    }

    public String bur() {
        return this.f19n;
    }

    public void bus(String str) {
        this.f19n = str;
    }

    public void but(String str) {
        this.f15h = str;
    }

    public void buu(String str) {
        this.f16i = str;
    }

    public void buv(String str) {
        this.f13f = str;
    }

    public void buw(String str) {
        this.f8a = str;
    }

    public void bux(String str) {
        this.f9b = str;
    }

    public void buy(String str) {
        this.f10c = str;
    }

    public void buz(String str) {
        this.f11d = str;
    }

    public float getAccuracy() {
        return super.getAccuracy();
    }

    public double getAltitude() {
        return super.getAltitude();
    }

    public float getBearing() {
        return super.getBearing();
    }

    public double getLatitude() {
        return this.bcJ;
    }

    public double getLongitude() {
        return this.bcK;
    }

    public String getProvider() {
        return super.getProvider();
    }

    public float getSpeed() {
        return super.getSpeed();
    }

    public void setLatitude(double d) {
        this.bcJ = d;
    }

    public void setLongitude(double d) {
        this.bcK = d;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        try {
            stringBuffer.append("latitude=" + this.bcJ);
            stringBuffer.append("longitude=" + this.bcK);
            stringBuffer.append("province=" + this.f8a + "#");
            stringBuffer.append("city=" + this.f9b + "#");
            stringBuffer.append("district=" + this.f10c + "#");
            stringBuffer.append("cityCode=" + this.f11d + "#");
            stringBuffer.append("adCode=" + this.f12e + "#");
            stringBuffer.append("address=" + this.f13f + "#");
            stringBuffer.append("country=" + this.f15h + "#");
            stringBuffer.append("road=" + this.f16i + "#");
            stringBuffer.append("poiName=" + this.f14g + "#");
            stringBuffer.append("street=" + this.f17j + "#");
            stringBuffer.append("streetNum=" + this.f18k + "#");
            stringBuffer.append("aoiName=" + this.f21t + "#");
            stringBuffer.append("errorCode=" + this.bcH + "#");
            stringBuffer.append("errorInfo=" + this.f19n + "#");
            stringBuffer.append("locationDetail=" + this.f20o + "#");
            stringBuffer.append("locationType=" + this.bcI);
        } catch (Throwable th) {
        }
        return stringBuffer.toString();
    }
}
