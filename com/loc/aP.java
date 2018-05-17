package com.loc;

import android.text.TextUtils;
import com.autonavi.aps.amapapi.model.AmapLoc;
import org.json.JSONObject;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

class aP extends DefaultHandler {
    public AmapLoc bgi;
    final /* synthetic */ C1240L bgj;
    private String f175c;

    private aP(C1240L c1240l) {
        this.bgj = c1240l;
        this.bgi = new AmapLoc();
        this.f175c = "";
    }

    public void characters(char[] cArr, int i, int i2) {
        this.f175c = String.valueOf(cArr, i, i2);
    }

    public void endElement(String str, String str2, String str3) {
        if (str2.equals("retype")) {
            this.bgi.bHQ(this.f175c);
        } else if (str2.equals("rdesc")) {
            this.bgi.bHS(this.f175c);
        } else if (str2.equals("adcode")) {
            this.bgi.bHY(this.f175c);
        } else if (str2.equals("citycode")) {
            this.bgi.bHU(this.f175c);
        } else if (str2.equals("radius")) {
            try {
                this.bgi.bHI(Float.parseFloat(this.f175c));
            } catch (Throwable th) {
                bx.bBw(th, "parser", "endElement3");
                this.bgi.bHI(3891.0f);
            }
        } else if (str2.equals("cenx")) {
            try {
                this.bgi.bHC(Double.parseDouble(this.f175c));
            } catch (Throwable th2) {
                bx.bBw(th2, "parser", "endElement2");
                this.bgi.bHC(0.0d);
            }
        } else if (str2.equals("ceny")) {
            try {
                this.bgi.bHF(Double.parseDouble(this.f175c));
            } catch (Throwable th22) {
                bx.bBw(th22, "parser", "endElement1");
                this.bgi.bHF(0.0d);
            }
        } else if (str2.equals("desc")) {
            this.bgi.bHW(this.f175c);
        } else if (str2.equals("country")) {
            this.bgi.bIa(this.f175c);
        } else if (str2.equals("province")) {
            this.bgi.bIc(this.f175c);
        } else if (str2.equals("city")) {
            this.bgi.bIe(this.f175c);
        } else if (str2.equals("district")) {
            this.bgi.bIg(this.f175c);
        } else if (str2.equals("road")) {
            this.bgi.bIi(this.f175c);
        } else if (str2.equals("street")) {
            this.bgi.bIk(this.f175c);
        } else if (str2.equals("number")) {
            this.bgi.bIm(this.f175c);
        } else if (str2.equals("poiname")) {
            this.bgi.bIo(this.f175c);
        } else if (str2.equals("BIZ")) {
            if (this.bgi.bIA() == null) {
                this.bgi.bIB(new JSONObject());
            }
            try {
                this.bgi.bIA().put("BIZ", this.f175c);
            } catch (Throwable th222) {
                bx.bBw(th222, "parser", "endElement");
            }
        } else if (str2.equals("cens")) {
            this.bgi.bIr(this.f175c);
        } else if (str2.equals("pid")) {
            this.bgi.bIt(this.f175c);
        } else if (str2.equals("flr")) {
            this.bgi.bIu(this.f175c);
        } else if (str2.equals("coord")) {
            if (TextUtils.isEmpty(bx.f338f)) {
                bx.f338f = this.f175c;
            }
            this.bgi.bIw(this.f175c);
        } else if (str2.equals("mcell")) {
            this.bgi.bIz(this.f175c);
        } else if (!str2.equals("gkeyloc") && !str2.equals("gkeygeo")) {
            if (str2.equals("apiTime")) {
                this.bgi.bHM(Long.parseLong(this.f175c));
            } else if (str2.equals("aoiname")) {
                this.bgi.bIq(this.f175c);
            }
        }
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        this.f175c = "";
    }
}
