package com.loc;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;

class ci extends Handler {
    cv bkC = null;
    private boolean bkD = true;
    final /* synthetic */ cv bkE;
    private boolean f373d = true;

    public ci(cv cvVar, cv cvVar2) {
        this.bkE = cvVar;
        this.bkC = cvVar2;
    }

    public void handleMessage(Message message) {
        Object obj = 1;
        try {
            switch (message.what) {
                case 0:
                    synchronized (this.bkE.bli) {
                        this.bkE.bkR = true;
                        this.bkE.bkO = message.replyTo;
                        this.bkC.bli.notify();
                    }
                    break;
                case 1:
                    try {
                        synchronized (this.bkE.bli) {
                            Message obtain;
                            Bundle bundle;
                            boolean z;
                            this.bkE.bkR = true;
                            Bundle data = message.getData();
                            Messenger messenger = message.replyTo;
                            long b = C1253X.m132b();
                            boolean z2 = data.getBoolean("isNeedAddress", true);
                            boolean z3 = data.getBoolean("isOffset", true);
                            boolean z4 = data.getBoolean("isLocationCacheEnable", true);
                            if (z2 == this.bkD) {
                                if (z3 == this.f373d) {
                                    this.bkD = z2;
                                    this.f373d = z3;
                                    if (this.bkE.blj != null && this.bkE.blj.bHo() == 0) {
                                        if (b - this.bkC.f421n < 800) {
                                            obj = null;
                                        }
                                        if (obj == null) {
                                            obtain = Message.obtain();
                                            bundle = new Bundle();
                                            bundle.putParcelable("location", this.bkE.blj);
                                            obtain.setData(bundle);
                                            obtain.what = 1;
                                            messenger.send(obtain);
                                            z = data.getBoolean("wifiactivescan");
                                            this.bkE.f417b = data.getBoolean("isKillProcess");
                                            b = data.getLong("httptimeout");
                                            if (this.bkE.bln != null) {
                                                this.bkE.bln.put("reversegeo", z2);
                                                this.bkE.bln.put("isOffset", z3);
                                                this.bkE.bln.put("wifiactivescan", z ? "0" : "1");
                                                this.bkE.bln.put("httptimeout", b);
                                                this.bkE.bln.put("isLocationCacheEnable", z4);
                                            }
                                            this.bkC.bGe(this.bkE.bln);
                                        }
                                    }
                                    if (!this.bkE.bkV.contains(messenger)) {
                                        this.bkE.bkV.add(messenger);
                                    }
                                    this.bkE.f420k = true;
                                    this.bkC.bli.notify();
                                    z = data.getBoolean("wifiactivescan");
                                    this.bkE.f417b = data.getBoolean("isKillProcess");
                                    b = data.getLong("httptimeout");
                                    if (this.bkE.bln != null) {
                                        this.bkE.bln.put("reversegeo", z2);
                                        this.bkE.bln.put("isOffset", z3);
                                        if (z) {
                                        }
                                        this.bkE.bln.put("wifiactivescan", z ? "0" : "1");
                                        this.bkE.bln.put("httptimeout", b);
                                        this.bkE.bln.put("isLocationCacheEnable", z4);
                                    }
                                    this.bkC.bGe(this.bkE.bln);
                                }
                            }
                            this.bkC.f421n = 0;
                            this.bkD = z2;
                            this.f373d = z3;
                            if (b - this.bkC.f421n < 800) {
                                obj = null;
                            }
                            if (obj == null) {
                                obtain = Message.obtain();
                                bundle = new Bundle();
                                bundle.putParcelable("location", this.bkE.blj);
                                obtain.setData(bundle);
                                obtain.what = 1;
                                messenger.send(obtain);
                                z = data.getBoolean("wifiactivescan");
                                this.bkE.f417b = data.getBoolean("isKillProcess");
                                b = data.getLong("httptimeout");
                                if (this.bkE.bln != null) {
                                    this.bkE.bln.put("reversegeo", z2);
                                    this.bkE.bln.put("isOffset", z3);
                                    if (z) {
                                    }
                                    this.bkE.bln.put("wifiactivescan", z ? "0" : "1");
                                    this.bkE.bln.put("httptimeout", b);
                                    this.bkE.bln.put("isLocationCacheEnable", z4);
                                }
                                this.bkC.bGe(this.bkE.bln);
                            }
                            if (this.bkE.bkV.contains(messenger)) {
                                this.bkE.bkV.add(messenger);
                            }
                            this.bkE.f420k = true;
                            this.bkC.bli.notify();
                            z = data.getBoolean("wifiactivescan");
                            this.bkE.f417b = data.getBoolean("isKillProcess");
                            b = data.getLong("httptimeout");
                            if (this.bkE.bln != null) {
                                this.bkE.bln.put("reversegeo", z2);
                                this.bkE.bln.put("isOffset", z3);
                                if (z) {
                                }
                                this.bkE.bln.put("wifiactivescan", z ? "0" : "1");
                                this.bkE.bln.put("httptimeout", b);
                                this.bkE.bln.put("isLocationCacheEnable", z4);
                            }
                            this.bkC.bGe(this.bkE.bln);
                            break;
                        }
                        break;
                    } catch (Throwable th) {
                        bx.bBw(th, "APSServiceCore", "handleMessage LOCATION");
                        break;
                    }
                case 2:
                    this.bkE.m540b();
                    break;
                case 3:
                    this.bkE.m541c();
                    break;
                case 4:
                    synchronized (this.bkE.bli) {
                        if (this.bkE.bkX >= bQ.m332b()) {
                            this.bkE.blc = false;
                        } else {
                            this.bkE.blc = true;
                            this.bkE.bkX = this.bkE.bkX + 1;
                        }
                        this.bkC.bli.notify();
                        this.bkE.bkT.sendEmptyMessageDelayed(4, 2000);
                    }
                    break;
                case 5:
                    synchronized (this.bkE.bli) {
                        if (bQ.m338e()) {
                            this.bkE.bld = true;
                        } else if (!C1253X.m139d(this.bkE.f416a)) {
                            this.bkE.bld = true;
                        }
                        this.bkC.bli.notify();
                        this.bkE.bkT.sendEmptyMessageDelayed(5, (long) (bQ.m336d() * 1000));
                    }
                    break;
                case 7:
                    synchronized (this.bkE.bli) {
                        this.bkE.ble = true;
                        this.bkC.bli.notify();
                    }
                    break;
                case 8:
                    synchronized (this.bkE.bli) {
                        if (this.bkE.blj != null) {
                            if (this.bkE.blj.bHp() == 2 || this.bkE.blj.bHp() == 4) {
                                this.bkE.blb = true;
                                this.bkE.bla = true;
                                this.bkC.bli.notify();
                            }
                        }
                    }
                    break;
            }
            super.handleMessage(message);
        } catch (Throwable th2) {
            bx.bBw(th2, "APSServiceCore", "handleMessage STARTCOLL");
        }
    }
}
