package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.social.C1333e;
import com.umeng.analytics.social.UMPlatformData;
import com.umeng.analytics.social.UMSocialService;
import java.util.HashMap;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;
import p043u.aly.C1350O;
import p043u.aly.C1394e;

public class MobclickAgent {
    private static final String f519a = "input map is null";
    private static final C1309d f520b = new C1309d();

    public static void setAutoLocation(boolean z) {
    }

    public static void setCatchUncaughtExceptions(boolean z) {
        AnalyticsConfig.CATCH_EXCEPTION = z;
    }

    public static void setWrapper(String str, String str2) {
        f520b.m644a(str, str2);
    }

    public static void setSessionContinueMillis(long j) {
        AnalyticsConfig.kContinueSessionMillis = j;
    }

    public static void setEnableEventBuffer(boolean z) {
        AnalyticsConfig.ENABLE_MEMORY_BUFFER = z;
    }

    public static void setOnlineConfigureListener(Object obj) {
    }

    public static C1309d getAgent() {
        return f520b;
    }

    public static void setOpenGLContext(GL10 gl10) {
        if (gl10 != null) {
            String[] bQm = C1394e.bQm(gl10);
            if (bQm.length == 2) {
                AnalyticsConfig.GPU_VENDER = bQm[0];
                AnalyticsConfig.GPU_RENDERER = bQm[1];
            }
        }
    }

    public static void openActivityDurationTrack(boolean z) {
        AnalyticsConfig.ACTIVITY_DURATION_OPEN = z;
    }

    public static void onPageStart(String str) {
        if (TextUtils.isEmpty(str)) {
            C1350O.m787b(C1296a.f549e, "pageName is null or empty");
        } else {
            f520b.m643a(str);
        }
    }

    public static void onPageEnd(String str) {
        if (TextUtils.isEmpty(str)) {
            C1350O.m787b(C1296a.f549e, "pageName is null or empty");
        } else {
            f520b.m649b(str);
        }
    }

    public static void setDebugMode(boolean z) {
        C1350O.f661a = z;
        C1333e.f647v = z;
    }

    public static void onPause(Context context) {
        f520b.m647b(context);
    }

    public static void onResume(Context context) {
        if (context != null) {
            f520b.m634a(context);
        } else {
            C1350O.m787b(C1296a.f549e, "unexpected null context in onResume");
        }
    }

    public static void onResume(Context context, String str, String str2) {
        if (context == null) {
            C1350O.m787b(C1296a.f549e, "unexpected null context in onResume");
        } else if (str == null || str.length() == 0) {
            C1350O.m787b(C1296a.f549e, "unexpected empty appkey in onResume");
        } else {
            AnalyticsConfig.setAppkey(context, str);
            AnalyticsConfig.setChannel(str2);
            f520b.m634a(context);
        }
    }

    public static void reportError(Context context, String str) {
        f520b.m635a(context, str);
    }

    public static void reportError(Context context, Throwable th) {
        f520b.m641a(context, th);
    }

    public static void flush(Context context) {
    }

    public static void onEvent(Context context, String str) {
        f520b.m637a(context, str, null, -1, 1);
    }

    public static void onEvent(Context context, String str, int i) {
        f520b.m637a(context, str, null, -1, i);
    }

    public static void onEvent(Context context, String str, String str2, int i) {
        if (TextUtils.isEmpty(str2)) {
            C1350O.m785a(C1296a.f549e, "label is null or empty");
        } else {
            f520b.m637a(context, str, str2, -1, i);
        }
    }

