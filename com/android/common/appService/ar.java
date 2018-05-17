package com.android.common.appService;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

final class ar implements InvocationHandler {
    final /* synthetic */ C0346u Va;

    ar(C0346u c0346u) {
        this.Va = c0346u;
    }

    public Object invoke(Object obj, Method method, Object[] objArr) {
        if (this.Va.ZD()) {
            this.Va.ZA(((Integer) objArr[0]).intValue());
        }
        return null;
    }
}
