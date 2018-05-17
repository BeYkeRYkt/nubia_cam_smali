package cn.nubia.Motor;

import android.content.Context;
import android.provider.Settings.System;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class HapticMotor extends ViberationMotor {
    private Object mInstance;

    public HapticMotor() {
        try {
            this.mInstance = Class.forName("nubia.os.NubiaHaptic").newInstance();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
        } catch (InstantiationException e3) {
            e3.printStackTrace();
        }
    }

    public HapticMotor(Context context) {
        super(context);
        try {
            Constructor<?> wmxSrvConst = Class.forName("nubia.os.NubiaHaptic").getDeclaredConstructor(new Class[]{Context.class});
            wmxSrvConst.setAccessible(true);
            this.mInstance = wmxSrvConst.newInstance(new Object[]{context});
            wmxSrvConst.setAccessible(false);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (NoSuchMethodException e2) {
            e2.printStackTrace();
        } catch (IllegalAccessException e3) {
            e3.printStackTrace();
        } catch (InstantiationException e4) {
            e4.printStackTrace();
        } catch (SecurityException e5) {
            e5.printStackTrace();
        } catch (InvocationTargetException e6) {
            e6.printStackTrace();
        }
    }

    private Method tryGetMehtod(String methodName) {
        try {
            return Class.forName("nubia.os.NubiaHaptic").getMethod(methodName, new Class[0]);
        } catch (ClassNotFoundException e) {
            return null;
        } catch (NoSuchMethodException e2) {
            return null;
        } catch (SecurityException e3) {
            return null;
        }
    }

    private boolean invoke(Method method) {
        if (method == null) {
            return false;
        }
        try {
            method.invoke(this.mInstance, new Object[0]);
            return true;
        } catch (InvocationTargetException e) {
            return false;
        } catch (IllegalAccessException e2) {
            return false;
        }
    }

    public void clickButton() {
        if (!isHapticsDisabled() && !invoke(tryGetMehtod("clickButton"))) {
            super.clickButton();
        }
    }

    public void clickKey() {
        if (!isHapticsDisabled() && !invoke(tryGetMehtod("clickKey"))) {
            super.clickKey();
        }
    }

    public void slideButtonStart() {
        if (!isHapticsDisabled() && !invoke(tryGetMehtod("slideButtonStart"))) {
            super.slideButtonStart();
        }
    }

    public void slideButtonEnd() {
        if (!isHapticsDisabled() && !invoke(tryGetMehtod("slideButtonEnd"))) {
            super.slideButtonEnd();
        }
    }

    public void longPressKeyStart() {
        if (!isHapticsDisabled() && !invoke(tryGetMehtod("longPressKeyStart"))) {
            super.longPressKeyStart();
        }
    }

    public void longPressKeyEnd() {
        if (!isHapticsDisabled() && !invoke(tryGetMehtod("longPressKeyEnd"))) {
            super.longPressKeyEnd();
        }
    }

    public void longPressButton() {
        if (!isHapticsDisabled() && !invoke(tryGetMehtod("longPressButton"))) {
            super.longPressButton();
        }
    }

    public void longPressBlank() {
        if (!isHapticsDisabled() && !invoke(tryGetMehtod("longPressBlank"))) {
            super.longPressBlank();
        }
    }

    public void longPressTelButtonStart() {
        if (!isHapticsDisabled() && !invoke(tryGetMehtod("longPressTelButtonStart"))) {
            super.longPressTelButtonStart();
        }
    }

    public void longPressTelButtonEnd() {
        if (!isHapticsDisabled() && !invoke(tryGetMehtod("longPressTelButtonEnd"))) {
            super.longPressTelButtonEnd();
        }
    }

    public void notificationVibrator1() {
        if (!invoke(tryGetMehtod("notificationVibrator1"))) {
            super.notificationVibrator1();
        }
    }

    public void notificationVibrator2() {
        if (!invoke(tryGetMehtod("notificationVibrator2"))) {
            super.notificationVibrator2();
        }
    }

    public boolean hasVibrator() {
        Method method = tryGetMehtod("hasVibrator");
        if (method == null) {
            return super.hasVibrator();
        }
        try {
            return ((Boolean) method.invoke(this.mInstance, new Object[0])).booleanValue();
        } catch (InvocationTargetException e) {
            return super.hasVibrator();
        } catch (IllegalAccessException e2) {
            return super.hasVibrator();
        }
    }

    private boolean isHapticsDisabled() {
        int intValue = 1;
        if (this.mContext != null) {
            intValue = System.getInt(this.mContext.getContentResolver(), "haptic_feedback_enabled", 0);
        }
        if (intValue == 0) {
            return true;
        }
        return false;
    }
}
