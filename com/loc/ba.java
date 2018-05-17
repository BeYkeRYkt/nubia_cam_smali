package com.loc;

import android.os.Build.VERSION;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;

public class ba {
    private static ay bgy;
    private int f299b;
    private Proxy bgA;
    private volatile boolean bgB;
    private HostnameVerifier bgC;
    private SSLContext bgz;
    private int f300c;
    private boolean f301d;
    private long f302h;
    private long f303i;

    ba(int i, int i2, Proxy proxy) {
        this(i, i2, proxy, false);
    }

    ba(int i, int i2, Proxy proxy, boolean z) {
        this.bgB = false;
        this.f302h = -1;
        this.f303i = 0;
        this.bgC = new C1245Q(this);
        this.f299b = i;
        this.f300c = i2;
        this.bgA = proxy;
        this.f301d = z;
        if (z) {
            try {
                SSLContext instance = SSLContext.getInstance("TLS");
                instance.init(null, null, null);
                this.bgz = instance;
            } catch (Throwable th) {
                C1259s.bwd(th, "HttpUtil", "HttpUtil");
            }
        }
    }

    public static void bAs(ay ayVar) {
        bgy = ayVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.loc.C1229B bAx(java.net.HttpURLConnection r10) {
        /*
        r9 = this;
        r2 = 0;
        r5 = r10.getHeaderFields();	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        r0 = r10.getResponseCode();	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        r1 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r0 != r1) goto L_0x0054;
    L_0x000d:
        r4 = new java.io.ByteArrayOutputStream;	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        r4.<init>();	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        r3 = r10.getInputStream();	 Catch:{ IOException -> 0x0165, all -> 0x0156 }
        r1 = new java.io.PushbackInputStream;	 Catch:{ IOException -> 0x016a, all -> 0x015b }
        r0 = 2;
        r1.<init>(r3, r0);	 Catch:{ IOException -> 0x016a, all -> 0x015b }
        r0 = 2;
        r0 = new byte[r0];	 Catch:{ IOException -> 0x00a4, all -> 0x015f }
        r1.read(r0);	 Catch:{ IOException -> 0x00a4, all -> 0x015f }
        r1.unread(r0);	 Catch:{ IOException -> 0x00a4, all -> 0x015f }
        r6 = 0;
        r6 = r0[r6];	 Catch:{ IOException -> 0x00a4, all -> 0x015f }
        r7 = 31;
        if (r6 == r7) goto L_0x0091;
    L_0x002c:
        r2 = r1;
    L_0x002d:
        r0 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r0 = new byte[r0];	 Catch:{ IOException -> 0x00a4 }
    L_0x0031:
        r6 = r2.read(r0);	 Catch:{ IOException -> 0x00a4 }
        r7 = -1;
        if (r6 != r7) goto L_0x009f;
    L_0x0038:
        r0 = bgy;	 Catch:{ IOException -> 0x00a4 }
        if (r0 != 0) goto L_0x00a6;
    L_0x003c:
        r0 = new com.loc.B;	 Catch:{ IOException -> 0x00a4 }
        r0.<init>();	 Catch:{ IOException -> 0x00a4 }
        r6 = r4.toByteArray();	 Catch:{ IOException -> 0x00a4 }
        r0.f107a = r6;	 Catch:{ IOException -> 0x00a4 }
        r0.f108b = r5;	 Catch:{ IOException -> 0x00a4 }
        if (r4 != 0) goto L_0x00ac;
    L_0x004b:
        if (r3 != 0) goto L_0x00bb;
    L_0x004d:
        if (r1 != 0) goto L_0x00ca;
    L_0x004f:
        if (r2 != 0) goto L_0x00da;
    L_0x0051:
        if (r10 != 0) goto L_0x00eb;
    L_0x0053:
        return r0;
    L_0x0054:
        r1 = new com.loc.i;	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        r3.<init>();	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        r4 = "网络异常原因：";
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        r4 = r10.getResponseMessage();	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        r4 = " 网络异常状态码：";
        r3 = r3.append(r4);	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        r0 = r3.append(r0);	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        r0 = r0.toString();	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        r1.<init>(r0);	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
        throw r1;	 Catch:{ IOException -> 0x007d, all -> 0x0150 }
    L_0x007d:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        r4 = r2;
    L_0x0081:
        throw r0;	 Catch:{ all -> 0x0082 }
    L_0x0082:
        r0 = move-exception;
        r8 = r1;
        r1 = r2;
        r2 = r8;
    L_0x0086:
        if (r4 != 0) goto L_0x00fc;
    L_0x0088:
        if (r3 != 0) goto L_0x010c;
    L_0x008a:
        if (r2 != 0) goto L_0x011d;
    L_0x008c:
        if (r1 != 0) goto L_0x012e;
    L_0x008e:
        if (r10 != 0) goto L_0x013f;
    L_0x0090:
        throw r0;
    L_0x0091:
        r6 = 1;
        r0 = r0[r6];	 Catch:{ IOException -> 0x00a4, all -> 0x015f }
        r6 = -117; // 0xffffffffffffff8b float:NaN double:NaN;
        if (r0 != r6) goto L_0x002c;
    L_0x0098:
        r0 = new java.util.zip.GZIPInputStream;	 Catch:{ IOException -> 0x00a4, all -> 0x015f }
        r0.<init>(r1);	 Catch:{ IOException -> 0x00a4, all -> 0x015f }
        r2 = r0;
        goto L_0x002d;
    L_0x009f:
        r7 = 0;
        r4.write(r0, r7, r6);	 Catch:{ IOException -> 0x00a4 }
        goto L_0x0031;
    L_0x00a4:
        r0 = move-exception;
        goto L_0x0081;
    L_0x00a6:
        r0 = bgy;	 Catch:{ IOException -> 0x00a4 }
        r0.mo929a();	 Catch:{ IOException -> 0x00a4 }
        goto L_0x003c;
    L_0x00ac:
        r4.close();	 Catch:{ Throwable -> 0x00b0 }
        goto L_0x004b;
    L_0x00b0:
        r4 = move-exception;
        r5 = "HttpUrlUtil";
        r6 = "parseResult";
        com.loc.C1259s.bwd(r4, r5, r6);
        goto L_0x004b;
    L_0x00bb:
        r3.close();	 Catch:{ Throwable -> 0x00bf }
        goto L_0x004d;
    L_0x00bf:
        r3 = move-exception;
        r4 = "HttpUrlUtil";
        r5 = "parseResult";
        com.loc.C1259s.bwd(r3, r4, r5);
        goto L_0x004d;
    L_0x00ca:
        r1.close();	 Catch:{ Throwable -> 0x00ce }
        goto L_0x004f;
    L_0x00ce:
        r1 = move-exception;
        r3 = "HttpUrlUtil";
        r4 = "parseResult";
        com.loc.C1259s.bwd(r1, r3, r4);
        goto L_0x004f;
    L_0x00da:
        r2.close();	 Catch:{ Throwable -> 0x00df }
        goto L_0x0051;
    L_0x00df:
        r1 = move-exception;
        r2 = "HttpUrlUtil";
        r3 = "parseResult";
        com.loc.C1259s.bwd(r1, r2, r3);
        goto L_0x0051;
    L_0x00eb:
        r10.disconnect();	 Catch:{ Throwable -> 0x00f0 }
        goto L_0x0053;
    L_0x00f0:
        r1 = move-exception;
        r2 = "HttpUrlUtil";
        r3 = "parseResult";
        com.loc.C1259s.bwd(r1, r2, r3);
        goto L_0x0053;
    L_0x00fc:
        r4.close();	 Catch:{ Throwable -> 0x0100 }
        goto L_0x0088;
    L_0x0100:
        r4 = move-exception;
        r5 = "HttpUrlUtil";
        r6 = "parseResult";
        com.loc.C1259s.bwd(r4, r5, r6);
        goto L_0x0088;
    L_0x010c:
        r3.close();	 Catch:{ Throwable -> 0x0111 }
        goto L_0x008a;
    L_0x0111:
        r3 = move-exception;
        r4 = "HttpUrlUtil";
        r5 = "parseResult";
        com.loc.C1259s.bwd(r3, r4, r5);
        goto L_0x008a;
    L_0x011d:
        r2.close();	 Catch:{ Throwable -> 0x0122 }
        goto L_0x008c;
    L_0x0122:
        r2 = move-exception;
        r3 = "HttpUrlUtil";
        r4 = "parseResult";
        com.loc.C1259s.bwd(r2, r3, r4);
        goto L_0x008c;
    L_0x012e:
        r1.close();	 Catch:{ Throwable -> 0x0133 }
        goto L_0x008e;
    L_0x0133:
        r1 = move-exception;
        r2 = "HttpUrlUtil";
        r3 = "parseResult";
        com.loc.C1259s.bwd(r1, r2, r3);
        goto L_0x008e;
    L_0x013f:
        r10.disconnect();	 Catch:{ Throwable -> 0x0144 }
        goto L_0x0090;
    L_0x0144:
        r1 = move-exception;
        r2 = "HttpUrlUtil";
        r3 = "parseResult";
        com.loc.C1259s.bwd(r1, r2, r3);
        goto L_0x0090;
    L_0x0150:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        r4 = r2;
        goto L_0x0086;
    L_0x0156:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        goto L_0x0086;
    L_0x015b:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0086;
    L_0x015f:
        r0 = move-exception;
        r8 = r1;
        r1 = r2;
        r2 = r8;
        goto L_0x0086;
    L_0x0165:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
        goto L_0x0081;
    L_0x016a:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0081;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.ba.bAx(java.net.HttpURLConnection):com.loc.B");
    }

    private void bAy(Map map, HttpURLConnection httpURLConnection) {
        if (map != null) {
            for (String str : map.keySet()) {
                httpURLConnection.addRequestProperty(str, (String) map.get(str));
            }
        }
        try {
            httpURLConnection.addRequestProperty("csid", UUID.randomUUID().toString().replaceAll("-", "").toLowerCase());
        } catch (Throwable th) {
            C1259s.bwd(th, "HttpUrlUtil", "addHeaders");
        }
        httpURLConnection.setConnectTimeout(this.f299b);
        httpURLConnection.setReadTimeout(this.f300c);
    }

    static String bAz(Map map) {
        if (map == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (str2 == null) {
                str2 = "";
            }
            if (stringBuilder.length() > 0) {
                stringBuilder.append("&");
            }
            stringBuilder.append(URLEncoder.encode(str));
            stringBuilder.append("=");
            stringBuilder.append(URLEncoder.encode(str2));
        }
        return stringBuilder.toString();
    }

    void m396a(long j) {
        this.f303i = j;
    }

    void bAt(long j) {
        this.f302h = j;
    }

    void bAu(String str, Map map, Map map2, C1250f c1250f) {
        InputStream inputStream = null;
        HttpURLConnection httpURLConnection = null;
        if (c1250f != null) {
            try {
                String bAz = bAz(map2);
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(str);
                if (bAz != null) {
                    stringBuffer.append("?").append(bAz);
                }
                httpURLConnection = bAw(stringBuffer.toString(), map, false);
                httpURLConnection.setRequestProperty("RANGE", "bytes=" + this.f303i + "-");
                httpURLConnection.connect();
                int responseCode = httpURLConnection.getResponseCode();
                if (((responseCode == 206 ? 0 : 1) & (responseCode == 200 ? 0 : 1)) != 0) {
                    c1250f.mo923a(new C1264i("网络异常原因：" + httpURLConnection.getResponseMessage() + " 网络异常状态码：" + responseCode));
                }
                inputStream = httpURLConnection.getInputStream();
                Object obj = new byte[1024];
                while (!Thread.interrupted()) {
                    if (this.bgB) {
                        break;
                    }
                    responseCode = inputStream.read(obj, 0, 1024);
                    if (responseCode <= 0) {
                        break;
                    }
                    if (this.f302h != -1) {
                        if ((this.f303i >= this.f302h ? 1 : null) != null) {
                            break;
                        }
                    }
                    if (responseCode != 1024) {
                        Object obj2 = new byte[responseCode];
                        System.arraycopy(obj, 0, obj2, 0, responseCode);
                        c1250f.bvy(obj2, this.f303i);
                    } else {
                        c1250f.bvy(obj, this.f303i);
                    }
                    this.f303i = ((long) responseCode) + this.f303i;
                }
                if (this.bgB) {
                    c1250f.mo924b();
                } else {
                    c1250f.mo926c();
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable e) {
                        e.printStackTrace();
                        C1259s.bwd(e, "HttpUrlUtil", "makeDownloadGetRequest");
                    } catch (Throwable e2) {
                        e2.printStackTrace();
                        C1259s.bwd(e2, "HttpUrlUtil", "makeDownloadGetRequest");
                    }
                }
                if (httpURLConnection != null) {
                    try {
                        httpURLConnection.disconnect();
                    } catch (Throwable e22) {
                        e22.printStackTrace();
                        C1259s.bwd(e22, "HttpUrlUtil", "makeDownloadGetRequest");
                    }
                }
            } catch (Throwable e222) {
                e222.printStackTrace();
                C1259s.bwd(e222, "HttpUrlUtil", "makeDownloadGetRequest");
            }
        }
    }

    C1229B bAv(String str, Map map, byte[] bArr) {
        try {
            HttpURLConnection bAw = bAw(str, map, true);
            if (bArr != null && bArr.length > 0) {
                DataOutputStream dataOutputStream = new DataOutputStream(bAw.getOutputStream());
                dataOutputStream.write(bArr);
                dataOutputStream.close();
            }
            bAw.connect();
            return bAx(bAw);
        } catch (ConnectException e) {
            e.printStackTrace();
            throw new C1264i("http连接失败 - ConnectionException");
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            throw new C1264i("url异常 - MalformedURLException");
        } catch (UnknownHostException e3) {
            e3.printStackTrace();
            throw new C1264i("未知主机 - UnKnowHostException");
        } catch (SocketException e4) {
            e4.printStackTrace();
            throw new C1264i("socket 连接异常 - SocketException");
        } catch (SocketTimeoutException e5) {
            e5.printStackTrace();
            throw new C1264i("socket 连接超时 - SocketTimeoutException");
        } catch (InterruptedIOException e6) {
            throw new C1264i("未知的错误");
        } catch (IOException e7) {
            e7.printStackTrace();
            throw new C1264i("IO 操作异常 - IOException");
        } catch (Throwable th) {
            C1259s.bwd(th, "HttpUrlUtil", "makePostReqeust");
            C1264i c1264i = new C1264i("未知的错误");
        }
    }

    HttpURLConnection bAw(String str, Map map, boolean z) {
        cn.m518a();
        URL url = new URL(str);
        HttpURLConnection openConnection = this.bgA == null ? (HttpURLConnection) url.openConnection() : url.openConnection(this.bgA);
        if (this.f301d) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) openConnection;
            httpsURLConnection.setSSLSocketFactory(this.bgz.getSocketFactory());
            httpsURLConnection.setHostnameVerifier(this.bgC);
        } else {
            openConnection = openConnection;
        }
        if (VERSION.SDK != null && VERSION.SDK_INT > 13) {
            openConnection.setRequestProperty("Connection", "close");
        }
        bAy(map, openConnection);
        if (z) {
            openConnection.setRequestMethod("POST");
            openConnection.setUseCaches(false);
            openConnection.setDoInput(true);
            openConnection.setDoOutput(true);
        } else {
            openConnection.setRequestMethod("GET");
            openConnection.setDoInput(true);
        }
        return openConnection;
    }
}
