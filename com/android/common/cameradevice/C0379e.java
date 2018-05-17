package com.android.common.cameradevice;

import android.content.Context;
import android.hardware.Camera;
import android.view.InflateException;
import com.android.camera.R;
import com.p010a.C0090a;
import java.lang.reflect.Constructor;
import java.util.HashMap;

public class C0379e {
    private static C0379e Hf = null;
    private static final HashMap Hj = new HashMap();
    private C0081r Hg = null;
    private Context Hh = null;
    private C0083a Hi = null;

    private C0379e() {
    }

    public void FK(Context context) {
        this.Hh = context;
    }

    public C0082f FG(Camera camera) {
        String string = this.Hh.getString(R.string.camera_device_name);
        Constructor constructor = (Constructor) Hj.get(string);
        if (constructor == null) {
            try {
                constructor = this.Hh.getClassLoader().loadClass(string).getConstructor(new Class[]{Camera.class});
                Hj.put(string, constructor);
            } catch (Throwable e) {
                throw new InflateException("Error inflating class " + string, e);
            } catch (Throwable e2) {
                throw new InflateException("No such class: " + string, e2);
            } catch (Throwable e22) {
                throw new InflateException("While create instance of" + string, e22);
            }
        }
        C0090a.bvo("AdapterUtil", "createCameraDeviceEx");
        return (C0082f) constructor.newInstance(new Object[]{camera});
    }

    public C0081r FH() {
        if (this.Hg != null) {
            return this.Hg;
        }
        String string = this.Hh.getString(R.string.camcorderprofileEx_name);
        Constructor constructor = (Constructor) Hj.get(string);
        if (constructor == null) {
            try {
                constructor = this.Hh.getClassLoader().loadClass(string).getConstructor(new Class[0]);
                Hj.put(string, constructor);
            } catch (Throwable e) {
                throw new InflateException("Error inflating class " + string, e);
            } catch (Throwable e2) {
                throw new InflateException("No such class: " + string, e2);
            } catch (Throwable e22) {
                throw new InflateException("While create instance of" + string, e22);
            }
        }
        return (C0081r) constructor.newInstance(new Object[0]);
    }

    public C0083a FJ() {
        if (this.Hi != null) {
            return this.Hi;
        }
        String string = this.Hh.getString(R.string.mediarecorderEx_name);
        Constructor constructor = (Constructor) Hj.get(string);
        if (constructor == null) {
            try {
                constructor = this.Hh.getClassLoader().loadClass(string).getConstructor(new Class[0]);
                Hj.put(string, constructor);
            } catch (Throwable e) {
                throw new InflateException("Error inflating class " + string, e);
            } catch (Throwable e2) {
                throw new InflateException("No such class: " + string, e2);
            } catch (Throwable e22) {
                throw new InflateException("While create instance of" + string, e22);
            }
        }
        return (C0083a) constructor.newInstance(new Object[0]);
    }

    public static C0379e FI() {
        if (Hf == null) {
            Hf = new C0379e();
        }
        return Hf;
    }
}
