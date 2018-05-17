package com.loc;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

class bT extends DefaultHandler {
    bT() {
    }

    public void characters(char[] cArr, int i, int i2) {
        if (cn.f397b) {
            cn.f396a = new String(cArr, i, i2);
        }
    }

    public void endElement(String str, String str2, String str3) {
        cn.f397b = false;
    }

    public void startElement(String str, String str2, String str3, Attributes attributes) {
        if (str2.equals("string") && "UTDID".equals(attributes.getValue("name"))) {
            cn.f397b = true;
        }
    }
}
