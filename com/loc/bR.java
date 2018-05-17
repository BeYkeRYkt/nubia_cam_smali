package com.loc;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.text.TextUtils;
import com.amap.api.fence.Fence;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.AMapLocationClientOption$AMapLocationMode;
import com.amap.api.location.APSService;
import com.amap.api.location.C0093a;
import com.amap.api.location.C0095c;
import com.amap.api.location.C0096d;
import com.autonavi.aps.amapapi.model.AmapLoc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONObject;

public class bR implements C0095c {
    public static boolean biL = false;
    private long biA = 0;
    private long biB = 0;
    public boolean biC = true;
    C1230C biD;
    Messenger biE = null;
    Messenger biF = null;
    Intent biG = null;
    boolean biH = false;
    AMapLocation biI = null;
    long biJ = 0;
    long biK = 0;
    ScheduledExecutorService biM = Executors.newScheduledThreadPool(3);
    aD biN = null;
    C1262g biO = null;
    ScheduledFuture biP = null;
    ScheduledFuture biQ = null;
    Future biR = null;
    Callable biS = new aU(this);
    private ServiceConnection biT = new bm(this);
    private LinkedList biU = new LinkedList();
    private LinkedList biV = new LinkedList();
    private int biW = 0;
    private AMapLocation biX = null;
    boolean biY = false;
    boolean biZ = false;
    private int bio = 0;
    private boolean bip = false;
    private Context biq;
    C0096d bir;
    public C1239K bis;
    C1255Z bit = null;
    private boolean biu = false;
    private boolean biv = true;
    ArrayList biw = new ArrayList();
    bS bix;
    boolean biy = false;
    private long biz = 0;
    private JSONObject bja = new JSONObject();
    int f281l = 0;
    long f282n = 0;

    public bR(Context context, Intent intent) {
        this.biq = context;
        this.biG = intent;
        m352c();
        this.biN = new aD(this);
        this.biO = new C1262g(this);
    }

