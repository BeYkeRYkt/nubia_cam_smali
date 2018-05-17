package cn.nubia.p003c;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class C0047b {
    public static synchronized Map bMI(String str) {
        Map hashMap;
        String str2 = null;
        synchronized (C0047b.class) {
            Log.v("CheckVersion", "url = " + str);
            hashMap = new HashMap();
            try {
                HttpResponse execute = C0047b.bML().execute(new HttpGet(str));
                if (execute.getStatusLine().getStatusCode() != 200) {
                    hashMap.put("error", String.valueOf(2));
                } else {
                    if (execute.getEntity() != null) {
                        str2 = EntityUtils.toString(execute.getEntity()).trim();
                    }
                    C0046a bMK = C0047b.bMK(str2);
                    if (bMK == null) {
                        hashMap.put("error", String.valueOf(1));
                    } else {
                        hashMap.put("apkInfo", bMK);
                    }
                }
            } catch (Throwable e) {
                Log.e("CheckVersion", "getVersionFromServer failed, because ClientProtocolException!", e);
                hashMap.put("error", String.valueOf(0));
                return hashMap;
            } catch (Throwable e2) {
                Log.e("CheckVersion", "getVersionFromServer failed, because IOException!", e2);
                hashMap.put("error", String.valueOf(0));
                return hashMap;
            }
        }
        return hashMap;
    }

    public static void bMJ(String str, Context context) {
        Log.v("CheckVersion", "download url = " + str);
        context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
    }

    private static C0046a bMK(String str) {
        C0046a c0046a;
        Log.i("CheckVersion", "response = " + str);
        if (str == null) {
            c0046a = null;
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("app_name");
                String string2 = jSONObject.getString("apk_name");
                String string3 = jSONObject.getString("ver_name");
                String string4 = jSONObject.getString("ver_code");
                String string5 = jSONObject.getString("url");
                JSONArray jSONArray = jSONObject.getJSONArray("history");
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.getString(i));
                }
                c0046a = new C0046a(string, string2, string3, string5, Integer.parseInt(string4), arrayList);
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        }
        return c0046a;
    }

    private static HttpClient bML() {
        HttpClient defaultHttpClient = new DefaultHttpClient();
        HttpParams params = defaultHttpClient.getParams();
        HttpConnectionParams.setConnectionTimeout(params, 30000);
        ConnManagerParams.setTimeout(params, 30000);
        return defaultHttpClient;
    }
}
