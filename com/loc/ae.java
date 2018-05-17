package com.loc;

import android.content.Context;
import android.text.TextUtils;
import java.net.URLDecoder;
import java.security.Key;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONObject;

public class ae {
    public static int f193a = -1;
    public static String f194b = "";

    public static void m219a(String str) {
        C1241M.bws(str);
    }

    public static boolean bxv(String str, boolean z) {
        boolean z2 = true;
        try {
            String[] split = URLDecoder.decode(str).split("/");
            if (split[split.length - 1].charAt(4) % 2 != 1) {
                z2 = false;
            }
            return z2;
        } catch (Throwable th) {
            return z;
        }
    }

    public static be bxw(Context context, ag agVar, String str, Map map) {
        byte[] bwK;
        String a;
        C1264i e;
        JSONObject jSONObject;
        int i;
        aB aBVar;
        JSONObject jSONObject2;
        bL bLVar;
        bl blVar;
        Throwable th;
        String str2 = null;
        be beVar = new be();
        try {
            bwK = new C1248T().bwK(new aN(context, agVar, str, map));
            try {
                Object obj = new byte[16];
                Object obj2 = new byte[(bwK.length - 16)];
                System.arraycopy(bwK, 0, obj, 0, 16);
                System.arraycopy(bwK, 16, obj2, 0, bwK.length - 16);
                Key secretKeySpec = new SecretKeySpec(obj, "AES");
                Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
                instance.init(2, secretKeySpec, new IvParameterSpec(bv.m430a()));
                a = bv.m428a(instance.doFinal(obj2));
            } catch (C1264i e2) {
                e = e2;
                beVar.f307a = e.m561a();
                a = str2;
                if (bwK != null) {
                    return beVar;
                }
                if (TextUtils.isEmpty(a)) {
                    a = bv.m428a(bwK);
                }
                try {
                    jSONObject = new JSONObject(a);
                    if (jSONObject.has("status")) {
                        i = jSONObject.getInt("status");
                        if (i != 1) {
                            f193a = 1;
                        } else if (i == 0) {
                            f193a = 0;
                            if (jSONObject.has("info")) {
                                f194b = jSONObject.getString("info");
                            }
                            if (f193a == 0) {
                                beVar.f307a = f194b;
                                return beVar;
                            }
                        }
                        if (jSONObject.has("ver")) {
                            beVar.f308b = jSONObject.getInt("ver");
                        }
                        if (bv.bBl(jSONObject, "result")) {
                            aBVar = new aB();
                            aBVar.f159a = false;
                            aBVar.f160b = false;
                            beVar.bgO = aBVar;
                            jSONObject = jSONObject.getJSONObject("result");
                            if (bv.bBl(jSONObject, "11K")) {
                                aBVar.f159a = bxv(jSONObject.getJSONObject("11K").getString("able"), false);
                            }
                            if (bv.bBl(jSONObject, "11B")) {
                                beVar.bgF = jSONObject.getJSONObject("11B");
                            }
                            if (bv.bBl(jSONObject, "11C")) {
                                beVar.bgG = jSONObject.getJSONObject("11C");
                            }
                            if (bv.bBl(jSONObject, "11I")) {
                                beVar.bgH = jSONObject.getJSONObject("11I");
                            }
                            if (bv.bBl(jSONObject, "11H")) {
                                beVar.bgI = jSONObject.getJSONObject("11H");
                            }
                            if (bv.bBl(jSONObject, "11E")) {
                                beVar.bgJ = jSONObject.getJSONObject("11E");
                            }
                            if (bv.bBl(jSONObject, "11F")) {
                                beVar.bgK = jSONObject.getJSONObject("11F");
                            }
                            if (bv.bBl(jSONObject, "11G")) {
                                beVar.bgL = jSONObject.getJSONObject("11G");
                            }
                            if (bv.bBl(jSONObject, "001")) {
                                jSONObject2 = jSONObject.getJSONObject("001");
                                bLVar = new bL();
                                bxz(jSONObject2, bLVar);
                                beVar.bgP = bLVar;
                            }
                            if (bv.bBl(jSONObject, "002")) {
                                jSONObject2 = jSONObject.getJSONObject("002");
                                blVar = new bl();
                                bxy(jSONObject2, blVar);
                                beVar.bgQ = blVar;
                            }
                            if (bv.bBl(jSONObject, "006")) {
                                beVar.bgM = jSONObject.getJSONObject("006");
                            }
                            if (bv.bBl(jSONObject, "010")) {
                                beVar.bgN = jSONObject.getJSONObject("010");
                            }
                        }
                        return beVar;
                    }
                } catch (Throwable th2) {
                    C1259s.bwd(th2, "AuthConfigManager", "loadConfig");
                }
                return beVar;
            } catch (IllegalBlockSizeException e3) {
                a = str2;
                if (bwK != null) {
                    return beVar;
                }
                if (TextUtils.isEmpty(a)) {
                    a = bv.m428a(bwK);
                }
                jSONObject = new JSONObject(a);
                if (jSONObject.has("status")) {
                    i = jSONObject.getInt("status");
                    if (i != 1) {
                        f193a = 1;
                    } else if (i == 0) {
                        f193a = 0;
                        if (jSONObject.has("info")) {
                            f194b = jSONObject.getString("info");
                        }
                        if (f193a == 0) {
                            beVar.f307a = f194b;
                            return beVar;
                        }
                    }
                    if (jSONObject.has("ver")) {
                        beVar.f308b = jSONObject.getInt("ver");
                    }
                    if (bv.bBl(jSONObject, "result")) {
                        aBVar = new aB();
                        aBVar.f159a = false;
                        aBVar.f160b = false;
                        beVar.bgO = aBVar;
                        jSONObject = jSONObject.getJSONObject("result");
                        if (bv.bBl(jSONObject, "11K")) {
                            aBVar.f159a = bxv(jSONObject.getJSONObject("11K").getString("able"), false);
                        }
                        if (bv.bBl(jSONObject, "11B")) {
                            beVar.bgF = jSONObject.getJSONObject("11B");
                        }
                        if (bv.bBl(jSONObject, "11C")) {
                            beVar.bgG = jSONObject.getJSONObject("11C");
                        }
                        if (bv.bBl(jSONObject, "11I")) {
                            beVar.bgH = jSONObject.getJSONObject("11I");
                        }
                        if (bv.bBl(jSONObject, "11H")) {
                            beVar.bgI = jSONObject.getJSONObject("11H");
                        }
                        if (bv.bBl(jSONObject, "11E")) {
                            beVar.bgJ = jSONObject.getJSONObject("11E");
                        }
                        if (bv.bBl(jSONObject, "11F")) {
                            beVar.bgK = jSONObject.getJSONObject("11F");
                        }
                        if (bv.bBl(jSONObject, "11G")) {
                            beVar.bgL = jSONObject.getJSONObject("11G");
                        }
                        if (bv.bBl(jSONObject, "001")) {
                            jSONObject2 = jSONObject.getJSONObject("001");
                            bLVar = new bL();
                            bxz(jSONObject2, bLVar);
                            beVar.bgP = bLVar;
                        }
                        if (bv.bBl(jSONObject, "002")) {
                            jSONObject2 = jSONObject.getJSONObject("002");
                            blVar = new bl();
                            bxy(jSONObject2, blVar);
                            beVar.bgQ = blVar;
                        }
                        if (bv.bBl(jSONObject, "006")) {
                            beVar.bgM = jSONObject.getJSONObject("006");
                        }
                        if (bv.bBl(jSONObject, "010")) {
                            beVar.bgN = jSONObject.getJSONObject("010");
                        }
                    }
                    return beVar;
                }
                return beVar;
            } catch (Throwable th3) {
                th2 = th3;
                C1259s.bwd(th2, "ConfigManager", "loadConfig");
                a = str2;
                if (bwK != null) {
                    return beVar;
                }
                if (TextUtils.isEmpty(a)) {
                    a = bv.m428a(bwK);
                }
                jSONObject = new JSONObject(a);
                if (jSONObject.has("status")) {
                    i = jSONObject.getInt("status");
                    if (i != 1) {
                        f193a = 1;
                    } else if (i == 0) {
                        f193a = 0;
                        if (jSONObject.has("info")) {
                            f194b = jSONObject.getString("info");
                        }
                        if (f193a == 0) {
                            beVar.f307a = f194b;
                            return beVar;
                        }
                    }
                    if (jSONObject.has("ver")) {
                        beVar.f308b = jSONObject.getInt("ver");
                    }
                    if (bv.bBl(jSONObject, "result")) {
                        aBVar = new aB();
                        aBVar.f159a = false;
                        aBVar.f160b = false;
                        beVar.bgO = aBVar;
                        jSONObject = jSONObject.getJSONObject("result");
                        if (bv.bBl(jSONObject, "11K")) {
                            aBVar.f159a = bxv(jSONObject.getJSONObject("11K").getString("able"), false);
                        }
                        if (bv.bBl(jSONObject, "11B")) {
                            beVar.bgF = jSONObject.getJSONObject("11B");
                        }
                        if (bv.bBl(jSONObject, "11C")) {
                            beVar.bgG = jSONObject.getJSONObject("11C");
                        }
                        if (bv.bBl(jSONObject, "11I")) {
                            beVar.bgH = jSONObject.getJSONObject("11I");
                        }
                        if (bv.bBl(jSONObject, "11H")) {
                            beVar.bgI = jSONObject.getJSONObject("11H");
                        }
                        if (bv.bBl(jSONObject, "11E")) {
                            beVar.bgJ = jSONObject.getJSONObject("11E");
                        }
                        if (bv.bBl(jSONObject, "11F")) {
                            beVar.bgK = jSONObject.getJSONObject("11F");
                        }
                        if (bv.bBl(jSONObject, "11G")) {
                            beVar.bgL = jSONObject.getJSONObject("11G");
                        }
                        if (bv.bBl(jSONObject, "001")) {
                            jSONObject2 = jSONObject.getJSONObject("001");
                            bLVar = new bL();
                            bxz(jSONObject2, bLVar);
                            beVar.bgP = bLVar;
                        }
                        if (bv.bBl(jSONObject, "002")) {
                            jSONObject2 = jSONObject.getJSONObject("002");
                            blVar = new bl();
                            bxy(jSONObject2, blVar);
                            beVar.bgQ = blVar;
                        }
                        if (bv.bBl(jSONObject, "006")) {
                            beVar.bgM = jSONObject.getJSONObject("006");
                        }
                        if (bv.bBl(jSONObject, "010")) {
                            beVar.bgN = jSONObject.getJSONObject("010");
                        }
                    }
                    return beVar;
                }
                return beVar;
            }
        } catch (C1264i e4) {
            e = e4;
            bwK = str2;
            beVar.f307a = e.m561a();
            a = str2;
            if (bwK != null) {
                return beVar;
            }
            if (TextUtils.isEmpty(a)) {
                a = bv.m428a(bwK);
            }
            jSONObject = new JSONObject(a);
            if (jSONObject.has("status")) {
                i = jSONObject.getInt("status");
                if (i != 1) {
                    f193a = 1;
                } else if (i == 0) {
                    f193a = 0;
                    if (jSONObject.has("info")) {
                        f194b = jSONObject.getString("info");
                    }
                    if (f193a == 0) {
                        beVar.f307a = f194b;
                        return beVar;
                    }
                }
                if (jSONObject.has("ver")) {
                    beVar.f308b = jSONObject.getInt("ver");
                }
                if (bv.bBl(jSONObject, "result")) {
                    aBVar = new aB();
                    aBVar.f159a = false;
                    aBVar.f160b = false;
                    beVar.bgO = aBVar;
                    jSONObject = jSONObject.getJSONObject("result");
                    if (bv.bBl(jSONObject, "11K")) {
                        aBVar.f159a = bxv(jSONObject.getJSONObject("11K").getString("able"), false);
                    }
                    if (bv.bBl(jSONObject, "11B")) {
                        beVar.bgF = jSONObject.getJSONObject("11B");
                    }
                    if (bv.bBl(jSONObject, "11C")) {
                        beVar.bgG = jSONObject.getJSONObject("11C");
                    }
                    if (bv.bBl(jSONObject, "11I")) {
                        beVar.bgH = jSONObject.getJSONObject("11I");
                    }
                    if (bv.bBl(jSONObject, "11H")) {
                        beVar.bgI = jSONObject.getJSONObject("11H");
                    }
                    if (bv.bBl(jSONObject, "11E")) {
                        beVar.bgJ = jSONObject.getJSONObject("11E");
                    }
                    if (bv.bBl(jSONObject, "11F")) {
                        beVar.bgK = jSONObject.getJSONObject("11F");
                    }
                    if (bv.bBl(jSONObject, "11G")) {
                        beVar.bgL = jSONObject.getJSONObject("11G");
                    }
                    if (bv.bBl(jSONObject, "001")) {
                        jSONObject2 = jSONObject.getJSONObject("001");
                        bLVar = new bL();
                        bxz(jSONObject2, bLVar);
                        beVar.bgP = bLVar;
                    }
                    if (bv.bBl(jSONObject, "002")) {
                        jSONObject2 = jSONObject.getJSONObject("002");
                        blVar = new bl();
                        bxy(jSONObject2, blVar);
                        beVar.bgQ = blVar;
                    }
                    if (bv.bBl(jSONObject, "006")) {
                        beVar.bgM = jSONObject.getJSONObject("006");
                    }
                    if (bv.bBl(jSONObject, "010")) {
                        beVar.bgN = jSONObject.getJSONObject("010");
                    }
                }
                return beVar;
            }
            return beVar;
        } catch (IllegalBlockSizeException e5) {
            bwK = str2;
            a = str2;
            if (bwK != null) {
                return beVar;
            }
            if (TextUtils.isEmpty(a)) {
                a = bv.m428a(bwK);
            }
            jSONObject = new JSONObject(a);
            if (jSONObject.has("status")) {
                i = jSONObject.getInt("status");
                if (i != 1) {
                    f193a = 1;
                } else if (i == 0) {
                    f193a = 0;
                    if (jSONObject.has("info")) {
                        f194b = jSONObject.getString("info");
                    }
                    if (f193a == 0) {
                        beVar.f307a = f194b;
                        return beVar;
                    }
                }
                if (jSONObject.has("ver")) {
                    beVar.f308b = jSONObject.getInt("ver");
                }
                if (bv.bBl(jSONObject, "result")) {
                    aBVar = new aB();
                    aBVar.f159a = false;
                    aBVar.f160b = false;
                    beVar.bgO = aBVar;
                    jSONObject = jSONObject.getJSONObject("result");
                    if (bv.bBl(jSONObject, "11K")) {
                        aBVar.f159a = bxv(jSONObject.getJSONObject("11K").getString("able"), false);
                    }
                    if (bv.bBl(jSONObject, "11B")) {
                        beVar.bgF = jSONObject.getJSONObject("11B");
                    }
                    if (bv.bBl(jSONObject, "11C")) {
                        beVar.bgG = jSONObject.getJSONObject("11C");
                    }
                    if (bv.bBl(jSONObject, "11I")) {
                        beVar.bgH = jSONObject.getJSONObject("11I");
                    }
                    if (bv.bBl(jSONObject, "11H")) {
                        beVar.bgI = jSONObject.getJSONObject("11H");
                    }
                    if (bv.bBl(jSONObject, "11E")) {
                        beVar.bgJ = jSONObject.getJSONObject("11E");
                    }
                    if (bv.bBl(jSONObject, "11F")) {
                        beVar.bgK = jSONObject.getJSONObject("11F");
                    }
                    if (bv.bBl(jSONObject, "11G")) {
                        beVar.bgL = jSONObject.getJSONObject("11G");
                    }
                    if (bv.bBl(jSONObject, "001")) {
                        jSONObject2 = jSONObject.getJSONObject("001");
                        bLVar = new bL();
                        bxz(jSONObject2, bLVar);
                        beVar.bgP = bLVar;
                    }
                    if (bv.bBl(jSONObject, "002")) {
                        jSONObject2 = jSONObject.getJSONObject("002");
                        blVar = new bl();
                        bxy(jSONObject2, blVar);
                        beVar.bgQ = blVar;
                    }
                    if (bv.bBl(jSONObject, "006")) {
                        beVar.bgM = jSONObject.getJSONObject("006");
                    }
                    if (bv.bBl(jSONObject, "010")) {
                        beVar.bgN = jSONObject.getJSONObject("010");
                    }
                }
                return beVar;
            }
            return beVar;
        } catch (Throwable th4) {
            th2 = th4;
            bwK = str2;
            C1259s.bwd(th2, "ConfigManager", "loadConfig");
            a = str2;
            if (bwK != null) {
                return beVar;
            }
            if (TextUtils.isEmpty(a)) {
                a = bv.m428a(bwK);
            }
            jSONObject = new JSONObject(a);
            if (jSONObject.has("status")) {
                i = jSONObject.getInt("status");
                if (i != 1) {
                    f193a = 1;
                } else if (i == 0) {
                    f193a = 0;
                    if (jSONObject.has("info")) {
                        f194b = jSONObject.getString("info");
                    }
                    if (f193a == 0) {
                        beVar.f307a = f194b;
                        return beVar;
                    }
                }
                if (jSONObject.has("ver")) {
                    beVar.f308b = jSONObject.getInt("ver");
                }
                if (bv.bBl(jSONObject, "result")) {
                    aBVar = new aB();
                    aBVar.f159a = false;
                    aBVar.f160b = false;
                    beVar.bgO = aBVar;
                    jSONObject = jSONObject.getJSONObject("result");
                    if (bv.bBl(jSONObject, "11K")) {
                        aBVar.f159a = bxv(jSONObject.getJSONObject("11K").getString("able"), false);
                    }
                    if (bv.bBl(jSONObject, "11B")) {
                        beVar.bgF = jSONObject.getJSONObject("11B");
                    }
                    if (bv.bBl(jSONObject, "11C")) {
                        beVar.bgG = jSONObject.getJSONObject("11C");
                    }
                    if (bv.bBl(jSONObject, "11I")) {
                        beVar.bgH = jSONObject.getJSONObject("11I");
                    }
                    if (bv.bBl(jSONObject, "11H")) {
                        beVar.bgI = jSONObject.getJSONObject("11H");
                    }
                    if (bv.bBl(jSONObject, "11E")) {
                        beVar.bgJ = jSONObject.getJSONObject("11E");
                    }
                    if (bv.bBl(jSONObject, "11F")) {
                        beVar.bgK = jSONObject.getJSONObject("11F");
                    }
                    if (bv.bBl(jSONObject, "11G")) {
                        beVar.bgL = jSONObject.getJSONObject("11G");
                    }
                    if (bv.bBl(jSONObject, "001")) {
                        jSONObject2 = jSONObject.getJSONObject("001");
                        bLVar = new bL();
                        bxz(jSONObject2, bLVar);
                        beVar.bgP = bLVar;
                    }
                    if (bv.bBl(jSONObject, "002")) {
                        jSONObject2 = jSONObject.getJSONObject("002");
                        blVar = new bl();
                        bxy(jSONObject2, blVar);
                        beVar.bgQ = blVar;
                    }
                    if (bv.bBl(jSONObject, "006")) {
                        beVar.bgM = jSONObject.getJSONObject("006");
                    }
                    if (bv.bBl(jSONObject, "010")) {
                        beVar.bgN = jSONObject.getJSONObject("010");
                    }
                }
                return beVar;
            }
            return beVar;
        }
        if (bwK != null) {
            return beVar;
        }
        if (TextUtils.isEmpty(a)) {
            a = bv.m428a(bwK);
        }
        jSONObject = new JSONObject(a);
        if (jSONObject.has("status")) {
            i = jSONObject.getInt("status");
            if (i != 1) {
                f193a = 1;
            } else if (i == 0) {
                f193a = 0;
                if (jSONObject.has("info")) {
                    f194b = jSONObject.getString("info");
                }
                if (f193a == 0) {
                    beVar.f307a = f194b;
                    return beVar;
                }
            }
            if (jSONObject.has("ver")) {
                beVar.f308b = jSONObject.getInt("ver");
            }
            if (bv.bBl(jSONObject, "result")) {
                aBVar = new aB();
                aBVar.f159a = false;
                aBVar.f160b = false;
                beVar.bgO = aBVar;
                jSONObject = jSONObject.getJSONObject("result");
                if (bv.bBl(jSONObject, "11K")) {
                    aBVar.f159a = bxv(jSONObject.getJSONObject("11K").getString("able"), false);
                }
                if (bv.bBl(jSONObject, "11B")) {
                    beVar.bgF = jSONObject.getJSONObject("11B");
                }
                if (bv.bBl(jSONObject, "11C")) {
                    beVar.bgG = jSONObject.getJSONObject("11C");
                }
                if (bv.bBl(jSONObject, "11I")) {
                    beVar.bgH = jSONObject.getJSONObject("11I");
                }
                if (bv.bBl(jSONObject, "11H")) {
                    beVar.bgI = jSONObject.getJSONObject("11H");
                }
                if (bv.bBl(jSONObject, "11E")) {
                    beVar.bgJ = jSONObject.getJSONObject("11E");
                }
                if (bv.bBl(jSONObject, "11F")) {
                    beVar.bgK = jSONObject.getJSONObject("11F");
                }
                if (bv.bBl(jSONObject, "11G")) {
                    beVar.bgL = jSONObject.getJSONObject("11G");
                }
                if (bv.bBl(jSONObject, "001")) {
                    jSONObject2 = jSONObject.getJSONObject("001");
                    bLVar = new bL();
                    bxz(jSONObject2, bLVar);
                    beVar.bgP = bLVar;
                }
                if (bv.bBl(jSONObject, "002")) {
                    jSONObject2 = jSONObject.getJSONObject("002");
                    blVar = new bl();
                    bxy(jSONObject2, blVar);
                    beVar.bgQ = blVar;
                }
                if (bv.bBl(jSONObject, "006")) {
                    beVar.bgM = jSONObject.getJSONObject("006");
                }
                if (bv.bBl(jSONObject, "010")) {
                    beVar.bgN = jSONObject.getJSONObject("010");
                }
            }
            return beVar;
        }
        return beVar;
    }

