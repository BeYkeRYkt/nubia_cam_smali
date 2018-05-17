package cn.nubia.Motor;

import android.content.Context;
import android.os.SystemProperties;
import android.os.SystemVibrator;
import android.os.Vibrator;
import android.provider.Settings.System;
import android.util.Log;

class ViberationMotor implements IVibrationMotor {
    private static final int CLICK_BUTTON = 0;
    private static final int CLICK_KEY = 1;
    private static final int LONG_NOTIFICATION_VIBRATOR1 = 10;
    private static final int LONG_NOTIFICATION_VIBRATOR2 = 11;
    private static final int LONG_PRESS_BLANK = 7;
    private static final int LONG_PRESS_BUTTON = 6;
    private static final int LONG_PRESS_KEY_END = 5;
    private static final int LONG_PRESS_KEY_START = 4;
    private static final int LONG_PRESS_TELBUTTON_END = 9;
    private static final int LONG_PRESS_TELBUTTON_START = 8;
    private static final int MAX_HAPTICS = 12;
    private static final String NUBIA_HAPTICS_DEFAULT = SystemProperties.get("ro.nubia.haptics.default", "");
    private static final int SLIDE_BUTTON_END = 3;
    private static final int SLIDE_BUTTON_START = 2;
    private static final String TAG = "ViberationMotor";
    protected Context mContext;
    private long[] mDefaultConfigs;
    private Vibrator mVibrator;

    public ViberationMotor() {
        this.mDefaultConfigs = new long[]{40, 30, 40, 30, 30, 40, 50, 30, 40, 30, 40, 40};
        this.mVibrator = new SystemVibrator();
        readHapticsConfig();
    }

    public ViberationMotor(Context context) {
        this.mDefaultConfigs = new long[]{40, 30, 40, 30, 30, 40, 50, 30, 40, 30, 40, 40};
        this.mContext = context;
        this.mVibrator = (Vibrator) context.getSystemService("vibrator");
        readHapticsConfig();
    }

    private void readHapticsConfig() {
        String[] haptics = NUBIA_HAPTICS_DEFAULT.split(",");
        if (haptics.length == MAX_HAPTICS) {
            try {
                long[] configs = new long[MAX_HAPTICS];
                for (int i = 0; i < MAX_HAPTICS; i++) {
                    configs[i] = Long.parseLong(haptics[i]);
                }
                this.mDefaultConfigs = configs;
                return;
            } catch (NumberFormatException e) {
                Log.e(TAG, "Error haptics config, it wille be user default value!");
                return;
            }
        }
        Log.w(TAG, "Haptics config maybe error, it wille be user default value!");
    }

    private void vibrate(long milliseconds) {
        if (this.mVibrator != null) {
            this.mVibrator.vibrate(milliseconds);
        }
    }

    public void clickButton() {
        if (!isHapticsDisabled()) {
            vibrate(30);
        }
    }

    public void clickKey() {
        if (!isHapticsDisabled()) {
            vibrate(this.mDefaultConfigs[1]);
        }
    }

    public void slideButtonStart() {
        if (!isHapticsDisabled()) {
            vibrate(this.mDefaultConfigs[2]);
        }
    }

    public void slideButtonEnd() {
        if (!isHapticsDisabled()) {
            vibrate(this.mDefaultConfigs[3]);
        }
    }

    public void longPressKeyStart() {
        if (!isHapticsDisabled()) {
            vibrate(this.mDefaultConfigs[4]);
        }
    }

    public void longPressKeyEnd() {
        if (!isHapticsDisabled()) {
            vibrate(this.mDefaultConfigs[5]);
        }
    }

    public void longPressButton() {
        if (!isHapticsDisabled()) {
            vibrate(30);
        }
    }

    public void longPressBlank() {
        if (!isHapticsDisabled()) {
            vibrate(this.mDefaultConfigs[LONG_PRESS_BLANK]);
        }
    }

    public void longPressTelButtonStart() {
        if (!isHapticsDisabled()) {
            vibrate(this.mDefaultConfigs[8]);
        }
    }

    public void longPressTelButtonEnd() {
        if (!isHapticsDisabled()) {
            vibrate(this.mDefaultConfigs[LONG_PRESS_TELBUTTON_END]);
        }
    }

    public void notificationVibrator1() {
        vibrate(50);
    }

    public void notificationVibrator2() {
        vibrate(this.mDefaultConfigs[LONG_NOTIFICATION_VIBRATOR2]);
    }

    public void pressMenuBackHomeKey() {
        if (!isHapticsDisabled()) {
            vibrate(30);
        }
    }

    public void longPressMenuBackHomeKey() {
        if (!isHapticsDisabled()) {
            vibrate(40);
        }
    }

    public void pressVirtualKey() {
        if (!isHapticsDisabled()) {
            vibrate(30);
        }
    }

    public void pressVolumeKey() {
        vibrate(30);
    }

    public void chargerConnected() {
        vibrate(50);
    }

    public boolean hasVibrator() {
        if (this.mVibrator != null) {
            return this.mVibrator.hasVibrator();
        }
        return false;
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
