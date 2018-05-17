package com.loc;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class ct extends SQLiteOpenHelper {
    private aC bkN;

    public ct(Context context, String str, CursorFactory cursorFactory, int i, aC aCVar) {
        super(context, str, cursorFactory, i);
        this.bkN = aCVar;
    }

    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.bkN.bzf(sQLiteDatabase);
    }

    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        this.bkN.bzg(sQLiteDatabase, i, i2);
    }
}
