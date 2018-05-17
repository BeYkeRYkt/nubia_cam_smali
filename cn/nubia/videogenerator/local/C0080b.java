package cn.nubia.videogenerator.local;

import android.media.MediaExtractor;
import android.media.MediaFormat;

public class C0080b implements Runnable {
    private MediaExtractor bsW = new MediaExtractor();
    final /* synthetic */ C0079a bsX;

    public C0080b(C0079a c0079a) {
        this.bsX = c0079a;
        this.bsW.setDataSource(c0079a.bsG);
        bPR();
    }

    private void bPR() {
        int trackCount = this.bsW.getTrackCount();
        for (int i = 0; i < trackCount; i++) {
            MediaFormat trackFormat = this.bsW.getTrackFormat(i);
            if (trackFormat.getString("mime").contains("audio/")) {
                this.bsW.selectTrack(i);
                this.bsX.bsE = trackFormat;
                return;
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
        r20 = this;
        r2 = 16384; // 0x4000 float:2.2959E-41 double:8.0948E-320;
        r9 = java.nio.ByteBuffer.allocate(r2);
        r2 = 16384; // 0x4000 float:2.2959E-41 double:8.0948E-320;
        r10 = java.nio.ByteBuffer.allocate(r2);
        r11 = new android.media.MediaCodec$BufferInfo;
        r11.<init>();
        r6 = 0;
        r4 = 0;
        r2 = 0;
        r0 = r20;
        r3 = r0.bsX;
        r12 = r3.bsV;
        r14 = 0;
        r3 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r3 > 0) goto L_0x0106;
    L_0x0024:
        r3 = 1;
    L_0x0025:
        if (r3 != 0) goto L_0x003f;
    L_0x0027:
        r0 = r20;
        r3 = r0.bsW;
        r8 = 0;
        r3 = r3.readSampleData(r10, r8);
        r11.size = r3;
        r0 = r20;
        r3 = r0.bsW;
        r3 = r3.getSampleFlags();
        r11.flags = r3;
        r3 = 0;
        r11.offset = r3;
    L_0x003f:
        r0 = r20;
        r3 = r0.bsX;
        r3 = r3.bsQ;
        if (r3 == 0) goto L_0x0109;
    L_0x0049:
        r8 = r2;
    L_0x004a:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsJ;
        if (r2 == 0) goto L_0x00ee;
    L_0x0054:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsK;
        if (r2 != 0) goto L_0x0143;
    L_0x005e:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsL;
        if (r2 != 0) goto L_0x024f;
    L_0x0068:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsQ;
        if (r2 < 0) goto L_0x025f;
    L_0x0072:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsV;
        r12 = 0;
        r2 = (r2 > r12 ? 1 : (r2 == r12 ? 0 : -1));
        if (r2 > 0) goto L_0x0304;
    L_0x0080:
        r2 = 1;
    L_0x0081:
        if (r2 != 0) goto L_0x008d;
    L_0x0083:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsR;
        if (r2 == 0) goto L_0x0307;
    L_0x008d:
        r3 = new android.media.MediaCodec$BufferInfo;
        r3.<init>();
        r0 = r20;
        r2 = r0.bsW;
        r12 = 0;
        r2 = r2.readSampleData(r9, r12);
        r3.size = r2;
        r0 = r20;
        r2 = r0.bsW;
        r2 = r2.getSampleFlags();
        r3.flags = r2;
        r2 = 0;
        r3.offset = r2;
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsR;
        if (r2 == 0) goto L_0x0372;
    L_0x00b4:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsR;
        r12 = 2;
        if (r2 == r12) goto L_0x0430;
    L_0x00bf:
        r12 = r3.presentationTimeUs;
        r0 = r20;
        r2 = r0.bsX;
        r14 = r2.bsN;
        r2 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r2 > 0) goto L_0x0445;
    L_0x00cd:
        r2 = 1;
    L_0x00ce:
        if (r2 != 0) goto L_0x045d;
    L_0x00d0:
        r2 = 0;
        r3.size = r2;
        r2 = "AudioLocalSource";
        r3 = "local audio read EOS break";
        android.util.Log.e(r2, r3);
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsL;
        if (r2 != 0) goto L_0x0448;
    L_0x00e6:
        r0 = r20;
        r2 = r0.bsX;
        r3 = 0;
        r2.bsJ = r3;
    L_0x00ee:
        r0 = r20;
        r2 = r0.bsX;
        r3 = 0;
        r2.bsF = r3;
        r0 = r20;
        r2 = r0.bsX;
        r3 = 0;
        r2.bsL = r3;
        r0 = r20;
        r2 = r0.bsW;
        r2.release();
        return;
    L_0x0106:
        r3 = 0;
        goto L_0x0025;
    L_0x0109:
        r0 = r20;
        r3 = r0.bsX;
        r3 = r3.bsR;
        if (r3 != 0) goto L_0x0049;
    L_0x0113:
        r0 = r20;
        r3 = r0.bsX;
        r12 = r3.bsO;
        r14 = 0;
        r3 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r3 > 0) goto L_0x0141;
    L_0x0121:
        r3 = 1;
    L_0x0122:
        if (r3 != 0) goto L_0x0049;
    L_0x0124:
        r0 = r20;
        r3 = r0.bsX;
        r3 = r3.bsK;
        if (r3 != 0) goto L_0x0049;
    L_0x012e:
        r0 = r20;
        r3 = r0.bsW;
        r0 = r20;
        r8 = r0.bsX;
        r12 = r8.bsO;
        r8 = 0;
        r3.seekTo(r12, r8);
        r8 = r2;
        goto L_0x004a;
    L_0x0141:
        r3 = 0;
        goto L_0x0122;
    L_0x0143:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsF;
        if (r2 != 0) goto L_0x019b;
    L_0x014d:
        r12 = new android.media.MediaCodec$BufferInfo;
        r12.<init>();
        r0 = r20;
        r2 = r0.bsW;
        r3 = 0;
        r2 = r2.readSampleData(r9, r3);
        r12.size = r2;
        r0 = r20;
        r2 = r0.bsW;
        r2 = r2.getSampleTime();
        r12.presentationTimeUs = r2;
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsQ;
        if (r2 < 0) goto L_0x01b4;
    L_0x0171:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsQ;
        if (r2 >= 0) goto L_0x01fe;
    L_0x017b:
        r2 = r12.size;
        if (r2 < 0) goto L_0x021b;
    L_0x017f:
        r2 = r12.presentationTimeUs;
        r0 = r20;
        r6 = r0.bsX;
        r6 = r6.bsF;
        if (r6 != 0) goto L_0x0233;
    L_0x018b:
        r18 = r4;
        r4 = r2;
        r2 = r18;
    L_0x0190:
        r0 = r20;
        r6 = r0.bsW;
        r6.advance();
        r6 = r4;
        r4 = r2;
        goto L_0x004a;
    L_0x019b:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsF;
        r3 = 100;
        r2 = r2.bNQ(r3);
        if (r2 == 0) goto L_0x014d;
    L_0x01ab:
        java.lang.Thread.yield();
        r2 = 10;
        android.os.SystemClock.sleep(r2);
        goto L_0x014d;
    L_0x01b4:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsT;
        r14 = r12.presentationTimeUs;
        r2 = r2 + r14;
        r0 = r20;
        r13 = r0.bsX;
        r14 = r13.bsM;
        r2 = (r2 > r14 ? 1 : (r2 == r14 ? 0 : -1));
        if (r2 <= 0) goto L_0x01fc;
    L_0x01cb:
        r2 = 1;
    L_0x01cc:
        if (r2 == 0) goto L_0x0171;
    L_0x01ce:
        r2 = "AudioLocalSource";
        r3 = "need decode read EOS break";
        android.util.Log.e(r2, r3);
        r2 = 0;
        r12.size = r2;
        r2 = 4;
        r12.flags = r2;
        r0 = r20;
        r2 = r0.bsX;
        r3 = 0;
        r2.bsJ = r3;
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsF;
        if (r2 == 0) goto L_0x00ee;
    L_0x01ef:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsF;
        r2.bNR(r9, r12);
        goto L_0x00ee;
    L_0x01fc:
        r2 = 0;
        goto L_0x01cc;
    L_0x01fe:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsT;
        r14 = r12.presentationTimeUs;
        r2 = r2 + r14;
        r0 = r20;
        r13 = r0.bsX;
        r14 = r13.bsN;
        r2 = (r2 > r14 ? 1 : (r2 == r14 ? 0 : -1));
        if (r2 > 0) goto L_0x0219;
    L_0x0215:
        r2 = 1;
    L_0x0216:
        if (r2 != 0) goto L_0x017b;
    L_0x0218:
        goto L_0x01ce;
    L_0x0219:
        r2 = 0;
        goto L_0x0216;
    L_0x021b:
        r0 = r20;
        r2 = r0.bsX;
        r12 = r2.bsT;
        r12 = r12 + r6;
        r2.bsT = r12;
        r0 = r20;
        r2 = r0.bsW;
        r12 = 0;
        r3 = 0;
        r2.seekTo(r12, r3);
        goto L_0x004a;
    L_0x0233:
        r0 = r20;
        r6 = r0.bsX;
        r6 = r6.bsJ;
        if (r6 == 0) goto L_0x018b;
    L_0x023d:
        r0 = r20;
        r6 = r0.bsX;
        r6 = r6.bsF;
        r6.bNR(r9, r12);
        r18 = r4;
        r4 = r2;
        r2 = r18;
        goto L_0x0190;
    L_0x024f:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsL;
        r2 = r2.aRM();
        if (r2 == 0) goto L_0x004a;
    L_0x025d:
        goto L_0x0068;
    L_0x025f:
        r12 = new android.media.MediaCodec$BufferInfo;
        r12.<init>();
        r0 = r20;
        r2 = r0.bsW;
        r3 = 0;
        r2 = r2.readSampleData(r9, r3);
        r12.size = r2;
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsT;
        r0 = r20;
        r13 = r0.bsW;
        r14 = r13.getSampleTime();
        r2 = r2 + r14;
        r12.presentationTimeUs = r2;
        r2 = r12.presentationTimeUs;
        r0 = r20;
        r13 = r0.bsX;
        r14 = r13.bsM;
        r2 = (r2 > r14 ? 1 : (r2 == r14 ? 0 : -1));
        if (r2 > 0) goto L_0x02aa;
    L_0x0290:
        r2 = 1;
    L_0x0291:
        if (r2 != 0) goto L_0x02c0;
    L_0x0293:
        r2 = 0;
        r12.size = r2;
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsL;
        if (r2 != 0) goto L_0x02ac;
    L_0x02a0:
        r0 = r20;
        r2 = r0.bsX;
        r3 = 0;
        r2.bsJ = r3;
        goto L_0x00ee;
    L_0x02aa:
        r2 = 0;
        goto L_0x0291;
    L_0x02ac:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsL;
        r0 = r20;
        r3 = r0.bsX;
        r3 = r3.bsH;
        r2.aRO(r3);
        goto L_0x02a0;
    L_0x02c0:
        r2 = r12.size;
        if (r2 < 0) goto L_0x02d7;
    L_0x02c4:
        r2 = r12.presentationTimeUs;
        r0 = r20;
        r6 = r0.bsX;
        r6 = r6.bsL;
        if (r6 != 0) goto L_0x02ea;
    L_0x02d0:
        r18 = r4;
        r4 = r2;
        r2 = r18;
        goto L_0x0190;
    L_0x02d7:
        r0 = r20;
        r2 = r0.bsX;
        r2.bsT = r6;
        r0 = r20;
        r2 = r0.bsW;
        r12 = 0;
        r3 = 0;
        r2.seekTo(r12, r3);
        goto L_0x004a;
    L_0x02ea:
        r0 = r20;
        r6 = r0.bsX;
        r6 = r6.bsL;
        r0 = r20;
        r7 = r0.bsX;
        r7 = r7.bsH;
        r6.aRN(r9, r12, r7);
        r18 = r4;
        r4 = r2;
        r2 = r18;
        goto L_0x0190;
    L_0x0304:
        r2 = 0;
        goto L_0x0081;
    L_0x0307:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsV;
        r2 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1));
        if (r2 < 0) goto L_0x0339;
    L_0x0313:
        r2 = 1;
    L_0x0314:
        if (r2 != 0) goto L_0x008d;
    L_0x0316:
        r11.presentationTimeUs = r6;
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsH;
        r3 = "audio/amr";
        r2 = r2.contains(r3);
        if (r2 == 0) goto L_0x033b;
    L_0x0329:
        r2 = 23125; // 0x5a55 float:3.2405E-41 double:1.14253E-319;
        r2 = r2 + r6;
    L_0x032c:
        r0 = r20;
        r6 = r0.bsX;
        r6 = r6.bsL;
        if (r6 != 0) goto L_0x035c;
    L_0x0336:
        r6 = r2;
        goto L_0x004a;
    L_0x0339:
        r2 = 0;
        goto L_0x0314;
    L_0x033b:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsH;
        r3 = "audio/3gpp";
        r2 = r2.contains(r3);
        if (r2 != 0) goto L_0x0329;
    L_0x034c:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsS;
        r2 = (long) r2;
        r12 = 1024000000; // 0x3d090000 float:0.033447266 double:5.059232213E-315;
        r2 = r12 / r2;
        r2 = r2 + r6;
        goto L_0x032c;
    L_0x035c:
        r0 = r20;
        r6 = r0.bsX;
        r6 = r6.bsL;
        r0 = r20;
        r7 = r0.bsX;
        r7 = r7.bsH;
        r6.aRN(r10, r11, r7);
        r6 = r2;
        goto L_0x004a;
    L_0x0372:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsQ;
        if (r2 == 0) goto L_0x03bb;
    L_0x037c:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsQ;
        r12 = 1;
        if (r2 == r12) goto L_0x0410;
    L_0x0387:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsQ;
        r12 = 1;
        if (r2 != r12) goto L_0x00bf;
    L_0x0392:
        if (r8 == 0) goto L_0x00bf;
    L_0x0394:
        r0 = r20;
        r2 = r0.bsX;
        r12 = r2.bsT;
        r0 = r20;
        r2 = r0.bsX;
        r14 = r2.bsV;
        r12 = r12 + r14;
        r0 = r20;
        r2 = r0.bsW;
        r14 = r2.getSampleTime();
        r12 = r12 + r14;
        r0 = r20;
        r2 = r0.bsX;
        r14 = r2.bsU;
        r12 = r12 - r14;
        r3.presentationTimeUs = r12;
        goto L_0x00bf;
    L_0x03bb:
        r0 = r20;
        r2 = r0.bsW;
        r12 = r2.getSampleTime();
        r0 = r20;
        r2 = r0.bsX;
        r14 = r2.bsT;
        r12 = r12 + r14;
        r0 = r20;
        r2 = r0.bsX;
        r14 = r2.bsO;
        r2 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r2 < 0) goto L_0x03e7;
    L_0x03d8:
        r2 = 1;
    L_0x03d9:
        if (r2 != 0) goto L_0x03e9;
    L_0x03db:
        r0 = r20;
        r2 = r0.bsX;
        r12 = r2.bsV;
        r3.presentationTimeUs = r12;
        goto L_0x00bf;
    L_0x03e7:
        r2 = 0;
        goto L_0x03d9;
    L_0x03e9:
        r0 = r20;
        r2 = r0.bsX;
        r12 = r2.bsT;
        r0 = r20;
        r2 = r0.bsX;
        r14 = r2.bsV;
        r12 = r12 + r14;
        r0 = r20;
        r2 = r0.bsW;
        r14 = r2.getSampleTime();
        r12 = r12 + r14;
        r0 = r20;
        r2 = r0.bsX;
        r14 = r2.bsO;
        r12 = r12 - r14;
        r3.presentationTimeUs = r12;
        goto L_0x00bf;
    L_0x0410:
        if (r8 != 0) goto L_0x0387;
    L_0x0412:
        r0 = r20;
        r2 = r0.bsX;
        r12 = r2.bsT;
        r0 = r20;
        r2 = r0.bsX;
        r14 = r2.bsV;
        r12 = r12 + r14;
        r0 = r20;
        r2 = r0.bsW;
        r14 = r2.getSampleTime();
        r12 = r12 + r14;
        r3.presentationTimeUs = r12;
        goto L_0x00bf;
    L_0x0430:
        r0 = r20;
        r2 = r0.bsX;
        r12 = r2.bsT;
        r0 = r20;
        r2 = r0.bsW;
        r14 = r2.getSampleTime();
        r12 = r12 + r14;
        r3.presentationTimeUs = r12;
        goto L_0x00bf;
    L_0x0445:
        r2 = 0;
        goto L_0x00ce;
    L_0x0448:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsL;
        r0 = r20;
        r3 = r0.bsX;
        r3 = r3.bsH;
        r2.aRO(r3);
        goto L_0x00e6;
    L_0x045d:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsQ;
        r12 = 1;
        if (r2 == r12) goto L_0x047b;
    L_0x0468:
        r2 = r3.size;
        if (r2 < 0) goto L_0x050e;
    L_0x046c:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsL;
        if (r2 != 0) goto L_0x0526;
    L_0x0476:
        r2 = r3.presentationTimeUs;
        r4 = r6;
        goto L_0x0190;
    L_0x047b:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsR;
        if (r2 != 0) goto L_0x0468;
    L_0x0485:
        r12 = r3.presentationTimeUs;
        r0 = r20;
        r2 = r0.bsX;
        r14 = r2.bsO;
        r0 = r20;
        r2 = r0.bsX;
        r16 = r2.bsV;
        r14 = r14 + r16;
        r2 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r2 > 0) goto L_0x0507;
    L_0x049d:
        r2 = 1;
    L_0x049e:
        if (r2 != 0) goto L_0x0468;
    L_0x04a0:
        if (r8 != 0) goto L_0x0468;
    L_0x04a2:
        r2 = "AudioLocalSource";
        r3 = "start second half trim";
        android.util.Log.e(r2, r3);
        r2 = 1;
        r3 = "AudioLocalSource";
        r8 = new java.lang.StringBuilder;
        r12 = "mEndMs = ";
        r8.<init>(r12);
        r0 = r20;
        r12 = r0.bsX;
        r12 = r12.bsP;
        r8 = r8.append(r12);
        r12 = "  ";
        r8 = r8.append(r12);
        r0 = r20;
        r12 = r0.bsX;
        r12 = r12.bsM;
        r8 = r8.append(r12);
        r8 = r8.toString();
        android.util.Log.e(r3, r8);
        r0 = r20;
        r3 = r0.bsX;
        r12 = r3.bsP;
        r0 = r20;
        r3 = r0.bsX;
        r14 = r3.bsM;
        r3 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r3 <= 0) goto L_0x0509;
    L_0x04f1:
        r3 = 1;
    L_0x04f2:
        if (r3 != 0) goto L_0x050b;
    L_0x04f4:
        r0 = r20;
        r3 = r0.bsW;
        r0 = r20;
        r8 = r0.bsX;
        r12 = r8.bsP;
        r8 = 1;
        r3.seekTo(r12, r8);
        r8 = r2;
        goto L_0x004a;
    L_0x0507:
        r2 = 0;
        goto L_0x049e;
    L_0x0509:
        r3 = 0;
        goto L_0x04f2;
    L_0x050b:
        r8 = r2;
        goto L_0x004a;
    L_0x050e:
        r0 = r20;
        r2 = r0.bsX;
        r12 = r2.bsT;
        r12 = r12 + r4;
        r2.bsT = r12;
        r0 = r20;
        r2 = r0.bsW;
        r12 = 0;
        r3 = 0;
        r2.seekTo(r12, r3);
        goto L_0x004a;
    L_0x0526:
        r12 = r3.presentationTimeUs;
        r14 = 0;
        r2 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1));
        if (r2 != 0) goto L_0x0534;
    L_0x052e:
        r12 = 0;
        r2 = (r4 > r12 ? 1 : (r4 == r12 ? 0 : -1));
        if (r2 == 0) goto L_0x0546;
    L_0x0534:
        r12 = r3.presentationTimeUs;
        r0 = r20;
        r2 = r0.bsX;
        r14 = r2.bsT;
        r4 = r4 + r14;
        r2 = (r12 > r4 ? 1 : (r12 == r4 ? 0 : -1));
        if (r2 > 0) goto L_0x055b;
    L_0x0543:
        r2 = 1;
    L_0x0544:
        if (r2 != 0) goto L_0x0476;
    L_0x0546:
        r0 = r20;
        r2 = r0.bsX;
        r2 = r2.bsL;
        r0 = r20;
        r4 = r0.bsX;
        r4 = r4.bsH;
        r2.aRN(r9, r3, r4);
        goto L_0x0476;
    L_0x055b:
        r2 = 0;
        goto L_0x0544;
        */
        throw new UnsupportedOperationException("Method not decompiled: cn.nubia.videogenerator.local.b.run():void");
    }
}
