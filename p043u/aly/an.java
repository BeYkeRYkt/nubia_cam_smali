package p043u.aly;

public enum an {
    ACCESS_TYPE_UNKNOWN(0),
    ACCESS_TYPE_2G_3G(1),
    ACCESS_TYPE_WIFI(2),
    ACCESS_TYPE_ETHERNET(3);
    
    private final int f710e;

    private an(int i) {
        this.f710e = i;
    }

    public int m887a() {
        return this.f710e;
    }

    public static an m886a(int i) {
        switch (i) {
            case 0:
                return ACCESS_TYPE_UNKNOWN;
            case 1:
                return ACCESS_TYPE_2G_3G;
            case 2:
                return ACCESS_TYPE_WIFI;
            case 3:
                return ACCESS_TYPE_ETHERNET;
            default:
                return null;
        }
    }
}
