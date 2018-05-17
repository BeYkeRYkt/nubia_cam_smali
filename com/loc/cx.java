package com.loc;

public class cx {
    private String f422a;
    private String f423b;
    private String f424c;
    private boolean f425d = true;
    private String f426e = "standard";
    private String[] f427f = null;

    public cx(String str, String str2, String str3) {
        this.f422a = str2;
        this.f424c = str3;
        this.f423b = str;
    }

    public ag m546a() {
        if (this.f427f != null) {
            return new ag();
        }
        throw new C1264i("sdk packages is null");
    }

    public cx bGL(String[] strArr) {
        this.f427f = (String[]) strArr.clone();
        return this;
    }
}
