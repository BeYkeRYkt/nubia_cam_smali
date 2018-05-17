package cn.nubia.Motor;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.provider.Settings.System;
import android.util.Log;
import nubia.os.IHapticsService;
import nubia.os.IHapticsService.Stub;

class NubiaHaptic extends ViberationMotor {
    public static final String HAPTICS_SERVICE = "haptics";
    private static final String TAG = "NubiaHaptic";
    private static final int TI_EFFECT = 22;
    private static IHapticsService mHapticsService;
    protected Context mContext;
    private final Binder mToken = new Binder();

    private IHapticsService getHapticsService() {
        if (mHapticsService == null) {
            mHapticsService = Stub.asInterface(ServiceManager.getService(HAPTICS_SERVICE));
        }
        if (mHapticsService == null) {
            Log.e(TAG, "Unable to connect to IHapticsService!");
        }
        return mHapticsService;
    }

    public NubiaHaptic(Context context) {
        super(context);
        this.mContext = context;
    }

    private void playeTIEffect() {
        if (!isHapticsDisabled() && this.mContext != null) {
            if (System.getInt(this.mContext.getContentResolver(), "data_haptictheme_dialpad", 0) != TI_EFFECT) {
                System.putInt(this.mContext.getContentResolver(), "data_haptictheme_dialpad", TI_EFFECT);
            }
            try {
                if (getHapticsService() != null) {
                    getHapticsService().playeffect(2, this.mToken);
                }
            } catch (RemoteException e) {
            }
        }
    }

    public void clickButton() {
        playeTIEffect();
    }

    public void longPressButton() {
        playeTIEffect();
    }

    public void pressMenuBackHomeKey() {
        playeTIEffect();
    }

    public void longPressMenuBackHomeKey() {
        playeTIEffect();
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
