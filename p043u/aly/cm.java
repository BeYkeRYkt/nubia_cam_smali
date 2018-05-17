package p043u.aly;

import android.text.TextUtils;
import com.umeng.analytics.C1296a;
import com.umeng.analytics.ReportPolicy;

public class cm {
    private int f954a = -1;
    private int f955b = -1;
    private int bzl = -1;
    private int f956c = -1;
    private int f957d = -1;
    private int f958e = -1;
    private String f959f = null;
    private int f960g = -1;
    private String f961h = null;
    private int f962j = -1;

    cm() {
    }

    public void bYx(bc bcVar) {
        if (bcVar != null) {
            this.f954a = bYC(bcVar, "defcon");
            this.f955b = bYC(bcVar, "latent");
            this.f956c = bYC(bcVar, "codex");
            this.f957d = bYC(bcVar, "report_policy");
            this.f958e = bYC(bcVar, "report_interval");
            this.f959f = bYD(bcVar, "client_test");
            this.f960g = bYC(bcVar, "test_report_interval");
            this.f961h = bYD(bcVar, "umid");
            this.bzl = bYC(bcVar, "integrated_test");
            this.f962j = bYC(bcVar, "latent_hours");
        }
    }

    public int m1193a(int i) {
        if (this.f954a == -1 || this.f954a > 3 || this.f954a < 0) {
            return i;
        }
        return this.f954a;
    }

    public int bYy(int i) {
        if (this.f955b == -1 || this.f955b < 0 || this.f955b > 1800) {
            return i;
        }
        return this.f955b * 1000;
    }

    public int bYz(int i) {
        if (this.f956c == 0 || this.f956c == 1 || this.f956c == -1) {
            return this.f956c;
        }
        return i;
    }

    public int[] bYA(int i, int i2) {
        if (this.f957d != -1 && ReportPolicy.m606a(this.f957d)) {
            if (this.f958e == -1 || this.f958e < 90 || this.f958e > 86400) {
                this.f958e = 90;
            }
            return new int[]{this.f957d, this.f958e * 1000};
        }
        return new int[]{i, i2};
    }

    public String m1195a(String str) {
        if (this.f959f != null && C1340E.m735a(this.f959f)) {
            return this.f959f;
        }
        return str;
    }

    public int bYB(int i) {
        if (this.f960g != -1 && this.f960g >= 90 && this.f960g <= 86400) {
            return this.f960g * 1000;
        }
        return i;
    }

    public boolean m1196a() {
        return this.f960g != -1;
    }

    public String m1197b(String str) {
        return this.f961h;
    }

    public boolean m1198b() {
        return this.bzl == 1;
    }

    public long m1194a(long j) {
        if (this.f962j == -1 || this.f962j < 48) {
            return j;
        }
        return ((long) this.f962j) * C1296a.f552h;
    }

    private int bYC(bc bcVar, String str) {
        if (bcVar == null || !bcVar.m1011f()) {
            return -1;
        }
        bd bdVar = (bd) bcVar.m1010d().get(str);
        if (bdVar == null || TextUtils.isEmpty(bdVar.m1020c())) {
            return -1;
        }
        try {
            return Integer.parseInt(bdVar.m1020c().trim());
        } catch (Exception e) {
            return -1;
        }
    }

    private String bYD(bc bcVar, String str) {
        if (bcVar == null || !bcVar.m1011f()) {
            return null;
        }
        bd bdVar = (bd) bcVar.m1010d().get(str);
        if (bdVar == null || TextUtils.isEmpty(bdVar.m1020c())) {
            return null;
        }
        return bdVar.m1020c();
    }
}
