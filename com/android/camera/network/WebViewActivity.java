package com.android.camera.network;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.webkit.WebSettings;
import android.webkit.WebViewClient;
import com.android.camera.R;

public class WebViewActivity extends Activity {
    private WebSettings aEM = null;
    private ProgressWebView aEN = null;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(8);
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.webview_layout);
        aTV();
        aTW();
        getActionBar().setTitle(R.string.course_title);
        getActionBar().setDisplayHomeAsUpEnabled(true);
    }

    private void aTV() {
        this.aEN = (ProgressWebView) findViewById(R.id.course_webview);
    }

    private void aTW() {
        this.aEM = this.aEN.getSettings();
        this.aEM.setJavaScriptEnabled(true);
        this.aEN.setWebViewClient(new WebViewClient());
        this.aEN.loadUrl("http://bbs.nubia.cn/forum.php?mod=forumdisplay&fid=53&filter=typeid&typeid=237");
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || this.aEN == null || !this.aEN.canGoBack()) {
            return super.onKeyDown(i, keyEvent);
        }
        this.aEN.goBack();
        return true;
    }
}
