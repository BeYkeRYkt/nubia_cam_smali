package com.loc;

import android.content.Context;
import android.os.Looper;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class ce extends aR {
    private static boolean f363a = true;
    private String[] bkz = new String[10];
    private int f364c = 0;
    private boolean f365d = false;
    private int f366e = 0;

    protected ce(int i) {
        super(i);
    }

    private void m496b(String str) {
        try {
            if (this.f364c > 9) {
                this.f364c = 0;
            }
            this.bkz[this.f364c] = str;
            this.f364c++;
        } catch (Throwable th) {
            C1259s.bwd(th, "ANRWriter", "addData");
        }
    }

    private String m497d() {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            int i = this.f364c;
            while (i < 10 && i <= 9) {
                stringBuilder.append(this.bkz[i]);
                i++;
            }
            for (i = 0; i < this.f364c; i++) {
                stringBuilder.append(this.bkz[i]);
            }
        } catch (Throwable th) {
            C1259s.bwd(th, "ANRWriter", "getLogInfo");
        }
        return stringBuilder.toString();
    }

    protected String mo939a(List list) {
        InputStream fileInputStream;
        cg cgVar;
        cg cgVar2;
        InputStream inputStream;
        Throwable e;
        try {
            File file = new File("/data/anr/traces.txt");
            if (!file.exists()) {
                return null;
            }
            fileInputStream = new FileInputStream(file);
            try {
                cgVar = new cg(fileInputStream, C1234G.bdY);
                Object obj = null;
                while (true) {
                    try {
                        String str;
                        Object obj2;
                        String a = cgVar.m501a();
                        if (a.contains("pid")) {
                            while (!a.contains("\"main\"")) {
                                a = cgVar.m501a();
                            }
                            str = a;
                            int i = 1;
                        } else {
                            str = a;
                            obj2 = obj;
                        }
                        obj = !str.equals("") ? obj2 : null;
                        if (obj != null) {
                            m496b(str);
                            if (this.f366e == 5) {
                                break;
                            } else if (this.f365d) {
                                this.f366e++;
                            } else {
                                for (ag agVar : list) {
                                    this.f365d = aR.bAb(agVar.m244e(), str);
                                    if (this.f365d) {
                                        bzV(agVar);
                                    }
                                }
                            }
                        }
                    } catch (EOFException e2) {
                    } catch (FileNotFoundException e3) {
                        cgVar2 = cgVar;
                        inputStream = fileInputStream;
                    } catch (IOException e4) {
                        e = e4;
                    }
                }
                if (cgVar != null) {
                    try {
                        cgVar.close();
                    } catch (Throwable e5) {
                        C1259s.bwd(e5, "ANRWriter", "initLog1");
                    } catch (Throwable e52) {
                        C1259s.bwd(e52, "ANRWriter", "initLog2");
                    }
                }
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable e522) {
                        C1259s.bwd(e522, "ANRWriter", "initLog3");
                    } catch (Throwable e5222) {
                        C1259s.bwd(e5222, "ANRWriter", "initLog4");
                    }
                }
            } catch (FileNotFoundException e6) {
                cgVar2 = null;
                inputStream = fileInputStream;
                if (cgVar2 != null) {
                    try {
                        cgVar2.close();
                    } catch (Throwable e52222) {
                        C1259s.bwd(e52222, "ANRWriter", "initLog1");
                    } catch (Throwable e522222) {
                        C1259s.bwd(e522222, "ANRWriter", "initLog2");
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable e5222222) {
                        C1259s.bwd(e5222222, "ANRWriter", "initLog3");
                    } catch (Throwable e52222222) {
                        C1259s.bwd(e52222222, "ANRWriter", "initLog4");
                    }
                }
                return this.f365d ? m497d() : null;
            } catch (IOException e7) {
                e52222222 = e7;
                cgVar = null;
                try {
                    C1259s.bwd(e52222222, "ANRWriter", "initLog");
                    if (cgVar != null) {
                        try {
                            cgVar.close();
                        } catch (Throwable e522222222) {
                            C1259s.bwd(e522222222, "ANRWriter", "initLog1");
                        } catch (Throwable e5222222222) {
                            C1259s.bwd(e5222222222, "ANRWriter", "initLog2");
                        }
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable e52222222222) {
                            C1259s.bwd(e52222222222, "ANRWriter", "initLog3");
                        } catch (Throwable e522222222222) {
                            C1259s.bwd(e522222222222, "ANRWriter", "initLog4");
                        }
                    }
                    if (this.f365d) {
                    }
                } catch (Throwable th) {
                    e522222222222 = th;
                    if (cgVar != null) {
                        try {
                            cgVar.close();
                        } catch (Throwable e8) {
                            C1259s.bwd(e8, "ANRWriter", "initLog1");
                        } catch (Throwable e82) {
                            C1259s.bwd(e82, "ANRWriter", "initLog2");
                        }
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable e822) {
                            C1259s.bwd(e822, "ANRWriter", "initLog3");
                        } catch (Throwable e8222) {
                            C1259s.bwd(e8222, "ANRWriter", "initLog4");
                        }
                    }
                    throw e522222222222;
                }
            } catch (Throwable th2) {
                e522222222222 = th2;
                cgVar = null;
                if (cgVar != null) {
                    cgVar.close();
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw e522222222222;
            }
            if (this.f365d) {
            }
        } catch (FileNotFoundException e9) {
            cgVar2 = null;
            inputStream = null;
            if (cgVar2 != null) {
                cgVar2.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            if (this.f365d) {
            }
        } catch (IOException e10) {
            e522222222222 = e10;
            cgVar = null;
            fileInputStream = null;
            C1259s.bwd(e522222222222, "ANRWriter", "initLog");
            if (cgVar != null) {
                cgVar.close();
            }
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            if (this.f365d) {
            }
        } catch (Throwable th3) {
            e522222222222 = th3;
            cgVar = null;
            fileInputStream = null;
            if (cgVar != null) {
                cgVar.close();
            }
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            throw e522222222222;
        }
    }

    protected boolean mo940a(Context context) {
        if (cn.bFP(context) != 1 || !f363a) {
            return false;
        }
        f363a = false;
        synchronized (Looper.getMainLooper()) {
            C1263h c1263h = new C1263h(context);
            av a = c1263h.m559a();
            if (a == null) {
                return true;
            } else if (a.m286c()) {
                a.bzb(false);
                c1263h.bvz(a);
                return true;
            } else {
                return false;
            }
        }
    }
}
