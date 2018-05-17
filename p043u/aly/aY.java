package p043u.aly;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.C1296a;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.URLEncoder;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class aY {
    private String f677a;
    private String f678b = "10.0.0.172";
    private Context bxo;
    private C1361Y bxp;
    private int f679c = 80;

    public aY(Context context) {
        this.bxo = context;
        this.f677a = m849a(context);
    }

    public void bVL(C1361Y c1361y) {
        this.bxp = c1361y;
    }

    public byte[] m851a(byte[] bArr) {
        byte[] bArr2 = null;
        int i = 0;
        while (i < C1296a.f550f.length) {
            bArr2 = bVM(bArr, C1296a.f550f[i]);
            if (bArr2 == null) {
                if (this.bxp != null) {
                    this.bxp.mo1015d();
                }
                i++;
            } else {
                if (this.bxp != null) {
                    this.bxp.mo1014c();
                }
                return bArr2;
            }
        }
        return bArr2;
    }

    private boolean m850a() {
        if (this.bxo.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.bxo.getPackageName()) != 0) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.bxo.getSystemService("connectivity")).getActiveNetworkInfo();
            if (!(activeNetworkInfo == null || activeNetworkInfo.getType() == 1)) {
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (extraInfo != null) {
                    if (extraInfo.equals("cmwap") || extraInfo.equals("3gwap") || extraInfo.equals("uniwap")) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    private byte[] bVM(byte[] bArr, String str) {
        HttpUriRequest httpPost = new HttpPost(str);
        HttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 10000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 30000);
        HttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
        httpPost.addHeader("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
        httpPost.addHeader("X-Umeng-Sdk", this.f677a);
        httpPost.addHeader("Msg-Type", "envelope");
        InputStream content;
        try {
            if (m850a()) {
                defaultHttpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(this.f678b, this.f679c));
            }
            httpPost.setEntity(new InputStreamEntity(new ByteArrayInputStream(bArr), (long) bArr.length));
            if (this.bxp != null) {
                this.bxp.mo1012a();
            }
            HttpResponse execute = defaultHttpClient.execute(httpPost);
            if (this.bxp != null) {
                this.bxp.mo1013b();
            }
            int statusCode = execute.getStatusLine().getStatusCode();
            boolean bVU = bu.bVU(execute.getFirstHeader("Content-Type"), "application/thrift");
            C1350O.m789c(C1296a.f549e, "status code : " + statusCode);
            if (statusCode != 200 || !bVU) {
                return null;
            }
            C1350O.m785a(C1296a.f549e, "Send message to " + str);
            HttpEntity entity = execute.getEntity();
            if (entity == null) {
                return null;
            }
            content = entity.getContent();
            byte[] bVP = bu.bVP(content);
            bu.bVS(content);
            return bVP;
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "ClientProtocolException,Failed to send message.", e);
            return null;
        } catch (Exception e2) {
            C1350O.m788b(C1296a.f549e, "IOException,Failed to send message.", e2);
            return null;
        } catch (Throwable th) {
            bu.bVS(content);
        }
    }

    private String m849a(Context context) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Android");
        stringBuffer.append("/");
        stringBuffer.append(C1296a.f547c);
        stringBuffer.append(" ");
        try {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(C1394e.bQA(context));
            stringBuffer2.append("/");
            stringBuffer2.append(C1394e.m1247d(context));
            stringBuffer2.append(" ");
            stringBuffer2.append(Build.MODEL);
            stringBuffer2.append("/");
            stringBuffer2.append(VERSION.RELEASE);
            stringBuffer2.append(" ");
            stringBuffer2.append(bu.m1124a(AnalyticsConfig.getAppkey(context)));
            stringBuffer.append(URLEncoder.encode(stringBuffer2.toString(), "UTF-8"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stringBuffer.toString();
    }
}
