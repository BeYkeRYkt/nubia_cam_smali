package com.loc;

import com.autonavi.aps.amapapi.model.AmapLoc;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.json.JSONObject;
import org.xml.sax.helpers.DefaultHandler;

public class C1240L {
    private StringBuilder bec = new StringBuilder();

    public AmapLoc m92a(String str) {
        InputStream byteArrayInputStream;
        if (this.bec.length() > 0) {
            this.bec.delete(0, this.bec.length());
        }
        if (!str.contains("SuccessCode")) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.reverse();
            try {
                str = new String(cz.m552b(stringBuilder.toString()), "UTF-8");
            } catch (Throwable e) {
                bx.bBw(e, "parser", "ParserApsResp1");
            }
            stringBuilder.delete(0, stringBuilder.length());
        }
        try {
            byteArrayInputStream = new ByteArrayInputStream(str.getBytes("UTF-8"));
        } catch (Throwable e2) {
            bx.bBw(e2, "parser", "ParserApsResp");
            byteArrayInputStream = null;
        }
        SAXParserFactory newInstance = SAXParserFactory.newInstance();
        DefaultHandler aPVar = new aP();
        try {
            SAXParser newSAXParser = newInstance.newSAXParser();
            if (byteArrayInputStream != null) {
                newSAXParser.parse(byteArrayInputStream, aPVar);
            }
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            aPVar.bgi.bHA("network");
            return aPVar.bgi;
        } catch (Throwable th) {
            if (byteArrayInputStream != null) {
                try {
                    byteArrayInputStream.close();
                } catch (IOException e32) {
                    e32.printStackTrace();
                }
            }
        }
    }

    public AmapLoc m93b(String str) {
        AmapLoc amapLoc = new AmapLoc();
        amapLoc.bHr(7);
        try {
            String string;
            String string2;
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("status")) {
                if (jSONObject.has("info")) {
                    string = jSONObject.getString("status");
                    string2 = jSONObject.getString("info");
                    if (string.equals("1")) {
                        this.bec.append("json is error " + str);
                    }
                    if (string.equals("0")) {
                        this.bec.append("auth fail:" + string2);
                    }
                    amapLoc.bHv(this.bec.toString());
                    return amapLoc;
                }
            }
            this.bec.append("json is error " + str);
            string = jSONObject.getString("status");
            string2 = jSONObject.getString("info");
            if (string.equals("1")) {
                this.bec.append("json is error " + str);
            }
            if (string.equals("0")) {
                this.bec.append("auth fail:" + string2);
            }
        } catch (Throwable th) {
            this.bec.append("json exception error:" + th.getMessage());
            bx.bBw(th, "parser", "paseAuthFailurJson");
        }
        amapLoc.bHv(this.bec.toString());
        return amapLoc;
    }
}
