package cn.nubia.Motor;

import android.content.Context;
import java.io.File;

public class VibrationMotorFactory {
    public static IVibrationMotor createVibrationMotor() {
        if (new File("/dev/drv2605").exists()) {
            return new NubiaHaptic();
        }
        return new ViberationMotor();
    }

    public static IVibrationMotor createVibrationMotor(Context context) {
        if (new File("/dev/drv2605").exists()) {
            return new NubiaHaptic(context);
        }
        return new ViberationMotor(context);
    }
}
