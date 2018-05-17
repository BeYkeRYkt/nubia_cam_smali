package com.android.gallery3d.p038a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import com.p010a.C0090a;
import java.util.ArrayList;

class C0872b extends AsyncTask {
    ArrayList aph;
    ArrayList api;
    final /* synthetic */ C0871a apj;

    public C0872b(C0871a c0871a, ArrayList arrayList, ArrayList arrayList2) {
        this.apj = c0871a;
        this.aph = arrayList;
        this.api = arrayList2;
    }

    protected /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        return aAS((ContentResolver[]) objArr);
    }

    protected C0885q aAS(ContentResolver... contentResolverArr) {
        C0885q c0885q = new C0885q();
        for (Uri query : this.aph) {
            C0875o aBo;
            Cursor query2 = contentResolverArr[0].query(query, C0877f.apz, null, null, null);
            if (query2 != null && query2.moveToFirst()) {
                aBo = C0877f.aBo(query2);
                if (aBo != null) {
                    c0885q.aBF(aBo);
                } else {
                    C0090a.m1e("CameraDataAdapter", "Error loading data:" + query2.getString(5));
                }
            }
            if (query2 != null) {
                query2.close();
            }
        }
        for (Uri query3 : this.api) {
            query2 = contentResolverArr[0].query(query3, C0880h.apJ, null, null, null);
            if (query2 != null && query2.moveToFirst()) {
                aBo = C0880h.aBv(query2);
                if (aBo != null) {
                    c0885q.aBF(aBo);
                } else {
                    C0090a.m1e("CameraDataAdapter", "Error loading data:" + query2.getString(5));
                }
            }
            if (query2 != null) {
                query2.close();
            }
        }
        if (c0885q.aBG() != 0) {
            c0885q.aBH(new C0884p());
        }
        return c0885q;
    }

    protected /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        aAT((C0885q) obj);
    }

    protected void aAT(C0885q c0885q) {
        C0090a.m0d("CameraDataAdapter", "AssignQueryTask onPostExecute");
        this.apj.aAL(c0885q);
    }
}
