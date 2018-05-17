package com.amap.api.location;

public class C0098f {
    private double f30a;
    private double f31b;

    public C0098f(double d, double d2) {
        double d3 = 180.0d;
        double d4 = 90.0d;
        double d5 = -180.0d;
        double d6 = -90.0d;
        if (d2 <= 180.0d) {
            d3 = d2;
        }
        if (d3 >= -180.0d) {
            d5 = d3;
        }
        if (d <= 90.0d) {
            d4 = d;
        }
        if (d4 >= -90.0d) {
            d6 = d4;
        }
        this.f30a = d5;
        this.f31b = d6;
    }

    public double getLatitude() {
        return this.f31b;
    }

    public double getLongitude() {
        return this.f30a;
    }
}
