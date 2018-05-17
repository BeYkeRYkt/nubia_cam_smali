package com.android.common.exif;

import com.android.p035d.C0774a;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;

public class C0514f {
    private static final SimpleDateFormat AX = new SimpleDateFormat("yyyy:MM:dd kk:mm:ss");
    private static final int[] AY = new int[11];
    private static Charset AZ = Charset.forName("US-ASCII");
    private int Ba;
    private final short Bb;
    private boolean Bc;
    private int Bd;
    private int Be;
    private final short Bf;
    private Object Bg = null;

    static {
        AY[1] = 1;
        AY[2] = 1;
        AY[3] = 2;
        AY[4] = 4;
        AY[5] = 8;
        AY[7] = 1;
        AY[9] = 4;
        AY[10] = 8;
    }

    public static boolean Ai(int i) {
        if (i == 0 || i == 1 || i == 2 || i == 3 || i == 4) {
            return true;
        }
        return false;
    }

    public static boolean AF(short s) {
        if (s == (short) 1 || s == (short) 2 || s == (short) 3 || s == (short) 4 || s == (short) 5 || s == (short) 7 || s == (short) 9 || s == (short) 10) {
            return true;
        }
        return false;
    }

    C0514f(short s, short s2, int i, int i2, boolean z) {
        this.Bf = s;
        this.Bb = s2;
        this.Ba = i;
        this.Bc = z;
        this.Bd = i2;
    }

    public static int AA(short s) {
        return AY[s];
    }

    public int Aj() {
        return this.Bd;
    }

    protected void AH(int i) {
        this.Bd = i;
    }

    public short Aa() {
        return this.Bf;
    }

    public short Ac() {
        return this.Bb;
    }

    public int Am() {
        return Ab() * C0514f.AA(Ac());
    }

    public int Ab() {
        return this.Ba;
    }

    protected void Ay(int i) {
        this.Ba = i;
    }

    public boolean AE() {
        return this.Bg != null;
    }

    public boolean AI(int[] iArr) {
        int i = 0;
        if (Aq(iArr.length)) {
            return false;
        }
        if (this.Bb != (short) 3 && this.Bb != (short) 9 && this.Bb != (short) 4) {
            return false;
        }
        if (this.Bb == (short) 3 && Av(iArr)) {
            return false;
        }
        if (this.Bb == (short) 4 && At(iArr)) {
            return false;
        }
        Object obj = new long[iArr.length];
        while (i < iArr.length) {
            obj[i] = (long) iArr[i];
            i++;
        }
        this.Bg = obj;
        this.Ba = iArr.length;
        return true;
    }

