package com.android.common.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.android.camera.C0172c;
import com.android.common.C0773z;
import java.util.List;

public class IconListPreference extends ListPreference {
    private int[] zq;
    private int zr;
    private int[] zs;
    private int[] zt;
    private int zu;

    public IconListPreference(Context context, AttributeSet attributeSet, SharedPreferences sharedPreferences) {
        super(context, attributeSet, sharedPreferences);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0172c.aHT, 0, 0);
        Resources resources = context.getResources();
        this.zu = obtainStyledAttributes.getResourceId(1, 0);
        this.zq = uS(resources, obtainStyledAttributes.getResourceId(0, 0));
        this.zt = uS(resources, obtainStyledAttributes.getResourceId(2, 0));
        this.zs = uS(resources, obtainStyledAttributes.getResourceId(3, 0));
        this.zr = uR(resources, obtainStyledAttributes.getResourceId(0, 0));
        obtainStyledAttributes.recycle();
    }

    public int uU() {
        return this.zr;
    }

    public int uV() {
        return this.zu;
    }

    public int[] uP() {
        return this.zq;
    }

    public int[] uT() {
        return this.zt;
    }

    private int uR(Resources resources, int i) {
        if (i == 0) {
            return 0;
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        int length = obtainTypedArray.length();
        obtainTypedArray.recycle();
        return length;
    }

    private int[] uS(Resources resources, int i) {
        if (i == 0) {
            return null;
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i);
        int length = obtainTypedArray.length();
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = obtainTypedArray.getResourceId(i2, 0);
        }
        obtainTypedArray.recycle();
        return iArr;
    }

    public void uQ(List list) {
        CharSequence[] uX = uX();
        C0773z c0773z = new C0773z();
        C0773z c0773z2 = new C0773z();
        C0773z c0773z3 = new C0773z();
        int length = uX.length;
        for (int i = 0; i < length; i++) {
            if (list.indexOf(uX[i].toString()) >= 0) {
                if (this.zq != null) {
                    c0773z.avz(this.zq[i]);
                }
                if (this.zt != null) {
                    c0773z2.avz(this.zt[i]);
                }
                if (this.zs != null) {
                    c0773z3.avz(this.zs[i]);
                }
            }
        }
        if (this.zq != null) {
            this.zq = c0773z.avB(new int[c0773z.avA()]);
        }
        if (this.zt != null) {
            this.zt = c0773z2.avB(new int[c0773z2.avA()]);
        }
        if (this.zs != null) {
            this.zs = c0773z3.avB(new int[c0773z3.avA()]);
        }
        super.uQ(list);
    }
}
