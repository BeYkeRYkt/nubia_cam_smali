package com.loc;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class cl {
    static String m505a(Context context) {
        return context.getFilesDir().getAbsolutePath() + File.separator + "dex";
    }

    static String m506a(Context context, String str) {
        return m505a(context) + File.separator + str;
    }

    static String m507a(Context context, String str, String str2) {
        return bU.m369b(str + str2 + cn.bFT(context)) + ".jar";
    }

    static String m508a(String str) {
        return str + ".dex";
    }

    static void m509a(List list) {
        for (int i = 0; i < list.size() - 1; i++) {
            for (int i2 = i + 1; i2 < list.size(); i2++) {
                bC bCVar = (bC) list.get(i);
                bC bCVar2 = (bC) list.get(i2);
                if (ai.m246a(bCVar2.m299d(), bCVar.m299d()) > 0) {
                    list.set(i, bCVar2);
                    list.set(i2, bCVar);
                }
            }
        }
    }

    static boolean m510a(String str, String str2) {
        String a = bU.m367a(str);
        return a != null && a.equalsIgnoreCase(str2);
    }

    static String m511b(Context context, String str, String str2) {
        return m506a(context, m507a(context, str, str2));
    }

    public static void bFA(C1268m c1268m, Context context, ag agVar) {
        String a = agVar.m239a();
        String a2 = m507a(context, a, agVar.m241b());
        bC bBN = bz.bBN(c1268m, a2);
        if (bBN != null) {
            bFy(context, c1268m, a2);
            List bvL = c1268m.bvL(bC.m293a(a, bBN.m299d()), bC.class);
            if (bvL != null && bvL.size() > 0) {
                bC bCVar = (bC) bvL.get(0);
                bCVar.bCa("errorstatus");
                bz.bBM(c1268m, bCVar, bC.m294b(bCVar.m296a()));
                File file = new File(m506a(context, bCVar.m296a()));
                if (file.exists()) {
                    file.delete();
                }
            }
        }
    }

    static void bFB(Context context, C1268m c1268m, ag agVar, bC bCVar, String str) {
        InputStream fileInputStream;
        FileOutputStream fileOutputStream;
        IOException e;
        FileNotFoundException e2;
        Throwable th;
        FileOutputStream fileOutputStream2 = null;
        try {
            String a = agVar.m239a();
            bFy(context, c1268m, bCVar.m296a());
            fileInputStream = new FileInputStream(new File(str));
            try {
                fileOutputStream = new FileOutputStream(new File(m511b(context, a, agVar.m241b())), true);
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    bz.bBM(c1268m, bCVar, bC.m294b(bCVar.m296a()));
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e32) {
                            e32.printStackTrace();
                        }
                    }
                } catch (FileNotFoundException e4) {
                    e2 = e4;
                    fileOutputStream2 = fileInputStream;
                    try {
                        throw e2;
                    } catch (Throwable th2) {
                        th = th2;
                        fileInputStream = fileOutputStream2;
                        fileOutputStream2 = fileOutputStream;
                    }
                } catch (IOException e5) {
                    e32 = e5;
                    fileOutputStream2 = fileOutputStream;
                    throw e32;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream2 = fileOutputStream;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e6) {
                            e6.printStackTrace();
                        }
                    }
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e62) {
                            e62.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e7) {
                e2 = e7;
                fileOutputStream = null;
                Object obj = fileInputStream;
                throw e2;
            } catch (IOException e8) {
                e32 = e8;
                throw e32;
            } catch (Throwable th4) {
                th = th4;
                throw th;
            }
        } catch (FileNotFoundException e9) {
            e2 = e9;
            fileOutputStream = null;
            throw e2;
        } catch (IOException e10) {
            e32 = e10;
            fileInputStream = null;
            throw e32;
        } catch (Throwable th5) {
            th = th5;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
            throw th;
        }
    }

    static boolean bFC(Context context, C1268m c1268m, String str, ag agVar) {
        return bFD(c1268m, str, m506a(context, str), agVar);
    }

    static boolean bFD(C1268m c1268m, String str, String str2, ag agVar) {
        bC bBN = bz.bBN(c1268m, str);
        return bBN != null && agVar.m241b().equals(bBN.m298c()) && m510a(str2, bBN.m297b());
    }

    static String bFE(Context context, C1268m c1268m, ag agVar) {
        List bvL = c1268m.bvL(bC.m295b(agVar.m239a(), "copy"), bC.class);
        if (bvL == null || bvL.size() == 0) {
            return null;
        }
        String d;
        m509a(bvL);
        for (int i = 0; i < bvL.size(); i++) {
            bC bCVar = (bC) bvL.get(i);
            if (bFC(context, c1268m, bCVar.m296a(), agVar)) {
                try {
                    bFB(context, c1268m, agVar, new bY(m507a(context, agVar.m239a(), agVar.m241b()), bCVar.m297b(), agVar.m239a(), agVar.m241b(), bCVar.m299d()).m391a("usedex").m390a(), m506a(context, bCVar.m296a()));
                    d = bCVar.m299d();
                    break;
                } catch (Throwable th) {
                    C1259s.bwd(th, "DexFileManager", "loadAvailableDynamicSDKFile");
                }
            } else {
                bFz(context, c1268m, bCVar.m296a());
            }
        }
        d = null;
        return d;
    }

    static void bFy(Context context, C1268m c1268m, String str) {
        bFz(context, c1268m, str);
        bFz(context, c1268m, m508a(str));
    }

    static void bFz(Context context, C1268m c1268m, String str) {
        File file = new File(m506a(context, str));
        if (file.exists()) {
            file.delete();
        }
        c1268m.bvD(bC.m294b(str), bC.class);
    }

    static void m512c(Context context, String str, String str2) {
        new aK(context, str, str2).start();
    }
}
