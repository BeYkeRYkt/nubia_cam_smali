package com.umeng.analytics.social;

import android.text.TextUtils;
import com.umeng.analytics.C1296a;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import java.util.zip.InflaterInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public abstract class C1331c {
    protected static String m708a(String str) {
        int nextInt = new Random().nextInt(1000);
        try {
            String property = System.getProperty("line.separator");
            if (str.length() > 1) {
                HttpUriRequest httpGet = new HttpGet(str);
                C1330b.m697a(C1296a.f549e, nextInt + ": GET_URL: " + str);
                HttpParams basicHttpParams = new BasicHttpParams();
                HttpConnectionParams.setConnectionTimeout(basicHttpParams, 10000);
                HttpConnectionParams.setSoTimeout(basicHttpParams, 20000);
                HttpResponse execute = new DefaultHttpClient(basicHttpParams).execute(httpGet);
                if (execute.getStatusLine().getStatusCode() != 200) {
                    C1330b.m697a(C1296a.f549e, nextInt + ":\tFailed to get message." + str);
                } else {
                    HttpEntity entity = execute.getEntity();
                    if (entity != null) {
                        InputStream gZIPInputStream;
                        InputStream content = entity.getContent();
                        Header firstHeader = execute.getFirstHeader("Content-Encoding");
                        if (firstHeader != null && firstHeader.getValue().equalsIgnoreCase("gzip")) {
                            C1330b.m697a(C1296a.f549e, nextInt + "  Use GZIPInputStream get data....");
                            gZIPInputStream = new GZIPInputStream(content);
                        } else {
                            if (firstHeader != null) {
                                if (firstHeader.getValue().equalsIgnoreCase("deflate")) {
                                    C1330b.m697a(C1296a.f549e, nextInt + "  Use InflaterInputStream get data....");
                                    gZIPInputStream = new InflaterInputStream(content);
                                }
                            }
                            gZIPInputStream = content;
                        }
                        String a = C1331c.m707a(gZIPInputStream);
                        C1330b.m697a(C1296a.f549e, nextInt + ":\tresponse: " + property + a);
                        if (a != null) {
                            return a;
                        }
                        return null;
                    }
                }
                return null;
            }
            C1330b.m699b(C1296a.f549e, nextInt + ":\tInvalid baseUrl.");
            return null;
        } catch (Exception e) {
            C1330b.m702c(C1296a.f549e, nextInt + ":\tClientProtocolException,Failed to send message." + str, e);
            return null;
        } catch (Exception e2) {
            C1330b.m702c(C1296a.f549e, nextInt + ":\tIOException,Failed to send message." + str, e2);
            return null;
        }
    }

    private static String m707a(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 8192);
        StringBuilder stringBuilder = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                break;
            }
            try {
                stringBuilder.append(readLine + "\n");
            } catch (Exception e) {
                stringBuilder = C1296a.f549e;
                C1330b.m700b(stringBuilder, "Caught IOException in convertStreamToString()", e);
                return null;
            } finally {
                try {
                    inputStream.close();
                } catch (Exception e2) {
                    C1330b.m700b(C1296a.f549e, "Caught IOException in convertStreamToString()", e2);
                    return null;
                }
            }
        }
        return stringBuilder.toString();
    }

    protected static String m709a(String str, String str2) {
        int nextInt = new Random().nextInt(1000);
        String property = System.getProperty("line.separator");
        HttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 10000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 20000);
        HttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
        C1330b.m697a(C1296a.f549e, nextInt + ": POST_URL: " + str);
        try {
            Object httpPost = new HttpPost(str);
            if (!TextUtils.isEmpty(str2)) {
                C1330b.m697a(C1296a.f549e, nextInt + ": POST_BODY: " + str2);
                List arrayList = new ArrayList(1);
                arrayList.add(new BasicNameValuePair("data", str2));
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
            }
            HttpResponse execute = defaultHttpClient.execute(httpPost);
            if (execute.getStatusLine().getStatusCode() != 200) {
                C1330b.m701c(C1296a.f549e, nextInt + ":\tFailed to send message." + str);
                return null;
            }
            HttpEntity entity = execute.getEntity();
            if (entity == null) {
                return null;
            }
            InputStream content = entity.getContent();
            Header firstHeader = execute.getFirstHeader("Content-Encoding");
            if (firstHeader != null && firstHeader.getValue().equalsIgnoreCase("deflate")) {
                content = new InflaterInputStream(content);
            }
            String a = C1331c.m707a(content);
            C1330b.m697a(C1296a.f549e, nextInt + ":\tresponse: " + property + a);
            if (a != null) {
                return a;
            }
            return null;
        } catch (Exception e) {
            C1330b.m702c(C1296a.f549e, nextInt + ":\tClientProtocolException,Failed to send message." + str, e);
            return null;
        } catch (Exception e2) {
            C1330b.m702c(C1296a.f549e, nextInt + ":\tIOException,Failed to send message." + str, e2);
            return null;
        }
    }
}
