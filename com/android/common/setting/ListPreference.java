package com.android.common.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.android.camera.C0172c;
import com.android.common.C0616j;
import java.util.ArrayList;
import java.util.List;

public class ListPreference extends C0702t {
    private String zA = null;
    private String zB;
    private final CharSequence[] zv;
    private CharSequence[] zw;
    private CharSequence[] zx;
    private final String zy;
    private boolean zz = false;

    public ListPreference(Context context, AttributeSet attributeSet, SharedPreferences sharedPreferences) {
        super(context, attributeSet, sharedPreferences);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0172c.aHU, 0, 0);
        this.zy = (String) C0616j.aps(obtainStyledAttributes.getString(0));
        TypedValue peekValue = obtainStyledAttributes.peekValue(1);
        if (peekValue == null || peekValue.type != 1) {
            this.zv = new CharSequence[1];
            this.zv[0] = obtainStyledAttributes.getString(1);
        } else {
            this.zv = obtainStyledAttributes.getTextArray(1);
        }
        vi(obtainStyledAttributes.getTextArray(3));
        vj(obtainStyledAttributes.getTextArray(2));
        obtainStyledAttributes.recycle();
    }

    public String vd() {
        return this.zy;
    }

    public CharSequence[] vb() {
        return this.zw;
    }

    public CharSequence[] uX() {
        return this.zx;
    }

    public void vi(CharSequence[] charSequenceArr) {
        if (charSequenceArr == null) {
            charSequenceArr = new CharSequence[0];
        }
        this.zw = charSequenceArr;
    }

    public void vj(CharSequence[] charSequenceArr) {
        if (charSequenceArr == null) {
            charSequenceArr = new CharSequence[0];
        }
        this.zx = charSequenceArr;
    }

    public void vg(String str) {
        this.zA = str;
    }

    public String tw() {
        if (!this.zz) {
            this.zB = zr().getString(this.zy, vf());
            this.zz = true;
        }
        return this.zB;
    }

    public int ve() {
        for (int i = 0; i < this.zx.length; i++) {
            if (this.zx[i].equals(this.zv[0])) {
                return i;
            }
        }
        return 0;
    }

    public String vf() {
        int i = 0;
        if (this.zA != null) {
            while (i < this.zx.length) {
                if (this.zx[i].equals(this.zA)) {
                    return this.zA;
                }
                i++;
            }
        } else {
            for (int i2 = 0; i2 < this.zv.length; i2++) {
                for (Object equals : this.zx) {
                    if (equals.equals(this.zv[i2])) {
                        return this.zv[i2].toString();
                    }
                }
            }
        }
        return null;
    }

    public void va(String str) {
        if (uW(str) < 0) {
            throw new IllegalArgumentException();
        }
        this.zB = str;
        vh(str);
    }

    public void uY(int i) {
        va(this.zx[i].toString());
    }

    public int vc() {
        return uW(tw());
    }

    public int uW(String str) {
        int length = this.zx.length;
        for (int i = 0; i < length; i++) {
            if (C0616j.apu(this.zx[i], str)) {
                return i;
            }
        }
        return -1;
    }

    public String uZ() {
        int uW = uW(tw());
        if (uW == -1) {
            return null;
        }
        return this.zw[uW].toString();
    }

    protected void vh(String str) {
        Editor edit = zr().edit();
        edit.putString(this.zy, str);
        edit.apply();
    }

    public void ts() {
        this.zz = false;
    }

    public void uQ(List list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int length = this.zx.length;
        for (int i = 0; i < length; i++) {
            if (list.indexOf(this.zx[i].toString()) >= 0) {
                arrayList.add(this.zw[i]);
                arrayList2.add(this.zx[i]);
            }
        }
        length = arrayList.size();
        this.zw = (CharSequence[]) arrayList.toArray(new CharSequence[length]);
        this.zx = (CharSequence[]) arrayList2.toArray(new CharSequence[length]);
    }
}
