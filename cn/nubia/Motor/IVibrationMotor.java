package cn.nubia.Motor;

public interface IVibrationMotor {
    void chargerConnected();

    void clickButton();

    void clickKey();

    boolean hasVibrator();

    void longPressBlank();

    void longPressButton();

    void longPressKeyEnd();

    void longPressKeyStart();

    void longPressMenuBackHomeKey();

    void longPressTelButtonEnd();

    void longPressTelButtonStart();

    void notificationVibrator1();

    void notificationVibrator2();

    void pressMenuBackHomeKey();

    void pressVirtualKey();

    void pressVolumeKey();

    void slideButtonEnd();

    void slideButtonStart();
}
