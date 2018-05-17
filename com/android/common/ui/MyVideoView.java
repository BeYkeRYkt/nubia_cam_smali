package com.android.common.ui;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import com.p010a.C0090a;
import java.util.Map;

public class MyVideoView extends SurfaceView {
    private String TAG;
    private OnBufferingUpdateListener jF;
    private OnCompletionListener jG;
    private Context jH;
    private int jI;
    private int jJ;
    private OnErrorListener jK;
    private Map jL;
    private OnInfoListener jM;
    private MediaPlayer jN;
    private OnCompletionListener jO;
    private OnErrorListener jP;
    private OnInfoListener jQ;
    private OnPreparedListener jR;
    OnPreparedListener jS;
    Callback jT;
    private int jU;
    OnVideoSizeChangedListener jV;
    private int jW;
    private SurfaceHolder jX;
    private int jY;
    private int jZ;
    private Uri ka;
    private int kb;
    private int kc;

    public MyVideoView(Context context) {
        super(context);
        this.TAG = "MyVideoView";
        this.jJ = 0;
        this.jZ = 0;
        this.jX = null;
        this.jN = null;
        this.jH = null;
        this.jV = new av(this);
        this.jS = new aw(this);
        this.jG = new ax(this);
        this.jM = new ay(this);
        this.jK = new az(this);
        this.jF = new aB(this);
        this.jT = new aC(this);
        this.jH = context;
        hG();
    }

    public MyVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        this.jH = context;
        hG();
    }

    public MyVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TAG = "MyVideoView";
        this.jJ = 0;
        this.jZ = 0;
        this.jX = null;
        this.jN = null;
        this.jH = null;
        this.jV = new av(this);
        this.jS = new aw(this);
        this.jG = new ax(this);
        this.jM = new ay(this);
        this.jK = new az(this);
        this.jF = new aB(this);
        this.jT = new aC(this);
        this.jH = context;
        hG();
    }

    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(getDefaultSize(this.kc, i), getDefaultSize(this.kb, i2));
    }

    private void hG() {
        this.kc = 0;
        this.kb = 0;
        getHolder().addCallback(this.jT);
        getHolder().setType(3);
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.jJ = 0;
        this.jZ = 0;
    }

    public void hM(Uri uri) {
        hN(uri, null);
    }

    public void hN(Uri uri, Map map) {
        this.ka = uri;
        this.jL = map;
        this.jU = 0;
        hI();
        requestLayout();
        invalidate();
    }

    private void hI() {
        if (this.ka != null && this.jX != null) {
            Intent intent = new Intent("com.android.music.musicservicecommand");
            intent.putExtra("command", "pause");
            this.jH.sendBroadcast(intent);
            hJ(false);
            try {
                this.jN = new MediaPlayer();
                this.jN.setOnPreparedListener(this.jS);
                this.jN.setOnVideoSizeChangedListener(this.jV);
                this.jN.setOnCompletionListener(this.jG);
                this.jN.setOnErrorListener(this.jK);
                this.jN.setOnInfoListener(this.jM);
                this.jN.setOnBufferingUpdateListener(this.jF);
                this.jI = 0;
                this.jN.setDataSource(this.jH, this.ka, this.jL);
                this.jN.setDisplay(this.jX);
                this.jN.setAudioStreamType(3);
                this.jN.setScreenOnWhilePlaying(true);
                this.jN.prepareAsync();
                this.jJ = 1;
            } catch (Throwable e) {
                C0090a.bvk(this.TAG, "Unable to open content: " + this.ka, e);
                this.jJ = -1;
                this.jZ = -1;
                this.jK.onError(this.jN, 1, 0);
            } catch (Throwable e2) {
                C0090a.bvk(this.TAG, "Unable to open content: " + this.ka, e2);
                this.jJ = -1;
                this.jZ = -1;
                this.jK.onError(this.jN, 1, 0);
            }
        }
    }

    public void hL(OnCompletionListener onCompletionListener) {
        this.jO = onCompletionListener;
    }

    private void hJ(boolean z) {
        if (this.jN != null) {
            this.jN.reset();
            this.jN.release();
            this.jN = null;
            this.jJ = 0;
            if (z) {
                this.jZ = 0;
            }
        }
    }

    public void start() {
        if (hH()) {
            this.jN.start();
            this.jJ = 3;
        }
        this.jZ = 3;
    }

    public void hK(int i) {
        if (hH()) {
            this.jN.seekTo(i);
            this.jU = 0;
            return;
        }
        this.jU = i;
    }

    private boolean hH() {
        if (this.jN == null || this.jJ == -1 || this.jJ == 0) {
            return false;
        }
        return this.jJ != 1;
    }
}
