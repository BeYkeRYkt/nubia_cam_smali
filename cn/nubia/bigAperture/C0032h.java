package cn.nubia.bigAperture;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import cn.nubia.arcsoft.C0019a;
import cn.nubia.arcsoft.C0020b;
import com.android.common.C0616j;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.storagemanager.C0722e;
import com.nubia.camera.common.Native.BufferCell;
import com.p010a.C0090a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;

public class C0032h extends Thread {
    private final boolean boA = Log.isLoggable("ApertureBackground", 3);
    private boolean boB = false;
    private Handler boC = new C0043s(this);
    private boolean boD = false;
    private long boE = -1;
    private long boF = -1;
    private LinkedList boG = new LinkedList();
    private long boH = -1;
    private ArrayList boI = new ArrayList();
    private C0722e boJ;
    private C0030f boK = null;
    private C0033i boL = null;
    private final String bok = "CANCEL_NEW_LOCK_RECEIVED";
    private final String bol = "NO DEPTH CAN LOCK";
    private final String bom = "SERVICE IN CAMERA CANCEL";
    private final String bon = "USER CANCEL";
    private final String boo = "LOCK SUCCESS";
    private final int bop = 0;
    private final int boq = 1;
    private final int bor = 3;
    private final int bos = 2;
    private BigAperAlgorithm bot;
    private long bou = -1;
    private long bov = -1;
    private ContentResolver bow = null;
    private Context box = null;
    private BigApertureTask boy = null;
    private long boz = -1;

    public C0032h(ContentResolver contentResolver, Context context, C0722e c0722e) {
        super("BigApertureProcess");
        this.box = context;
        this.bow = contentResolver;
        this.boK = new C0037m(BigApertureService.bnX);
        this.bot = new BigAperAlgorithm();
        this.boJ = c0722e;
    }

    public void bKH(BigApertureTask bigApertureTask) {
        if (bigApertureTask != null) {
            bLe("addTask");
            synchronized (this.boG) {
                this.boG.add(bigApertureTask);
                this.boG.notifyAll();
            }
        }
    }

    public boolean lockDepthData(Uri uri, Messenger messenger) {
        synchronized (this.boG) {
            BigApertureTask bKX = bKX(uri);
            if (bKX == null) {
                for (BigApertureTask bigApertureTask : this.boG) {
                    if (bigApertureTask.bpq.equals(uri)) {
                        break;
                    }
                }
            }
            BigApertureTask bigApertureTask2 = bKX;
            if (bigApertureTask2 == null) {
                if (this.boL != null && this.boL.boN.bpq.equals(uri)) {
                    bigApertureTask2 = this.boL.boN;
                } else if (!(this.boy == null || this.boy.mState == 5 || !this.boy.bpq.equals(uri))) {
                    bigApertureTask2 = this.boy;
                }
            }
            if (this.boL != null) {
                if (this.boL.boN.mState == 3) {
                    bKJ(this.boL.boN);
                } else {
                    bKL(this.boL.boN);
                }
                this.boG.add(this.boL.boN);
                bLi(this.boL.boM, this.boL.boN.bpq, "CANCEL_NEW_LOCK_RECEIVED");
                this.boL = null;
                this.boG.notifyAll();
            }
            if (bigApertureTask2 != null) {
                this.boG.remove(bigApertureTask2);
                bKN(bigApertureTask2);
                this.boL = new C0033i(this, bigApertureTask2, messenger);
                this.boG.notifyAll();
                C0090a.bvo("BigApertureProcessTread", "lock success");
                return true;
            }
            bLi(messenger, uri, "NO DEPTH CAN LOCK");
            C0090a.bvo("BigApertureProcessTread", "lock fail");
            return false;
        }
    }

    public boolean bKI(Uri uri, boolean z) {
        synchronized (this.boG) {
            if (this.boL == null || !this.boL.boN.bpq.equals(uri)) {
                C0090a.bvo("BigApertureProcessTread", "unlock fail");
                return false;
            }
            int i = this.boL.boN.mState;
            if (i == 1 || i == 3 || i == 2) {
                if (i == 3) {
                    bKJ(this.boL.boN);
                } else {
                    bKL(this.boL.boN);
                }
                if (bKX(this.boL.boN.bpq) == null) {
                    this.boG.add(this.boL.boN);
                }
                if (!z) {
                    bLi(this.boL.boM, this.boL.boN.bpq, "SERVICE IN CAMERA CANCEL");
                }
                this.boL = null;
                this.boG.notifyAll();
                C0090a.bvo("BigApertureProcessTread", "unlock success");
                return true;
            }
            throw new IllegalArgumentException("UrgentTask.state: " + this.boL.boN.mState);
        }
    }

    public void setServiceStoppedAfterTasksDone(boolean z) {
        synchronized (this.boG) {
            this.boD = z;
            this.boG.notify();
        }
    }

