package com.loc;

import android.database.sqlite.SQLiteDatabase;

public class bX implements aC {
    private static bX bjj;

    private bX() {
    }

    public static synchronized bX m387c() {
        bX bXVar;
        synchronized (bX.class) {
            if (bjj == null) {
                bjj = new bX();
            }
            bXVar = bjj;
        }
        return bXVar;
    }

    public String mo941a() {
        return "dynamicamapfile.db";
    }

    public int mo942b() {
        return 1;
    }

    public void bzf(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS file (_id integer primary key autoincrement, sdkname  varchar(20), filename varchar(100),md5 varchar(20),version varchar(20),dynamicversion varchar(20),status varchar(20),reservedfield varchar(20));");
        } catch (Throwable th) {
            C1259s.bwd(th, "DynamicFileDBCreator", "onCreate");
        }
    }

    public void bzg(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
