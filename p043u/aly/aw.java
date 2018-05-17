package p043u.aly;

public enum aw {
    LEGIT(1),
    ALIEN(2);
    
    private final int f774c;

    private aw(int i) {
        this.f774c = i;
    }

    public int m939a() {
        return this.f774c;
    }

    public static aw m938a(int i) {
        switch (i) {
            case 1:
                return LEGIT;
            case 2:
                return ALIEN;
            default:
                return null;
        }
    }
}
