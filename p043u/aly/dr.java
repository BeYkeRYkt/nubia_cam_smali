package p043u.aly;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Set;

public class dr {
    private Context f991a;
    private Set bBo = new HashSet();

    public dr(Context context) {
        this.f991a = context;
    }

    public boolean m1240a(String str) {
        return !this.bBo.contains(str);
    }

    public void m1242b(String str) {
        this.bBo.add(str);
    }

    public void m1239a() {
        if (!this.bBo.isEmpty()) {
            StringBuilder stringBuilder = new StringBuilder();
            for (String append : this.bBo) {
                stringBuilder.append(append);
                stringBuilder.append(',');
            }
            stringBuilder.deleteCharAt(stringBuilder.length() - 1);
            cr.m1203a(this.f991a).edit().putString("invld_id", stringBuilder.toString()).commit();
        }
    }

    public void m1241b() {
        Object string = cr.m1203a(this.f991a).getString("invld_id", null);
        if (!TextUtils.isEmpty(string)) {
            String[] split = string.split(",");
            if (split != null) {
                for (CharSequence charSequence : split) {
                    if (!TextUtils.isEmpty(charSequence)) {
                        this.bBo.add(charSequence);
                    }
                }
            }
        }
    }
}
