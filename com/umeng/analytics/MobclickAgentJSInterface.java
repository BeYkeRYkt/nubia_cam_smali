package com.umeng.analytics;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Message;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public class MobclickAgentJSInterface {
    private Context f525a;

    final class C1284a extends WebChromeClient {
        WebChromeClient f521a = null;
        final /* synthetic */ MobclickAgentJSInterface f522b;
        private final String f523c = "ekv";
        private final String f524d = "event";

        public C1284a(MobclickAgentJSInterface mobclickAgentJSInterface, WebChromeClient webChromeClient) {
            this.f522b = mobclickAgentJSInterface;
            if (webChromeClient != null) {
                this.f521a = webChromeClient;
            } else {
                this.f521a = new WebChromeClient();
            }
        }

        public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
            if ("ekv".equals(str2)) {
                try {
                    JSONObject jSONObject = new JSONObject(str3);
                    Map hashMap = new HashMap();
                    String str4 = (String) jSONObject.remove("id");
                    int intValue = !jSONObject.isNull("duration") ? ((Integer) jSONObject.remove("duration")).intValue() : 0;
                    Iterator keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String str5 = (String) keys.next();
                        hashMap.put(str5, jSONObject.getString(str5));
                    }
                    MobclickAgent.getAgent().m640a(this.f522b.f525a, str4, hashMap, (long) intValue);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (!"event".equals(str2)) {
                return this.f521a.onJsPrompt(webView, str, str2, str3, jsPromptResult);
            } else {
                try {
                    JSONObject jSONObject2 = new JSONObject(str3);
                    String optString = jSONObject2.optString("label");
                    if ("".equals(optString)) {
                        optString = null;
                    }
                    MobclickAgent.getAgent().m637a(this.f522b.f525a, jSONObject2.getString("tag"), optString, (long) jSONObject2.optInt("duration"), 1);
                } catch (Exception e2) {
                }
            }
            jsPromptResult.confirm();
            return true;
        }

        public void onCloseWindow(WebView webView) {
            this.f521a.onCloseWindow(webView);
        }

        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            return this.f521a.onCreateWindow(webView, z, z2, message);
        }

        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            return this.f521a.onJsAlert(webView, str, str2, jsResult);
        }

        public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
            return this.f521a.onJsBeforeUnload(webView, str, str2, jsResult);
        }

        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            return this.f521a.onJsConfirm(webView, str, str2, jsResult);
        }

        public void onProgressChanged(WebView webView, int i) {
            this.f521a.onProgressChanged(webView, i);
        }

        public void onReceivedIcon(WebView webView, Bitmap bitmap) {
            this.f521a.onReceivedIcon(webView, bitmap);
        }

        public void onReceivedTitle(WebView webView, String str) {
            this.f521a.onReceivedTitle(webView, str);
        }

        public void onRequestFocus(WebView webView) {
            this.f521a.onRequestFocus(webView);
        }
    }

    public MobclickAgentJSInterface(Context context, WebView webView) {
        this.f525a = context;
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new C1284a(this, null));
    }

    public MobclickAgentJSInterface(Context context, WebView webView, WebChromeClient webChromeClient) {
        this.f525a = context;
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setWebChromeClient(new C1284a(this, webChromeClient));
    }
}
