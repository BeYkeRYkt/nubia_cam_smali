package com.loc;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.umeng.analytics.ReportPolicy;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class C1268m {
    private static Map f491d = new HashMap();
    private ct bdk;
    private SQLiteDatabase bdl;
    private aC bdm;

    public C1268m(Context context, aC aCVar) {
        try {
            this.bdk = new ct(context.getApplicationContext(), aCVar.mo941a(), null, aCVar.mo942b(), aCVar);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.bdm = aCVar;
    }

    private SQLiteDatabase m566a(boolean z) {
        try {
            if (this.bdl == null) {
                this.bdl = this.bdk.getReadableDatabase();
            }
        } catch (Throwable th) {
            if (z) {
                th.printStackTrace();
            } else {
                C1259s.bwd(th, "DBOperation", "getReadAbleDataBase");
            }
        }
        return this.bdl;
    }

    public static synchronized aC bvB(Class cls) {
        aC aCVar;
        synchronized (C1268m.class) {
            if (f491d.get(cls) == null) {
                f491d.put(cls, cls.newInstance());
            }
            aCVar = (aC) f491d.get(cls);
        }
        return aCVar;
    }

    public static String bvC(Map map) {
        if (map == null) {
            return "";
        }
        StringBuilder stringBuilder = new StringBuilder();
        Object obj = 1;
        Iterator it = map.keySet().iterator();
        while (true) {
            Object obj2 = obj;
            if (!it.hasNext()) {
                return stringBuilder.toString();
            }
            String str = (String) it.next();
            if (obj2 == null) {
                stringBuilder.append(" and ").append(str).append(" = '").append((String) map.get(str)).append("'");
                obj = obj2;
            } else {
                stringBuilder.append(str).append(" = '").append((String) map.get(str)).append("'");
                obj = null;
            }
        }
    }

    private void bvJ(SQLiteDatabase sQLiteDatabase, Object obj) {
        C1254Y bvT = bvT(obj.getClass());
        Object bvS = bvS(bvT);
        if (!TextUtils.isEmpty(bvS) && obj != null && sQLiteDatabase != null) {
            ContentValues bvO = bvO(obj, bvT);
            if (bvO != null) {
                sQLiteDatabase.insert(bvS, null, bvO);
            }
        }
    }

    private Object bvM(Cursor cursor, Class cls, C1254Y c1254y) {
        Field[] bvP = bvP(cls, c1254y.m148b());
        Constructor declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
        declaredConstructor.setAccessible(true);
        Object newInstance = declaredConstructor.newInstance(new Object[0]);
        for (Field field : bvP) {
            field.setAccessible(true);
            Annotation annotation = field.getAnnotation(C1258b.class);
            if (annotation != null) {
                C1258b c1258b = (C1258b) annotation;
                int b = c1258b.m289b();
                int columnIndex = cursor.getColumnIndex(c1258b.m288a());
                switch (b) {
                    case 1:
                        field.set(newInstance, Short.valueOf(cursor.getShort(columnIndex)));
                        break;
                    case 2:
                        field.set(newInstance, Integer.valueOf(cursor.getInt(columnIndex)));
                        break;
                    case 3:
                        field.set(newInstance, Float.valueOf(cursor.getFloat(columnIndex)));
                        break;
                    case 4:
                        field.set(newInstance, Double.valueOf(cursor.getDouble(columnIndex)));
                        break;
                    case 5:
                        field.set(newInstance, Long.valueOf(cursor.getLong(columnIndex)));
                        break;
                    case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                        field.set(newInstance, cursor.getString(columnIndex));
                        break;
                    case 7:
                        field.set(newInstance, cursor.getBlob(columnIndex));
                        break;
                    default:
                        break;
                }
            }
        }
        return newInstance;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void bvN(java.lang.Object r5, java.lang.reflect.Field r6, android.content.ContentValues r7) {
        /*
        r4 = this;
        r0 = com.loc.C1258b.class;
        r0 = r6.getAnnotation(r0);
        if (r0 == 0) goto L_0x0012;
    L_0x0008:
        r0 = (com.loc.C1258b) r0;
        r1 = r0.m289b();
        switch(r1) {
            case 1: goto L_0x0028;
            case 2: goto L_0x0013;
            case 3: goto L_0x0069;
            case 4: goto L_0x0048;
            case 5: goto L_0x0038;
            case 6: goto L_0x0058;
            case 7: goto L_0x0079;
            default: goto L_0x0011;
        };
    L_0x0011:
        return;
    L_0x0012:
        return;
    L_0x0013:
        r1 = r6.getInt(r5);	 Catch:{ IllegalAccessException -> 0x0023 }
        r0 = r0.m288a();	 Catch:{ IllegalAccessException -> 0x0023 }
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ IllegalAccessException -> 0x0023 }
        r7.put(r0, r1);	 Catch:{ IllegalAccessException -> 0x0023 }
        goto L_0x0011;
    L_0x0023:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x0011;
    L_0x0028:
        r1 = r6.getShort(r5);	 Catch:{ IllegalAccessException -> 0x0023 }
        r0 = r0.m288a();	 Catch:{ IllegalAccessException -> 0x0023 }
        r1 = java.lang.Short.valueOf(r1);	 Catch:{ IllegalAccessException -> 0x0023 }
        r7.put(r0, r1);	 Catch:{ IllegalAccessException -> 0x0023 }
        goto L_0x0011;
    L_0x0038:
        r2 = r6.getLong(r5);	 Catch:{ IllegalAccessException -> 0x0023 }
        r0 = r0.m288a();	 Catch:{ IllegalAccessException -> 0x0023 }
        r1 = java.lang.Long.valueOf(r2);	 Catch:{ IllegalAccessException -> 0x0023 }
        r7.put(r0, r1);	 Catch:{ IllegalAccessException -> 0x0023 }
        goto L_0x0011;
    L_0x0048:
        r2 = r6.getDouble(r5);	 Catch:{ IllegalAccessException -> 0x0023 }
        r0 = r0.m288a();	 Catch:{ IllegalAccessException -> 0x0023 }
        r1 = java.lang.Double.valueOf(r2);	 Catch:{ IllegalAccessException -> 0x0023 }
        r7.put(r0, r1);	 Catch:{ IllegalAccessException -> 0x0023 }
        goto L_0x0011;
    L_0x0058:
        r1 = "";
        r1 = r6.get(r5);	 Catch:{ IllegalAccessException -> 0x0023 }
        r1 = (java.lang.String) r1;	 Catch:{ IllegalAccessException -> 0x0023 }
        r0 = r0.m288a();	 Catch:{ IllegalAccessException -> 0x0023 }
        r7.put(r0, r1);	 Catch:{ IllegalAccessException -> 0x0023 }
        goto L_0x0011;
    L_0x0069:
        r1 = r6.getFloat(r5);	 Catch:{ IllegalAccessException -> 0x0023 }
        r0 = r0.m288a();	 Catch:{ IllegalAccessException -> 0x0023 }
        r1 = java.lang.Float.valueOf(r1);	 Catch:{ IllegalAccessException -> 0x0023 }
        r7.put(r0, r1);	 Catch:{ IllegalAccessException -> 0x0023 }
        goto L_0x0011;
    L_0x0079:
        r1 = r6.get(r5);	 Catch:{ IllegalAccessException -> 0x0023 }
        r1 = (byte[]) r1;	 Catch:{ IllegalAccessException -> 0x0023 }
        r1 = (byte[]) r1;	 Catch:{ IllegalAccessException -> 0x0023 }
        r0 = r0.m288a();	 Catch:{ IllegalAccessException -> 0x0023 }
        r7.put(r0, r1);	 Catch:{ IllegalAccessException -> 0x0023 }
        goto L_0x0011;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.m.bvN(java.lang.Object, java.lang.reflect.Field, android.content.ContentValues):void");
    }

    private ContentValues bvO(Object obj, C1254Y c1254y) {
        ContentValues contentValues = new ContentValues();
        for (Field field : bvP(obj.getClass(), c1254y.m148b())) {
            field.setAccessible(true);
            bvN(obj, field, contentValues);
        }
        return contentValues;
    }

    private Field[] bvP(Class cls, boolean z) {
        return cls != null ? !z ? cls.getDeclaredFields() : cls.getSuperclass().getDeclaredFields() : null;
    }

    private SQLiteDatabase bvQ(boolean z) {
        try {
            if (this.bdl != null) {
                if (!this.bdl.isReadOnly()) {
                    return this.bdl;
                }
            }
            if (this.bdl != null) {
                this.bdl.close();
            }
            this.bdl = this.bdk.getWritableDatabase();
        } catch (Throwable th) {
            C1259s.bwd(th, "DBOperation", "getWriteDatabase");
        }
        return this.bdl;
    }

    private boolean bvR(Annotation annotation) {
        return annotation != null;
    }

    private String bvS(C1254Y c1254y) {
        return c1254y != null ? c1254y.m147a() : null;
    }

    private C1254Y bvT(Class cls) {
        Annotation annotation = cls.getAnnotation(C1254Y.class);
        return bvR(annotation) ? (C1254Y) annotation : null;
    }

    public void bvD(String str, Class cls) {
        synchronized (this.bdm) {
            Object bvS = bvS(bvT(cls));
            if (TextUtils.isEmpty(bvS)) {
                return;
            }
            this.bdl = bvQ(false);
            if (this.bdl != null) {
                try {
                    this.bdl.delete(bvS, str, null);
                    if (this.bdl != null) {
                        this.bdl.close();
                        this.bdl = null;
                    }
                } catch (Throwable th) {
                    if (this.bdl != null) {
                        this.bdl.close();
                        this.bdl = null;
                    }
                }
            }
        }
    }

    public void bvE(String str, Object obj, boolean z) {
        synchronized (this.bdm) {
            if (obj != null) {
                C1254Y bvT = bvT(obj.getClass());
                Object bvS = bvS(bvT);
                if (TextUtils.isEmpty(bvS)) {
                    return;
                }
                ContentValues bvO = bvO(obj, bvT);
                if (bvO != null) {
                    this.bdl = bvQ(z);
                    if (this.bdl != null) {
                        try {
                            this.bdl.update(bvS, bvO, str, null);
                            if (this.bdl != null) {
                                this.bdl.close();
                                this.bdl = null;
                            }
                        } catch (Throwable th) {
                            if (this.bdl != null) {
                                this.bdl.close();
                                this.bdl = null;
                            }
                        }
                    } else {
                        return;
                    }
                }
                return;
            }
        }
    }

    public void bvF(String str, Object obj) {
        bvE(str, obj, false);
    }

    public void bvG(Object obj, String str) {
        synchronized (this.bdm) {
            List bvL = bvL(str, obj.getClass());
            if (bvL == null || bvL.size() == 0) {
                bvH(obj);
            } else {
                bvF(str, obj);
            }
        }
    }

    public void bvH(Object obj) {
        bvI(obj, false);
    }

    public void bvI(Object obj, boolean z) {
        synchronized (this.bdm) {
            this.bdl = bvQ(z);
            if (this.bdl != null) {
                try {
                    bvJ(this.bdl, obj);
                    if (this.bdl != null) {
                        this.bdl.close();
                        this.bdl = null;
                    }
                } catch (Throwable th) {
                    if (this.bdl != null) {
                        this.bdl.close();
                        this.bdl = null;
                    }
                }
            }
        }
    }

    public java.util.List bvK(java.lang.String r13, java.lang.Class r14, boolean r15) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:50:0x0073
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.modifyBlocksTree(BlockProcessor.java:248)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.visit(BlockProcessor.java:38)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:306)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:199)
*/
        /*
        r12 = this;
        r8 = 0;
        r9 = r12.bdm;
        monitor-enter(r9);
        r10 = new java.util.ArrayList;	 Catch:{ all -> 0x0022 }
        r10.<init>();	 Catch:{ all -> 0x0022 }
        r11 = r12.bvT(r14);	 Catch:{ all -> 0x0022 }
        r1 = r12.bvS(r11);	 Catch:{ all -> 0x0022 }
        r0 = r12.bdl;	 Catch:{ all -> 0x0022 }
        if (r0 == 0) goto L_0x001b;	 Catch:{ all -> 0x0022 }
    L_0x0015:
        r0 = r12.bdl;	 Catch:{ all -> 0x0022 }
        if (r0 != 0) goto L_0x0025;	 Catch:{ all -> 0x0022 }
    L_0x0019:
        monitor-exit(r9);	 Catch:{ all -> 0x0022 }
        return r10;	 Catch:{ all -> 0x0022 }
    L_0x001b:
        r0 = r12.m566a(r15);	 Catch:{ all -> 0x0022 }
        r12.bdl = r0;	 Catch:{ all -> 0x0022 }
        goto L_0x0015;	 Catch:{ all -> 0x0022 }
    L_0x0022:
        r0 = move-exception;	 Catch:{ all -> 0x0022 }
        monitor-exit(r9);	 Catch:{ all -> 0x0022 }
        throw r0;
    L_0x0025:
        r0 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x0022 }
        if (r0 != 0) goto L_0x0019;
    L_0x002b:
        if (r13 == 0) goto L_0x0019;
    L_0x002d:
        r0 = r12.bdl;	 Catch:{ Throwable -> 0x0121, all -> 0x011d }
        r2 = 0;	 Catch:{ Throwable -> 0x0121, all -> 0x011d }
        r4 = 0;	 Catch:{ Throwable -> 0x0121, all -> 0x011d }
        r5 = 0;	 Catch:{ Throwable -> 0x0121, all -> 0x011d }
        r6 = 0;	 Catch:{ Throwable -> 0x0121, all -> 0x011d }
        r7 = 0;	 Catch:{ Throwable -> 0x0121, all -> 0x011d }
        r3 = r13;	 Catch:{ Throwable -> 0x0121, all -> 0x011d }
        r1 = r0.query(r1, r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x0121, all -> 0x011d }
        if (r1 == 0) goto L_0x0049;
    L_0x003b:
        r0 = r1.moveToNext();	 Catch:{ Throwable -> 0x0061 }
        if (r0 != 0) goto L_0x0059;
    L_0x0041:
        if (r1 != 0) goto L_0x00b9;
    L_0x0043:
        r0 = r12.bdl;	 Catch:{ all -> 0x0022 }
        if (r0 != 0) goto L_0x00cb;	 Catch:{ all -> 0x0022 }
    L_0x0047:
        monitor-exit(r9);	 Catch:{ all -> 0x0022 }
        return r10;
    L_0x0049:
        r0 = r12.bdl;	 Catch:{ Throwable -> 0x0061 }
        r0.close();	 Catch:{ Throwable -> 0x0061 }
        r0 = 0;	 Catch:{ Throwable -> 0x0061 }
        r12.bdl = r0;	 Catch:{ Throwable -> 0x0061 }
        if (r1 != 0) goto L_0x0092;
    L_0x0053:
        r0 = r12.bdl;	 Catch:{ all -> 0x0022 }
        if (r0 != 0) goto L_0x00a3;	 Catch:{ all -> 0x0022 }
    L_0x0057:
        monitor-exit(r9);	 Catch:{ all -> 0x0022 }
        return r10;
    L_0x0059:
        r0 = r12.bvM(r1, r14, r11);	 Catch:{ Throwable -> 0x0061 }
        r10.add(r0);	 Catch:{ Throwable -> 0x0061 }
        goto L_0x003b;
    L_0x0061:
        r0 = move-exception;
    L_0x0062:
        if (r15 == 0) goto L_0x0080;
    L_0x0064:
        if (r1 != 0) goto L_0x00e3;
    L_0x0066:
        r0 = r12.bdl;	 Catch:{ all -> 0x0022 }
        if (r0 == 0) goto L_0x0047;	 Catch:{ all -> 0x0022 }
    L_0x006a:
        r0 = r12.bdl;	 Catch:{ all -> 0x0022 }
        r0.close();	 Catch:{ all -> 0x0022 }
        r0 = 0;	 Catch:{ all -> 0x0022 }
        r12.bdl = r0;	 Catch:{ all -> 0x0022 }
        goto L_0x0047;	 Catch:{ all -> 0x0022 }
        r0 = move-exception;	 Catch:{ all -> 0x0022 }
        if (r15 != 0) goto L_0x0047;	 Catch:{ all -> 0x0022 }
    L_0x0076:
        r1 = "DataBase";	 Catch:{ all -> 0x0022 }
        r2 = "searchListData";	 Catch:{ all -> 0x0022 }
        com.loc.C1259s.bwd(r0, r1, r2);	 Catch:{ all -> 0x0022 }
        goto L_0x0047;
    L_0x0080:
        r2 = "DataBase";	 Catch:{ all -> 0x008a }
        r3 = "searchListData";	 Catch:{ all -> 0x008a }
        com.loc.C1259s.bwd(r0, r2, r3);	 Catch:{ all -> 0x008a }
        goto L_0x0064;
    L_0x008a:
        r0 = move-exception;
    L_0x008b:
        if (r1 != 0) goto L_0x00f5;
    L_0x008d:
        r1 = r12.bdl;	 Catch:{ all -> 0x0022 }
        if (r1 != 0) goto L_0x0106;	 Catch:{ all -> 0x0022 }
    L_0x0091:
        throw r0;	 Catch:{ all -> 0x0022 }
    L_0x0092:
        r1.close();	 Catch:{ all -> 0x0022 }
        goto L_0x0053;	 Catch:{ all -> 0x0022 }
        r0 = move-exception;	 Catch:{ all -> 0x0022 }
        if (r15 != 0) goto L_0x0053;	 Catch:{ all -> 0x0022 }
    L_0x0099:
        r1 = "DataBase";	 Catch:{ all -> 0x0022 }
        r2 = "searchListData";	 Catch:{ all -> 0x0022 }
        com.loc.C1259s.bwd(r0, r1, r2);	 Catch:{ all -> 0x0022 }
        goto L_0x0053;	 Catch:{ all -> 0x0022 }
    L_0x00a3:
        r0 = r12.bdl;	 Catch:{ all -> 0x0022 }
        r0.close();	 Catch:{ all -> 0x0022 }
        r0 = 0;	 Catch:{ all -> 0x0022 }
        r12.bdl = r0;	 Catch:{ all -> 0x0022 }
        goto L_0x0057;	 Catch:{ all -> 0x0022 }
        r0 = move-exception;	 Catch:{ all -> 0x0022 }
        if (r15 != 0) goto L_0x0057;	 Catch:{ all -> 0x0022 }
    L_0x00af:
        r1 = "DataBase";	 Catch:{ all -> 0x0022 }
        r2 = "searchListData";	 Catch:{ all -> 0x0022 }
        com.loc.C1259s.bwd(r0, r1, r2);	 Catch:{ all -> 0x0022 }
        goto L_0x0057;	 Catch:{ all -> 0x0022 }
    L_0x00b9:
        r1.close();	 Catch:{ all -> 0x0022 }
        goto L_0x0043;	 Catch:{ all -> 0x0022 }
        r0 = move-exception;	 Catch:{ all -> 0x0022 }
        if (r15 != 0) goto L_0x0043;	 Catch:{ all -> 0x0022 }
    L_0x00c0:
        r1 = "DataBase";	 Catch:{ all -> 0x0022 }
        r2 = "searchListData";	 Catch:{ all -> 0x0022 }
        com.loc.C1259s.bwd(r0, r1, r2);	 Catch:{ all -> 0x0022 }
        goto L_0x0043;	 Catch:{ all -> 0x0022 }
    L_0x00cb:
        r0 = r12.bdl;	 Catch:{ all -> 0x0022 }
        r0.close();	 Catch:{ all -> 0x0022 }
        r0 = 0;	 Catch:{ all -> 0x0022 }
        r12.bdl = r0;	 Catch:{ all -> 0x0022 }
        goto L_0x0047;	 Catch:{ all -> 0x0022 }
        r0 = move-exception;	 Catch:{ all -> 0x0022 }
        if (r15 != 0) goto L_0x0047;	 Catch:{ all -> 0x0022 }
    L_0x00d8:
        r1 = "DataBase";	 Catch:{ all -> 0x0022 }
        r2 = "searchListData";	 Catch:{ all -> 0x0022 }
        com.loc.C1259s.bwd(r0, r1, r2);	 Catch:{ all -> 0x0022 }
        goto L_0x0047;	 Catch:{ all -> 0x0022 }
    L_0x00e3:
        r1.close();	 Catch:{ all -> 0x0022 }
        goto L_0x0066;	 Catch:{ all -> 0x0022 }
        r0 = move-exception;	 Catch:{ all -> 0x0022 }
        if (r15 != 0) goto L_0x0066;	 Catch:{ all -> 0x0022 }
    L_0x00ea:
        r1 = "DataBase";	 Catch:{ all -> 0x0022 }
        r2 = "searchListData";	 Catch:{ all -> 0x0022 }
        com.loc.C1259s.bwd(r0, r1, r2);	 Catch:{ all -> 0x0022 }
        goto L_0x0066;	 Catch:{ all -> 0x0022 }
    L_0x00f5:
        r1.close();	 Catch:{ all -> 0x0022 }
        goto L_0x008d;	 Catch:{ all -> 0x0022 }
        r1 = move-exception;	 Catch:{ all -> 0x0022 }
        if (r15 != 0) goto L_0x008d;	 Catch:{ all -> 0x0022 }
    L_0x00fc:
        r2 = "DataBase";	 Catch:{ all -> 0x0022 }
        r3 = "searchListData";	 Catch:{ all -> 0x0022 }
        com.loc.C1259s.bwd(r1, r2, r3);	 Catch:{ all -> 0x0022 }
        goto L_0x008d;	 Catch:{ all -> 0x0022 }
    L_0x0106:
        r1 = r12.bdl;	 Catch:{ all -> 0x0022 }
        r1.close();	 Catch:{ all -> 0x0022 }
        r1 = 0;	 Catch:{ all -> 0x0022 }
        r12.bdl = r1;	 Catch:{ all -> 0x0022 }
        goto L_0x0091;	 Catch:{ all -> 0x0022 }
        r1 = move-exception;	 Catch:{ all -> 0x0022 }
        if (r15 != 0) goto L_0x0091;	 Catch:{ all -> 0x0022 }
    L_0x0112:
        r2 = "DataBase";	 Catch:{ all -> 0x0022 }
        r3 = "searchListData";	 Catch:{ all -> 0x0022 }
        com.loc.C1259s.bwd(r1, r2, r3);	 Catch:{ all -> 0x0022 }
        goto L_0x0091;
    L_0x011d:
        r0 = move-exception;
        r1 = r8;
        goto L_0x008b;
    L_0x0121:
        r0 = move-exception;
        r1 = r8;
        goto L_0x0062;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.loc.m.bvK(java.lang.String, java.lang.Class, boolean):java.util.List");
    }

    public List bvL(String str, Class cls) {
        return bvK(str, cls, false);
    }
}
