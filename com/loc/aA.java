package com.loc;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.Map;

public abstract class aA extends C1256q {
    protected Context f158a;
    protected ag bfP;

    public aA(Context context, ag agVar) {
        if (context != null) {
            this.f158a = context.getApplicationContext();
        }
        this.bfP = agVar;
    }

    private byte[] m157i() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(bv.m431a("PANDORA$"));
            byteArrayOutputStream.write(new byte[]{(byte) 1});
            byteArrayOutputStream.write(new byte[]{(byte) 0});
            byte[] toByteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                C1259s.bwd(th, "BinaryRequest", "getBinaryHead");
            }
            return toByteArray;
        } catch (Throwable th2) {
            C1259s.bwd(th2, "BinaryRequest", "getBinaryHead");
        }
        return null;
    }

    private byte[] m158j() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bzd = bzd();
            if (bzd != null) {
                if (bzd.length != 0) {
                    byteArrayOutputStream.write(new byte[]{(byte) 1});
                    byteArrayOutputStream.write(m160a(bzd));
                    byteArrayOutputStream.write(bzd);
                    bzd = byteArrayOutputStream.toByteArray();
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th) {
                        C1259s.bwd(th, "BinaryRequest", "getRequestRawData");
                    }
                    return bzd;
                }
            }
            byteArrayOutputStream.write(new byte[]{(byte) 0});
            bzd = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                C1259s.bwd(th2, "BinaryRequest", "getRequestRawData");
            }
            return bzd;
        } catch (Throwable th3) {
            C1259s.bwd(th3, "BinaryRequest", "getRequestRawData");
        }
        return new byte[]{(byte) 0};
    }

    private byte[] m159k() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bze = bze();
            if (bze != null) {
                if (bze.length != 0) {
                    byteArrayOutputStream.write(new byte[]{(byte) 1});
                    bze = bZ.bDW(this.f158a, bze);
                    byteArrayOutputStream.write(m160a(bze));
                    byteArrayOutputStream.write(bze);
                    bze = byteArrayOutputStream.toByteArray();
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th) {
                        C1259s.bwd(th, "BinaryRequest", "getRequestEncryptData");
                    }
                    return bze;
                }
            }
            byteArrayOutputStream.write(new byte[]{(byte) 0});
            bze = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                C1259s.bwd(th2, "BinaryRequest", "getRequestEncryptData");
            }
            return bze;
        } catch (Throwable th3) {
            C1259s.bwd(th3, "BinaryRequest", "getRequestEncryptData");
        }
        return new byte[]{(byte) 0};
    }

    protected byte[] m160a(byte[] bArr) {
        byte length = (byte) (bArr.length % 256);
        return new byte[]{(byte) ((byte) (bArr.length / 256)), (byte) length};
    }

    public abstract byte[] bzd();

    public abstract byte[] bze();

    public Map mo927c() {
        String f = C1241M.m101f(this.f158a);
        String a = bZ.m392a();
        String a2 = bZ.m394a(this.f158a, a, "key=" + f);
        Map hashMap = new HashMap();
        hashMap.put("ts", a);
        hashMap.put("key", f);
        hashMap.put("scode", a2);
        return hashMap;
    }

    public final byte[] mo928d() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(m157i());
            byteArrayOutputStream.write(m164f());
            byteArrayOutputStream.write(m158j());
            byteArrayOutputStream.write(m159k());
            byte[] toByteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                C1259s.bwd(th, "BinaryRequest", "getEntityBytes");
            }
            return toByteArray;
        } catch (Throwable th2) {
            C1259s.bwd(th2, "BinaryRequest", "getEntityBytes");
        }
        return null;
    }

    protected String mo934e() {
        return "2.1";
    }

    public byte[] m164f() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byte[] bDX = bZ.bDX(this.f158a, false);
            byte[] a = m160a(bDX);
            byteArrayOutputStream.write(new byte[]{(byte) 3});
            byteArrayOutputStream.write(a);
            byteArrayOutputStream.write(bDX);
            bDX = bv.m431a(mo934e());
            if (bDX != null) {
                if (bDX.length > 0) {
                    byteArrayOutputStream.write(m160a(bDX));
                    byteArrayOutputStream.write(bDX);
                    bDX = bv.m431a(String.format("platform=Android&sdkversion=%s&product=%s", new Object[]{this.bfP.m241b(), this.bfP.m239a()}));
                    if (bDX != null) {
                        if (bDX.length > 0) {
                            byteArrayOutputStream.write(m160a(bDX));
                            byteArrayOutputStream.write(bDX);
                            bDX = byteArrayOutputStream.toByteArray();
                            byteArrayOutputStream.close();
                            return bDX;
                        }
                    }
                    byteArrayOutputStream.write(new byte[]{(byte) 0, (byte) 0});
                    bDX = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return bDX;
                }
            }
            byteArrayOutputStream.write(new byte[]{(byte) 0, (byte) 0});
            bDX = bv.m431a(String.format("platform=Android&sdkversion=%s&product=%s", new Object[]{this.bfP.m241b(), this.bfP.m239a()}));
            if (bDX != null) {
                if (bDX.length > 0) {
                    byteArrayOutputStream.write(m160a(bDX));
                    byteArrayOutputStream.write(bDX);
                    bDX = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return bDX;
                }
            }
            byteArrayOutputStream.write(new byte[]{(byte) 0, (byte) 0});
            bDX = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                C1259s.bwd(th, "BinaryRequest", "getRequestEncryptData");
            }
            return bDX;
        } catch (Throwable th2) {
            C1259s.bwd(th2, "BinaryRequest", "getRequestEncryptData");
        }
        return new byte[]{(byte) 0};
    }
}
