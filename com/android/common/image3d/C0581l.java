package com.android.common.image3d;

import android.graphics.Rect;
import android.graphics.YuvImage;
import android.media.MediaCodec.BufferInfo;
import android.util.Log;
import cn.nubia.p004d.C0048a;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;

public class C0581l implements C0578h {
    private String FA = null;
    private C0570a FB = new C0570a();
    private boolean FC = true;
    private boolean FD = false;
    private RandomAccessFile FE = null;
    private String FF = null;
    private C0574d FG = null;
    private C0048a FH = C0048a.bPS();
    private C0577g Fz = new C0577g();

    public C0581l() {
        this.FH.bPT(0, 2);
        this.FH.bPT(1, 10003);
        this.FH.bPT(2, 0);
        this.FH.bPT(3, 0);
        this.FH.bPT(4, 32);
    }

    public void Dw(String str, int i, int i2) {
        try {
            this.FB.width = i;
            this.FB.height = i2;
            this.FF = str;
            this.FA = str + "_h264_temp";
            this.FG = new C0574d(this.FA);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        this.Fz.Dj(i, i2);
        this.Fz.Dm(this);
    }

    public void start() {
        if (!this.FD) {
            this.Fz.start();
            this.FD = true;
        }
    }

    public void stop() {
        if (this.FD) {
            this.Fz.stop();
            this.FD = false;
        }
    }

    public void release() {
        try {
            this.Fz.release();
            this.FB.Ew = this.FG.close();
            if (this.FE != null) {
                DB();
                this.FE.close();
                return;
            }
            File file = new File(this.FF);
            if (file.exists()) {
                file.delete();
            }
            file = new File(this.FA);
            if (file.exists()) {
                file.delete();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void DB() {
        try {
            InputStream fileInputStream = new FileInputStream(this.FA);
            int available = fileInputStream.available();
            if (available > 0) {
                byte[] bArr = new byte[available];
                fileInputStream.read(bArr);
                this.FE.write(bArr, 0, available);
                this.FB.Ex = (long) available;
                Log.v("aizhao", "size:" + this.FB.Ex);
                this.FE.writeLong(this.FB.Ex);
                this.FE.writeInt(this.FB.Ew);
                this.FE.writeInt(this.FB.direction);
                this.FE.writeInt(this.FB.Ey);
                this.FE.writeInt(this.FB.Ez);
                this.FE.writeInt(this.FB.width);
                this.FE.writeInt(this.FB.height);
                this.FH.bPT(4, (int) (this.FB.Ex + 32));
                this.FH.bPV();
                this.FE.write(this.FH.bPU());
                fileInputStream.close();
                DC(this.FA);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public void DC(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    public void DA(BufferInfo bufferInfo, byte[] bArr, int i) {
        if (this.FC) {
            this.FC = false;
            try {
                this.FE = new RandomAccessFile(this.FF, "rw");
                OutputStream byteArrayOutputStream = new ByteArrayOutputStream(1048576);
                new YuvImage(bArr, 17, this.FB.width, this.FB.height, null).compressToJpeg(new Rect(0, 0, this.FB.width, this.FB.height), 100, byteArrayOutputStream);
                this.FE.write(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size());
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        this.Fz.Dl(bufferInfo, bArr, i);
    }

    public void Dy(int i) {
        this.FB.direction = i;
    }

    public void Dx(int i) {
        this.FB.Ez = i;
    }

    public void Dz(int i) {
        this.FB.Ey = i;
    }

    public synchronized void DD(ByteBuffer byteBuffer, BufferInfo bufferInfo) {
        this.FG.Db(byteBuffer, bufferInfo);
    }

    public void Dp(ByteBuffer byteBuffer, BufferInfo bufferInfo) {
        try {
            DD(byteBuffer, bufferInfo);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
