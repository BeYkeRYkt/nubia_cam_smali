package p043u.aly;

import java.io.Serializable;

public class cw implements Serializable {
    private final boolean f963a;
    public final byte f964b;
    private final String f965c;
    private final boolean f966d;

    public cw(byte b, boolean z) {
        this.f964b = (byte) b;
        this.f963a = false;
        this.f965c = null;
        this.f966d = z;
    }

    public cw(byte b) {
        this(b, false);
    }
}