    private void m348a(int i) {
        try {
            Message obtain = Message.obtain();
            obtain.what = i;
            Bundle bundle = new Bundle();
            bundle.putBoolean("wifiactivescan", this.bir.buX());
            bundle.putBoolean("isNeedAddress", this.bir.buV());
            bundle.putBoolean("isKillProcess", this.bir.bva());
            bundle.putBoolean("isOffset", this.bir.bvd());
            bundle.putLong("httptimeout", this.bir.bvc());
            bundle.putBoolean("isLocationCacheEnable", this.bir.bve());
            obtain.setData(bundle);
            obtain.replyTo = this.biF;
            if (this.biE != null) {
                this.biE.send(obtain);
            }
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "sendLocMessage");
        }
    }

    private void m349a(long j) {
        try {
            if (this.biQ == null || this.biQ.isCancelled()) {
                this.biQ = this.biM.scheduleAtFixedRate(this.biN, j, this.bir.buS(), TimeUnit.MILLISECONDS);
            }
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "startNetLocationTask");
        }
    }

    private boolean m350a() {
        boolean z;
        try {
            if (this.biP != null) {
                if (!(this.biP.isDone() || this.biP.isCancelled())) {
                    this.biE = (Messenger) this.biP.get(5000, TimeUnit.MILLISECONDS);
                }
            }
            if (this.biP != null) {
                this.biP.cancel(true);
                this.biP = null;
            }
        } catch (InterruptedException e) {
            if (this.biP != null) {
                this.biP.cancel(true);
                this.biP = null;
            }
        } catch (ExecutionException e2) {
            if (this.biP != null) {
                this.biP.cancel(true);
                this.biP = null;
            }
        } catch (TimeoutException e3) {
            if (this.biP != null) {
                this.biP.cancel(true);
                this.biP = null;
            }
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "checkAPSManager");
            return false;
        }
        if (this.biE != null) {
            z = true;
        } else {
            Message obtain = Message.obtain();
            Bundle bundle = new Bundle();
            Parcelable amapLoc = new AmapLoc();
            amapLoc.bHr(10);
            amapLoc.bHv("请检查配置文件是否配置服务");
            bundle.putParcelable("location", amapLoc);
            obtain.setData(bundle);
            obtain.what = 1;
            if (this.bis != null) {
                this.bis.sendMessage(obtain);
            }
            z = false;
        }
        return z;
    }

    private void m351b() {
        if (this.biP == null || this.biP.isCancelled()) {
            this.biP = this.biM.schedule(this.biS, 0, TimeUnit.MILLISECONDS);
        }
    }

    private void bCN(Intent intent) {
        if (intent == null) {
            intent = new Intent(this.biq, APSService.class);
        }
        try {
            intent.putExtra("apiKey", C0096d.buQ());
            String e = C1241M.m100e(this.biq);
            intent.putExtra("packageName", this.biq.getPackageName());
            intent.putExtra("sha1AndPackage", e);
            this.biq.bindService(intent, this.biT, 1);
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "startServiceImpl");
        }
    }

    private void bCO(AMapLocation aMapLocation) {
        if (aMapLocation.bup() == 0) {
            try {
                long time = aMapLocation.getTime();
                AMapLocation bCR = bCR(this.biI, aMapLocation);
                bCR.setTime(time);
                bCV(bCR);
            } catch (Throwable th) {
                bx.bBw(th, "AMapLocationManager", "handleMessage");
            }
        }
    }

    private void bCP(AMapLocation aMapLocation) {
        try {
            if ("gps".equals(aMapLocation.getProvider()) || m359j()) {
                Iterator it = this.biw.iterator();
                while (it.hasNext()) {
                    try {
                        ((C0093a) it.next()).ago(aMapLocation);
                    } catch (Throwable th) {
                    }
                }
            }
        } catch (Throwable th2) {
        }
    }

    private void bCQ(AMapLocation aMapLocation) {
        try {
            if (this.bix != null) {
                this.bix.bDB(aMapLocation);
            }
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "handlerLocation part3");
            return;
        }
        if (aMapLocation != null) {
            if (!this.biv) {
                if (aMapLocation.bup() == 0) {
                    bCO(aMapLocation);
                }
                this.biJ = C1253X.m132b();
                this.biI = aMapLocation;
                bCP(aMapLocation);
                this.biD.bwl(aMapLocation);
            }
        }
        try {
            if (this.bir.buU()) {
                buP();
            }
        } catch (Throwable th2) {
            bx.bBw(th2, "AMapLocationManager", "handlerLocation part2");
        }
    }

    private AMapLocation bCR(AMapLocation aMapLocation, AMapLocation aMapLocation2) {
        this.biX = aMapLocation2;
        long b = C1253X.m132b();
        if (aMapLocation != null && aMapLocation.bum() == 1 && this.bio > 3) {
            if (aMapLocation2.bum() == 1) {
                if (b - this.biJ >= 5000) {
                    this.bio = 0;
                } else {
                    if (C1253X.bwZ(new double[]{aMapLocation.getLatitude(), aMapLocation.getLongitude(), aMapLocation2.getLatitude(), aMapLocation2.getLongitude()}) > ((((aMapLocation.getSpeed() + aMapLocation2.getSpeed()) * ((float) (aMapLocation2.getTime() - aMapLocation.getTime()))) / 2000.0f) + ((aMapLocation.getAccuracy() + aMapLocation2.getAccuracy()) * 2.0f)) + 3000.0f) {
                        if (this.biK == 0) {
                            this.biK = C1253X.m132b();
                        }
                        if (!(b - this.biK >= 30000)) {
                            this.bip = true;
                            this.biW = 1;
                            return aMapLocation;
                        }
                    }
                }
            } else if (this.biV != null && this.biV.isEmpty()) {
                this.biU.clear();
            }
            this.biK = 0;
            this.biW = 0;
            return aMapLocation2;
        }
        this.biK = 0;
        this.biW = 0;
        return aMapLocation2;
    }

    private ca bCS(AMapLocation aMapLocation, int i) {
        return new ca(this, aMapLocation, i);
    }

    private void bCT(cd cdVar) {
        try {
            String str = "";
            str = "";
            CharSequence c = C1241M.m98c(this.biq);
            if (TextUtils.isEmpty(c)) {
                c = "null";
            }
            CharSequence charSequence = c;
            str = C0096d.buQ();
            if (TextUtils.isEmpty(str)) {
                str = C1241M.m101f(this.biq);
            } else {
                ae.m219a(str);
            }
            if (TextUtils.isEmpty(str)) {
                str = "null";
            }
            cdVar.m484a("api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##" + charSequence + "##" + str);
            this.bja.put("netloc", "0");
            this.bja.put("gpsstatus", "0");
            this.bja.put("nbssid", "0");
            this.bja.put("wait1stwifi", "0");
            this.bja.put("autoup", "0");
            this.bja.put("upcolmobile", 1);
            this.bja.put("enablegetreq", 1);
            this.bja.put("reversegeo", this.bir.buV());
            this.bja.put("isOffset", this.bir.bvd());
            this.bja.put("wifiactivescan", !this.bir.buX() ? "0" : "1");
            this.bja.put("httptimeout", this.bir.bvc());
            this.bja.put("isLocationCacheEnable", this.bir.bve());
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "initAPSBase 2");
            return;
        }
        this.biZ = true;
    }

    private void bCU(cd cdVar, boolean z, boolean z2) {
        try {
            if (!this.biZ) {
                bCT(cdVar);
            }
            if (!z) {
                this.bja.put("key", C1241M.m101f(this.biq));
                this.bja.put("User-Agent", "AMAP_Location_SDK_Android 2.5.1");
            }
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "initAPS part3");
            return;
        }
        cdVar.bEl(this.bja);
        if (z) {
            cdVar.m485a(this.biq);
        } else {
            cdVar.bEk(this.biq, z2);
        }
    }

    private void bCV(AMapLocation aMapLocation) {
        ca bCS = bCS(aMapLocation, this.biW);
        ca bCS2 = bCS(this.biX, this.biW);
        if (!this.bip) {
            if (this.biU.size() >= 5) {
                this.biU.removeFirst();
            }
            this.biU.add(bCS);
        } else if (this.biW != 0) {
            this.biV.add(bCS2);
        } else {
            this.biV.add(bCS);
        }
        if (this.biU.size() + this.biV.size() >= 10) {
            this.biU.addAll(this.biV);
            StringBuffer stringBuffer = new StringBuffer();
            Iterator it = this.biU.iterator();
            while (it.hasNext()) {
                stringBuffer.append(((ca) it.next()).toString());
                stringBuffer.append("#");
            }
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            bx.m438b(stringBuffer.toString());
            this.biU.clear();
            this.biV.clear();
            this.bip = false;
        }
    }

    private void bCW(C0093a c0093a) {
        if (c0093a != null) {
            if (this.biw == null) {
                this.biw = new ArrayList();
            }
            if (!this.biw.contains(c0093a)) {
                this.biw.add(c0093a);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("listener参数不能为null");
    }

    private void bCX() {
        try {
            m357h();
            m358i();
            this.biU.clear();
            this.biV.clear();
            this.biH = false;
            this.biv = true;
            this.f282n = 0;
            this.f281l = 0;
            this.biI = null;
            this.biJ = 0;
            this.bip = false;
            this.biW = 0;
            this.bio = 0;
            this.biX = null;
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "stopLocation");
        }
    }

    private void bCY(Fence fence) {
        if (!(fence == null || this.bix == null)) {
            this.bix.bDx(fence, fence.bcX);
        }
    }

    private void bCZ(Fence fence) {
        if (!(fence == null || this.bix == null)) {
            this.bix.bDz(fence.bcX, fence.f0b);
        }
    }

    private void bDa(PendingIntent pendingIntent) {
        if (!(pendingIntent == null || this.bix == null)) {
            this.bix.bDy(pendingIntent);
        }
    }

    private void bDb(C0093a c0093a) {
        if (!this.biw.isEmpty() && this.biw.contains(c0093a)) {
            this.biw.remove(c0093a);
        }
        if (this.biw.isEmpty()) {
            buP();
        }
    }

    private void bDc() {
        this.biC = true;
        this.biu = false;
        buP();
        if (this.bix != null) {
            this.bix.m366a();
        }
        if (this.biT != null) {
            this.biq.unbindService(this.biT);
        }
        if (this.biw != null) {
            this.biw.clear();
            this.biw = null;
        }
        if (this.biP != null) {
            this.biP.cancel(true);
            this.biP = null;
        }
        this.biM.shutdownNow();
        this.biT = null;
        if (this.bis != null) {
            this.bis.removeCallbacksAndMessages(null);
        }
    }

    private void m352c() {
        this.bis = Looper.myLooper() != null ? new C1239K(this) : new C1239K(this, this.biq.getMainLooper());
        m353d();
        m351b();
        this.biD = C1230C.m80a(this.biq);
        this.biF = new Messenger(this.bis);
        this.bit = new C1255Z(this.biq, this.bis);
        try {
            this.bix = new bS(this.biq);
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "init");
        }
    }

    private void m353d() {
        Message obtain = Message.obtain();
        obtain.what = 103;
        obtain.obj = this.biG;
        this.bis.sendMessage(obtain);
    }

    private void m354e() {
        try {
            m357h();
            m349a(0);
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "batterySavingLocaiton");
        }
    }

    private void m355f() {
        long j = 0;
        try {
            m356g();
            if (this.bir.bvb()) {
                j = 30000;
            }
            m349a(j);
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "hightAccuracyLocation");
        }
    }

    private void m356g() {
        try {
            if (!this.bir.buY().equals(AMapLocationClientOption$AMapLocationMode.Hight_Accuracy)) {
                m358i();
            }
            if (this.biR != null) {
                if (!this.biR.isCancelled()) {
                    return;
                }
            }
            this.biR = this.biM.submit(this.biO);
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "deviceSensorsLocation");
        }
    }

    private void m357h() {
        try {
            if (this.biR != null) {
                this.biR.cancel(false);
                this.biR = null;
            }
            this.bit.m149a();
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "stopGPSLocationTask");
        }
    }

    private void m358i() {
        try {
            if (this.biQ != null) {
                this.biQ.cancel(false);
                this.biQ = null;
            }
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "stopNetLocationTask");
        }
    }

    private boolean m359j() {
        return !(((C1253X.m132b() - this.f282n) > 10000 ? 1 : ((C1253X.m132b() - this.f282n) == 10000 ? 0 : -1)) <= 0);
    }

    private void m360k() {
        Object obj = 1;
        Object obj2 = null;
        try {
            if (this.biq.checkCallingOrSelfPermission("android.permission.SYSTEM_ALERT_WINDOW") == 0) {
                int i = 1;
            } else if (!(this.biq instanceof Activity)) {
                obj = null;
            }
            if (obj == null) {
                m361l();
                return;
            }
            Builder builder = new Builder(this.biq);
            builder.setMessage(bQ.m340g());
            if (!"".equals(bQ.m341h())) {
                if (bQ.m341h() != null) {
                    builder.setPositiveButton(bQ.m341h(), new aE(this));
                }
            }
            builder.setNegativeButton(bQ.m342i(), new C1244P(this));
            AlertDialog create = builder.create();
            if (obj2 != null) {
                create.getWindow().setType(2003);
            }
            create.setCanceledOnTouchOutside(false);
            create.show();
        } catch (Throwable th) {
            m361l();
            bx.bBw(th, "AMapLocationManager", "showDialog");
        }
    }

    private void m361l() {
        Intent intent;
        try {
            intent = new Intent();
            intent.setComponent(new ComponentName("com.autonavi.minimap", bQ.m345l()));
            intent.setFlags(268435456);
            intent.setData(Uri.parse(bQ.m343j()));
            this.biq.startActivity(intent);
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "callAMap part2");
        }
    }

    private void m362m() {
        AmapLoc amapLoc = null;
        boolean z = false;
        cd cdVar = new cd();
        if (this.bir.bve()) {
            bCU(cdVar, true, false);
            try {
                amapLoc = cdVar.m494h();
            } catch (Throwable th) {
                bx.bBw(th, "AMapLocationManager", "doAPSLocation:doFirstCacheLocate");
            }
        }
        if (amapLoc == null || !C1253X.bwV(amapLoc)) {
            bCU(cdVar, false, false);
            try {
                amapLoc = cdVar.bER(false);
                z = true;
            } catch (Throwable th2) {
                bx.bBw(th2, "AMapLocationManager", "doAPSLocation:doFirstNetLocate");
            }
        }
        Message obtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putParcelable("location", amapLoc);
        obtain.setData(bundle);
        obtain.what = 1;
        if (this.bis != null) {
            this.bis.sendMessage(obtain);
        }
        if (z) {
            try {
                bCU(cdVar, false, true);
                amapLoc = cdVar.bER(true);
            } catch (Throwable th3) {
                bx.bBw(th3, "AMapLocationManager", "doAPSLocation:doFirstNetLocate 2");
            }
            if (amapLoc.bHo() == 0) {
                try {
                    cdVar.bES(amapLoc);
                } catch (Throwable th4) {
                    bx.bBw(th4, "AMapLocationManager", "doAPSLocation:doFirstAddCache");
                }
            }
        }
        cdVar.m488c();
    }

    private void m363n() {
        if (this.bir == null) {
            this.bir = new C0096d();
        }
        this.biv = false;
        switch (C1265j.f490a[this.bir.buY().ordinal()]) {
            case 1:
                m354e();
                return;
            case 2:
                m356g();
                return;
            case 3:
                m355f();
                return;
            default:
                return;
        }
    }

    public void buN(C0093a c0093a) {
        if (c0093a != null) {
            try {
                Message obtain = Message.obtain();
                obtain.what = 1002;
                obtain.obj = c0093a;
                this.bis.sendMessage(obtain);
                return;
            } catch (Throwable th) {
                bx.bBw(th, "AMapLocationManager", "setLocationListener");
                return;
            }
        }
        throw new IllegalArgumentException("listener参数不能为null");
    }

    public void buO() {
        try {
            Message obtain = Message.obtain();
            obtain.what = 1003;
            this.bis.sendMessage(obtain);
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "startLocation");
        }
    }

    public void buP() {
        try {
            Message obtain = Message.obtain();
            obtain.what = 1004;
            this.bis.sendMessage(obtain);
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "stopLocation");
        }
    }

    public void onDestroy() {
        try {
            Message obtain = Message.obtain();
            obtain.what = 1011;
            this.bis.sendMessage(obtain);
        } catch (Throwable th) {
            bx.bBw(th, "AMapLocationManager", "onDestroy");
        }
    }
}
