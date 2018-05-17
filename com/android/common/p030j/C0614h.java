package com.android.common.p030j;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.os.Handler.Callback;
import android.os.Message;
import com.android.common.C0299a;
import com.android.common.C0472e;
import com.android.common.p032o.C0685a;
import java.nio.ByteBuffer;

final class C0614h implements Callback {
    final /* synthetic */ C0608b ZD;

    C0614h(C0608b c0608b) {
        this.ZD = c0608b;
    }

    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                C0685a.amB(this.ZD.YV);
                this.ZD.YS = true;
                this.ZD.agt();
                break;
            case 1:
                C0685a.amB(this.ZD.YV);
                this.ZD.Zd = true;
                int agF = this.ZD.Ze;
                int agC = this.ZD.YY;
                ByteBuffer byteBuffer = (ByteBuffer) message.obj;
                Matrix matrix = new Matrix();
                matrix.setScale(1.0f, -1.0f);
                Bitmap createBitmap = Bitmap.createBitmap(agF, agC, Config.ARGB_8888);
                byteBuffer.rewind();
                createBitmap.copyPixelsFromBuffer(byteBuffer);
                this.ZD.YU = Bitmap.createBitmap(createBitmap, 0, 0, agF, agC, matrix, true);
                this.ZD.agt();
                message.obj = null;
                break;
            case 2:
                this.ZD.agu();
                break;
            case 3:
                C0685a.amB(this.ZD.YV);
                Options options = new Options();
                options.inSampleSize = message.arg1;
                byte[] bArr = (byte[]) message.obj;
                this.ZD.YU = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                this.ZD.YU = C0299a.anY(this.ZD.YU, C0472e.aoA(bArr));
                this.ZD.YU = this.ZD.ags(this.ZD.YU);
                this.ZD.YS = true;
                this.ZD.agt();
                synchronized (this.ZD.Za) {
                    C0608b c0608b = this.ZD;
                    c0608b.Za = Integer.valueOf(c0608b.Za.intValue() - 1);
                }
                break;
        }
        return true;
    }
}
