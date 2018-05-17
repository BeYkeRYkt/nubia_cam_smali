package com.android.common.custom;

import com.p010a.C0090a;

public class C0421M {
    private static C0421M ap = new C0421M();
    private C0405a ao = null;

    public static C0421M dC() {
        return ap;
    }

    public C0405a dD() {
        return this.ao;
    }

    private void dE() {
        if (this.ao == null) {
            String productName = ProductInfo.getProductName();
            C0090a.bvo("CameraConfigManger", "product: " + productName);
            if (productName.indexOf("NX503") == 0) {
                this.ao = new C0440u();
            } else if (productName.equals("NX601J")) {
                this.ao = new C0411D();
            } else if (productName.equals("NX504J")) {
                this.ao = new C0438s();
            } else if (productName.equals("NX505J")) {
                this.ao = new C0416H();
            } else if (productName.equals("NX507J") || productName.equals("NX507H")) {
                this.ao = new C0434o();
            } else if (productName.equals("NX506J")) {
                this.ao = new C0429h();
            } else if (productName.equals("NE501J") || productName.equals("X9180") || productName.equals("N9180") || productName.equals("U9180") || productName.equals("V9160") || productName.equals("V9180")) {
                this.ao = new C0423b();
            } else if (productName.equals("NX403A")) {
                this.ao = new C0432l();
            } else if (productName.equals("NX40X") || productName.equals("NX402") || productName.equals("NX401")) {
                this.ao = new C0431j();
            } else if (productName.equals("NX50X")) {
                this.ao = new C0420L();
            } else if (productName.equals("N918St") || productName.equals("N958St") || productName.equals("N918X") || productName.equals("N958X")) {
                this.ao = new C0412E();
            } else if (productName.equals("NX406E")) {
                this.ao = new C0407A();
            } else if (productName.equals("NX511J") || productName.equals("NX521J") || productName.equals("NX512J")) {
                this.ao = new C0415G();
            } else if (productName.equals("NX511J_V3") || productName.equals("NX519J")) {
                this.ao = new C0443x();
            } else if (productName.equals("NX510J") || productName.equals("NX509J")) {
                this.ao = new C0414m();
            } else if (productName.equals("NX518J")) {
                this.ao = new C0439t();
            } else if (productName.equals("NX513J") || productName.equals("NX513H")) {
                this.ao = new C0435p();
            } else if (productName.equals("NX508J") || productName.equals("NX517J") || productName.equals("NX508H")) {
                this.ao = new C0419K();
            } else if (productName.equals("zx55q05_64")) {
                this.ao = new C0430i();
            } else if (productName.equals("N940Sc")) {
                this.ao = new C0437r();
            } else if (productName.equals("NX529J") || productName.equals("NX529H")) {
                this.ao = new C0436q();
            } else if (productName.indexOf("NX527") == 0) {
                this.ao = new C0413F();
            } else if (productName.indexOf("NX531") == 0) {
                this.ao = new C0428g();
            } else if (productName.indexOf("NX523") == 0) {
                this.ao = new C0441v();
            } else if (productName.indexOf("NX543") == 0) {
                this.ao = new C0444y();
            } else if (productName.indexOf("NX549") == 0) {
                this.ao = new C0409k();
            } else if (productName.indexOf("NX551") == 0) {
                this.ao = new C0427e();
            } else if (productName.indexOf("NX569") == 0) {
                this.ao = new C0418J();
            } else if (productName.indexOf("NX541") == 0 || productName.equals("NX535J")) {
                this.ao = new C0424f();
            } else if (productName.indexOf("NX573") == 0 || productName.indexOf("NX575") == 0) {
                this.ao = new C0425c();
            } else if (productName.indexOf("NX563") == 0) {
                this.ao = new C0442w();
            } else if (productName.equals("NX607")) {
                this.ao = new C0410C();
            } else if (productName.equals("NX907")) {
                this.ao = new C0433n();
            } else if (productName.indexOf("NX907J_N") == 0) {
                this.ao = new C0422N();
            } else if (productName.indexOf("NX591") == 0) {
                this.ao = new C0426d();
            } else {
                this.ao = new C0406z();
            }
        }
    }

    private C0421M() {
        dE();
    }
}
