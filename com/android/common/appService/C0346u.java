package com.android.common.appService;

import android.content.Context;
import android.provider.Settings.System;
import android.text.TextUtils;
import com.p010a.C0090a;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;

public class C0346u {
    public int Rp = -1;
    public int Rq = -1;
    public int Rr = -1;
    public int Rs = -1;
    private Context Rt;
    private Object Ru;
    private Object Rv;
    private ArrayList Rw = new ArrayList();

    public C0346u(Context context) {
        this.Rt = context;
        ZC();
        ZB();
    }

    private void ZC() {
        try {
            Class cls = Class.forName("cn.nubia.edgegesture.EdgeGestureActions");
            Field declaredField = cls.getDeclaredField("HOLD_AND_TAP_LEFT_TOP");
            declaredField.setAccessible(true);
            this.Rq = declaredField.getInt(cls);
            declaredField = cls.getDeclaredField("HOLD_AND_TAP_LEFT_BOTTOM");
            declaredField.setAccessible(true);
            this.Rp = declaredField.getInt(cls);
            declaredField = cls.getDeclaredField("HOLD_AND_TAP_RIGHT_TOP");
            declaredField.setAccessible(true);
            this.Rs = declaredField.getInt(cls);
            declaredField = cls.getDeclaredField("HOLD_AND_TAP_RIGHT_BOTTOM");
            declaredField.setAccessible(true);
            this.Rr = declaredField.getInt(cls);
        } catch (Exception e) {
            C0090a.bvm("ZOU", "initTapValue e=" + e);
        }
    }

    protected void ZB() {
        try {
            Class cls = Class.forName("cn.nubia.edgegesture.EdgeGestureManager");
            if (cls != null) {
                Method method = cls.getMethod("getDefaultManager", new Class[]{Context.class});
                if (method != null) {
                    method.setAccessible(true);
                    this.Rv = method.invoke(cls, new Object[]{this.Rt});
                    cls = Class.forName("cn.nubia.edgegesture.EdgeGestureListener");
                    if (cls != null) {
                        this.Ru = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new ar(this));
                    }
                }
            }
        } catch (Exception e) {
            C0090a.bvm("ZOU", "initEdgeGestureDectect Exception e=" + e);
        }
    }

    private void ZA(int i) {
        try {
            Object string = System.getString(this.Rt.getContentResolver(), "nubia_edge_hold_tap");
            C0090a.m0d("zou", "handleEdgeGesture: settings = " + string);
            if (!TextUtils.isEmpty(string) && string.contains("com.android.camera")) {
                C0090a.m0d("zou", "handleEdgeGesture: type = " + i);
                for (C0203v c0203v : this.Rw) {
                    if (c0203v != null) {
                        c0203v.ZJ(i);
                    }
                }
            }
        } catch (Exception e) {
            C0090a.bvm("ZOU", "handleEdgeGesture e");
        }
    }

    public void ZE(C0203v c0203v) {
        if (this.Rw.isEmpty()) {
            Zz();
        }
        if (!this.Rw.contains(c0203v)) {
            this.Rw.add(c0203v);
        }
    }

    public void ZG(C0203v c0203v) {
        if (this.Rw.contains(c0203v)) {
            this.Rw.remove(c0203v);
        }
        if (this.Rw.isEmpty()) {
            ZF();
        }
    }

    private void Zz() {
        try {
            Class cls = Class.forName("cn.nubia.edgegesture.EdgeGestureManager");
            if (this.Rv != null && cls != null && Class.forName("cn.nubia.edgegesture.EdgeGestureActions") != null && Class.forName("cn.nubia.edgegesture.EdgeGestureListener") != null) {
                Method declaredMethod = cls.getDeclaredMethod("detect", new Class[]{Integer[].class, Class.forName("cn.nubia.edgegesture.EdgeGestureListener")});
                declaredMethod.setAccessible(true);
                C0090a.bvm("ZOU", "addEdgeDectect dectectMethod invoke");
                Object obj = this.Rv;
                r2 = new Object[2];
                r2[0] = new Integer[]{Integer.valueOf(this.Rq), Integer.valueOf(this.Rp), Integer.valueOf(this.Rs), Integer.valueOf(this.Rr)};
                r2[1] = this.Ru;
                declaredMethod.invoke(obj, r2);
            }
        } catch (Exception e) {
            C0090a.bvm("ZOU", "addEdgeDectect Exception e=" + e);
        }
    }

    private void ZF() {
        try {
            Class cls = Class.forName("cn.nubia.edgegesture.EdgeGestureManager");
            Class cls2 = Class.forName("cn.nubia.edgegesture.EdgeGestureListener");
            if (this.Rv != null && cls != null && cls2 != null) {
                Method declaredMethod = cls.getDeclaredMethod("unDetect", new Class[]{cls2});
                C0090a.bvm("ZOU", "removeEdgeDetect unDetectMethod invoke");
                declaredMethod.invoke(this.Rv, new Object[]{this.Ru});
            }
        } catch (Exception e) {
            C0090a.bvm("ZOU", "removeEdgeDetect Exception e=" + e);
        }
    }

    private boolean ZD() {
        try {
            Class cls = Class.forName("nubia.os.edge.EdgeFeatureConfig");
            boolean booleanValue = ((Boolean) cls.getMethod("isEdgeFeatureEnable", new Class[0]).invoke(cls, new Object[0])).booleanValue();
            C0090a.bvm("ZOU", "isEdgeFeatureEnable enable=" + booleanValue);
            return booleanValue;
        } catch (Exception e) {
            C0090a.bvm("ZOU", "isEdgeFeatureEnable e=" + e);
            C0090a.bvm("ZOU", "isEdgeFeatureEnable enable=" + false);
            return false;
        } catch (Throwable th) {
            C0090a.bvm("ZOU", "isEdgeFeatureEnable enable=" + false);
            return false;
        }
    }
}
