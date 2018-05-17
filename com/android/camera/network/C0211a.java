package com.android.camera.network;

import android.webkit.WebChromeClient;
import android.webkit.WebView;

public class C0211a extends WebChromeClient {
    final /* synthetic */ ProgressWebView aEL;

    public C0211a(ProgressWebView progressWebView) {
        this.aEL = progressWebView;
    }

    public void onProgressChanged(WebView webView, int i) {
        if (i == 100) {
            this.aEL.aEK.setVisibility(8);
        } else {
            if (this.aEL.aEK.getVisibility() == 8) {
                this.aEL.aEK.setVisibility(0);
            }
            this.aEL.aEK.setProgress(i);
        }
        super.onProgressChanged(webView, i);
    }
}