    public static void onEvent(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            C1350O.m785a(C1296a.f549e, "label is null or empty");
        } else {
            f520b.m637a(context, str, str2, -1, 1);
        }
    }

    public static void onEvent(Context context, String str, Map map) {
        if (map != null) {
            f520b.m640a(context, str, new HashMap(map), -1);
            return;
        }
        C1350O.m787b(C1296a.f549e, f519a);
    }

    public static void onEventDuration(Context context, String str, long j) {
        if ((j > 0 ? 1 : 0) == 0) {
            C1350O.m785a(C1296a.f549e, "duration is not valid in onEventDuration");
        } else {
            f520b.m637a(context, str, null, j, 1);
        }
    }

    public static void onEventDuration(Context context, String str, String str2, long j) {
        int i = 0;
        if (TextUtils.isEmpty(str2)) {
            C1350O.m785a(C1296a.f549e, "label is null or empty");
            return;
        }
        if (j > 0) {
            i = 1;
        }
        if (i == 0) {
            C1350O.m785a(C1296a.f549e, "duration is not valid in onEventDuration");
        } else {
            f520b.m637a(context, str, str2, j, 1);
        }
    }

    public static void onEventDuration(Context context, String str, Map map, long j) {
        if ((j > 0 ? 1 : null) == null) {
            C1350O.m785a(C1296a.f549e, "duration is not valid in onEventDuration");
        } else if (map != null) {
            f520b.m640a(context, str, new HashMap(map), j);
        } else {
            C1350O.m787b(C1296a.f549e, f519a);
        }
    }

    public static void onEventValue(Context context, String str, Map map, int i) {
        Map hashMap;
        if (map != null) {
            hashMap = new HashMap(map);
        } else {
            hashMap = new HashMap();
        }
        hashMap.put("__ct__", Integer.valueOf(i));
        f520b.m640a(context, str, hashMap, -1);
    }

    public static void onEventBegin(Context context, String str) {
        f520b.m636a(context, str, null);
    }

    public static void onEventEnd(Context context, String str) {
        f520b.m648b(context, str, null);
    }

    public static void onEventBegin(Context context, String str, String str2) {
        f520b.m636a(context, str, str2);
    }

    public static void onEventEnd(Context context, String str, String str2) {
        f520b.m648b(context, str, str2);
    }

    public static void onKVEventBegin(Context context, String str, Map map, String str2) {
        if (map != null) {
            f520b.m639a(context, str, new HashMap(map), str2);
        } else {
            C1350O.m787b(C1296a.f549e, f519a);
        }
    }

    public static void onKVEventEnd(Context context, String str, String str2) {
        f520b.m652c(context, str, str2);
    }

    public static void onSocialEvent(Context context, String str, UMPlatformData... uMPlatformDataArr) {
        if (context != null) {
            C1333e.f630e = "3";
            UMSocialService.share(context, str, uMPlatformDataArr);
            return;
        }
        C1350O.m787b(C1296a.f549e, "context is null in onShareEvent");
    }

    public static void onSocialEvent(Context context, UMPlatformData... uMPlatformDataArr) {
        if (context != null) {
            C1333e.f630e = "3";
            UMSocialService.share(context, uMPlatformDataArr);
            return;
        }
        C1350O.m787b(C1296a.f549e, "context is null in onShareEvent");
    }

    public static String getConfigParams(Context context, String str) {
        return "";
    }

    public static void updateOnlineConfig(Context context, String str, String str2) {
    }

    public static void updateOnlineConfig(Context context) {
    }

    public static void setUserID(Context context, String str, String str2, Gender gender, int i) {
    }

    public static void onKillProcess(Context context) {
        f520b.m653d(context);
    }

    public static void onProfileSignIn(String str) {
        onProfileSignIn("_adhoc", str);
    }

    public static void onProfileSignIn(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            C1350O.m790e(C1296a.f549e, "uid is null");
        } else if (str2.length() <= 64) {
            if (TextUtils.isEmpty(str)) {
                f520b.m650b("_adhoc", str2);
            } else if (str.length() <= 32) {
                f520b.m650b(str, str2);
            } else {
                C1350O.m790e(C1296a.f549e, "provider is Illegal(length bigger then  legitimate length).");
            }
        } else {
            C1350O.m790e(C1296a.f549e, "uid is Illegal(length bigger then  legitimate length).");
        }
    }

    public static void onProfileSignOff() {
        f520b.m646b();
    }
}
