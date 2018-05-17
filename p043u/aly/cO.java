package p043u.aly;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public abstract class cO {
    private final int f657a = 10;
    private final int f658b = 20;
    private ba bzT;
    private final String f659c;
    private List f660d;

    public abstract String mo1006f();

    public cO(String str) {
        this.f659c = str;
    }

    public boolean m774a() {
        return m771g();
    }

    public String m775b() {
        return this.f659c;
    }

    public boolean m776c() {
        if (this.bzT != null && this.bzT.m995j() > 20) {
            return false;
        }
        return true;
    }

    private boolean m771g() {
        String str = null;
        ba baVar = this.bzT;
        if (baVar != null) {
            str = baVar.m992c();
        }
        int j = baVar != null ? baVar.m995j() : 0;
        String a = m772a(mo1006f());
        if (a == null || a.equals(str)) {
            return false;
        }
        if (baVar == null) {
            baVar = new ba();
        }
        baVar.m990a(a);
        baVar.m989a(System.currentTimeMillis());
        baVar.m988a(j + 1);
        az azVar = new az();
        azVar.m945a(this.f659c);
        azVar.bUc(a);
        azVar.m947b(str);
        azVar.m944a(baVar.m993f());
        if (this.f660d == null) {
            this.f660d = new ArrayList(2);
        }
        this.f660d.add(azVar);
        if (this.f660d.size() > 10) {
            this.f660d.remove(0);
        }
        this.bzT = baVar;
        return true;
    }

    public ba m777d() {
        return this.bzT;
    }

    public List m778e() {
        return this.f660d;
    }

    public void m773a(List list) {
        this.f660d = list;
    }

    public String m772a(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.length() == 0 || "0".equals(trim) || "unknown".equals(trim.toLowerCase(Locale.US))) {
            return null;
        }
        return trim;
    }

    public void bYW(bb bbVar) {
        this.bzT = (ba) bbVar.m1002d().get(this.f659c);
        List<az> j = bbVar.m1003j();
        if (j != null && j.size() > 0) {
            if (this.f660d == null) {
                this.f660d = new ArrayList();
            }
            for (az azVar : j) {
                if (this.f659c.equals(azVar.f780a)) {
                    this.f660d.add(azVar);
                }
            }
        }
    }
}
