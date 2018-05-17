package com.amap.api.location;

import com.loc.bx;

public class C0096d implements Cloneable {
    protected static String bcR = "";
    private long f23a = 2000;
    private long f24b = ((long) bx.bhu);
    private boolean bcN = false;
    private boolean bcO = true;
    private boolean bcP = true;
    private AMapLocationClientOption$AMapLocationMode bcQ = AMapLocationClientOption$AMapLocationMode.Hight_Accuracy;
    private boolean f25d = false;
    private boolean f26h = false;
    private boolean f27i = false;
    private boolean f28j = true;
    private boolean f29k = true;

    public static String buQ() {
        return bcR;
    }

    private C0096d bvf(C0096d c0096d) {
        this.f23a = c0096d.f23a;
        this.bcN = c0096d.bcN;
        this.bcQ = c0096d.bcQ;
        this.f25d = c0096d.f25d;
        this.f26h = c0096d.f26h;
        this.f27i = c0096d.f27i;
        this.bcO = c0096d.bcO;
        this.bcP = c0096d.bcP;
        this.f24b = c0096d.f24b;
        this.f28j = c0096d.f28j;
        this.f29k = c0096d.f29k;
        return this;
    }

    public boolean buR() {
        return this.f25d;
    }

    public long buS() {
        return this.f23a;
    }

    public C0096d buT(long j) {
        if ((j >= 1000 ? 1 : null) == null) {
            j = 1000;
        }
        this.f23a = j;
        return this;
    }

    public boolean buU() {
        return this.bcN;
    }

    public boolean buV() {
        return this.bcO;
    }

    public C0096d buW(boolean z) {
        this.bcO = z;
        return this;
    }

    public boolean buX() {
        return this.bcP;
    }

    public AMapLocationClientOption$AMapLocationMode buY() {
        return this.bcQ;
    }

    public C0096d buZ(AMapLocationClientOption$AMapLocationMode aMapLocationClientOption$AMapLocationMode) {
        this.bcQ = aMapLocationClientOption$AMapLocationMode;
        return this;
    }

    public boolean bva() {
        return this.f26h;
    }

    public boolean bvb() {
        return this.f27i;
    }

    public long bvc() {
        return this.f24b;
    }

    public boolean bvd() {
        return this.f28j;
    }

    public boolean bve() {
        return this.f29k;
    }

    public C0096d clone() {
        return new C0096d().bvf(this);
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("interval:").append(String.valueOf(this.f23a)).append("#");
        stringBuilder.append("isOnceLocation:").append(String.valueOf(this.bcN)).append("#");
        stringBuilder.append("locationMode:").append(String.valueOf(this.bcQ)).append("#");
        stringBuilder.append("isMockEnable:").append(String.valueOf(this.f25d)).append("#");
        stringBuilder.append("isKillProcess:").append(String.valueOf(this.f26h)).append("#");
        stringBuilder.append("isGpsFirst:").append(String.valueOf(this.f27i)).append("#");
        stringBuilder.append("isNeedAddress:").append(String.valueOf(this.bcO)).append("#");
        stringBuilder.append("isWifiActiveScan:").append(String.valueOf(this.bcP)).append("#");
        stringBuilder.append("httpTimeOut:").append(String.valueOf(this.f24b)).append("#");
        stringBuilder.append("isOffset:").append(String.valueOf(this.f28j)).append("#");
        stringBuilder.append("isLocationCacheEnable:").append(String.valueOf(this.f29k));
        return stringBuilder.toString();
    }
}
