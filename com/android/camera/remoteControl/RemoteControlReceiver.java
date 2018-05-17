package com.android.camera.remoteControl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.p010a.C0090a;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;

public class RemoteControlReceiver extends BroadcastReceiver {
    private List aER = new ArrayList();
    private Context aES;
    private String aET;

    public void onReceive(Context context, Intent intent) {
        this.aES = context;
        this.aET = intent.getStringExtra("uri");
        C0090a.bvm("RemoteControlReceiver", "Receiver onReceive uri is:" + this.aET);
        aUa();
        try {
            aTZ(context.getContentResolver().openInputStream(Uri.parse(this.aET)));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    private void aUa() {
        this.aER.clear();
        this.aER.add(new C0218c("clear_user_data"));
        this.aER.add(new C0217b("update_camera_family_data"));
    }

    private void aTZ(java.io.InputStream r6) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:37)
	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:61)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:306)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:199)
*/
        /*
        r5 = this;
        r1 = new java.io.BufferedReader;
        r0 = new java.io.InputStreamReader;
        r0.<init>(r6);
        r1.<init>(r0);
    L_0x000a:
        r2 = r1.readLine();	 Catch:{ IOException -> 0x004a }
        if (r2 == 0) goto L_0x005b;	 Catch:{ IOException -> 0x004a }
    L_0x0010:
        r0 = "RemoteControlReceiver";	 Catch:{ IOException -> 0x004a }
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x004a }
        r3.<init>();	 Catch:{ IOException -> 0x004a }
        r4 = " intent =";	 Catch:{ IOException -> 0x004a }
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x004a }
        r3 = r3.append(r2);	 Catch:{ IOException -> 0x004a }
        r3 = r3.toString();	 Catch:{ IOException -> 0x004a }
        com.p010a.C0090a.bvo(r0, r3);	 Catch:{ IOException -> 0x004a }
        r0 = r5.aER;	 Catch:{ IOException -> 0x004a }
        r3 = r0.iterator();	 Catch:{ IOException -> 0x004a }
    L_0x0030:
        r0 = r3.hasNext();	 Catch:{ IOException -> 0x004a }
        if (r0 == 0) goto L_0x000a;	 Catch:{ IOException -> 0x004a }
    L_0x0036:
        r0 = r3.next();	 Catch:{ IOException -> 0x004a }
        r0 = (com.android.camera.remoteControl.C0216a) r0;	 Catch:{ IOException -> 0x004a }
        r4 = r0.aEP;	 Catch:{ IOException -> 0x004a }
        r4 = r4.equals(r2);	 Catch:{ IOException -> 0x004a }
        if (r4 == 0) goto L_0x0030;	 Catch:{ IOException -> 0x004a }
    L_0x0044:
        r4 = r5.aES;	 Catch:{ IOException -> 0x004a }
        r0.aTX(r4);	 Catch:{ IOException -> 0x004a }
        goto L_0x0030;
    L_0x004a:
        r0 = move-exception;
        r0.printStackTrace();	 Catch:{ all -> 0x0069 }
        r0 = "RemoteControlReceiver";	 Catch:{ all -> 0x0069 }
        r1 = " readLine IOException";	 Catch:{ all -> 0x0069 }
        com.p010a.C0090a.m1e(r0, r1);	 Catch:{ all -> 0x0069 }
        r6.close();	 Catch:{ IOException -> 0x0064 }
    L_0x005a:
        return;
    L_0x005b:
        r6.close();	 Catch:{ IOException -> 0x005f }
        goto L_0x005a;
    L_0x005f:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x005a;
    L_0x0064:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x005a;
    L_0x0069:
        r0 = move-exception;
        r6.close();	 Catch:{ IOException -> 0x006e }
    L_0x006d:
        throw r0;
    L_0x006e:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x006d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.camera.remoteControl.RemoteControlReceiver.aTZ(java.io.InputStream):void");
    }
}
