package com.fotonation.utils;

import java.io.Serializable;

public class Size implements Serializable {
    public int Height;
    public int Width;

    public Size() {
        this.Width = 0;
        this.Height = 0;
    }

    public Size(Size size) {
        this.Width = size.Width;
        this.Height = size.Height;
    }

    public Size(int i, int i2) {
        this.Width = i;
        this.Height = i2;
    }

    public Size(Point point) {
        this.Width = point.m75X();
        this.Height = point.m76Y();
    }

    public Size(String str) {
        this.Width = 0;
        this.Height = 0;
        if (str != null) {
            int indexOf = str.indexOf(120);
            if (indexOf != -1) {
                this.Width = Integer.parseInt(str.substring(0, indexOf));
                this.Height = Integer.parseInt(str.substring(indexOf + 1));
            }
        }
    }

    public void Add(Size size) {
        this.Width += size.Width;
        this.Height += size.Height;
    }

    public void Add(Point point) {
        this.Width += point.m75X();
        this.Height += point.m76Y();
    }

    public void Subtract(Size size) {
        this.Width -= size.Width;
        this.Height -= size.Height;
    }

    public void Subtract(Point point) {
        this.Width -= point.m75X();
        this.Height -= point.m76Y();
    }

    public void Scale(int i) {
        this.Width *= i;
        this.Height *= i;
    }

    public Point AsPoint() {
        return new Point(this.Width, this.Height);
    }

    public boolean IsEmpty() {
        return this.Width == 0 && this.Height == 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Size size = (Size) obj;
        if (!(size.Width == this.Width && size.Height == this.Height)) {
            z = false;
        }
        return z;
    }

    public String toString() {
        return Integer.toString(this.Width) + "x" + Integer.toString(this.Height);
    }
}
