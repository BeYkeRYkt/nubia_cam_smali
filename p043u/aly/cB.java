package p043u.aly;

public class cB {
    public final String f934a;
    public final byte f935b;
    public final short f936c;

    public cB() {
        this("", (byte) 0, (short) 0);
    }

    public cB(String str, byte b, short s) {
        this.f934a = str;
        this.f935b = (byte) b;
        this.f936c = (short) s;
    }

    public String toString() {
        return "<TField name:'" + this.f934a + "' type:" + this.f935b + " field-id:" + this.f936c + ">";
    }
}
