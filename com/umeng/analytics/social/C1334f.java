package com.umeng.analytics.social;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.wifi.WifiManager;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.umeng.analytics.C1296a;
import com.umeng.analytics.social.UMPlatformData.GENDER;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

public abstract class C1334f {
    private static Map f648a;

    protected static String[] m721a(Context context, String str, UMPlatformData... uMPlatformDataArr) {
        if (uMPlatformDataArr == null || uMPlatformDataArr.length == 0) {
            throw new C1329a("platform data is null");
        }
        Object a = C1334f.m717a(context);
        if (TextUtils.isEmpty(a)) {
            throw new C1329a("can`t get appkey.");
        }
        List arrayList = new ArrayList();
        String str2 = "http://log.umsns.com/share/api/" + a + "/";
        if (f648a == null || f648a.isEmpty()) {
            f648a = C1334f.m724c(context);
        }
        if (!(f648a == null || f648a.isEmpty())) {
            for (Entry entry : f648a.entrySet()) {
                arrayList.add(new BasicNameValuePair((String) entry.getKey(), (String) entry.getValue()));
            }
        }
        arrayList.add(new BasicNameValuePair("date", String.valueOf(System.currentTimeMillis())));
        arrayList.add(new BasicNameValuePair("channel", C1333e.f630e));
        if (!TextUtils.isEmpty(str)) {
            arrayList.add(new BasicNameValuePair("topic", str));
        }
        arrayList.addAll(C1334f.m719a(uMPlatformDataArr));
        String b = C1334f.m722b(uMPlatformDataArr);
        if (b == null) {
            b = "null";
        }
        C1330b.m701c(C1296a.f549e, "URL:" + (str2 + "?" + C1334f.m718a(arrayList)));
        C1330b.m701c(C1296a.f549e, "BODY:" + b);
        return new String[]{r1, b};
    }

    private static String m718a(List list) {
        try {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new UrlEncodedFormEntity(list, "UTF-8").writeTo(byteArrayOutputStream);
            return byteArrayOutputStream.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private static List m719a(UMPlatformData... uMPlatformDataArr) {
        StringBuilder stringBuilder = new StringBuilder();
        StringBuilder stringBuilder2 = new StringBuilder();
        StringBuilder stringBuilder3 = new StringBuilder();
        for (UMPlatformData uMPlatformData : uMPlatformDataArr) {
            stringBuilder.append(uMPlatformData.getMeida().toString());
            stringBuilder.append(',');
            stringBuilder2.append(uMPlatformData.getUsid());
            stringBuilder2.append(',');
            stringBuilder3.append(uMPlatformData.getWeiboId());
            stringBuilder3.append(',');
        }
        if (uMPlatformDataArr.length > 0) {
            stringBuilder.deleteCharAt(stringBuilder.length() - 1);
            stringBuilder2.deleteCharAt(stringBuilder2.length() - 1);
            stringBuilder3.deleteCharAt(stringBuilder3.length() - 1);
        }
        List arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("platform", stringBuilder.toString()));
        arrayList.add(new BasicNameValuePair("usid", stringBuilder2.toString()));
        if (stringBuilder3.length() > 0) {
            arrayList.add(new BasicNameValuePair("weiboid", stringBuilder3.toString()));
        }
        return arrayList;
    }

    private static String m722b(UMPlatformData... uMPlatformDataArr) {
        JSONObject jSONObject = new JSONObject();
        for (UMPlatformData uMPlatformData : uMPlatformDataArr) {
            GENDER gender = uMPlatformData.getGender();
            CharSequence name = uMPlatformData.getName();
            if (gender != null || !TextUtils.isEmpty(name)) {
                try {
                    Object valueOf;
                    JSONObject jSONObject2 = new JSONObject();
                    String str = "gender";
                    if (gender != null) {
                        valueOf = String.valueOf(gender.value);
                    } else {
                        valueOf = "";
                    }
                    jSONObject2.put(str, valueOf);
                    str = "name";
                    if (name != null) {
                        valueOf = String.valueOf(name);
                    } else {
                        valueOf = "";
                    }
                    jSONObject2.put(str, valueOf);
                    jSONObject.put(uMPlatformData.getMeida().toString(), jSONObject2);
                } catch (Throwable e) {
                    throw new C1329a("build body exception", e);
                }
            }
        }
        if (jSONObject.length() != 0) {
            return jSONObject.toString();
        }
        return null;
    }

    private static Map m724c(Context context) {
        Map hashMap = new HashMap();
        Map b = C1334f.m723b(context);
        if (b == null || b.isEmpty()) {
            throw new C1329a("can`t get device id.");
        }
        StringBuilder stringBuilder = new StringBuilder();
        StringBuilder stringBuilder2 = new StringBuilder();
        for (Entry entry : b.entrySet()) {
            if (!TextUtils.isEmpty((CharSequence) entry.getValue())) {
                stringBuilder2.append((String) entry.getKey()).append(",");
                stringBuilder.append((String) entry.getValue()).append(",");
            }
        }
        if (stringBuilder.length() > 0) {
            stringBuilder.deleteCharAt(stringBuilder.length() - 1);
            hashMap.put("deviceid", stringBuilder.toString());
        }
        if (stringBuilder2.length() > 0) {
            stringBuilder2.deleteCharAt(stringBuilder2.length() - 1);
            hashMap.put("idtype", stringBuilder2.toString());
        }
        return hashMap;
    }

    protected static String m717a(Context context) {
        Object obj = C1333e.f629d;
        if (TextUtils.isEmpty(obj)) {
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null) {
                    String string = applicationInfo.metaData.getString("UMENG_APPKEY");
                    if (string != null) {
                        return string.trim();
                    }
                    C1330b.m699b(C1296a.f549e, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.");
                }
            } catch (Exception e) {
                C1330b.m700b(C1296a.f549e, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml.", e);
            }
            return null;
        }
        C1330b.m699b(C1296a.f549e, "use usefully appkey from constant field.");
        return obj;
    }

    public static Map m723b(Context context) {
        CharSequence deviceId;
        Map hashMap = new HashMap();
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager == null) {
            C1330b.m705e(C1296a.f549e, "No IMEI.");
        }
        try {
            if (C1334f.m720a(context, "android.permission.READ_PHONE_STATE")) {
                deviceId = telephonyManager.getDeviceId();
            } else {
                deviceId = null;
            }
        } catch (Exception e) {
            C1330b.m706e(C1296a.f549e, "No IMEI.", e);
            deviceId = null;
        }
        CharSequence d = C1334f.m725d(context);
        CharSequence string = Secure.getString(context.getContentResolver(), "android_id");
        if (!TextUtils.isEmpty(d)) {
            hashMap.put("mac", d);
        }
        if (!TextUtils.isEmpty(deviceId)) {
            hashMap.put("imei", deviceId);
        }
        if (!TextUtils.isEmpty(string)) {
            hashMap.put("android_id", string);
        }
        return hashMap;
    }

    private static boolean m720a(Context context, String str) {
        if (context.getPackageManager().checkPermission(str, context.getPackageName()) == 0) {
            return true;
        }
        return false;
    }

    private static String m725d(Context context) {
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (C1334f.m720a(context, "android.permission.ACCESS_WIFI_STATE")) {
                return wifiManager.getConnectionInfo().getMacAddress();
            }
            C1330b.m705e(C1296a.f549e, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            return "";
        } catch (Exception e) {
            C1330b.m705e(C1296a.f549e, "Could not get mac address." + e.toString());
        }
    }
}
