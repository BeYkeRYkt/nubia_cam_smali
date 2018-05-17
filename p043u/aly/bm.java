package p043u.aly;

public enum bm {
    ANDROID(0),
    IOS(1),
    WINDOWS_PHONE(2),
    WINDOWS_RT(3);
    
    private final int f896e;

    private bm(int i) {
        this.f896e = i;
    }

    public int m1091a() {
        return this.f896e;
    }

    public static bm m1090a(int i) {
        switch (i) {
            case 0:
                return ANDROID;
            case 1:
                return IOS;
            case 2:
                return WINDOWS_PHONE;
            case 3:
                return WINDOWS_RT;
            default:
                return null;
        }
    }
}