    public static String bxx(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return "";
        }
        String str2 = "";
        if (jSONObject.has(str) && !jSONObject.getString(str).equals("[]")) {
            str2 = jSONObject.optString(str);
        }
        return str2;
    }

    private static void bxy(JSONObject jSONObject, bl blVar) {
        if (jSONObject != null) {
            try {
                String bxx = bxx(jSONObject, "md5");
                String bxx2 = bxx(jSONObject, "url");
                blVar.f329b = bxx;
                blVar.f328a = bxx2;
            } catch (Throwable th) {
                C1259s.bwd(th, "ConfigManager", "parseSDKCoordinate");
            }
        }
    }

    private static void bxz(JSONObject jSONObject, bL bLVar) {
        if (jSONObject != null) {
            try {
                Object bxx = bxx(jSONObject, "md5");
                Object bxx2 = bxx(jSONObject, "url");
                Object bxx3 = bxx(jSONObject, "sdkversion");
                if (!TextUtils.isEmpty(bxx) && !TextUtils.isEmpty(bxx2) && !TextUtils.isEmpty(bxx3)) {
                    bLVar.f265a = bxx2;
                    bLVar.f266b = bxx;
                    bLVar.f267c = bxx3;
                }
            } catch (Throwable th) {
                C1259s.bwd(th, "ConfigManager", "parseSDKUpdate");
            }
        }
    }
}
