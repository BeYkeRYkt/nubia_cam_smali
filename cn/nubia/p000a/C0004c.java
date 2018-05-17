package cn.nubia.p000a;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera.Size;
import android.os.RemoteException;
import android.util.Log;
import cn.nubia.bigAperture.BigApertureProcess;
import cn.nubia.bigAperture.BigApertureService;
import com.android.camera.R;
import com.android.common.C0620k;
import com.android.common.cameradevice.C0384o;
import com.p010a.C0090a;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class C0004c {
    private C0007d bmD;
    private int bmE = C0384o.Jr().Js();
    private BigApertureProcess bmF = null;
    private ContentResolver bmG;
    private ExecutorService bmH = Executors.newSingleThreadExecutor();
    private C0620k bmI = null;
    private final boolean bmJ = Log.isLoggable("ApertureBackground", 3);
    private int bmK = C0384o.Jr().Jx();
    private String bmL = null;

    public C0004c(Context context) {
        this.bmI = new C0620k(context.getString(R.string.image_file_name_format));
        this.bmG = context.getContentResolver();
    }

    public void bJf(BigApertureProcess bigApertureProcess) {
        this.bmF = bigApertureProcess;
        try {
            this.bmL = this.bmF.getBigApertureTmpDir();
        } catch (RemoteException e) {
            this.bmL = BigApertureService.bnW;
            e.printStackTrace();
        }
    }

    public void release() {
        this.bmH.shutdown();
        this.bmH = null;
    }

    public C0007d bJg(long j, int i, Rect rect, float f, float f2, Size size, Size size2, int i2, int[] iArr) {
        this.bmD = new C0007d(this, j, i, rect, f, f2, size, size2, i2, iArr);
        return this.bmD;
    }

    private void bJh(String str) {
        if (this.bmJ) {
            C0090a.m0d("BigAperSaveTasks", str);
        }
    }
}
