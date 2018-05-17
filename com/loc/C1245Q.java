package com.loc;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

class C1245Q implements HostnameVerifier {
    final /* synthetic */ ba beh;

    C1245Q(ba baVar) {
        this.beh = baVar;
    }

    public boolean verify(String str, SSLSession sSLSession) {
        return HttpsURLConnection.getDefaultHostnameVerifier().verify("*.amap.com", sSLSession);
    }
}
