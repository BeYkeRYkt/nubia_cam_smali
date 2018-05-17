package com.fotonation.utils;

import java.io.Serializable;

public class Rectangle implements Serializable {
    protected int height;
    protected int left;
    protected int top;
    protected int width;

    public Rectangle() {
        this.left = 0;
        this.top = 0;
        this.width = 0;
        this.height = 0;
    }

    public Rectangle(Rectangle rectangle) {
        this.left = rectangle.left;
        this.top = rectangle.top;
        this.width = rectangle.width;
        this.height = rectangle.height;
    }

    public Rectangle(int i, int i2, int i3, int i4) {
        this.left = i;
        this.top = i2;
        this.width = i3;
        this.height = i4;
    }

    public Rectangle(String str) {
        this.left = 0;
        this.top = 0;
        this.width = 0;
        this.height = 0;
        if (str != null) {
            int indexOf = str.indexOf(44);
            int indexOf2 = str.indexOf(59);
            int indexOf3 = str.indexOf(120);
            if (indexOf != -1 && indexOf2 != -1 && indexOf3 != -1) {
                this.left = Integer.parseInt(str.substring(0, indexOf));
                this.top = Integer.parseInt(str.substring(indexOf + 1, indexOf2));
                this.width = Integer.parseInt(str.substring(indexOf2 + 1, indexOf3));
                this.height = Integer.parseInt(str.substring(indexOf3 + 1));
            }
        }
    }

    public void Copy(Rectangle rectangle) {
        this.left = rectangle.left;
        this.top = rectangle.top;
        this.width = rectangle.width;
        this.height = rectangle.height;
    }

    public int Left() {
        return this.left;
    }

    public void SetLeft(int i) {
        this.left = i;
    }

    public int m77X() {
        return this.left;
    }

    public void SetX(int i) {
        this.left = i;
    }

    public int Top() {
        return this.top;
    }

    public void SetTop(int i) {
        this.top = i;
    }

    public int m78Y() {
        return this.top;
    }

    public void SetY(int i) {
        this.top = i;
    }

    public int Right() {
        return this.left + this.width;
    }

    public void SetRight(int i) {
        if (i < this.left) {
            this.width = this.left - i;
            this.left = i;
            return;
        }
        this.width = i - this.left;
    }

    public int Bottom() {
        return this.top + this.height;
    }

    public void SetBottom(int i) {
        if (i < this.top) {
            this.height = this.top - i;
            this.top = i;
            return;
        }
        this.height = i - this.top;
    }

    public int Width() {
        return this.width;
    }

    public void SetWidth(int i) {
        if (i < 0) {
            this.left += i;
            this.width = -i;
            return;
        }
        this.width = i;
    }

    public int Height() {
        return this.height;
    }

    public void SetHeight(int i) {
        if (i < 0) {
            this.top += i;
            this.height = -i;
            return;
        }
        this.height = i;
    }

    public Point GetCenter() {
        return new Point(this.left + (this.width / 2), this.top + (this.height / 2));
    }

    public Size GetSize() {
        return new Size(this.width, this.height);
    }

    public Point GetLocation() {
        return new Point(this.left, this.top);
    }

    public int GetArea() {
        return this.width * this.height;
    }

    public boolean Contains(Point point) {
        return Contains(point.m75X(), point.m76Y());
    }

    public boolean Contains(int i, int i2) {
        if (i < Left() || i >= Right() || i2 < Top() || i2 >= Bottom()) {
            return false;
        }
        return true;
    }

    public boolean Contains(Rectangle rectangle) {
        if (this.left > rectangle.left || rectangle.left + rectangle.width > this.left + this.width || this.top > rectangle.top || rectangle.top + rectangle.height > this.top + this.height) {
            return false;
        }
        return true;
    }

    public void Intersect(Rectangle rectangle) {
        Rectangle Intersect = Intersect(rectangle, this);
        this.left = Intersect.left;
        this.top = Intersect.top;
        this.width = Intersect.width;
        this.height = Intersect.height;
    }

    public static Rectangle Intersect(Rectangle rectangle, Rectangle rectangle2) {
        int max = Math.max(rectangle.left, rectangle2.left);
        int min = Math.min(rectangle.left + rectangle.width, rectangle2.left + rectangle2.width);
        int max2 = Math.max(rectangle.top, rectangle2.top);
        int min2 = Math.min(rectangle.top + rectangle.height, rectangle2.top + rectangle2.height);
        if (min < max || min2 < max2) {
            return new Rectangle();
        }
        return new Rectangle(max, max2, min - max, min2 - max2);
    }

    public void Union(Rectangle rectangle) {
        Rectangle Union = Union(rectangle, this);
        this.left = Union.left;
        this.top = Union.top;
        this.width = Union.width;
        this.height = Union.height;
    }

    public static Rectangle Union(Rectangle rectangle, Rectangle rectangle2) {
        int min = Math.min(rectangle.left, rectangle2.left);
        int max = Math.max(rectangle.left + rectangle.width, rectangle2.left + rectangle2.width);
        int min2 = Math.min(rectangle.top, rectangle2.top);
        return new Rectangle(min, min2, max - min, Math.max(rectangle.top + rectangle.height, rectangle2.top + rectangle2.height) - min2);
    }

    public boolean IntersectsWith(Rectangle rectangle) {
        if (rectangle.left >= this.left + this.width || this.left >= rectangle.left + rectangle.width || rectangle.top >= this.top + this.height || this.top >= rectangle.top + rectangle.height) {
            return false;
        }
        return true;
    }

    public void Scale(int i, int i2, int i3) {
        this.left = (this.left * i) >> i3;
        this.top = (this.top * i2) >> i3;
        this.width = (this.width * i) >> i3;
        this.height = (this.height * i2) >> i3;
    }

    public void Inflate(int i, int i2) {
        this.left -= i;
        this.top -= i2;
        this.width += i * 2;
        this.height += i2 * 2;
    }

    public void Inflate(Size size) {
        Inflate(size.Width, size.Height);
    }

    public static Rectangle Inflate(Rectangle rectangle, int i, int i2) {
        rectangle.Inflate(i, i2);
        return rectangle;
    }

    public void Scale(Rectangle rectangle, int i, int i2, int i3) {
        this.left = (this.left * i) >> i3;
        this.top = (this.top * i2) >> i3;
        this.width = (this.left * i) >> i3;
        this.height = (this.top * i2) >> i3;
    }

    public void Offset(int i, int i2) {
        this.left += i;
        this.top += i2;
    }

    public void Offset(Point point) {
        Offset(point.m75X(), point.m76Y());
    }

    public boolean IsEmpty() {
        return this.height == 0 && this.width == 0 && this.left == 0 && this.top == 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Rectangle rectangle = (Rectangle) obj;
        if (rectangle.left != this.left || rectangle.top != this.top || rectangle.width != this.width) {
            z = false;
        } else if (rectangle.height != this.height) {
            z = false;
        }
        return z;
    }

    public String toString() {
        return Integer.toString(this.left) + "," + Integer.toString(this.top) + ";" + Integer.toString(this.width) + "x" + Integer.toString(this.height);
    }
}
