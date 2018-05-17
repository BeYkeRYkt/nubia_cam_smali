package com.android.common.setting;

import android.content.SharedPreferences.Editor;
import java.util.Set;

class C0711k implements Editor {
    private Editor zF;
    private Editor zG;
    final /* synthetic */ C0710j zH;

    C0711k(C0710j c0710j) {
        this.zH = c0710j;
        this.zF = c0710j.zD.edit();
        this.zG = c0710j.zE.edit();
    }

    public boolean commit() {
        return this.zF.commit() ? this.zG.commit() : false;
    }

    public void apply() {
        this.zF.apply();
        this.zG.apply();
    }

    public Editor clear() {
        this.zF.clear();
        this.zG.clear();
        return this;
    }

    public Editor remove(String str) {
        this.zF.remove(str);
        this.zG.remove(str);
        return this;
    }

    public Editor putString(String str, String str2) {
        if (this.zH.vl(str)) {
            this.zF.putString(str, str2);
        } else {
            this.zG.putString(str, str2);
        }
        return this;
    }

    public Editor putInt(String str, int i) {
        if (this.zH.vl(str)) {
            this.zF.putInt(str, i);
        } else {
            this.zG.putInt(str, i);
        }
        return this;
    }

    public Editor putLong(String str, long j) {
        if (this.zH.vl(str)) {
            this.zF.putLong(str, j);
        } else {
            this.zG.putLong(str, j);
        }
        return this;
    }

    public Editor putFloat(String str, float f) {
        if (this.zH.vl(str)) {
            this.zF.putFloat(str, f);
        } else {
            this.zG.putFloat(str, f);
        }
        return this;
    }

    public Editor putBoolean(String str, boolean z) {
        if (this.zH.vl(str)) {
            this.zF.putBoolean(str, z);
        } else {
            this.zG.putBoolean(str, z);
        }
        return this;
    }

    public Editor putStringSet(String str, Set set) {
        throw new UnsupportedOperationException();
    }
}
