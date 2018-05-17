package com.umeng.analytics.social;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.Log;
import com.umeng.analytics.C1296a;
import org.json.JSONObject;

public abstract class UMSocialService {

    class C1327a extends AsyncTask {
        String f615a;
        String f616b;
        C1328b f617c;
        UMPlatformData[] f618d;

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return m691a((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            m692a((C1332d) obj);
        }

        public C1327a(String[] strArr, C1328b c1328b, UMPlatformData[] uMPlatformDataArr) {
            this.f615a = strArr[0];
            this.f616b = strArr[1];
            this.f617c = c1328b;
            this.f618d = uMPlatformDataArr;
        }

        protected void onPreExecute() {
            if (this.f617c != null) {
                this.f617c.m693a();
            }
        }

        protected C1332d m691a(Void... voidArr) {
            String a;
            if (TextUtils.isEmpty(this.f616b)) {
                a = C1331c.m708a(this.f615a);
            } else {
                a = C1331c.m709a(this.f615a, this.f616b);
            }
            try {
                JSONObject jSONObject = new JSONObject(a);
                int optInt = jSONObject.optInt("st");
                if (optInt == 0) {
                    optInt = C1333e.f645t;
                }
                C1332d c1332d = new C1332d(optInt);
                a = jSONObject.optString("msg");
                if (!TextUtils.isEmpty(a)) {
                    c1332d.m712a(a);
                }
                Object optString = jSONObject.optString("data");
                if (!TextUtils.isEmpty(optString)) {
                    c1332d.m714b(optString);
                }
                return c1332d;
            } catch (Exception e) {
                return new C1332d(-99, e);
            }
        }

        protected void m692a(C1332d c1332d) {
            if (this.f617c != null) {
                this.f617c.m694a(c1332d, this.f618d);
            }
        }
    }

    public interface C1328b {
        void m693a();

        void m694a(C1332d c1332d, UMPlatformData... uMPlatformDataArr);
    }

    private static void m695a(Context context, C1328b c1328b, String str, UMPlatformData... uMPlatformDataArr) {
        int i = 0;
        if (uMPlatformDataArr != null) {
            int length = uMPlatformDataArr.length;
            while (i < length) {
                if (uMPlatformDataArr[i].isValid()) {
                    i++;
                } else {
                    throw new C1329a("parameter is not valid.");
                }
            }
        }
        try {
            new C1327a(C1334f.m721a(context, str, uMPlatformDataArr), c1328b, uMPlatformDataArr).execute(new Void[0]);
        } catch (Throwable e) {
            Log.e(C1296a.f549e, "unable send event.", e);
        } catch (Throwable e2) {
            Log.e(C1296a.f549e, "", e2);
        }
    }

    public static void share(Context context, String str, UMPlatformData... uMPlatformDataArr) {
        m695a(context, null, str, uMPlatformDataArr);
    }

    public static void share(Context context, UMPlatformData... uMPlatformDataArr) {
        m695a(context, null, null, uMPlatformDataArr);
    }
}
