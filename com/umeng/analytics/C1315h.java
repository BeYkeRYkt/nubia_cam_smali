package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Locale;
import p043u.aly.C1350O;
import p043u.aly.C1394e;
import p043u.aly.bu;
import p043u.aly.cr;

public final class C1315h {
    private static C1315h f596a = null;
    private static Context f597b = null;
    private static String f598c = null;
    private static long f599e = 1209600000;
    private static long f600f = 2097152;
    private static final String f601g = "mobclick_agent_user_";
    private static final String f602h = "mobclick_agent_online_setting_";
    private static final String f603i = "mobclick_agent_header_";
    private static final String f604j = "mobclick_agent_update_";
    private static final String f605k = "mobclick_agent_state_";
    private static final String f606l = "mobclick_agent_cached_";
    private C1313a f607d;

    public class C1313a {
        private final int f593a;
        private File f594b;
        private FilenameFilter f595c;

        class C13121 implements FilenameFilter {
            final /* synthetic */ C1313a f592a;

            C13121(C1313a c1313a) {
                this.f592a = c1313a;
            }

            public boolean accept(File file, String str) {
                return str.startsWith("um");
            }
        }

        public C1313a(Context context) {
            this(context, ".um");
        }

        public C1313a(Context context, String str) {
            this.f593a = 10;
            this.f595c = new C13121(this);
            this.f594b = new File(context.getFilesDir(), str);
            if (!this.f594b.exists() || !this.f594b.isDirectory()) {
                this.f594b.mkdir();
            }
        }

        public boolean m664a() {
            File[] listFiles = this.f594b.listFiles();
            if (listFiles != null && listFiles.length > 0) {
                return true;
            }
            return false;
        }

        public void m662a(C1314b c1314b) {
            File[] listFiles = this.f594b.listFiles(this.f595c);
            if (listFiles != null && listFiles.length > 0) {
                c1314b.mo965a(this.f594b);
                int length = listFiles.length;
                for (int i = 0; i < length; i++) {
                    try {
                        if (c1314b.mo966b(listFiles[i])) {
                            listFiles[i].delete();
                        }
                    } catch (Throwable th) {
                        listFiles[i].delete();
                    }
                }
                c1314b.mo967c(this.f594b);
            }
        }

        public void m663a(byte[] bArr) {
            int i = 0;
            if (bArr != null && bArr.length != 0) {
                try {
                    bu.bVQ(new File(this.f594b, String.format(Locale.US, "um_cache_%d.env", new Object[]{Long.valueOf(System.currentTimeMillis())})), bArr);
                } catch (Exception e) {
                }
                File[] listFiles = this.f594b.listFiles(this.f595c);
                if (listFiles != null && listFiles.length >= 10) {
                    Arrays.sort(listFiles);
                    int length = listFiles.length - 10;
                    while (i < length) {
                        listFiles[i].delete();
                        i++;
                    }
                }
            }
        }

        public void m665b() {
            File[] listFiles = this.f594b.listFiles(this.f595c);
            if (listFiles != null && listFiles.length > 0) {
                for (File delete : listFiles) {
                    delete.delete();
                }
            }
        }

        public int m666c() {
            File[] listFiles = this.f594b.listFiles(this.f595c);
            if (listFiles != null && listFiles.length > 0) {
                return listFiles.length;
            }
            return 0;
        }
    }

    public interface C1314b {
        void mo965a(File file);

        boolean mo966b(File file);

        void mo967c(File file);
    }

    public C1315h(Context context) {
        this.f607d = new C1313a(context);
        f597b = context.getApplicationContext();
        f598c = context.getPackageName();
    }

    public static synchronized C1315h m670a(Context context) {
        C1315h c1315h;
        synchronized (C1315h.class) {
            if (f596a == null) {
                f596a = new C1315h(context);
            }
            c1315h = f596a;
        }
        return c1315h;
    }

    private static boolean m671a(File file) {
        long length = file.length();
        if (file.exists()) {
            boolean z;
            if (length <= f600f) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                return true;
            }
        }
        return false;
    }

    public void m676a(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            Editor edit = m672l().edit();
            edit.putString("au_p", str);
            edit.putString("au_u", str2);
            edit.commit();
        }
    }

    public String[] m678a() {
        SharedPreferences l = m672l();
        String string = l.getString("au_p", null);
        String string2 = l.getString("au_u", null);
        if (string == null || string2 == null) {
            return null;
        }
        return new String[]{string, string2};
    }

    public void m679b() {
        m672l().edit().remove("au_p").remove("au_u").commit();
    }

    public String m682c() {
        SharedPreferences a = cr.m1203a(f597b);
        if (a == null) {
            return null;
        }
        return a.getString("appkey", null);
    }

    public void m675a(String str) {
        SharedPreferences a = cr.m1203a(f597b);
        if (a != null) {
            a.edit().putString("appkey", str).commit();
        }
    }

    public String m683d() {
        SharedPreferences a = cr.m1203a(f597b);
        if (a == null) {
            return null;
        }
        return a.getString("channel", null);
    }

    public void m680b(String str) {
        SharedPreferences a = cr.m1203a(f597b);
        if (a != null) {
            a.edit().putString("channel", str).commit();
        }
    }

    public byte[] m684e() {
        InputStream openFileInput;
        Exception e;
        Throwable th;
        String n = m674n();
        File file = new File(f597b.getFilesDir(), n);
        if (C1315h.m671a(file)) {
            file.delete();
            return null;
        } else if (!file.exists()) {
            return null;
        } else {
            try {
                openFileInput = f597b.openFileInput(n);
                try {
                    byte[] bVP = bu.bVP(openFileInput);
                    bu.bVS(openFileInput);
                    return bVP;
                } catch (Exception e2) {
                    e = e2;
                    try {
                        e.printStackTrace();
                        bu.bVS(openFileInput);
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        bu.bVS(openFileInput);
                        throw th;
                    }
                }
            } catch (Exception e3) {
                e = e3;
                openFileInput = null;
                e.printStackTrace();
                bu.bVS(openFileInput);
                return null;
            } catch (Throwable th3) {
                th = th3;
                openFileInput = null;
                bu.bVS(openFileInput);
                throw th;
            }
        }
    }

    public void m677a(byte[] bArr) {
        try {
            bu.bVQ(new File(f597b.getFilesDir(), m674n()), bArr);
        } catch (Exception e) {
            C1350O.m787b(C1296a.f549e, e.getMessage());
        }
    }

    public void m685f() {
        f597b.deleteFile(m673m());
        f597b.deleteFile(m674n());
    }

    public void m681b(byte[] bArr) {
        this.f607d.m663a(bArr);
    }

    public boolean m686g() {
        return this.f607d.m664a();
    }

    public C1313a m687h() {
        return this.f607d;
    }

    private SharedPreferences m672l() {
        return f597b.getSharedPreferences(f601g + f598c, 0);
    }

    public SharedPreferences m688i() {
        return f597b.getSharedPreferences(f603i + f598c, 0);
    }

    public SharedPreferences m689j() {
        return f597b.getSharedPreferences(f604j + f598c, 0);
    }

    public SharedPreferences m690k() {
        return f597b.getSharedPreferences(f605k + f598c, 0);
    }

    private String m673m() {
        return f603i + f598c;
    }

    private String m674n() {
        return f606l + f598c + C1394e.m1246c(f597b);
    }
}