    public boolean Ao(int i) {
        return AI(new int[]{i});
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean Ap(long[] r4) {
        /*
        r3 = this;
        r2 = 0;
        r0 = r4.length;
        r0 = r3.Aq(r0);
        if (r0 != 0) goto L_0x000d;
    L_0x0008:
        r0 = r3.Bb;
        r1 = 4;
        if (r0 == r1) goto L_0x000e;
    L_0x000d:
        return r2;
    L_0x000e:
        r0 = r3.As(r4);
        if (r0 == 0) goto L_0x0015;
    L_0x0014:
        return r2;
    L_0x0015:
        r3.Bg = r4;
        r0 = r4.length;
        r3.Ba = r0;
        r0 = 1;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.common.exif.f.Ap(long[]):boolean");
    }

    public boolean AJ(long j) {
        return Ap(new long[]{j});
    }

    public boolean AK(String str) {
        if (this.Bb != (short) 2 && this.Bb != (short) 7) {
            return false;
        }
        Object bytes = str.getBytes(AZ);
        if (bytes.length > 0) {
            if (!(bytes[bytes.length - 1] == (byte) 0 || this.Bb == (short) 7)) {
                bytes = Arrays.copyOf(bytes, bytes.length + 1);
            }
        } else if (this.Bb == (short) 2 && this.Ba == 1) {
            bytes = new byte[]{null};
        }
        int length = bytes.length;
        if (Aq(length)) {
            return false;
        }
        this.Ba = length;
        this.Bg = bytes;
        return true;
    }

    public boolean AL(C0513e[] c0513eArr) {
        if (Aq(c0513eArr.length)) {
            return false;
        }
        if (this.Bb != (short) 5 && this.Bb != (short) 10) {
            return false;
        }
        if (this.Bb == (short) 5 && Au(c0513eArr)) {
            return false;
        }
        if (this.Bb == (short) 10 && Ar(c0513eArr)) {
            return false;
        }
        this.Bg = c0513eArr;
        this.Ba = c0513eArr.length;
        return true;
    }

    public boolean AM(C0513e c0513e) {
        return AL(new C0513e[]{c0513e});
    }

    public boolean AQ(byte[] bArr, int i, int i2) {
        if (Aq(i2)) {
            return false;
        }
        if (this.Bb != (short) 1 && this.Bb != (short) 7) {
            return false;
        }
        this.Bg = new byte[i2];
        C0774a.boG(bArr, i, (byte[]) this.Bg, 0, i2);
        this.Ba = i2;
        return true;
    }

    public boolean AN(byte[] bArr) {
        return AQ(bArr, 0, bArr.length);
    }

    public boolean AO(byte b) {
        return AN(new byte[]{b});
    }

    public boolean AP(Object obj) {
        int i = 0;
        if (obj == null) {
            return false;
        }
        if (obj instanceof Short) {
            return Ao(((Short) obj).shortValue() & 65535);
        }
        if (obj instanceof String) {
            return AK((String) obj);
        }
        if (obj instanceof int[]) {
            return AI((int[]) obj);
        }
        if (obj instanceof long[]) {
            return Ap((long[]) obj);
        }
        if (obj instanceof C0513e) {
            return AM((C0513e) obj);
        }
        if (obj instanceof C0513e[]) {
            return AL((C0513e[]) obj);
        }
        if (obj instanceof byte[]) {
            return AN((byte[]) obj);
        }
        if (obj instanceof Integer) {
            return Ao(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            return AJ(((Long) obj).longValue());
        }
        if (obj instanceof Byte) {
            return AO(((Byte) obj).byteValue());
        }
        int[] iArr;
        int i2;
        if (obj instanceof Short[]) {
            Short[] shArr = (Short[]) obj;
            iArr = new int[shArr.length];
            for (i2 = 0; i2 < shArr.length; i2++) {
                iArr[i2] = shArr[i2] == null ? 0 : shArr[i2].shortValue() & 65535;
            }
            return AI(iArr);
        } else if (obj instanceof Integer[]) {
            Integer[] numArr = (Integer[]) obj;
            iArr = new int[numArr.length];
            for (i2 = 0; i2 < numArr.length; i2++) {
                iArr[i2] = numArr[i2] == null ? 0 : numArr[i2].intValue();
            }
            return AI(iArr);
        } else if (obj instanceof Long[]) {
            Long[] lArr = (Long[]) obj;
            long[] jArr = new long[lArr.length];
            while (i < lArr.length) {
                jArr[i] = lArr[i] == null ? 0 : lArr[i].longValue();
                i++;
            }
            return Ap(jArr);
        } else if (!(obj instanceof Byte[])) {
            return false;
        } else {
            Byte[] bArr = (Byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            for (i2 = 0; i2 < bArr.length; i2++) {
                bArr2[i2] = bArr[i2] == null ? (byte) 0 : bArr[i2].byteValue();
            }
            return AN(bArr2);
        }
    }

    public String Ak() {
        if (this.Bg == null) {
            return null;
        }
        if (this.Bg instanceof String) {
            return (String) this.Bg;
        }
        if (this.Bg instanceof byte[]) {
            return new String((byte[]) this.Bg, AZ);
        }
        return null;
    }

    public C0513e[] AC() {
        if (this.Bg instanceof C0513e[]) {
            return (C0513e[]) this.Bg;
        }
        return null;
    }

    public int[] AB() {
        if (this.Bg == null || !(this.Bg instanceof long[])) {
            return null;
        }
        long[] jArr = (long[]) this.Bg;
        int[] iArr = new int[jArr.length];
        for (int i = 0; i < jArr.length; i++) {
            iArr[i] = (int) jArr[i];
        }
        return iArr;
    }

    public Object Al() {
        return this.Bg;
    }

    public String Ax() {
        if (this.Bg == null) {
            return "";
        }
        if (this.Bg instanceof byte[]) {
            if (this.Bb == (short) 2) {
                return new String((byte[]) this.Bg, AZ);
            }
            return Arrays.toString((byte[]) this.Bg);
        } else if (this.Bg instanceof long[]) {
            if (((long[]) this.Bg).length == 1) {
                return String.valueOf(((long[]) this.Bg)[0]);
            }
            return Arrays.toString((long[]) this.Bg);
        } else if (!(this.Bg instanceof Object[])) {
            return this.Bg.toString();
        } else {
            if (((Object[]) this.Bg).length != 1) {
                return Arrays.toString((Object[]) this.Bg);
            }
            Object obj = ((Object[]) this.Bg)[0];
            if (obj == null) {
                return "";
            }
            return obj.toString();
        }
    }

    protected long Af(int i) {
        if (this.Bg instanceof long[]) {
            return ((long[]) this.Bg)[i];
        }
        if (this.Bg instanceof byte[]) {
            return (long) ((byte[]) this.Bg)[i];
        }
        throw new IllegalArgumentException("Cannot get integer value from " + C0514f.Aw(this.Bb));
    }

    protected byte[] Ae() {
        return (byte[]) this.Bg;
    }

    protected C0513e Ag(int i) {
        if (this.Bb == (short) 10 || this.Bb == (short) 5) {
            return ((C0513e[]) this.Bg)[i];
        }
        throw new IllegalArgumentException("Cannot get RATIONAL value from " + C0514f.Aw(this.Bb));
    }

    protected void Ah(byte[] bArr) {
        Az(bArr, 0, bArr.length);
    }

    protected void Az(byte[] bArr, int i, int i2) {
        if (this.Bb == (short) 7 || this.Bb == (short) 1) {
            byte[] bArr2 = (byte[]) this.Bg;
            if (i2 > this.Ba) {
                i2 = this.Ba;
            }
            C0774a.boG(bArr2, 0, bArr, i, i2);
            return;
        }
        throw new IllegalArgumentException("Cannot get BYTE value from " + C0514f.Aw(this.Bb));
    }

    protected int Ad() {
        return this.Be;
    }

    protected void An(int i) {
        this.Be = i;
    }

    protected void AG(boolean z) {
        this.Bc = z;
    }

    protected boolean AD() {
        return this.Bc;
    }

    private boolean Aq(int i) {
        if (!this.Bc || this.Ba == i) {
            return false;
        }
        return true;
    }

    private static String Aw(short s) {
        switch (s) {
            case (short) 1:
                return "UNSIGNED_BYTE";
            case (short) 2:
                return "ASCII";
            case (short) 3:
                return "UNSIGNED_SHORT";
            case (short) 4:
                return "UNSIGNED_LONG";
            case (short) 5:
                return "UNSIGNED_RATIONAL";
            case (short) 7:
                return "UNDEFINED";
            case (short) 9:
                return "LONG";
            case (short) 10:
                return "RATIONAL";
            default:
                return "";
        }
    }

    private boolean Av(int[] iArr) {
        for (int i : iArr) {
            if (i > 65535 || i < 0) {
                return true;
            }
        }
        return false;
    }

    private boolean As(long[] jArr) {
        for (long j : jArr) {
            if (j < 0 || j > 4294967295L) {
                return true;
            }
        }
        return false;
    }

    private boolean At(int[] iArr) {
        for (int i : iArr) {
            if (i < 0) {
                return true;
            }
        }
        return false;
    }

    private boolean Au(C0513e[] c0513eArr) {
        for (C0513e c0513e : c0513eArr) {
            if (c0513e.zX() < 0 || c0513e.zY() < 0 || c0513e.zX() > 4294967295L || c0513e.zY() > 4294967295L) {
                return true;
            }
        }
        return false;
    }

    private boolean Ar(C0513e[] c0513eArr) {
        for (C0513e c0513e : c0513eArr) {
            if (c0513e.zX() < -2147483648L || c0513e.zY() < -2147483648L || c0513e.zX() > 2147483647L || c0513e.zY() > 2147483647L) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj == null || !(obj instanceof C0514f)) {
            return false;
        }
        C0514f c0514f = (C0514f) obj;
        if (c0514f.Bf != this.Bf || c0514f.Ba != this.Ba || c0514f.Bb != this.Bb) {
            return false;
        }
        if (this.Bg == null) {
            if (c0514f.Bg == null) {
                z = true;
            }
            return z;
        } else if (c0514f.Bg == null) {
            return false;
        } else {
            if (this.Bg instanceof long[]) {
                if (c0514f.Bg instanceof long[]) {
                    return Arrays.equals((long[]) this.Bg, (long[]) c0514f.Bg);
                }
                return false;
            } else if (this.Bg instanceof C0513e[]) {
                if (c0514f.Bg instanceof C0513e[]) {
                    return Arrays.equals((C0513e[]) this.Bg, (C0513e[]) c0514f.Bg);
                }
                return false;
            } else if (!(this.Bg instanceof byte[])) {
                return this.Bg.equals(c0514f.Bg);
            } else {
                if (c0514f.Bg instanceof byte[]) {
                    return Arrays.equals((byte[]) this.Bg, (byte[]) c0514f.Bg);
                }
                return false;
            }
        }
    }

    public String toString() {
        return String.format("tag id: %04X\n", new Object[]{Short.valueOf(this.Bf)}) + "ifd id: " + this.Bd + "\ntype: " + C0514f.Aw(this.Bb) + "\ncount: " + this.Ba + "\noffset: " + this.Be + "\nvalue: " + Ax() + "\n";
    }
}
