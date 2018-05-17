package com.umeng.analytics;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import p043u.aly.C1308o;
import p043u.aly.C1350O;
import p043u.aly.aL;
import p043u.aly.ag;
import p043u.aly.cT;
import p043u.aly.cr;
import p043u.aly.dF;
import p043u.aly.db;
import p043u.aly.dg;

public class C1309d implements C1308o {
    private Context f579a = null;
    private C1298c f580b;
    private dF f581c = new dF();
    private aL f582d = new aL();
    private dg f583e = new dg();
    private cT f584f;
    private db f585g;
    private boolean f586h = false;

    class C13078 extends C1299g {
        final /* synthetic */ C1309d f578a;

        C13078(C1309d c1309d) {
            this.f578a = c1309d;
        }

        public void mo962a() {
            String[] a = C1310e.m655a(this.f578a.f579a);
            if (a != null && !TextUtils.isEmpty(a[0]) && !TextUtils.isEmpty(a[1])) {
                boolean e = this.f578a.m632a().m1233e(this.f578a.f579a);
                db.m1220a(this.f578a.f579a).mo1011c();
                if (e) {
                    this.f578a.m632a().m1234f(this.f578a.f579a);
                }
                C1310e.m656b(this.f578a.f579a);
            }
        }
    }

    C1309d() {
        this.f581c.cbK(this);
    }

    private void m629e(Context context) {
        if (!this.f586h) {
            this.f579a = context.getApplicationContext();
            this.f584f = new cT(this.f579a);
            this.f585g = db.m1220a(this.f579a);
            this.f586h = true;
        }
    }

    void m643a(String str) {
        if (!AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
            try {
                this.f582d.m839a(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    void m649b(String str) {
        if (!AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
            try {
                this.f582d.m840b(str);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void m642a(C1298c c1298c) {
        this.f580b = c1298c;
    }

    public void m633a(int i) {
        AnalyticsConfig.mVerticalType = i;
    }

    public void m644a(String str, String str2) {
        AnalyticsConfig.mWrapperType = str;
        AnalyticsConfig.mWrapperVersion = str2;
    }

    void m634a(final Context context) {
        if (context != null) {
            if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
                this.f582d.m839a(context.getClass().getName());
            }
            try {
                if (!this.f586h) {
                    m629e(context);
                }
                C1311f.m658a(new C1299g(this) {
                    final /* synthetic */ C1309d f559b;

                    public void mo962a() {
                        this.f559b.m630f(context.getApplicationContext());
                    }
                });
            } catch (Exception e) {
                C1350O.m788b(C1296a.f549e, "Exception occurred in Mobclick.onResume(). ", e);
            }
            return;
        }
        C1350O.m787b(C1296a.f549e, "unexpected null context in onResume");
    }

    void m647b(final Context context) {
        if (context != null) {
            if (AnalyticsConfig.ACTIVITY_DURATION_OPEN) {
                this.f582d.m840b(context.getClass().getName());
            }
            try {
                if (!this.f586h) {
                    m629e(context);
                }
                C1311f.m658a(new C1299g(this) {
                    final /* synthetic */ C1309d f561b;

                    public void mo962a() {
                        this.f561b.m631g(context.getApplicationContext());
                    }
                });
            } catch (Exception e) {
                C1350O.m788b(C1296a.f549e, "Exception occurred in Mobclick.onRause(). ", e);
            }
            return;
        }
        C1350O.m787b(C1296a.f549e, "unexpected null context in onPause");
    }

    public dg m632a() {
        return this.f583e;
    }

    public void m638a(Context context, String str, HashMap hashMap) {
        try {
            if (!this.f586h) {
                m629e(context);
            }
            this.f584f.bZb(str, hashMap);
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "", e);
        }
    }

    void m635a(Context context, String str) {
        if (!TextUtils.isEmpty(str)) {
            if (context != null) {
                try {
                    if (!this.f586h) {
                        m629e(context);
                    }
                    this.f585g.bRA(new ag(str).m868a(false));
                } catch (Exception e) {
                    C1350O.m788b(C1296a.f549e, "", e);
                }
                return;
            }
            C1350O.m787b(C1296a.f549e, "unexpected null context in reportError");
        }
    }

    void m641a(Context context, Throwable th) {
        if (context != null && th != null) {
            try {
                if (!this.f586h) {
                    m629e(context);
                }
                this.f585g.bRA(new ag(th).m868a(false));
            } catch (Exception e) {
                C1350O.m788b(C1296a.f549e, "", e);
            }
        }
    }

    private void m630f(Context context) {
        this.f583e.m1231c(context);
        if (this.f580b != null) {
            this.f580b.m613a();
        }
    }

    private void m631g(Context context) {
        this.f583e.m1232d(context);
        this.f582d.m838a(context);
        if (this.f580b != null) {
            this.f580b.m614b();
        }
        this.f585g.mo1008b();
    }

    void m651c(Context context) {
        try {
            if (!this.f586h) {
                m629e(context);
            }
            this.f585g.mo1007a();
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "", e);
        }
    }

    public void m637a(Context context, String str, String str2, long j, int i) {
        try {
            if (!this.f586h) {
                m629e(context);
            }
            this.f584f.bZa(str, str2, j, i);
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "", e);
        }
    }

    void m640a(Context context, String str, Map map, long j) {
        try {
            if (!this.f586h) {
                m629e(context);
            }
            this.f584f.bYZ(str, map, j);
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "", e);
        }
    }

    void m636a(Context context, final String str, final String str2) {
        try {
            if (!this.f586h) {
                m629e(context);
            }
            C1311f.m658a(new C1299g(this) {
                final /* synthetic */ C1309d f564c;

                public void mo962a() {
                    this.f564c.f584f.m1161a(str, str2);
                }
            });
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "", e);
        }
    }

    void m648b(Context context, final String str, final String str2) {
        try {
            C1311f.m658a(new C1299g(this) {
                final /* synthetic */ C1309d f567c;

                public void mo962a() {
                    this.f567c.f584f.m1162b(str, str2);
                }
            });
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "", e);
        }
    }

