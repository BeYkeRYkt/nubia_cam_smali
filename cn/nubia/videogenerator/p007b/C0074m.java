package cn.nubia.videogenerator.p007b;

import android.media.MediaCodec.BufferInfo;
import android.os.SystemClock;
import android.util.Log;
import java.nio.ByteBuffer;
import java.util.TreeSet;

class C0074m implements Runnable {
    private TreeSet brT = new TreeSet();
    private int brU = 0;
    final /* synthetic */ C0068f brV;

    C0074m(C0068f c0068f) {
        this.brV = c0068f;
    }

    public void run() {
        this.brV.bru.set(false);
        boolean z = false;
        while (!this.brV.bru.get() && !this.brV.brt.get()) {
            if (this.brV.brs == null) {
                Log.v(C0068f.TAG, "InputQueue lost");
            } else if (this.brV.brs.isEmpty()) {
                Thread.yield();
            } else {
                Object[] toArray = this.brV.brs.toArray();
                if (this.brT.contains(Long.valueOf(((C0065a) toArray[toArray.length - 1]).brm.presentationTimeUs))) {
                    Log.v(C0068f.TAG, "no data update");
                    SystemClock.sleep(20);
                } else {
                    for (Object obj : toArray) {
                        C0065a c0065a = (C0065a) obj;
                        if (!this.brT.contains(Long.valueOf(c0065a.brm.presentationTimeUs))) {
                            boolean z2;
                            if (!(c0065a.brm.presentationTimeUs < this.brV.brp)) {
                                if (c0065a.brm.presentationTimeUs > this.brV.brq) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (!(z2 || (this.brV.brr & c0065a.brn) == 0)) {
                                    this.brV.brx.aRN(ByteBuffer.wrap(c0065a.data), c0065a.brm, this.brV.bry);
                                    this.brU++;
                                    if (!z) {
                                        if (this.brV.brv == null) {
                                            Log.v(C0068f.TAG, "big error, no listener for filter first out");
                                            z = true;
                                        } else {
                                            this.brV.brv.aRQ();
                                            z = true;
                                        }
                                    }
                                    this.brT.add(Long.valueOf(c0065a.brm.presentationTimeUs));
                                }
                            }
                            if (c0065a.brm.presentationTimeUs <= this.brV.brq) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (!z2) {
                                boolean z3;
                                if (this.brU != 0) {
                                    z3 = z;
                                } else {
                                    Log.e(C0068f.TAG, "serious!!!! no frame filterd out during the time window");
                                    this.brV.brx.aRN(ByteBuffer.wrap(c0065a.data), c0065a.brm, this.brV.bry);
                                    this.brU++;
                                    if (z) {
                                        z3 = z;
                                    } else if (this.brV.brv == null) {
                                        Log.v(C0068f.TAG, "big error, no listener for filter first out");
                                        z3 = true;
                                    } else {
                                        this.brV.brv.aRQ();
                                        z3 = true;
                                    }
                                }
                                C0065a c0065a2 = new C0065a();
                                c0065a2.brn = this.brV.brr;
                                c0065a2.data = new byte[2];
                                c0065a2.brm = new BufferInfo();
                                c0065a2.brm.set(0, 2, 0, 4);
                                this.brV.brx.aRN(ByteBuffer.wrap(c0065a2.data), c0065a2.brm, this.brV.bry);
                                Log.v(C0068f.TAG, "enough data has got,end of stream added:" + this.brV.brr);
                                if (this.brV.brw != null) {
                                    this.brV.brw.bOy();
                                }
                                this.brV.brt.set(true);
                                z = z3;
                            }
                        }
                    }
                }
                Thread.yield();
                SystemClock.sleep(10);
            }
        }
        Log.v(C0068f.TAG, "Filter finish output: " + this.brU + " of " + this.brV.brr);
    }
}
