package cn.nubia.videogenerator.p007b;

import android.media.AudioRecord;
import android.util.Log;
import cn.nubia.videogenerator.p006a.C0052a;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;

public class C0071i {
    private static String TAG = "meeeAudioRecorder";
    private int brA;
    private C0052a brB;
    private ConcurrentLinkedQueue brC = null;
    private AudioRecord brD = null;
    private int brE;
    private AtomicBoolean brF = new AtomicBoolean(false);
    private long brG;

    public void bOz(int i) {
        this.brA = i;
    }

    public void bOA(C0052a c0052a) {
        this.brB = c0052a;
    }

    public void bOB(int i) {
        this.brG = (long) i;
    }

    public void bOC(ConcurrentLinkedQueue concurrentLinkedQueue) {
        this.brC = concurrentLinkedQueue;
    }

    public void start() {
        this.brE = AudioRecord.getMinBufferSize(this.brB.bMV(), this.brB.bMW(), this.brB.bMT());
        this.brD = new AudioRecord(this.brA, this.brB.bMV(), this.brB.bMW(), this.brB.bMT(), this.brE * 2);
        this.brD.startRecording();
        Log.v(TAG, "startRecording");
        Log.v(TAG, "minBufferSize " + this.brE);
        this.brF.set(true);
        Thread thread = new Thread(new C0073k(this));
        thread.setName("PCM Thread " + System.currentTimeMillis());
        thread.setPriority(10);
        thread.start();
    }

    public void stop() {
        this.brF.set(false);
        synchronized (this) {
            this.brD.stop();
        }
    }
}
