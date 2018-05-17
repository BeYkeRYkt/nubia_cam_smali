package com.loc;

import android.content.Context;
import android.database.Cursor;
import android.net.Proxy;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.net.InetSocketAddress;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.URI;
import java.util.List;
import java.util.Locale;

public class C1278y {
    private static String m583a() {
        String str = null;
        try {
            str = Proxy.getDefaultHost();
        } catch (Throwable th) {
            C1259s.bwd(th, "ProxyUtil", "getDefHost");
        }
        return str != null ? str : "null";
    }

    public static java.net.Proxy m584a(Context context) {
        try {
            return VERSION.SDK_INT < 11 ? C1278y.m586b(context) : C1278y.bwk(context, new URI("http://restapi.amap.com"));
        } catch (Throwable th) {
            C1259s.bwd(th, "ProxyUtil", "getProxy");
            return null;
        }
    }

    private static int m585b() {
        int i = -1;
        try {
            i = Proxy.getDefaultPort();
        } catch (Throwable th) {
            C1259s.bwd(th, "ProxyUtil", "getDefPort");
        }
        return i;
    }

    private static java.net.Proxy m586b(Context context) {
        String string;
        String a;
        int b;
        int i;
        Cursor cursor;
        int i2;
        Throwable th;
        String toLowerCase;
        int i3;
        Object obj;
        Cursor cursor2;
        int i4 = 80;
        int i5 = -1;
        Object obj2 = null;
        if (C1278y.m587c(context)) {
            Cursor query;
            try {
                query = context.getContentResolver().query(Uri.parse("content://telephony/carriers/preferapn"), null, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            string = query.getString(query.getColumnIndex("apn"));
                            if (string != null) {
                                string = string.toLowerCase(Locale.US);
                            }
                            if (string != null && string.contains("ctwap")) {
                                a = C1278y.m583a();
                                b = C1278y.m585b();
                                try {
                                    Object obj3;
                                    if (TextUtils.isEmpty(a) || a.equals("null")) {
                                        obj3 = null;
                                        a = null;
                                    } else {
                                        i = 1;
                                    }
                                    if (obj3 == null) {
                                        try {
                                            a = "10.0.0.200";
                                        } catch (Throwable e) {
                                            Throwable th2 = e;
                                            cursor = query;
                                            i2 = b;
                                            th = th2;
                                            try {
                                                C1259s.bwd(th, "ProxyUtil", "getHostProxy");
                                                string = cn.bFR(context);
                                                if (string != null) {
                                                    toLowerCase = string.toLowerCase(Locale.US);
                                                    string = C1278y.m583a();
                                                    i2 = C1278y.m585b();
                                                    if (toLowerCase.indexOf("ctwap") == -1) {
                                                        if (!(TextUtils.isEmpty(string) || string.equals("null"))) {
                                                            i3 = 1;
                                                            a = string;
                                                        }
                                                        if (obj2 == null) {
                                                            a = "10.0.0.200";
                                                        }
                                                        if (i2 != -1) {
                                                        }
                                                        if (cursor != null) {
                                                            cursor.close();
                                                        }
                                                        if (C1278y.bwj(a, i4)) {
                                                            return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                                        }
                                                        return null;
                                                    } else if (toLowerCase.indexOf("wap") != -1) {
                                                        if (TextUtils.isEmpty(string) || string.equals("null")) {
                                                            obj = null;
                                                            string = a;
                                                        } else {
                                                            i2 = 1;
                                                        }
                                                        if (obj == null) {
                                                            string = "10.0.0.200";
                                                        }
                                                        a = string;
                                                        if (cursor != null) {
                                                            try {
                                                                cursor.close();
                                                            } catch (Throwable th3) {
                                                                C1259s.bwd(th3, "ProxyUtil", "getHostProxy2");
                                                                th3.printStackTrace();
                                                            }
                                                        }
                                                        if (C1278y.bwj(a, i4)) {
                                                            return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                                        }
                                                        return null;
                                                    }
                                                }
                                                i4 = i2;
                                                if (cursor != null) {
                                                    cursor.close();
                                                }
                                                if (C1278y.bwj(a, i4)) {
                                                    return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                                }
                                                return null;
                                            } catch (Throwable th4) {
                                                th3 = th4;
                                                query = cursor;
                                                if (query != null) {
                                                    try {
                                                        query.close();
                                                    } catch (Throwable e2) {
                                                        C1259s.bwd(e2, "ProxyUtil", "getHostProxy2");
                                                        e2.printStackTrace();
                                                    }
                                                }
                                                throw th3;
                                            }
                                        } catch (Throwable e22) {
                                            i5 = b;
                                            th3 = e22;
                                            try {
                                                C1259s.bwd(th3, "ProxyUtil", "getHostProxy1");
                                                th3.printStackTrace();
                                                if (query != null) {
                                                    try {
                                                        query.close();
                                                    } catch (Throwable th32) {
                                                        C1259s.bwd(th32, "ProxyUtil", "getHostProxy2");
                                                        th32.printStackTrace();
                                                    }
                                                }
                                                i4 = i5;
                                                if (C1278y.bwj(a, i4)) {
                                                    return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                                }
                                                return null;
                                            } catch (Throwable th5) {
                                                th32 = th5;
                                                if (query != null) {
                                                    query.close();
                                                }
                                                throw th32;
                                            }
                                        }
                                    }
                                    if (b == -1) {
                                        b = 80;
                                    }
                                    i4 = b;
                                    if (query != null) {
                                        try {
                                            query.close();
                                        } catch (Throwable th322) {
                                            C1259s.bwd(th322, "ProxyUtil", "getHostProxy2");
                                            th322.printStackTrace();
                                        }
                                    }
                                } catch (Throwable e222) {
                                    a = null;
                                    cursor2 = query;
                                    i2 = b;
                                    th322 = e222;
                                    cursor = cursor2;
                                    C1259s.bwd(th322, "ProxyUtil", "getHostProxy");
                                    string = cn.bFR(context);
                                    if (string != null) {
                                        toLowerCase = string.toLowerCase(Locale.US);
                                        string = C1278y.m583a();
                                        i2 = C1278y.m585b();
                                        if (toLowerCase.indexOf("ctwap") == -1) {
                                            i3 = 1;
                                            a = string;
                                            if (obj2 == null) {
                                                a = "10.0.0.200";
                                            }
                                            if (i2 != -1) {
                                            }
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            if (C1278y.bwj(a, i4)) {
                                                return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                            }
                                            return null;
                                        } else if (toLowerCase.indexOf("wap") != -1) {
                                            if (TextUtils.isEmpty(string)) {
                                                i2 = 1;
                                                if (obj == null) {
                                                    string = "10.0.0.200";
                                                }
                                                a = string;
                                                if (cursor != null) {
                                                    cursor.close();
                                                }
                                                if (C1278y.bwj(a, i4)) {
                                                    return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                                }
                                                return null;
                                            }
                                            obj = null;
                                            string = a;
                                            if (obj == null) {
                                                string = "10.0.0.200";
                                            }
                                            a = string;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            if (C1278y.bwj(a, i4)) {
                                                return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                            }
                                            return null;
                                        }
                                    }
                                    i4 = i2;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    if (C1278y.bwj(a, i4)) {
                                        return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                    }
                                    return null;
                                } catch (Throwable e2222) {
                                    i5 = b;
                                    a = null;
                                    th322 = e2222;
                                    C1259s.bwd(th322, "ProxyUtil", "getHostProxy1");
                                    th322.printStackTrace();
                                    if (query != null) {
                                        query.close();
                                    }
                                    i4 = i5;
                                    if (C1278y.bwj(a, i4)) {
                                        return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                    }
                                    return null;
                                }
                                if (C1278y.bwj(a, i4)) {
                                    return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                }
                            } else if (string != null && string.contains("wap")) {
                                a = C1278y.m583a();
                                i = C1278y.m585b();
                                try {
                                    if (!TextUtils.isEmpty(a)) {
                                        if (!a.equals("null")) {
                                            b = 1;
                                            if (r0 == null) {
                                                try {
                                                    a = "10.0.0.172";
                                                } catch (SecurityException e3) {
                                                    th322 = e3;
                                                    cursor2 = query;
                                                    i2 = i;
                                                    cursor = cursor2;
                                                    C1259s.bwd(th322, "ProxyUtil", "getHostProxy");
                                                    string = cn.bFR(context);
                                                    if (string != null) {
                                                        toLowerCase = string.toLowerCase(Locale.US);
                                                        string = C1278y.m583a();
                                                        i2 = C1278y.m585b();
                                                        if (toLowerCase.indexOf("ctwap") == -1) {
                                                            i3 = 1;
                                                            a = string;
                                                            if (obj2 == null) {
                                                                a = "10.0.0.200";
                                                            }
                                                            if (i2 != -1) {
                                                            }
                                                            if (cursor != null) {
                                                                cursor.close();
                                                            }
                                                            if (C1278y.bwj(a, i4)) {
                                                                return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                                            }
                                                            return null;
                                                        } else if (toLowerCase.indexOf("wap") != -1) {
                                                            if (TextUtils.isEmpty(string)) {
                                                                i2 = 1;
                                                                if (obj == null) {
                                                                    string = "10.0.0.200";
                                                                }
                                                                a = string;
                                                                if (cursor != null) {
                                                                    cursor.close();
                                                                }
                                                                if (C1278y.bwj(a, i4)) {
                                                                    return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                                                }
                                                                return null;
                                                            }
                                                            obj = null;
                                                            string = a;
                                                            if (obj == null) {
                                                                string = "10.0.0.200";
                                                            }
                                                            a = string;
                                                            if (cursor != null) {
                                                                cursor.close();
                                                            }
                                                            if (C1278y.bwj(a, i4)) {
                                                                return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                                            }
                                                            return null;
                                                        }
                                                    }
                                                    i4 = i2;
                                                    if (cursor != null) {
                                                        cursor.close();
                                                    }
                                                    if (C1278y.bwj(a, i4)) {
                                                        return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                                    }
                                                    return null;
                                                } catch (Throwable th6) {
                                                    th322 = th6;
                                                    i5 = i;
                                                    C1259s.bwd(th322, "ProxyUtil", "getHostProxy1");
                                                    th322.printStackTrace();
                                                    if (query != null) {
                                                        query.close();
                                                    }
                                                    i4 = i5;
                                                    if (C1278y.bwj(a, i4)) {
                                                        return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                                    }
                                                    return null;
                                                }
                                            }
                                            if (i != -1) {
                                                i4 = i;
                                            }
                                            if (query != null) {
                                                query.close();
                                            }
                                            if (C1278y.bwj(a, i4)) {
                                                return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                            }
                                        }
                                    }
                                    Object obj4 = null;
                                    a = null;
                                    if (obj4 == null) {
                                        a = "10.0.0.172";
                                    }
                                    if (i != -1) {
                                        i4 = i;
                                    }
                                    if (query != null) {
                                        query.close();
                                    }
                                } catch (SecurityException e4) {
                                    th322 = e4;
                                    a = null;
                                    int i6 = i;
                                    cursor = query;
                                    i2 = i6;
                                    C1259s.bwd(th322, "ProxyUtil", "getHostProxy");
                                    string = cn.bFR(context);
                                    if (string != null) {
                                        toLowerCase = string.toLowerCase(Locale.US);
                                        string = C1278y.m583a();
                                        i2 = C1278y.m585b();
                                        if (toLowerCase.indexOf("ctwap") == -1) {
                                            i3 = 1;
                                            a = string;
                                            if (obj2 == null) {
                                                a = "10.0.0.200";
                                            }
                                            if (i2 != -1) {
                                            }
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            if (C1278y.bwj(a, i4)) {
                                                return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                            }
                                            return null;
                                        } else if (toLowerCase.indexOf("wap") != -1) {
                                            if (TextUtils.isEmpty(string)) {
                                                i2 = 1;
                                                if (obj == null) {
                                                    string = "10.0.0.200";
                                                }
                                                a = string;
                                                if (cursor != null) {
                                                    cursor.close();
                                                }
                                                if (C1278y.bwj(a, i4)) {
                                                    return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                                }
                                                return null;
                                            }
                                            obj = null;
                                            string = a;
                                            if (obj == null) {
                                                string = "10.0.0.200";
                                            }
                                            a = string;
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                            if (C1278y.bwj(a, i4)) {
                                                return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                            }
                                            return null;
                                        }
                                    }
                                    i4 = i2;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    if (C1278y.bwj(a, i4)) {
                                        return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                    }
                                    return null;
                                } catch (Throwable th7) {
                                    th322 = th7;
                                    i5 = i;
                                    a = null;
                                    C1259s.bwd(th322, "ProxyUtil", "getHostProxy1");
                                    th322.printStackTrace();
                                    if (query != null) {
                                        query.close();
                                    }
                                    i4 = i5;
                                    if (C1278y.bwj(a, i4)) {
                                        return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                    }
                                    return null;
                                }
                                if (C1278y.bwj(a, i4)) {
                                    return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                }
                            }
                        }
                    } catch (SecurityException e5) {
                        th322 = e5;
                        cursor = query;
                        a = null;
                        i2 = -1;
                        C1259s.bwd(th322, "ProxyUtil", "getHostProxy");
                        string = cn.bFR(context);
                        if (string != null) {
                            toLowerCase = string.toLowerCase(Locale.US);
                            string = C1278y.m583a();
                            i2 = C1278y.m585b();
                            if (toLowerCase.indexOf("ctwap") == -1) {
                                i3 = 1;
                                a = string;
                                if (obj2 == null) {
                                    a = "10.0.0.200";
                                }
                                if (i2 != -1) {
                                }
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (C1278y.bwj(a, i4)) {
                                    return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                }
                                return null;
                            } else if (toLowerCase.indexOf("wap") != -1) {
                                if (TextUtils.isEmpty(string)) {
                                    i2 = 1;
                                    if (obj == null) {
                                        string = "10.0.0.200";
                                    }
                                    a = string;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    if (C1278y.bwj(a, i4)) {
                                        return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                    }
                                    return null;
                                }
                                obj = null;
                                string = a;
                                if (obj == null) {
                                    string = "10.0.0.200";
                                }
                                a = string;
                                if (cursor != null) {
                                    cursor.close();
                                }
                                if (C1278y.bwj(a, i4)) {
                                    return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                                }
                                return null;
                            }
                        }
                        i4 = i2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (C1278y.bwj(a, i4)) {
                            return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                        }
                        return null;
                    } catch (Throwable th8) {
                        th322 = th8;
                        a = null;
                        C1259s.bwd(th322, "ProxyUtil", "getHostProxy1");
                        th322.printStackTrace();
                        if (query != null) {
                            query.close();
                        }
                        i4 = i5;
                        if (C1278y.bwj(a, i4)) {
                            return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                        }
                        return null;
                    }
                }
                i4 = -1;
                a = null;
                if (query != null) {
                    query.close();
                }
            } catch (SecurityException e6) {
                th322 = e6;
                cursor = null;
                i2 = -1;
                a = null;
                C1259s.bwd(th322, "ProxyUtil", "getHostProxy");
                string = cn.bFR(context);
                if (string != null) {
                    toLowerCase = string.toLowerCase(Locale.US);
                    string = C1278y.m583a();
                    i2 = C1278y.m585b();
                    if (toLowerCase.indexOf("ctwap") == -1) {
                        i3 = 1;
                        a = string;
                        if (obj2 == null) {
                            a = "10.0.0.200";
                        }
                        if (i2 != -1) {
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (C1278y.bwj(a, i4)) {
                            return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                        }
                        return null;
                    } else if (toLowerCase.indexOf("wap") != -1) {
                        if (TextUtils.isEmpty(string)) {
                            i2 = 1;
                            if (obj == null) {
                                string = "10.0.0.200";
                            }
                            a = string;
                            if (cursor != null) {
                                cursor.close();
                            }
                            if (C1278y.bwj(a, i4)) {
                                return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                            }
                            return null;
                        }
                        obj = null;
                        string = a;
                        if (obj == null) {
                            string = "10.0.0.200";
                        }
                        a = string;
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (C1278y.bwj(a, i4)) {
                            return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                        }
                        return null;
                    }
                }
                i4 = i2;
                if (cursor != null) {
                    cursor.close();
                }
                if (C1278y.bwj(a, i4)) {
                    return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                }
                return null;
            } catch (Throwable th9) {
                th322 = th9;
                query = null;
                if (query != null) {
                    query.close();
                }
                throw th322;
            }
            try {
                if (C1278y.bwj(a, i4)) {
                    return new java.net.Proxy(Type.HTTP, InetSocketAddress.createUnresolved(a, i4));
                }
            } catch (Throwable th3222) {
                C1259s.bwd(th3222, "ProxyUtil", "getHostProxy2");
                th3222.printStackTrace();
            }
        }
        return null;
    }

    private static boolean bwj(String str, int i) {
        return (str == null || str.length() <= 0 || i == -1) ? false : true;
    }

    private static java.net.Proxy bwk(Context context, URI uri) {
        if (C1278y.m587c(context)) {
            try {
                java.net.Proxy proxy;
                List select = ProxySelector.getDefault().select(uri);
                if (!(select == null || select.isEmpty())) {
                    proxy = (java.net.Proxy) select.get(0);
                    if (!(proxy == null || proxy.type() == Type.DIRECT)) {
                        return proxy;
                    }
                }
                proxy = null;
                return proxy;
            } catch (Throwable th) {
                C1259s.bwd(th, "ProxyUtil", "getProxySelectorCfg");
            }
        }
        return null;
    }

    private static boolean m587c(Context context) {
        return cn.bFP(context) == 0;
    }
}
