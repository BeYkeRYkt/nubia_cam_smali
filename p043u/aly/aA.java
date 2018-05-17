package p043u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.C1315h;

public class aA implements C1361Y {
    public int f667a;
    public int f668b;
    private Context bww;
    public long f669c;
    private final int f670d = 3600000;
    private int f671e;
    private long f672f = 0;
    private long f673g = 0;

    public aA(Context context) {
        m814b(context);
    }

    private void m814b(Context context) {
        this.bww = context.getApplicationContext();
        SharedPreferences a = cr.m1203a(context);
        this.f667a = a.getInt("successful_request", 0);
        this.f668b = a.getInt("failed_requests ", 0);
        this.f671e = a.getInt("last_request_spent_ms", 0);
        this.f669c = a.getLong("last_request_time", 0);
        this.f672f = a.getLong("last_req", 0);
    }

    public boolean m819f() {
        boolean z;
        boolean z2;
        if (this.f669c == 0) {
            z = true;
        } else {
            z = false;
        }
        if (C1315h.m670a(this.bww).m686g()) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z) {
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public void m820g() {
        this.f667a++;
        this.f669c = this.f672f;
    }

    public void m821h() {
        this.f668b++;
    }

    public void m822i() {
        this.f672f = System.currentTimeMillis();
    }

    public void m823j() {
        this.f671e = (int) (System.currentTimeMillis() - this.f672f);
    }

    public void m824k() {
        cr.m1203a(this.bww).edit().putInt("successful_request", this.f667a).putInt("failed_requests ", this.f668b).putInt("last_request_spent_ms", this.f671e).putLong("last_request_time", this.f669c).putLong("last_req", this.f672f).commit();
    }

    public void m825l() {
        cr.m1203a(this.bww).edit().putLong("first_activate_time", System.currentTimeMillis()).commit();
    }

    public boolean m826m() {
        if (this.f673g == 0) {
            this.f673g = cr.m1203a(this.bww).getLong("first_activate_time", 0);
        }
        return this.f673g == 0;
    }

    public long m827n() {
        return !m826m() ? this.f673g : System.currentTimeMillis();
    }

    public long bUu() {
        return this.f672f;
    }

    public static ar m813a(Context context) {
        SharedPreferences a = cr.m1203a(context);
        ar arVar = new ar();
        arVar.bYE(a.getInt("failed_requests ", 0));
        arVar.bYG(a.getInt("last_request_spent_ms", 0));
        arVar.m913a(a.getInt("successful_request", 0));
        return arVar;
    }

    public void mo1012a() {
        m822i();
    }

    public void mo1013b() {
        m823j();
    }

    public void mo1014c() {
        m820g();
    }

    public void mo1015d() {
        m821h();
    }
}
