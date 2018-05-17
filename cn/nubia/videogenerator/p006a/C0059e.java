package cn.nubia.videogenerator.p006a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.ExifInterface;
import android.util.Log;
import android.view.Surface;
import cn.nubia.videogenerator.p007b.C0054e;
import com.umeng.analytics.ReportPolicy;
import java.io.Closeable;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;

public class C0059e {
    private C0062h brb;
    private ArrayList brc = null;
    private boolean brd = false;
    private C0054e bre;
    private long brf = 0;

    public void bNT(ArrayList arrayList) {
        this.brc = arrayList;
    }

    public void bNU() {
        this.brc.clear();
        this.brc = null;
    }

    public void bNV(Surface surface, int i, int i2) {
        this.brb = new C0062h(surface, i, i2);
    }

    public void bNW() {
        if (this.brc != null) {
            int size = this.brc.size();
            int i = 0;
            while (i < size && !this.brd) {
                try {
                    String str = (String) this.brc.get(i);
                    Bitmap bNY = bNY(str, this.brb.bOh(), this.brb.bOi());
                    if (bNY != null) {
                        this.brb.bOf(bNY, bNX(str));
                        bOc(i + 1 == size);
                    } else {
                        Log.e("ImageRender", "Create Bitmap failed!");
                    }
                    i++;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            if (this.brb != null) {
                this.brb.release();
                this.brb = null;
            }
            this.brd = false;
            bNU();
            return;
        }
        if (this.brb != null) {
            this.brb.release();
            this.brb = null;
        }
    }

    private int bNX(String str) {
        int attributeInt;
        try {
            attributeInt = new ExifInterface(str).getAttributeInt("Orientation", -1);
        } catch (IOException e) {
            e.printStackTrace();
            attributeInt = -1;
        }
        if (attributeInt == -1) {
            return 0;
        }
        switch (attributeInt) {
            case 3:
                return 180;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                return 90;
            case 8:
                return 270;
            default:
                return 0;
        }
    }

    private Bitmap bNY(String str, int i, int i2) {
        Closeable fileInputStream;
        IOException e;
        Throwable th;
        try {
            fileInputStream = new FileInputStream(str);
            try {
                FileDescriptor fd = fileInputStream.getFD();
                Options options = new Options();
                options.inJustDecodeBounds = true;
                BitmapFactory.decodeFileDescriptor(fd, null, options);
                float min = Math.min(((float) options.outWidth) / ((float) i), ((float) options.outHeight) / ((float) i2));
                options.inJustDecodeBounds = false;
                options.inSampleSize = bNZ(min);
                Bitmap decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fd, null, options);
                if (fileInputStream != null) {
                    bOa(fileInputStream);
                }
                return decodeFileDescriptor;
            } catch (IOException e2) {
                e = e2;
                try {
                    e.printStackTrace();
                    if (fileInputStream != null) {
                        bOa(fileInputStream);
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (fileInputStream != null) {
                        bOa(fileInputStream);
                    }
                    throw th;
                }
            }
        } catch (IOException e3) {
            e = e3;
            fileInputStream = null;
            e.printStackTrace();
            if (fileInputStream != null) {
                bOa(fileInputStream);
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            if (fileInputStream != null) {
                bOa(fileInputStream);
            }
            throw th;
        }
    }

    private int bNZ(float f) {
        int i = (int) f;
        if (i <= 1) {
            return 1;
        }
        if (i > 8) {
            i = (i / 8) * 8;
        } else {
            i = Integer.highestOneBit(i);
        }
        return i;
    }

    private void bOa(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void stop() {
        this.brd = true;
    }

    public void bOb(C0054e c0054e) {
        this.bre = c0054e;
    }

    public void bOc(boolean z) {
        if (this.bre != null) {
            this.bre.bNs(z);
        }
    }
}
