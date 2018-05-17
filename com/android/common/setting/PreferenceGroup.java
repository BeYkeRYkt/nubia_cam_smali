package com.android.common.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.AttributeSet;
import java.util.ArrayList;

public class PreferenceGroup extends C0702t {
    private ArrayList yT = new ArrayList();

    public PreferenceGroup(Context context, AttributeSet attributeSet, SharedPreferences sharedPreferences) {
        super(context, attributeSet, sharedPreferences);
    }

    public void tq(C0702t c0702t) {
        this.yT.add(c0702t);
    }

    public void tt(int i) {
        this.yT.remove(i);
    }

    public C0702t tr(int i) {
        return (C0702t) this.yT.get(i);
    }

    public int tu() {
        return this.yT.size();
    }

    public void ts() {
        for (C0702t ts : this.yT) {
            ts.ts();
        }
    }

    public ListPreference tp(String str) {
        for (C0702t c0702t : this.yT) {
            ListPreference listPreference;
            if (c0702t instanceof ListPreference) {
                listPreference = (ListPreference) c0702t;
                if (listPreference.vd().equals(str)) {
                    return listPreference;
                }
            } else if (c0702t instanceof PreferenceGroup) {
                listPreference = ((PreferenceGroup) c0702t).tp(str);
                if (listPreference != null) {
                    return listPreference;
                }
            } else {
                continue;
            }
        }
        return null;
    }
}
