package cn.nubia.p000a;

import android.content.ContentValues;
import android.database.Cursor;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera.Size;
import android.net.Uri;
import android.os.RemoteException;
import android.util.SparseArray;
import cn.nubia.bigAperture.BigApertureService;
import cn.nubia.bigAperture.BigApertureTask;
import cn.nubia.bigAperture.C0037m;
import cn.nubia.bigAperture.C0039o;
import com.android.common.C0472e;
import com.android.common.C0616j;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.p010a.C0090a;
import java.io.File;

public class C0007d implements C0005e, C0006k {
    int bmM;
    int bmN;
    int bmO;
    int bmP;
    int bmQ = 270;
    String bmR;
    private String bmS;
    int[] bmT;
    float[] bmU;
    int bmV = 78;
    boolean bmW;
    private Object bmX = new Object();
    int bmY;
    int bmZ;
    Size bna;
    int bnb;
    private boolean[] bnc = new boolean[4];
    int bnd;
    Size bne;
    Uri bnf;
    final /* synthetic */ C0004c bng;

    public C0007d(C0004c c0004c, long j, int i, Rect rect, float f, float f2, Size size, Size size2, int i2, int[] iArr) {
        this.bng = c0004c;
        this.bnb = i;
        this.bmS = c0004c.bmL + "/" + c0004c.bmI.aqo(j);
        this.bna = size;
        this.bne = size2;
        this.bmT = iArr;
        this.bmU = bJr(rect, f, f2, i);
        this.bmY = i2;
        File file = new File(this.bmS);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    private void bJx() {
        try {
            bJy(this.bnf, this.bmW, this.bmU);
            BigApertureTask bigApertureTask = new BigApertureTask(null, this.bnf, this.bmS, this.bna.width, this.bna.height, this.bne.width, this.bne.height, 800, 600, this.bmZ, this.bnd, this.bmU[0], this.bmU[1], this.bmU[3], this.bmU[2], this.bnb, this.bmN, this.bmO, this.bmM, this.bmP, this.bmR, this.bmY, this.bmT, this.bmQ, this.bmV);
            new C0037m(BigApertureService.bnX).bLF(bigApertureTask);
            this.bng.bmF.addTaskObject(bigApertureTask);
        } catch (RemoteException e) {
            e.printStackTrace();
            C0090a.bvo("BigAperSaveTasks", "addTask fail");
        }
    }

    public void bJu(int i) {
        this.bng.bJh("onDataSaved type: " + i);
        synchronized (this.bmX) {
            this.bnc[i] = true;
            if (this.bnc[0] && this.bnc[1] && this.bnc[2]) {
                if (this.bnf != null) {
                    bJx();
                } else {
                    C0090a.bvo("BigAperSaveTasks", "addTask fail");
                    bJq(new File(this.bmS));
                }
            }
        }
    }

    public void bJv(byte[] bArr, int i, C0039o c0039o, Size size) {
        this.bng.bJh("onMonoYUVReceived");
        if (this.bmS == null) {
            return;
        }
        if (this.bnc[2] && this.bnf == null) {
            this.bng.bmH.execute(new C0008f(this.bng, this, 1, null, null));
            return;
        }
        this.bnd = i;
        this.bng.bmH.execute(new C0008f(this.bng, this, 1, bArr, this.bmS + "/" + this.bng.bmK + ".yuv", c0039o, size));
    }

    public void bJt(byte[] bArr, int i, int i2, int i3, int i4, int i5, String str) {
        this.bng.bJh("onColorYUVReceived");
        if (this.bmS == null) {
            return;
        }
        if (this.bnc[2] && this.bnf == null) {
            this.bng.bmH.execute(new C0008f(this.bng, this, 0, null, null));
            return;
        }
        this.bmZ = i;
        this.bmP = i2;
        this.bmN = i3;
        this.bmO = i4;
        this.bmM = i5;
        this.bmR = str;
        this.bng.bmH.execute(new C0008f(this.bng, this, 0, bArr, this.bmS + "/" + this.bng.bmE + ".yuv"));
    }

    public void bJw(Uri uri, boolean z) {
        this.bng.bJh("onThumbnailUpdated");
        if (this.bmS != null) {
            this.bnf = uri;
            this.bmW = z;
            bJu(2);
        }
    }

    public void bJs(byte[] bArr) {
        this.bng.bJh("onColorJpgReceived");
        if (this.bmS == null) {
            return;
        }
        if (this.bnc[2] && this.bnf == null) {
            this.bng.bmH.execute(new C0008f(this.bng, null, 3, null, null));
            return;
        }
        this.bng.bmH.execute(new C0008f(this.bng, null, 3, bArr, this.bmS + "/" + this.bng.bmE + ".jpg"));
    }

    private float[] bJr(Rect rect, float f, float f2, int i) {
        float[] fArr = new float[4];
        if (rect == null) {
            fArr[0] = 0.5f;
            fArr[1] = 0.5f;
        } else {
            Matrix matrix = new Matrix();
            matrix.postRotate((float) (-i));
            Matrix matrix2 = new Matrix();
            matrix.invert(matrix2);
            RectF rectF = new RectF(rect);
            matrix2.mapRect(rectF);
            Rect rect2 = new Rect();
            C0616j.aoZ(rectF, rect2);
            int i2 = rect2.left;
            int i3 = rect2.top;
            int i4 = rect2.right;
            int i5 = (rect2.bottom + i3) / 2;
            fArr[0] = ((float) (((i2 + i4) / 2) + 1000)) / 2000.0f;
            fArr[1] = ((float) (i5 + 1000)) / 2000.0f;
        }
        fArr[2] = f;
        fArr[3] = f2;
        return fArr;
    }

    private void bJq(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
            } else if (file.isDirectory()) {
                File[] listFiles = file.listFiles();
                for (File bJq : listFiles) {
                    bJq(bJq);
                }
                file.delete();
            }
            file.delete();
            return;
        }
        C0090a.bvo("BigAperSaveTasks", "file no exist");
    }

    private void bJy(Uri uri, boolean z, float[] fArr) {
        long j;
        String str;
        this.bng.bJh("updateThumbnailRefocusState");
        Cursor query = this.bng.bmG.query(uri, new String[]{"_data", "datetaken"}, "mime_type='image/jpeg' AND _data like '%/DCIM/Camera/%'", null, "datetaken DESC,_id DESC");
        if (query == null) {
            j = -1;
            str = null;
        } else if (query.moveToFirst()) {
            str = query.getString(query.getColumnIndexOrThrow("_data"));
            j = query.getLong(query.getColumnIndexOrThrow("datetaken"));
        } else {
            j = -1;
            str = null;
        }
        if (query != null) {
            query.close();
        }
        if (str != null) {
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(C0523o.BX, (this.bmW ? "[aper, " : "[bper, ") + String.valueOf(fArr[0]) + ", " + String.valueOf(fArr[1]) + ", undo" + "; " + String.valueOf(fArr[2]) + "]");
            sparseArray.put(C0523o.BW, Integer.valueOf(C0472e.aoB(this.bnb)));
            sparseArray.put(C0523o.Cc, new C0513e(fArr[3], 0.01f));
            sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
            sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
            C0616j.app(str, sparseArray);
            ContentValues contentValues = new ContentValues();
            contentValues.put("datetaken", Long.valueOf(j + 1));
            this.bng.bmG.update(this.bnf, contentValues, null, null);
        }
    }
}