    public void bKG() {
        synchronized (this.boG) {
            this.boB = true;
            this.boG.notifyAll();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r13 = this;
        r0 = "BigApertureProcessTread";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "start: ";
        r1 = r1.append(r2);
        r2 = r13.getId();
        r1 = r1.append(r2);
        r1 = r1.toString();
        com.p010a.C0090a.bvo(r0, r1);
        super.run();
        r13.bLh();
    L_0x0024:
        r0 = r13.boB;
        if (r0 == 0) goto L_0x00d0;
    L_0x0028:
        r0 = r13.boG;
        r0 = r0.isEmpty();
    L_0x002e:
        if (r0 != 0) goto L_0x009f;
    L_0x0030:
        r0 = "Enter a new task process loop";
        r13.bLe(r0);
        r1 = r13.boG;
        monitor-enter(r1);
        r0 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0143 }
        r0.<init>();	 Catch:{ all -> 0x0143 }
        r2 = "mIsStop: ";
        r0 = r0.append(r2);	 Catch:{ all -> 0x0143 }
        r2 = r13.boB;	 Catch:{ all -> 0x0143 }
        r0 = r0.append(r2);	 Catch:{ all -> 0x0143 }
        r2 = "; Queue： ";
        r0 = r0.append(r2);	 Catch:{ all -> 0x0143 }
        r2 = r13.boG;	 Catch:{ all -> 0x0143 }
        r2 = r2.isEmpty();	 Catch:{ all -> 0x0143 }
        r0 = r0.append(r2);	 Catch:{ all -> 0x0143 }
        r2 = "; Urgent: ";
        r0 = r0.append(r2);	 Catch:{ all -> 0x0143 }
        r2 = r13.boL;	 Catch:{ all -> 0x0143 }
        r0 = r0.append(r2);	 Catch:{ all -> 0x0143 }
        r2 = "; NeedStoppedAfterTaskDone: ";
        r0 = r0.append(r2);	 Catch:{ all -> 0x0143 }
        r2 = r13.boD;	 Catch:{ all -> 0x0143 }
        r0 = r0.append(r2);	 Catch:{ all -> 0x0143 }
        r2 = "; Saving: ";
        r0 = r0.append(r2);	 Catch:{ all -> 0x0143 }
        r2 = r13.boI;	 Catch:{ all -> 0x0143 }
        r2 = r2.isEmpty();	 Catch:{ all -> 0x0143 }
        r0 = r0.append(r2);	 Catch:{ all -> 0x0143 }
        r0 = r0.toString();	 Catch:{ all -> 0x0143 }
        r13.bLe(r0);	 Catch:{ all -> 0x0143 }
        r0 = r13.boB;	 Catch:{ all -> 0x0143 }
        if (r0 == 0) goto L_0x00d3;
    L_0x0092:
        r0 = r13.boG;	 Catch:{ all -> 0x0143 }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x0143 }
        if (r0 == 0) goto L_0x00d3;
    L_0x009a:
        r0 = r13.boL;	 Catch:{ all -> 0x0143 }
        if (r0 != 0) goto L_0x00d3;
    L_0x009e:
        monitor-exit(r1);
    L_0x009f:
        r0 = cn.nubia.bigAperture.BigApertureService.bnX;
        if (r0 != 0) goto L_0x00b1;
    L_0x00a3:
        r1 = r13.boG;
        monitor-enter(r1);
        r0 = new java.io.File;	 Catch:{ all -> 0x043b }
        r2 = cn.nubia.bigAperture.BigApertureService.bnW;	 Catch:{ all -> 0x043b }
        r0.<init>(r2);	 Catch:{ all -> 0x043b }
        cn.nubia.bigAperture.C0027c.bKn(r0);	 Catch:{ all -> 0x043b }
        monitor-exit(r1);
    L_0x00b1:
        r0 = "BigApertureProcessTread";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "End: ";
        r1 = r1.append(r2);
        r2 = r13.getId();
        r1 = r1.append(r2);
        r1 = r1.toString();
        com.p010a.C0090a.bvo(r0, r1);
        return;
    L_0x00d0:
        r0 = 0;
        goto L_0x002e;
    L_0x00d3:
        r0 = r13.boC;	 Catch:{ all -> 0x0143 }
        r2 = 0;
        r0.removeCallbacksAndMessages(r2);	 Catch:{ all -> 0x0143 }
        r0 = r13.boG;	 Catch:{ all -> 0x0143 }
        r0 = r0.isEmpty();	 Catch:{ all -> 0x0143 }
        if (r0 == 0) goto L_0x0146;
    L_0x00e1:
        r0 = r13.boL;	 Catch:{ all -> 0x0143 }
        if (r0 == 0) goto L_0x00fb;
    L_0x00e5:
        r0 = r13.boL;	 Catch:{ all -> 0x0143 }
        r0 = r0.boN;	 Catch:{ all -> 0x0143 }
        r0 = r13.bLd(r0);	 Catch:{ all -> 0x0143 }
        if (r0 != 0) goto L_0x00fb;
    L_0x00ef:
        r0 = r13.boL;	 Catch:{ all -> 0x0143 }
        r0 = r0.boN;	 Catch:{ all -> 0x0143 }
        r0 = r0.bpq;	 Catch:{ all -> 0x0143 }
        r0 = r13.bKX(r0);	 Catch:{ all -> 0x0143 }
        if (r0 == 0) goto L_0x0146;
    L_0x00fb:
        r0 = r13.boL;	 Catch:{ InterruptedException -> 0x013e }
        if (r0 != 0) goto L_0x0118;
    L_0x00ff:
        r2 = r13.boC;	 Catch:{ InterruptedException -> 0x013e }
        r0 = r13.boD;	 Catch:{ InterruptedException -> 0x013e }
        if (r0 == 0) goto L_0x0114;
    L_0x0105:
        r0 = 30000; // 0x7530 float:4.2039E-41 double:1.4822E-319;
    L_0x0107:
        r4 = (long) r0;	 Catch:{ InterruptedException -> 0x013e }
        r0 = 3;
        r2.sendEmptyMessageDelayed(r0, r4);	 Catch:{ InterruptedException -> 0x013e }
    L_0x010c:
        r0 = r13.boG;	 Catch:{ InterruptedException -> 0x013e }
        r0.wait();	 Catch:{ InterruptedException -> 0x013e }
    L_0x0111:
        monitor-exit(r1);
        goto L_0x0024;
    L_0x0114:
        r0 = 120000; // 0x1d4c0 float:1.68156E-40 double:5.9288E-319;
        goto L_0x0107;
    L_0x0118:
        r0 = r13.boL;	 Catch:{ InterruptedException -> 0x013e }
        if (r0 == 0) goto L_0x010c;
    L_0x011c:
        r0 = r13.boD;	 Catch:{ InterruptedException -> 0x013e }
        if (r0 != 0) goto L_0x010c;
    L_0x0120:
        r0 = r13.boL;	 Catch:{ InterruptedException -> 0x013e }
        r0 = r0.boN;	 Catch:{ InterruptedException -> 0x013e }
        r0 = r13.bLd(r0);	 Catch:{ InterruptedException -> 0x013e }
        if (r0 == 0) goto L_0x010c;
    L_0x012a:
        r0 = "BigApertureProcessTread";
        r2 = "directly call unlock in camera";
        com.p010a.C0090a.bvo(r0, r2);	 Catch:{ InterruptedException -> 0x013e }
        r0 = r13.boL;	 Catch:{ InterruptedException -> 0x013e }
        r0 = r0.boN;	 Catch:{ InterruptedException -> 0x013e }
        r0 = r0.bpq;	 Catch:{ InterruptedException -> 0x013e }
        r2 = 0;
        r13.bKI(r0, r2);	 Catch:{ InterruptedException -> 0x013e }
        goto L_0x0111;
    L_0x013e:
        r0 = move-exception;
        r0.printStackTrace();	 Catch:{ all -> 0x0143 }
        goto L_0x0111;
    L_0x0143:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
    L_0x0146:
        r0 = r13.boL;	 Catch:{ all -> 0x0143 }
        if (r0 == 0) goto L_0x0154;
    L_0x014a:
        r0 = r13.boL;	 Catch:{ all -> 0x0143 }
        r0 = r0.boN;	 Catch:{ all -> 0x0143 }
        r0 = r13.bLd(r0);	 Catch:{ all -> 0x0143 }
        if (r0 == 0) goto L_0x01a0;
    L_0x0154:
        r0 = r13.boD;	 Catch:{ all -> 0x0143 }
        if (r0 == 0) goto L_0x01a7;
    L_0x0158:
        r0 = r13.boG;	 Catch:{ all -> 0x0143 }
        r0 = r0.pollLast();	 Catch:{ all -> 0x0143 }
        r0 = (cn.nubia.bigAperture.BigApertureTask) r0;	 Catch:{ all -> 0x0143 }
        r13.boy = r0;	 Catch:{ all -> 0x0143 }
    L_0x0162:
        monitor-exit(r1);
        r0 = "A new process loop start";
        r13.bLe(r0);
        r0 = java.lang.System.currentTimeMillis();
        r13.boF = r0;
        r0 = r13.boF;
        r13.boz = r0;
        r0 = r13.boF;
        r13.bov = r0;
        r0 = r13.boF;
        r13.boE = r0;
        r0 = r13.boF;
        r13.bou = r0;
        r0 = r13.boF;
        r13.boH = r0;
        r0 = r13.boy;
        if (r0 == 0) goto L_0x0024;
    L_0x0187:
        r0 = r13.boy;
        r0 = r0.bpD;
        r1 = 2;
        if (r0 < r1) goto L_0x01b2;
    L_0x018e:
        r0 = "BigApertureProcessTread";
        r1 = "The task has been processed >2 times failed, just ignore it";
        com.p010a.C0090a.bvo(r0, r1);
        r0 = r13.boy;
        r1 = 0;
        r2 = 1;
        r13.bKW(r0, r1, r2);
        goto L_0x0024;
    L_0x01a0:
        r0 = r13.boL;	 Catch:{ all -> 0x0143 }
        r0 = r0.boN;	 Catch:{ all -> 0x0143 }
        r13.boy = r0;	 Catch:{ all -> 0x0143 }
        goto L_0x0162;
    L_0x01a7:
        r0 = r13.boG;	 Catch:{ all -> 0x0143 }
        r0 = r0.pollFirst();	 Catch:{ all -> 0x0143 }
        r0 = (cn.nubia.bigAperture.BigApertureTask) r0;	 Catch:{ all -> 0x0143 }
        r13.boy = r0;	 Catch:{ all -> 0x0143 }
        goto L_0x0162;
    L_0x01b2:
        r1 = 0;
        r0 = r13.boy;	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r2 = r0.bpD;	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r2 = r2 + 1;
        r0.bpD = r2;	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r0 = r13.boK;	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r2 = r13.boy;	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r0.bKE(r2);	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r9 = new cn.nubia.bigAperture.n;	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r0 = r13.boy;	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r0 = r0.bpp;	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r9.<init>(r0);	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r0 = r13.boy;	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r0 = r0.bpq;	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r2 = r13.bow;	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r11 = cn.nubia.bigAperture.C0027c.bKs(r0, r2);	 Catch:{ Exception -> 0x043e, Throwable -> 0x0442 }
        r0 = r9.bLI();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        if (r0 == 0) goto L_0x01dd;
    L_0x01db:
        if (r11 != 0) goto L_0x0224;
    L_0x01dd:
        r0 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0.<init>();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = "Uri or file is unvalidate, or currentExecutedTask is ";
        r1 = r0.append(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.bKZ(r0);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        if (r0 == 0) goto L_0x0282;
    L_0x01f1:
        r0 = "done";
    L_0x01f4:
        r0 = r1.append(r0);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = "delete all the files";
        r0 = r0.append(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r0.toString();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r13.bLe(r0);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = 0;
        r13.bKW(r0, r11, r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        goto L_0x0024;
    L_0x020e:
        r0 = move-exception;
    L_0x020f:
        r1 = r13.boy;
        if (r1 == 0) goto L_0x0219;
    L_0x0213:
        r1 = r13.boy;
        r2 = 1;
        r13.bKW(r1, r11, r2);
    L_0x0219:
        r1 = "BigApertureProcessTread";
        r2 = "Error occured!!!";
        com.p010a.C0090a.bvp(r1, r2, r0);
        goto L_0x0024;
    L_0x0224:
        r0 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.bKZ(r0);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        if (r0 != 0) goto L_0x01dd;
    L_0x022c:
        r0 = r13.boA;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        if (r0 == 0) goto L_0x0235;
    L_0x0230:
        r0 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0.bLT();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
    L_0x0235:
        r0 = r13.bot;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r9.bLJ();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r0.getAbsolutePath();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1.bpu;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r2.bpv;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1 * r2;
        r1 = r1 * 3;
        r1 = r1 / 2;
        r0 = cn.nubia.bigAperture.BigAperAlgorithm.bKA(r0, r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r9.bLK();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r9.bLL();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r3 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r12 = r13.bKP(r1, r2, r0, r3);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        if (r12 != 0) goto L_0x0287;
    L_0x0260:
        r0.release();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = 1;
        r13.bKW(r0, r11, r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        goto L_0x0024;
    L_0x026b:
        r0 = move-exception;
        r1 = r11;
    L_0x026d:
        r2 = r13.boy;
        if (r2 == 0) goto L_0x0277;
    L_0x0271:
        r2 = r13.boy;
        r3 = 1;
        r13.bKW(r2, r1, r3);
    L_0x0277:
        r1 = "BigApertureProcessTread";
        r2 = "Error occured!!!";
        com.p010a.C0090a.bvp(r1, r2, r0);
        goto L_0x0024;
    L_0x0282:
        r0 = "undo";
        goto L_0x01f4;
    L_0x0287:
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.bKR(r1, r12, r9);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        if (r1 == 0) goto L_0x02a6;
    L_0x028f:
        r12.release();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0.release();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r0.bpD;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1 + -1;
        r0.bpD = r1;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boK;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0.bKE(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        goto L_0x0024;
    L_0x02a6:
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1.bpE;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = -1;
        if (r1 == r2) goto L_0x02fd;
    L_0x02ad:
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1.bpF;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = -1;
        if (r1 == r2) goto L_0x02fd;
    L_0x02b4:
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1.bpG;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = -1;
        if (r1 == r2) goto L_0x02fd;
    L_0x02bb:
        r1 = "do prettyEffect E";
        r13.bLe(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1.bpu;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r2.bpv;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r3 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r3 = r3.bpE;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r4 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r4 = r4.bpF;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r5 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r5 = r5.bpG;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        com.nubia.camera.common.Native.PrettyWaterMarkEffect.btK(r0, r1, r2, r3, r4, r5);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.bKR(r1, r12, r9);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        if (r1 == 0) goto L_0x02f7;
    L_0x02e0:
        r12.release();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0.release();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r0.bpD;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1 + -1;
        r0.bpD = r1;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boK;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0.bKE(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        goto L_0x0024;
    L_0x02f7:
        r1 = "do prettyEffect X";
        r13.bLe(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
    L_0x02fd:
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r6 = r13.bKV(r9, r0, r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.bKT(r1, r6, r9, r12);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        if (r1 == 0) goto L_0x0325;
    L_0x030b:
        r12.release();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0.release();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        java.lang.System.gc();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r0.bpD;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1 + -1;
        r0.bpD = r1;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boK;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0.bKE(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        goto L_0x0024;
    L_0x0325:
        r7 = cn.nubia.bigAperture.C0027c.bKt(r6);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1.<init>();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = "iso: ";
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r7.boi;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = ", exposure";
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r7.bog;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = "; fNumber:";
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r7.boh;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1.append(r2);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1.toString();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r13.bLe(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r3 = r13.bKO(r1, r0, r12, r7);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0.release();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.bKQ(r0, r9, r6, r12);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        if (r0 == 0) goto L_0x0387;
    L_0x036d:
        r12.release();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r3.release();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        java.lang.System.gc();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r0.bpD;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1 + -1;
        r0.bpD = r1;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boK;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0.bKE(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        goto L_0x0024;
    L_0x0387:
        r0 = new cn.nubia.bigAperture.k;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.bow;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r13.boy;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r8 = r13.boK;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r10 = new cn.nubia.bigAperture.j;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r4 = 0;
        r10.<init>(r13);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r4 = r12;
        r5 = r11;
        r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r13.boJ;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = new cn.nubia.bigAperture.p;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2.<init>(r0);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = r1.alX(r2);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = com.android.common.storagemanager.StorageManager$StorageStatusType.ADD_REQUEST_SUCCESS;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        if (r1 == r2) goto L_0x0428;
    L_0x03a9:
        r0.bLw();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
    L_0x03ac:
        java.lang.System.gc();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2.<init>();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r3 = "[perf test] Total Process time: ";
        r2 = r2.append(r3);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r4 = r13.boF;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r0 - r4;
        r0 = r2.append(r0);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = "ms. Including (depthStart -> originalImageStart: ";
        r0 = r0.append(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r13.boE;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r4 = r13.boz;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r2 - r4;
        r0 = r0.append(r2);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = "ms; (originalImageStart -> bigApertureImageStart: ";
        r0 = r0.append(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r13.bov;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r4 = r13.boE;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r2 - r4;
        r0 = r0.append(r2);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = "ms; (bigApertureImageStart -> bigApertureImageCompressStart: ";
        r0 = r0.append(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r13.bou;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r4 = r13.bov;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r2 - r4;
        r0 = r0.append(r2);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = "ms; (bigApertureImageCompressStart -> saveStart: ";
        r0 = r0.append(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r13.boH;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r4 = r13.bou;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r2 - r4;
        r0 = r0.append(r2);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = "ms; (saveStart -> end: ";
        r0 = r0.append(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r4 = r13.boH;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r2 = r2 - r4;
        r0 = r0.append(r2);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r0.toString();	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r13.bLe(r0);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boG;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        monitor-enter(r0);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r1 = 0;
        r13.boy = r1;	 Catch:{ all -> 0x0438 }
        monitor-exit(r0);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        goto L_0x0024;
    L_0x0428:
        r1 = r13.boG;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        monitor-enter(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        r0 = r13.boI;	 Catch:{ all -> 0x0435 }
        r2 = r13.boy;	 Catch:{ all -> 0x0435 }
        r0.add(r2);	 Catch:{ all -> 0x0435 }
        monitor-exit(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        goto L_0x03ac;
    L_0x0435:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        throw r0;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
    L_0x0438:
        r1 = move-exception;
        monitor-exit(r0);	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
        throw r1;	 Catch:{ Exception -> 0x020e, Throwable -> 0x026b }
    L_0x043b:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
    L_0x043e:
        r0 = move-exception;
        r11 = r1;
        goto L_0x020f;
    L_0x0442:
        r0 = move-exception;
        goto L_0x026d;
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.nubia.bigAperture.h.run():void");
    }

    private void bKW(BigApertureTask bigApertureTask, C0028d c0028d, boolean z) {
        if (z) {
            if (c0028d == null) {
                c0028d = C0027c.bKs(bigApertureTask.bpq, this.bow);
            }
            bLg(c0028d, bigApertureTask);
        }
        if (!BigApertureService.bnX) {
            C0027c.bKn(new File(bigApertureTask.bpp));
        }
        this.boK.bKB(bigApertureTask);
        if (bLc(bigApertureTask)) {
            bLi(this.boL.boM, this.boL.boN.bpq, "NO DEPTH CAN LOCK");
            synchronized (this.boG) {
                this.boL = null;
            }
        }
    }

    private void bLg(C0028d c0028d, BigApertureTask bigApertureTask) {
        if (c0028d != null && c0028d.bof != null) {
            C0090a.bvo("BigApertureProcessTread", "resetState");
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(C0523o.BX, "");
            C0616j.app(c0028d.bof, sparseArray);
            ContentValues contentValues = new ContentValues();
            contentValues.put("datetaken", Long.valueOf(c0028d.boe + 1));
            bLl(bigApertureTask.bpq, contentValues);
        }
    }

    private void bLl(Uri uri, ContentValues contentValues) {
        this.bow.update(uri, contentValues, null, null);
    }

    private void bLh() {
        this.boK.bKC(new C0044t(this));
    }

    private void bLi(Messenger messenger, Uri uri, String str) {
        try {
            Message obtain = Message.obtain(null, 4);
            Bundle bundle = new Bundle();
            bundle.putParcelable("depth_uri", uri);
            bundle.putString("apert_result", str);
            C0090a.bvo("BigApertureProcessTread", "cancelMsg: " + str);
            obtain.setData(bundle);
            messenger.send(obtain);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    private void bLj(Messenger messenger, BigApertureTask bigApertureTask) {
        try {
            C0523o c0523o = new C0523o();
            c0523o.BX(bigApertureTask.bpp + "/0.jpg");
            int i = 100;
            float f = 0.0f;
            float f2 = 2.2f;
            Integer Ca = c0523o.Ca(C0523o.Ca);
            if (Ca != null) {
                i = Ca.intValue();
            }
            C0513e Cb = c0523o.Cb(C0523o.Cb);
            if (Cb != null) {
                f = (float) Cb.zZ();
            }
            C0513e Cb2 = c0523o.Cb(C0523o.Cc);
            if (Cb2 != null) {
                f2 = (float) Cb2.zZ();
            }
            bLe("iso: " + i + ", exposure" + f + "; fNumber:" + f2);
            Message obtain = Message.obtain(null, 3);
            Bundle bundle = new Bundle();
            bundle.putParcelable("depth_uri", bigApertureTask.bpq);
            bundle.putString("apert_result", "LOCK SUCCESS");
            bundle.putString("depth_data_path", bigApertureTask.bpp);
            bundle.putInt("apert_yuv_width", bigApertureTask.bpu);
            bundle.putInt("apert_yuv_height", bigApertureTask.bpv);
            bundle.putInt("apert_depth_width", bigApertureTask.bpw);
            bundle.putInt("apert_depth_height", bigApertureTask.bpx);
            float[] fArr = new float[]{bigApertureTask.bpy, bigApertureTask.bpz};
            if (C0421M.dC().dD().cX()) {
                C0019a.bMr(new float[]{bigApertureTask.bpy, bigApertureTask.bpz}, bigApertureTask.bpC, fArr);
            }
            bundle.putFloat("apert_focus_x", fArr[0]);
            bundle.putFloat("apert_focus_y", fArr[1]);
            bundle.putInt("key_skin_smooth", bigApertureTask.bpE);
            bundle.putInt("key_skin_tone", bigApertureTask.bpF);
            bundle.putInt("key_face_slime", bigApertureTask.bpG);
            bundle.putFloat("apert_focus_length", bigApertureTask.bpB);
            bundle.putInt("apert_image_rotation", bigApertureTask.bpC);
            bundle.putInt("apert_main_dac_value", bigApertureTask.bpr);
            bundle.putFloat("apert_F_number", f2);
            bundle.putFloat("apert_exposure_time", f);
            bundle.putInt("apert_iso", i);
            if (C0421M.dC().dD().cX()) {
                bundle.putInt("apert_algorithm_version", 2);
            } else {
                bundle.putInt("apert_algorithm_version", 1);
            }
            obtain.setData(bundle);
            this.boL.boM.send(obtain);
            C0090a.bvo("BigApertureProcessTread", "successMsg: LOCK SUCCESS");
        } catch (RemoteException e) {
            e.printStackTrace();
        } catch (FileNotFoundException e2) {
            e2.printStackTrace();
        } catch (IOException e3) {
            e3.printStackTrace();
        }
    }

    private boolean bLf(BigApertureTask bigApertureTask) {
        boolean z = false;
        synchronized (this.boG) {
            if (!(this.boL == null || this.boL.boN.mState != 1 || bigApertureTask.bpq.equals(this.boL.boN.bpq))) {
                z = true;
            }
        }
        return z;
    }

    private boolean bLc(BigApertureTask bigApertureTask) {
        boolean z;
        synchronized (this.boG) {
            if (this.boL == null || this.boL.boN.mState != 1) {
                z = false;
            } else {
                z = bigApertureTask.bpq.equals(this.boL.boN.bpq);
            }
        }
        return z;
    }

    private boolean bLb(BigApertureTask bigApertureTask) {
        boolean z;
        synchronized (this.boG) {
            if (bigApertureTask.mState == 2) {
                z = true;
            } else if (this.boL == null || this.boL.boN.mState != 2) {
                z = false;
            } else {
                z = bigApertureTask.bpq.equals(this.boL.boN.bpq);
            }
        }
        return z;
    }

    private boolean bLd(BigApertureTask bigApertureTask) {
        boolean z;
        synchronized (this.boG) {
            if (bigApertureTask.mState == 3 || bigApertureTask.mState == 2) {
                z = true;
            } else if (this.boL == null || !(this.boL.boN.mState == 3 || this.boL.boN.mState == 2)) {
                z = false;
            } else {
                z = bigApertureTask.bpq.equals(this.boL.boN.bpq);
            }
        }
        return z;
    }

    private boolean bKZ(BigApertureTask bigApertureTask) {
        boolean z;
        synchronized (this.boG) {
            z = bigApertureTask.mState == 4;
        }
        return z;
    }

    private BufferCell bKP(File file, File file2, BufferCell bufferCell, BigApertureTask bigApertureTask) {
        BufferCell bKY;
        this.boz = System.currentTimeMillis();
        BigAperAlgorithm bigAperAlgorithm = this.bot;
        BufferCell bKA = BigAperAlgorithm.bKA(file.getAbsolutePath(), ((bigApertureTask.bpH * bigApertureTask.bpI) * 3) / 2);
        if (file2 != null) {
            byte[] bKr = C0027c.bKr(file2, (bigApertureTask.bpw * bigApertureTask.bpx) * 2);
            if (bKr == null) {
                C0027c.bKn(file2);
                bKY = bKY(bufferCell, bKA, bigApertureTask);
            } else {
                bKY = new BufferCell(bKr);
            }
        } else {
            bKY = bKY(bufferCell, bKA, bigApertureTask);
        }
        if (bKA != null) {
            bKA.release();
        }
        bLe("[perf test] GenerateAltekDepth: " + (System.currentTimeMillis() - this.boz) + "ms");
        return bKY;
    }

    private BufferCell bKY(BufferCell bufferCell, BufferCell bufferCell2, BigApertureTask bigApertureTask) {
        if (C0421M.dC().dD().cX()) {
            return C0020b.bMA(bufferCell, bufferCell2, bigApertureTask);
        }
        return this.bot.bKy(bufferCell, bufferCell2, bigApertureTask.bpu, bigApertureTask.bpv, bigApertureTask.bpH, bigApertureTask.bpI, bigApertureTask.bpw, bigApertureTask.bpx, bigApertureTask.bpr, bigApertureTask.bpt, bigApertureTask.bps);
    }

    private BufferCell bKO(BigApertureTask bigApertureTask, BufferCell bufferCell, BufferCell bufferCell2, C0029e c0029e) {
        BufferCell bMB;
        this.bov = System.currentTimeMillis();
        if (C0421M.dC().dD().cX()) {
            bMB = C0020b.bMB(bufferCell, bufferCell2, this.boy);
        } else {
            bMB = this.bot.bKz(bufferCell, bufferCell2, bigApertureTask.bpu, bigApertureTask.bpv, bigApertureTask.bpw, bigApertureTask.bpx, bigApertureTask.bpy, bigApertureTask.bpz, bigApertureTask.bpB, bigApertureTask.bpC, bigApertureTask.bpr, c0029e.boi, c0029e.boh, c0029e.bog);
        }
        bLe("[perf test] caculateBigAperatureImage: " + (System.currentTimeMillis() - this.bov) + "ms");
        return bMB;
    }

    private byte[] bKV(C0038n c0038n, BufferCell bufferCell, BigApertureTask bigApertureTask) {
        byte[] bKq;
        this.boE = System.currentTimeMillis();
        File file = new File(bigApertureTask.bpp + "/0.jpg");
        if (file.exists()) {
            bKq = C0027c.bKq(file);
            if (bKq == null) {
                bKq = C0027c.bKk(bufferCell, bigApertureTask.bpu, bigApertureTask.bpv, 0);
            }
        } else {
            bKq = C0027c.bKk(bufferCell, bigApertureTask.bpu, bigApertureTask.bpv, 0);
        }
        bLe("[perf test] compressOriginalJpeg: " + (System.currentTimeMillis() - this.boE) + "ms");
        return bKq;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int bKU(cn.nubia.bigAperture.BigApertureTask r4, cn.nubia.bigAperture.BigApertureTask r5, boolean r6) {
        /*
        r3 = this;
        r0 = 0;
        r1 = r3.boG;
        monitor-enter(r1);
        if (r5 != 0) goto L_0x0008;
    L_0x0006:
        monitor-exit(r1);
        return r0;
    L_0x0008:
        r2 = r3.bLf(r4);	 Catch:{ all -> 0x0029 }
        if (r2 == 0) goto L_0x0010;
    L_0x000e:
        if (r6 == 0) goto L_0x0021;
    L_0x0010:
        r2 = r3.bLc(r4);	 Catch:{ all -> 0x0029 }
        if (r2 == 0) goto L_0x0033;
    L_0x0016:
        r0 = 2;
        if (r6 != 0) goto L_0x002c;
    L_0x0019:
        r3.bKM(r5);	 Catch:{ all -> 0x0029 }
        r3.bKM(r4);	 Catch:{ all -> 0x0029 }
    L_0x001f:
        monitor-exit(r1);
        return r0;
    L_0x0021:
        r0 = 1;
        r3.bKL(r4);	 Catch:{ all -> 0x0029 }
        r3.bKH(r4);	 Catch:{ all -> 0x0029 }
        goto L_0x001f;
    L_0x0029:
        r0 = move-exception;
        monitor-exit(r1);
        throw r0;
    L_0x002c:
        r3.bKK(r5);	 Catch:{ all -> 0x0029 }
        r3.bKK(r4);	 Catch:{ all -> 0x0029 }
        goto L_0x001f;
    L_0x0033:
        r2 = r3.bLb(r4);	 Catch:{ all -> 0x0029 }
        if (r2 == 0) goto L_0x0043;
    L_0x0039:
        r0 = 3;
        if (r6 == 0) goto L_0x001f;
    L_0x003c:
        r3.bKK(r5);	 Catch:{ all -> 0x0029 }
        r3.bKK(r4);	 Catch:{ all -> 0x0029 }
        goto L_0x001f;
    L_0x0043:
        if (r6 == 0) goto L_0x001f;
    L_0x0045:
        r4.bLU();	 Catch:{ all -> 0x0029 }
        r2 = cn.nubia.bigAperture.BigApertureService.bnX;	 Catch:{ all -> 0x0029 }
        if (r2 == 0) goto L_0x001f;
    L_0x004c:
        r2 = r3.boK;	 Catch:{ all -> 0x0029 }
        r2.bKE(r4);	 Catch:{ all -> 0x0029 }
        goto L_0x001f;
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.nubia.bigAperture.h.bKU(cn.nubia.bigAperture.BigApertureTask, cn.nubia.bigAperture.BigApertureTask, boolean):int");
    }

    private boolean bKR(BigApertureTask bigApertureTask, BufferCell bufferCell, C0038n c0038n) {
        BigApertureTask bigApertureTask2 = null;
        if (this.boL != null) {
            bigApertureTask2 = this.boL.boN;
        }
        int bKU = bKU(bigApertureTask, bigApertureTask2, false);
        if (bKU == 1) {
            if (c0038n.bLL() == null) {
                c0038n.bLM(bufferCell.btD());
            }
            bLe("Break Point arrived, save Depth File");
            return true;
        } else if (bKU != 2) {
            return false;
        } else {
            if (c0038n.bLL() == null) {
                c0038n.bLM(bufferCell.btD());
            }
            bLj(this.boL.boM, bigApertureTask);
            return false;
        }
    }

    private boolean bKT(BigApertureTask bigApertureTask, byte[] bArr, C0038n c0038n, BufferCell bufferCell) {
        BigApertureTask bigApertureTask2 = null;
        if (this.boL != null) {
            bigApertureTask2 = this.boL.boN;
        }
        int bKU = bKU(bigApertureTask, bigApertureTask2, false);
        if (bKU == 1) {
            if (c0038n.bLN() == null) {
                c0038n.bLO(bArr);
            }
            return true;
        } else if (bKU != 2) {
            return false;
        } else {
            if (c0038n.bLN() == null) {
                c0038n.bLO(bArr);
            }
            if (c0038n.bLL() == null) {
                c0038n.bLM(bufferCell.btD());
            }
            bLj(this.boL.boM, bigApertureTask);
            return false;
        }
    }

    private boolean bKQ(BigApertureTask bigApertureTask, C0038n c0038n, byte[] bArr, BufferCell bufferCell) {
        BigApertureTask bigApertureTask2 = null;
        if (this.boL != null) {
            bigApertureTask2 = this.boL.boN;
        }
        int bKU = bKU(bigApertureTask, bigApertureTask2, false);
        if (bKU == 1) {
            if (c0038n.bLN() == null) {
                c0038n.bLO(bArr);
            }
            return true;
        } else if (bKU != 2) {
            return false;
        } else {
            if (c0038n.bLN() == null) {
                c0038n.bLO(bArr);
            }
            if (c0038n.bLL() == null) {
                c0038n.bLM(bufferCell.btD());
            }
            bLj(this.boL.boM, bigApertureTask);
            return false;
        }
    }

    private void bKS(BigApertureTask bigApertureTask, byte[] bArr, byte[] bArr2, C0038n c0038n) {
        BigApertureTask bigApertureTask2 = null;
        if (this.boL != null) {
            bigApertureTask2 = this.boL.boN;
        }
        int bKU = bKU(bigApertureTask, bigApertureTask2, true);
        if (bKU == 2) {
            if (c0038n.bLN() == null) {
                c0038n.bLO(bArr);
            }
            if (c0038n.bLL() == null) {
                bLe("save depth after gallery");
                c0038n.bLM(bArr2);
            }
            bLj(this.boL.boM, bigApertureTask);
        }
        if (bKU == 0) {
            if (!BigApertureService.bnX) {
                C0027c.bKn(new File(bigApertureTask.bpp));
            }
            this.boK.bKB(bigApertureTask);
            bLe("delete temp directory");
        }
    }

    private void bKN(BigApertureTask bigApertureTask) {
        synchronized (this.boG) {
            bigApertureTask.bLV();
        }
    }

    private void bKM(BigApertureTask bigApertureTask) {
        synchronized (this.boG) {
            bigApertureTask.bLW();
        }
    }

    private void bKK(BigApertureTask bigApertureTask) {
        synchronized (this.boG) {
            bigApertureTask.bLX();
        }
        this.boK.bKE(bigApertureTask);
    }

    private void bKL(BigApertureTask bigApertureTask) {
        synchronized (this.boG) {
            bigApertureTask.bLY();
        }
    }

    private void bKJ(BigApertureTask bigApertureTask) {
        synchronized (this.boG) {
            bigApertureTask.bLZ();
        }
    }

    private boolean bLa(String str, Context context) {
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        for (RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
            if (runningAppProcessInfo.processName.equals(str)) {
                z = runningAppProcessInfo.importance == 100;
                bLe("PackageName: " + str + "; isPackageInForeGround " + z + ": " + (System.currentTimeMillis() - currentTimeMillis));
                return z;
            }
        }
        z = false;
        bLe("PackageName: " + str + "; isPackageInForeGround " + z + ": " + (System.currentTimeMillis() - currentTimeMillis));
        return z;
    }

    private void bLk() {
        C0090a.bvo("BigApertureProcessTread", "stopService");
        this.box.stopService(new Intent(this.box, BigApertureService.class));
    }

    private BigApertureTask bKX(Uri uri) {
        synchronized (this.boG) {
            for (BigApertureTask bigApertureTask : this.boI) {
                if (bigApertureTask.bpq.equals(uri)) {
                    return bigApertureTask;
                }
            }
            return null;
        }
    }

    private void bLe(String str) {
        if (this.boA) {
            C0090a.m0d("BigApertureProcessTread", str);
        }
    }
}
