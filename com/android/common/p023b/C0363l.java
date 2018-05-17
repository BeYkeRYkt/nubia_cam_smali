package com.android.common.p023b;

import com.android.common.ActivityBase;
import com.android.common.appService.C0329e;
import com.android.common.ui.aj;

public class C0363l {
    C0352b Jp = null;
    private C0329e Jq = null;
    C0353c Jr = null;
    C0351a Js = null;
    C0359h Jt = null;
    C0354d Ju = null;
    C0361j Jv = null;
    C0367o Jw = null;
    C0355e Jx = null;

    public C0363l(C0329e c0329e) {
        this.Jq = c0329e;
    }

    public void KO(ActivityBase activityBase) {
        KW();
        KU();
        KY();
        KT();
        KV();
        KZ(activityBase);
        La(activityBase);
        KX(activityBase);
    }

    public C0354d KL() {
        return this.Ju;
    }

    public C0351a KM() {
        return this.Js;
    }

    public C0367o KS() {
        return this.Jw;
    }

    public C0353c KN() {
        return this.Jr;
    }

    public C0359h KP() {
        return this.Jt;
    }

    public C0361j KR() {
        return this.Jv;
    }

    private void KW() {
        this.Ju = new C0354d(this.Jq);
    }

    private void KU() {
        this.Js = new C0351a(this.Jq);
    }

    private void KY() {
        this.Jw = new C0367o(this.Jq);
    }

    private void KT() {
        this.Jr = new C0353c(this.Jq);
    }

    private void KV() {
        this.Jt = new C0359h(this.Jq);
    }

    private void KZ(ActivityBase activityBase) {
        this.Jx = new C0355e(activityBase);
    }

    private void La(ActivityBase activityBase) {
        this.Jp = new C0352b(activityBase);
    }

    public aj KQ() {
        return this.Jp;
    }

    private void KX(ActivityBase activityBase) {
        this.Jv = new C0361j(activityBase);
    }
}
