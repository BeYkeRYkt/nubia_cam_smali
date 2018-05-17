package com.android.common.ui;

import java.text.DecimalFormatSymbols;
import java.util.Formatter;
import java.util.Locale;

class C0754e implements C0753d {
    final Object[] js = new Object[1];
    final StringBuilder jt = new StringBuilder();
    Formatter ju;
    char jv;

    C0754e() {
        hF(Locale.getDefault());
    }

    private void hF(Locale locale) {
        this.ju = hD(locale);
        this.jv = C0754e.hE(locale);
    }

    public String hC(int i) {
        Locale locale = Locale.getDefault();
        if (this.jv != C0754e.hE(locale)) {
            hF(locale);
        }
        this.js[0] = Integer.valueOf(i);
        this.jt.delete(0, this.jt.length());
        this.ju.format("%02d", this.js);
        return this.ju.toString();
    }

    private static char hE(Locale locale) {
        return new DecimalFormatSymbols(locale).getZeroDigit();
    }

    private Formatter hD(Locale locale) {
        return new Formatter(this.jt, locale);
    }
}
