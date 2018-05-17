package com.loc;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.amap.api.fence.Fence;
import com.amap.api.location.AMapLocation;
import com.amap.api.location.C0093a;
import com.autonavi.aps.amapapi.model.AmapLoc;

public class C1239K extends Handler {
    bR beb = null;

    public C1239K(bR bRVar) {
        this.beb = bRVar;
    }

    public C1239K(bR bRVar, Looper looper) {
        super(looper);
        this.beb = bRVar;
    }

    public void handleMessage(Message message) {
        Throwable th;
        AMapLocation aMapLocation = null;
        super.handleMessage(message);
        if (this.beb != null) {
            Message obtain;
            switch (message.what) {
                case 1:
                    try {
                        Bundle data = message.getData();
                        this.beb.bio = 0;
                        if (data != null) {
                            data.setClassLoader(AmapLoc.class.getClassLoader());
                            aMapLocation = bx.bBt((AmapLoc) data.getParcelable("location"));
                            if (aMapLocation == null) {
                                aMapLocation = new AMapLocation("");
                                aMapLocation.buq(8);
                            }
                            aMapLocation.setProvider("lbs");
                        }
                        this.beb.bCQ(aMapLocation);
                        break;
                    } catch (Throwable th2) {
                        bx.bBw(th2, "AMapLocationManager$MHandler", "handleMessage LBS_LOCATIONSUCCESS");
                        break;
                    }
                case 2:
                    AMapLocation aMapLocation2;
                    try {
                        aMapLocation2 = (AMapLocation) message.obj;
                        try {
                            if (aMapLocation2.bup() == 0) {
                                this.beb.bio = this.beb.bio + 1;
                                this.beb.f282n = C1253X.m132b();
                                this.beb.biH = true;
                            }
                        } catch (Throwable th3) {
                            Throwable th4 = th3;
                            aMapLocation = aMapLocation2;
                            th2 = th4;
                            bx.bBw(th2, "AMapLocationManager$MHandler", "handleMessage GPS_LOCATIONSUCCESS");
                            aMapLocation2 = aMapLocation;
                            if (this.beb.biE != null) {
                                if (!bR.biL) {
                                    this.beb.m348a(0);
                                    bR.biL = true;
                                }
                                this.beb.m348a(7);
                            }
                            this.beb.bCQ(aMapLocation2);
                        }
                    } catch (Throwable th5) {
                        th2 = th5;
                        bx.bBw(th2, "AMapLocationManager$MHandler", "handleMessage GPS_LOCATIONSUCCESS");
                        aMapLocation2 = aMapLocation;
                        if (this.beb.biE != null) {
                            if (bR.biL) {
                                this.beb.m348a(0);
                                bR.biL = true;
                            }
                            this.beb.m348a(7);
                        }
                        this.beb.bCQ(aMapLocation2);
                    }
                    try {
                        if (this.beb.biE != null) {
                            if (bR.biL) {
                                this.beb.m348a(0);
                                bR.biL = true;
                            }
                            this.beb.m348a(7);
                        }
                        this.beb.bCQ(aMapLocation2);
                    } catch (Throwable th22) {
                        bx.bBw(th22, "AMapLocationManager$MHandler", "MHandler:handleMessage GPS_LOCATIONSUCCESS:NGPS");
                    }
                case 5:
                    this.beb.f282n = C1253X.m132b();
                    this.beb.biH = true;
                    break;
                case 100:
                    try {
                        this.beb.m360k();
                        break;
                    } catch (Throwable th222) {
                        bx.bBw(th222, "AMapLocationManager$MHandler", "handleMessage FASTSKY");
                        break;
                    }
                case 103:
                    Intent intent = (Intent) message.obj;
                    if (this.beb != null) {
                        this.beb.bCN(intent);
                        break;
                    }
                    break;
                case 1002:
                    try {
                        this.beb.bCW((C0093a) message.obj);
                        break;
                    } catch (Throwable th2222) {
                        bx.bBw(th2222, "AMapLocationManage$MHandlerr", "handleMessage SET_LISTENER");
                        break;
                    }
                case 1003:
                    try {
                        this.beb.m363n();
                        break;
                    } catch (Throwable th22222) {
                        bx.bBw(th22222, "AMapLocationManager$MHandler", "handleMessage START_LOCATION");
                        break;
                    }
                case 1004:
                    try {
                        this.beb.bCX();
                        break;
                    } catch (Throwable th222222) {
                        bx.bBw(th222222, "AMapLocationManager$MHandler", "handleMessage STOP_LOCATION");
                        break;
                    }
                case 1005:
                    try {
                        this.beb.bDb((C0093a) message.obj);
                        break;
                    } catch (Throwable th2222222) {
                        bx.bBw(th2222222, "AMapLocationManager$MHandler", "handleMessage REMOVE_LISTENER");
                        break;
                    }
                case 1006:
                    try {
                        this.beb.bCY((Fence) message.obj);
                        break;
                    } catch (Throwable th22222222) {
                        bx.bBw(th22222222, "AMapLocationManager$MHandler", "handleMessage ADD_GEOFENCE");
                        break;
                    }
                case 1007:
                    try {
                        this.beb.bDa((PendingIntent) message.obj);
                        break;
                    } catch (Throwable th222222222) {
                        bx.bBw(th222222222, "AMapLocationManager$MHandler", "handleMessage REMOVE_GEOFENCE");
                        break;
                    }
                case 1008:
                    try {
                        obtain = Message.obtain();
                        obtain.what = 2;
                        if (this.beb.biE != null) {
                            this.beb.f281l = 0;
                            this.beb.biE.send(obtain);
                            break;
                        }
                        bR bRVar = this.beb;
                        bRVar.f281l++;
                        if (this.beb.f281l < 10) {
                            this.beb.bis.sendEmptyMessageDelayed(1008, 50);
                            break;
                        }
                    } catch (Throwable th2222222222) {
                        bx.bBw(th2222222222, "AMapLocationManager$MHandler", "handleMessage START_SOCKET");
                        break;
                    }
                    break;
                case 1009:
                    try {
                        obtain = Message.obtain();
                        obtain.what = 3;
                        if (this.beb.biE != null) {
                            this.beb.biE.send(obtain);
                            break;
                        }
                    } catch (Throwable th22222222222) {
                        bx.bBw(th22222222222, "AMapLocationManager$MHandler", "handleMessage STOP_SOCKET");
                        break;
                    }
                    break;
                case 1010:
                    try {
                        this.beb.bCZ((Fence) message.obj);
                        break;
                    } catch (Throwable th222222222222) {
                        bx.bBw(th222222222222, "AMapLocationManager$MHandler", "handleMessage REMOVE_GEOFENCE_ONE");
                        break;
                    }
                case 1011:
                    try {
                        this.beb.bDc();
                        this.beb = null;
                        break;
                    } catch (Throwable th2222222222222) {
                        bx.bBw(th2222222222222, "AMapLocationManager$MHandler", "handleMessage DESTROY");
                        break;
                    }
            }
        }
    }
}
