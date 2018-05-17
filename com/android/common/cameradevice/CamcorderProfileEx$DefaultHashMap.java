package com.android.common.cameradevice;

import java.util.HashMap;

public class CamcorderProfileEx$DefaultHashMap extends HashMap {
    private static final long serialVersionUID = 1;
    private Object mDefaultValue;

    public void JR(Object obj) {
        this.mDefaultValue = obj;
    }

    public Object get(Object obj) {
        Object obj2 = super.get(obj);
        return obj2 == null ? this.mDefaultValue : obj2;
    }
}
