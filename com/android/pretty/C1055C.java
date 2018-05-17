package com.android.pretty;

final class C1055C implements C1054c {
    final /* synthetic */ C1075e avD;

    C1055C(C1075e c1075e) {
        this.avD = c1075e;
    }

    public void aGs(int i, int i2, boolean z) {
    }

    public void aGr(int i, int i2, boolean z) {
        this.avD.asT.SS().edit().putFloat("pref_bigaperture_pic_bokeh_level", this.avD.asS.aHk(i2)).commit();
        this.avD.asT.SS().edit().putFloat("pref_bigaperture_pre_bokeh_level", this.avD.asS.aHl(i2)).commit();
        this.avD.asT.SS().edit().putFloat("pref_bigaperture_focus_length", this.avD.asS.aHg(i2)).commit();
        this.avD.asT.SZ(8);
    }

    public void aGt() {
    }
}
