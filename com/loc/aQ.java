package com.loc;

import android.content.Context;
import android.os.Build;
import com.umeng.analytics.C1296a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class aQ {
    private static boolean f176a = true;

    public static void m193a(Context context) {
        try {
            if (m199g(context)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(new SimpleDateFormat("yyyyMMdd HHmmss").format(new Date()));
                stringBuffer.append(" ");
                stringBuffer.append(UUID.randomUUID().toString());
                stringBuffer.append(" ");
                if (stringBuffer.length() == 53) {
                    Object a = bv.m431a(stringBuffer.toString());
                    Object b = m194b(context);
                    Object obj = new byte[(a.length + b.length)];
                    System.arraycopy(a, 0, obj, 0, a.length);
                    System.arraycopy(b, 0, obj, a.length, b.length);
                    C1248T.m112a().bwL(new bF(bv.bBn(obj), "2"));
                }
            }
        } catch (Throwable e) {
            C1259s.bwd(e, "StatisticsManager", "updateStaticsData");
        } catch (Throwable e2) {
            C1259s.bwd(e2, "StatisticsManager", "updateStaticsData");
        }
    }

    private static byte[] m194b(Context context) {
        Object c = m195c(context);
        Object e = m197e(context);
        Object obj = new byte[(c.length + e.length)];
        System.arraycopy(c, 0, obj, 0, c.length);
        System.arraycopy(e, 0, obj, c.length, e.length);
        return bzQ(context, obj);
    }

    private static byte[] bzQ(Context context, byte[] bArr) {
        try {
            return bZ.bDW(context, bArr);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static byte[] bzR(cD cDVar, String str) {
        C1228A a;
        Throwable th;
        InputStream inputStream = null;
        byte[] bArr = new byte[0];
        try {
            a = cDVar.m458a(str);
            try {
                inputStream = a.m79a(0);
                bArr = new byte[inputStream.available()];
                inputStream.read(bArr);
                cDVar.bHe(str);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
                if (a != null) {
                    try {
                        a.close();
                    } catch (Throwable th22) {
                        th22.printStackTrace();
                    }
                }
                return bArr;
            } catch (Throwable th3) {
                th22 = th3;
                try {
                    th22.printStackTrace();
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th222) {
                            th222.printStackTrace();
                        }
                    }
                    if (a != null) {
                        try {
                            a.close();
                        } catch (Throwable th2222) {
                            th2222.printStackTrace();
                        }
                    }
                    return bArr;
                } catch (Throwable th4) {
                    th2222 = th4;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th5) {
                            th5.printStackTrace();
                        }
                    }
                    if (a != null) {
                        try {
                            a.close();
                        } catch (Throwable th52) {
                            th52.printStackTrace();
                        }
                    }
                    throw th2222;
                }
            }
        } catch (Throwable th6) {
            th2222 = th6;
            a = null;
            if (inputStream != null) {
                inputStream.close();
            }
            if (a != null) {
                a.close();
            }
            throw th2222;
        }
    }

    private static void bzS(Context context, long j) {
        FileOutputStream fileOutputStream;
        Throwable th;
        FileNotFoundException e;
        IOException e2;
        File file = new File(C1231D.m82a(context, "c.log"));
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
        }
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bv.m431a(String.valueOf(j)));
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
            } catch (FileNotFoundException e3) {
                e = e3;
                try {
                    e.printStackTrace();
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th22) {
                            th22.printStackTrace();
                        }
                    }
                } catch (Throwable th3) {
                    th22 = th3;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th4) {
                            th4.printStackTrace();
                        }
                    }
                    throw th22;
                }
            } catch (IOException e4) {
                e2 = e4;
                e2.printStackTrace();
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th222) {
                        th222.printStackTrace();
                    }
                }
            }
        } catch (FileNotFoundException e5) {
            e = e5;
            fileOutputStream = null;
            e.printStackTrace();
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
        } catch (IOException e6) {
            e2 = e6;
            fileOutputStream = null;
            e2.printStackTrace();
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
        } catch (Throwable th5) {
            th222 = th5;
            fileOutputStream = null;
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            throw th222;
        }
    }

    private static byte[] m195c(Context context) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[0];
        try {
            bv.bBi(byteArrayOutputStream, "1.2.12.5");
            bv.bBi(byteArrayOutputStream, cn.bFT(context));
            bv.bBi(byteArrayOutputStream, cn.bFL(context));
            bv.bBi(byteArrayOutputStream, cn.m526f(context));
            bv.bBi(byteArrayOutputStream, Build.MANUFACTURER);
            bv.bBi(byteArrayOutputStream, Build.MODEL);
            bv.bBi(byteArrayOutputStream, Build.DEVICE);
            bv.bBi(byteArrayOutputStream, cn.bFU(context));
            bv.bBi(byteArrayOutputStream, C1241M.m98c(context));
            bv.bBi(byteArrayOutputStream, C1241M.m99d(context));
            bv.bBi(byteArrayOutputStream, C1241M.m101f(context));
            byteArrayOutputStream.write(new byte[]{(byte) 0});
            byte[] toByteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
                return toByteArray;
            } catch (Throwable th) {
                th.printStackTrace();
                return toByteArray;
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
        return bArr;
    }

    private static int m196d(Context context) {
        int length;
        try {
            File file = new File(C1231D.m82a(context, C1231D.f115e));
            if (!file.exists()) {
                return 0;
            }
            length = file.list().length;
            return length;
        } catch (Throwable th) {
            C1259s.bwd(th, "StatisticsManager", "getFileNum");
            length = 0;
        }
    }

    private static byte[] m197e(Context context) {
        int i = 0;
        cD cDVar = null;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[0];
        String a = C1231D.m82a(context, C1231D.f115e);
        try {
            cDVar = cD.bGZ(new File(a), 1, 1, 10240);
            File file = new File(a);
            if (file != null && file.exists()) {
                String[] list = file.list();
                int length = list.length;
                while (i < length) {
                    String str = list[i];
                    if (str.contains(".0")) {
                        byteArrayOutputStream.write(bzR(cDVar, str.split("\\.")[0]));
                    }
                    i++;
                }
            }
            byte[] toByteArray = byteArrayOutputStream.toByteArray();
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (cDVar == null) {
                return toByteArray;
            }
            try {
                cDVar.close();
                return toByteArray;
            } catch (Throwable th) {
                th.printStackTrace();
                return toByteArray;
            }
        } catch (Throwable e2) {
            C1259s.bwd(e2, "StatisticsManager", "getContent");
            if (byteArrayOutputStream != null) {
                try {
                    byteArrayOutputStream.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            if (cDVar != null) {
                cDVar.close();
            }
        } catch (Throwable e22) {
            e22.printStackTrace();
        }
        return bArr;
    }

    private static long m198f(Context context) {
        FileInputStream fileInputStream;
        Throwable th;
        File file = new File(C1231D.m82a(context, "c.log"));
        if (!file.exists()) {
            return 0;
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[fileInputStream.available()];
                fileInputStream.read(bArr);
                long parseLong = Long.parseLong(bv.m428a(bArr));
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                }
                return parseLong;
            } catch (FileNotFoundException e) {
                th2 = e;
                C1259s.bwd(th2, "StatisticsManager", "getUpdateTime");
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th22) {
                        th22.printStackTrace();
                    }
                }
                return 0;
            } catch (IOException e2) {
                th22 = e2;
                C1259s.bwd(th22, "StatisticsManager", "getUpdateTime");
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th222) {
                        th222.printStackTrace();
                    }
                }
                return 0;
            } catch (Throwable th3) {
                th222 = th3;
                C1259s.bwd(th222, "StatisticsManager", "getUpdateTime");
                if (file != null) {
                    try {
                        if (file.exists()) {
                            file.delete();
                        }
                    } catch (Throwable th2222) {
                        th2222.printStackTrace();
                    }
                }
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th22222) {
                        th22222.printStackTrace();
                    }
                }
                return 0;
            }
        } catch (FileNotFoundException e3) {
            th22222 = e3;
            fileInputStream = null;
            C1259s.bwd(th22222, "StatisticsManager", "getUpdateTime");
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            return 0;
        } catch (IOException e4) {
            th22222 = e4;
            fileInputStream = null;
            C1259s.bwd(th22222, "StatisticsManager", "getUpdateTime");
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            return 0;
        } catch (Throwable th4) {
            th22222 = th4;
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            throw th22222;
        }
    }

    private static boolean m199g(Context context) {
        try {
            if (cn.bFP(context) != 1 || !f176a || m196d(context) < 100) {
                return false;
            }
            long f = m198f(context);
            long time = new Date().getTime();
            if (!(time - f >= C1296a.f552h)) {
                return false;
            }
            bzS(context, time);
            f176a = false;
            return true;
        } catch (Throwable th) {
            C1259s.bwd(th, "StatisticsManager", "isUpdate");
        }
        return false;
    }
}
