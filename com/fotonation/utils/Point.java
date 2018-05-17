package com.fotonation.utils;

import java.io.Serializable;

public class Point implements Serializable {
    protected int f103x;
    protected int f104y;

    public Point() {
        this.f103x = 0;
        this.f104y = 0;
    }

    public Point(Point point) {
        this.f103x = point.f103x;
        this.f104y = point.f104y;
    }

    public Point(int i, int i2) {
        this.f103x = i;
        this.f104y = i2;
    }

    public Point(Size size) {
        this.f103x = size.Width;
        this.f104y = size.Height;
    }

    public Point(String str) {
        this.f103x = 0;
        this.f104y = 0;
        if (str != null) {
            int indexOf = str.indexOf(44);
            if (indexOf != -1) {
                this.f103x = Integer.parseInt(str.substring(0, indexOf));
                this.f104y = Integer.parseInt(str.substring(indexOf + 1));
            }
        }
    }

    public Size AsSize() {
        return new Size(this.f103x, this.f104y);
    }

    public int m75X() {
        return this.f103x;
    }

    public void SetX(int i) {
        this.f103x = i;
    }

    public int m76Y() {
        return this.f104y;
    }

    public void SetY(int i) {
        this.f104y = i;
    }

    public double GetDistance(Point point) {
        int i = point.f103x - this.f103x;
        int i2 = point.f104y - this.f104y;
        return Math.sqrt((double) ((i * i) + (i2 * i2)));
    }

    public double GetDistance() {
        return Math.sqrt((double) ((this.f103x * this.f103x) + (this.f104y * this.f104y)));
    }

    public void Offset(Point point) {
        this.f103x += point.f103x;
        this.f104y += point.f104y;
    }

    public void Offset(int i, int i2) {
        this.f103x += i;
        this.f104y += i2;
    }

    public void Add(Size size) {
        this.f103x += size.Width;
        this.f104y += size.Height;
    }

    public void Add(Point point) {
        this.f103x += point.f103x;
        this.f104y += point.f104y;
    }

    public void Subtract(Size size) {
        this.f103x -= size.Width;
        this.f104y -= size.Height;
    }

    public void Subtract(Point point) {
        this.f103x -= point.m75X();
        this.f104y -= point.m76Y();
    }

    public void Copy(Point point) {
        this.f103x = point.f103x;
        this.f104y = point.f104y;
    }

    public boolean IsEmpty() {
        return this.f103x == 0 && this.f104y == 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Point point = (Point) obj;
        if (!(point.f103x == this.f103x && point.f104y == this.f104y)) {
            z = false;
        }
        return z;
    }

    public String toString() {
        return Integer.toString(this.f103x) + "," + Integer.toString(this.f104y);
    }
}