    void m639a(Context context, final String str, final HashMap hashMap, final String str2) {
        try {
            if (!this.f586h) {
                m629e(context);
            }
            C1311f.m658a(new C1299g(this) {
                final /* synthetic */ C1309d f571d;

                public void mo962a() {
                    this.f571d.f584f.bZc(str, hashMap, str2);
                }
            });
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "", e);
        }
    }

    void m652c(Context context, final String str, final String str2) {
        try {
            C1311f.m658a(new C1299g(this) {
                final /* synthetic */ C1309d f574c;

                public void mo962a() {
                    this.f574c.f584f.m1163c(str, str2);
                }
            });
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "", e);
        }
    }

    void m653d(Context context) {
        try {
            this.f582d.m837a();
            m631g(context);
            cr.m1203a(context).edit().commit();
            C1311f.m657a();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void mo963a(Throwable th) {
        try {
            this.f582d.m837a();
            if (this.f579a != null) {
                if (th != null) {
                    if (this.f585g != null) {
                        this.f585g.bRz(new ag(th));
                    }
                }
                m631g(this.f579a);
                cr.m1203a(this.f579a).edit().commit();
            }
            C1311f.m657a();
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, "Exception in onAppCrash", e);
        }
    }

    void m650b(final String str, final String str2) {
        try {
            C1311f.m658a(new C1299g(this) {
                final /* synthetic */ C1309d f577c;

                public void mo962a() {
                    String[] a = C1310e.m655a(this.f577c.f579a);
                    if (a == null || !str.equals(a[0]) || !str2.equals(a[1])) {
                        boolean e = this.f577c.m632a().m1233e(this.f577c.f579a);
                        db.m1220a(this.f577c.f579a).mo1011c();
                        if (e) {
                            this.f577c.m632a().m1234f(this.f577c.f579a);
                        }
                        C1310e.m654a(this.f577c.f579a, str, str2);
                    }
                }
            });
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, " Excepthon  in  onProfileSignIn", e);
        }
    }

    void m646b() {
        try {
            C1311f.m658a(new C13078(this));
        } catch (Exception e) {
            C1350O.m788b(C1296a.f549e, " Excepthon  in  onProfileSignOff", e);
        }
    }
}
