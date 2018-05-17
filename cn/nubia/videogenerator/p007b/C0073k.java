package cn.nubia.videogenerator.p007b;

import android.media.MediaCodec.BufferInfo;
import android.os.SystemClock;
import android.util.Log;

class C0073k implements Runnable {
    final /* synthetic */ C0071i brS;

    C0073k(C0071i c0071i) {
        this.brS = c0071i;
    }

    public void run() {
        int bOD = ((int) ((((((double) (this.brS.brG + 200)) / 1000.0d) * ((double) this.brS.brB.bMV())) * 4.0d) / ((double) (this.brS.brE * 2)))) / 2;
        Log.v(C0071i.TAG, "samples cnt " + bOD);
        while (this.brS.brF.get()) {
            byte[] bArr = new byte[(this.brS.brE * 2)];
            synchronized (this) {
                int read = this.brS.brD.read(bArr, 0, this.brS.brE * 2);
            }
            if (read != -3) {
                BufferInfo bufferInfo = new BufferInfo();
                C0065a c0065a = new C0065a();
                c0065a.data = bArr;
                c0065a.brn = 2;
                bufferInfo.presentationTimeUs = SystemClock.elapsedRealtimeNanos() / 1000;
                bufferInfo.size = read;
                bufferInfo.offset = 0;
                bufferInfo.flags = 1;
                c0065a.brm = bufferInfo;
                if (this.brS.brC.size() >= bOD) {
                    this.brS.brC.poll();
                    this.brS.brC.add(c0065a);
                } else {
                    this.brS.brC.add(c0065a);
                }
            } else {
                Log.v(C0071i.TAG, "read pcm error");
            }
        }
    }
}
