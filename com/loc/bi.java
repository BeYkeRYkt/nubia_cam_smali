package com.loc;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import com.amap.api.location.C0098f;
import com.autonavi.aps.amapapi.model.AmapLoc;
import org.json.JSONObject;

public class bi {
    private String f317b = null;
    private Context bgY = null;
    private bd bgZ = null;
    private ServiceConnection bha = null;
    private ServiceConnection bhb = null;
    private Intent bhc = new Intent();
    private boolean bhd = false;
    private boolean bhe = false;
    an bhf = null;
    private boolean f318d = true;
    private String f319i = "com.autonavi.minimap";
    private String f320j = "com.amap.api.service.AMapService";
    private String f321k = "com.autonavi.minimap.LBSConnectionService";
    private String f322n = "invaid type";
    private String f323o = "empty appkey";
    private String f324p = "refused";
    private String f325q = "failed";

    bi(Context context) {
        this.bgY = context;
        try {
            this.f317b = cz.m549a(ak.bya(C1241M.m101f(context).getBytes("UTF-8"), "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"));
        } catch (Throwable th) {
            bx.bBw(th, "ConnectionServiceManager", "ConnectionServiceManager");
        }
    }

    private AmapLoc bAF(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        byte[] byb;
        String str;
        JSONObject jSONObject;
        AmapLoc amapLoc;
        String string;
        if (bundle.containsKey("key")) {
            try {
                byb = ak.byb(cz.m552b(bundle.getString("key")), "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n");
            } catch (Throwable th) {
                bx.bBw(th, "ConnectionServiceManager", "parseData part");
            }
            if (bundle.containsKey("result")) {
                try {
                    str = new String(ak.m251a(byb, cz.m552b(bundle.getString("result"))), "utf-8");
                    if (str != null) {
                        jSONObject = new JSONObject(str);
                        if (jSONObject.has("error")) {
                            amapLoc = new AmapLoc(jSONObject);
                            amapLoc.bHA("lbs");
                            amapLoc.bHq(7);
                            if ("WGS84".equals(amapLoc.bHN()) && bx.bBs(amapLoc.bHE(), amapLoc.bHB())) {
                                C0098f byg = ap.byg(this.bgY, amapLoc.bHB(), amapLoc.bHE());
                                amapLoc.bHF(byg.getLatitude());
                                amapLoc.bHC(byg.getLongitude());
                            }
                            return amapLoc;
                        }
                        string = jSONObject.getString("error");
                        if (this.f322n.equals(string)) {
                            this.f318d = false;
                        }
                        if (this.f323o.equals(string)) {
                            this.f318d = false;
                        }
                        if (this.f324p.equals(string)) {
                            this.f318d = false;
                        }
                        return this.f325q.equals(string) ? null : null;
                    }
                } catch (Throwable th2) {
                    bx.bBw(th2, bi.class.getName(), "parseData");
                }
            }
            return null;
        }
        byb = null;
        if (bundle.containsKey("result")) {
            str = new String(ak.m251a(byb, cz.m552b(bundle.getString("result"))), "utf-8");
            if (str != null) {
                jSONObject = new JSONObject(str);
                if (jSONObject.has("error")) {
                    string = jSONObject.getString("error");
                    if (this.f322n.equals(string)) {
                        this.f318d = false;
                    }
                    if (this.f323o.equals(string)) {
                        this.f318d = false;
                    }
                    if (this.f324p.equals(string)) {
                        this.f318d = false;
                    }
                    if (this.f325q.equals(string)) {
                    }
                }
                amapLoc = new AmapLoc(jSONObject);
                amapLoc.bHA("lbs");
                amapLoc.bHq(7);
                C0098f byg2 = ap.byg(this.bgY, amapLoc.bHB(), amapLoc.bHE());
                amapLoc.bHF(byg2.getLatitude());
                amapLoc.bHC(byg2.getLongitude());
                return amapLoc;
            }
        }
        return null;
    }

    public void m412a() {
        m414c();
        this.bgY = null;
        this.bgZ = null;
        this.bha = null;
        this.bhb = null;
        if (this.bhf != null) {
            this.bhf.mo955a(-1);
        }
        this.f318d = true;
        this.bhd = false;
        this.bhe = false;
    }

    boolean m413b() {
        boolean z = true;
        try {
            if (bQ.m346m()) {
                this.bhc.putExtra("appkey", this.f317b);
                this.bhc.setComponent(new ComponentName(this.f319i, this.f320j));
                this.bhd = this.bgY.bindService(this.bhc, this.bha, 1);
            }
            if (bQ.m347n()) {
                Intent intent = new Intent();
                intent.putExtra("appkey", this.f317b);
                intent.setComponent(new ComponentName(this.f319i, this.f321k));
                this.bhe = this.bgY.bindService(intent, this.bhb, 1);
            }
            if (this.bhd) {
                if (!this.bhe) {
                }
                return z;
            }
            z = false;
            return z;
        } catch (Throwable th) {
            return false;
        }
    }

    public void bAE(an anVar) {
        try {
            this.bhf = anVar;
            if (this.bha == null) {
                this.bha = new cF(this, anVar);
            }
            if (this.bhb == null) {
                this.bhb = new ck(this);
            }
        } catch (Throwable th) {
            bx.bBw(th, "ConnectionServiceManager", "init");
        }
    }

    void m414c() {
        try {
            if (this.bhd) {
                this.bgY.unbindService(this.bha);
            }
            if (this.bhe) {
                this.bgY.unbindService(this.bhb);
            }
        } catch (Throwable e) {
            bx.bBw(e, "ConnectionServiceManager", "unbindService");
        } catch (Throwable e2) {
            bx.bBw(e2, "ConnectionServiceManager", "unbindService");
        }
        this.bgZ = null;
    }

    AmapLoc m415d() {
        try {
            if (!this.f318d || !this.bhd) {
                return null;
            }
            Bundle bundle = new Bundle();
            bundle.putString("type", "corse");
            bundle.putString("appkey", this.f317b);
            this.bgZ.bAB(bundle);
            if (bundle.size() >= 1) {
                return bAF(bundle);
            }
            return null;
        } catch (Throwable e) {
            bx.bBw(e, "ConnectionServiceManager", "sendCommand");
        } catch (Throwable e2) {
            bx.bBw(e2, "ConnectionServiceManager", "sendCommand");
        }
    }
}
