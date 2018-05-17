package com.umeng.analytics.social;

public class C1332d {
    private int f622a = -1;
    private String f623b = "";
    private String f624c = "";
    private Exception f625d = null;

    public C1332d(int i) {
        this.f622a = i;
    }

    public C1332d(int i, Exception exception) {
        this.f622a = i;
        this.f625d = exception;
    }

    public Exception m710a() {
        return this.f625d;
    }

    public int m713b() {
        return this.f622a;
    }

    public void m711a(int i) {
        this.f622a = i;
    }

    public String m715c() {
        return this.f623b;
    }

    public void m712a(String str) {
        this.f623b = str;
    }

    public String m716d() {
        return this.f624c;
    }

    public void m714b(String str) {
        this.f624c = str;
    }

    public String toString() {
        return "status=" + this.f622a + "\r\n" + "msg:  " + this.f623b + "\r\n" + "data:  " + this.f624c;
    }
}
