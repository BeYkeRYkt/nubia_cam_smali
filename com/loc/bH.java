package com.loc;

import android.content.Context;
import android.text.TextUtils;
import java.lang.reflect.Constructor;

public class bH {
    public static void bCi(Context context, ch chVar, ag agVar) {
        if (chVar != null && !TextUtils.isEmpty(chVar.m502a()) && !TextUtils.isEmpty(chVar.m503b()) && !TextUtils.isEmpty(chVar.m504c())) {
            new bh(context, chVar, agVar).m408a();
        }
    }

    public static Object bCj(Context context, ag agVar, String str, Class cls, Class[] clsArr, Object[] objArr) {
        C1252W bCf;
        try {
            bCf = bE.m303a().bCf(context, agVar);
        } catch (Throwable th) {
            C1259s.bwd(th, "InstanceFactory", "getInstance");
            bCf = null;
        }
        if (bCf != null) {
            try {
                if (bCf.m122a() && bCf.f150d) {
                    Class loadClass = bCf.loadClass(str);
                    if (loadClass != null) {
                        Constructor declaredConstructor = loadClass.getDeclaredConstructor(clsArr);
                        declaredConstructor.setAccessible(true);
                        return declaredConstructor.newInstance(objArr);
                    }
                }
            } catch (Throwable th2) {
                C1259s.bwd(th2, "InstanceFactory", "getInstance()");
            } catch (Throwable th22) {
                C1259s.bwd(th22, "InstanceFactory", "getInstance()");
            } catch (Throwable th222) {
                C1259s.bwd(th222, "InstanceFactory", "getInstance()");
            } catch (Throwable th2222) {
                C1259s.bwd(th2222, "InstanceFactory", "getInstance()");
            } catch (Throwable th22222) {
                C1259s.bwd(th22222, "InstanceFactory", "getInstance()");
            } catch (Throwable th222222) {
                C1259s.bwd(th222222, "InstanceFactory", "getInstance()");
            } catch (Throwable th2222222) {
                C1259s.bwd(th2222222, "InstanceFactory", "getInstance()");
            }
        }
        if (cls == null) {
            return null;
        }
        try {
            declaredConstructor = cls.getDeclaredConstructor(clsArr);
            declaredConstructor.setAccessible(true);
            return declaredConstructor.newInstance(objArr);
        } catch (Throwable th22222222) {
            C1259s.bwd(th22222222, "InstanceFactory", "getInstance()");
            throw new C1264i("获取对象错误");
        } catch (Throwable th222222222) {
            C1259s.bwd(th222222222, "InstanceFactory", "getInstance()");
            throw new C1264i("获取对象错误");
        } catch (Throwable th2222222222) {
            C1259s.bwd(th2222222222, "InstanceFactory", "getInstance()");
            throw new C1264i("获取对象错误");
        } catch (Throwable th22222222222) {
            C1259s.bwd(th22222222222, "InstanceFactory", "getInstance()");
            throw new C1264i("获取对象错误");
        } catch (Throwable th222222222222) {
            C1259s.bwd(th222222222222, "InstanceFactory", "getInstance()");
            throw new C1264i("获取对象错误");
        } catch (Throwable th2222222222222) {
            C1259s.bwd(th2222222222222, "InstanceFactory", "getInstance()");
            throw new C1264i("获取对象错误");
        }
    }
}
