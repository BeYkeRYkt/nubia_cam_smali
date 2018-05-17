package com.android.videomaker;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.android.camera.R;
import com.android.common.C0701s;
import com.android.common.appService.C0329e;
import com.android.common.custom.C0411D;
import com.android.common.custom.C0421M;
import com.android.common.p028h.C0562f;
import com.android.videomaker.p041a.C1174a;
import com.android.videomaker.p041a.C1175b;
import com.android.videomaker.p041a.C1176c;
import com.android.videomaker.p041a.C1177d;
import com.android.videomaker.p042b.C1180a;
import com.android.videomaker.service.MakerService;
import com.p010a.C0090a;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class C1193f implements OnClickListener, C1191e, C1192l {
    private final String[] ayS = new String[]{"title", "mime_type"};
    private Activity ayT = null;
    private C0329e ayU = null;
    private int ayV = 3;
    private Button ayW;
    private OnAudioFocusChangeListener ayX = new C1217w(this);
    private AudioManager ayY;
    private int ayZ;
    private int azA;
    private String azB;
    private ImageButton azC;
    private LooperShowView azD;
    private int azE = 0;
    private MediaPlayer azF = null;
    private ProgressBar azG;
    private ArrayList azH = new ArrayList();
    private String azI = null;
    private View azJ = null;
    private Button azK;
    private boolean azL = false;
    private int azM;
    private TextView azN;
    private final C1195h azO = new C1195h();
    private ArrayList azP = null;
    private Button azQ;
    private int azR;
    private Uri azS = null;
    private int azT = -1;
    private ThumbImageListView azU;
    private File azV = null;
    private String azW = null;
    private ImageButton aza;
    private Context azb = null;
    private int azc = -1;
    private ImageButton azd;
    private TextView aze;
    private RelativeLayout azf = null;
    private ProgressBar azg;
    private TextView azh;
    private Animation azi;
    private Animation azj;
    private int azk;
    private Handler azl = new C1216v(this);
    private HorizontalScrollView azm;
    private ImageView azn;
    private boolean azo = false;
    private final LayoutInflater azp;
    private boolean azq = false;
    private boolean azr = false;
    private C1178g azs;
    private ProgressDialog azt = null;
    private int azu;
    private int azv;
    private String azw = null;
    private String azx = null;
    private Uri azy = null;
    private Button azz;
    private int mState;

    public C1193f(C0329e c0329e, ArrayList arrayList, String str) {
        this.ayU = c0329e;
        this.ayT = this.ayU.SN();
        this.azb = this.ayT;
        this.azp = this.ayT.getLayoutInflater();
        this.azP = arrayList;
        this.azW = str;
    }

    public void aNF(ArrayList arrayList) {
        this.azH = arrayList;
    }

    public void aNE(C1178g c1178g) {
        this.azs = c1178g;
    }

    public void aNR() {
        if (this.azt != null && this.azt.isShowing()) {
            this.azt.dismiss();
        }
    }

    public void aNG() {
        if (!this.azo && this.azP != null && (this.azP == null || this.azP.size() != 0)) {
            this.azo = true;
            this.ayU.TE().Lz(8);
            aOf();
            aOg();
            aNS();
        }
    }

    public void aOm() {
        if (this.azo) {
            aNR();
            if (!(this.azJ == null || this.azJ.getVisibility() == 8)) {
                aNT();
                this.azo = false;
                this.azJ = null;
            }
            this.ayU.TE().Lz(0);
            this.ayU.Tk(false);
            if (this.mState == 2) {
                aNN();
            }
            this.azl.removeMessages(259);
            this.azl.removeMessages(260);
            this.azl.removeMessages(261);
            this.azl.sendEmptyMessage(261);
            aNO();
        }
    }

    private void aNT() {
        this.azJ.startAnimation(this.azj);
        this.azJ.setVisibility(8);
    }

    private void aNS() {
        this.azJ.startAnimation(this.azi);
        this.azJ.setVisibility(0);
    }

    private void aOf() {
        this.mState = 1;
        this.ayZ = 0;
        this.azA = 1;
        this.azR = 2;
        this.azk = 6;
        this.ayV = 3;
        this.azL = false;
        this.azV = new File(this.azW);
        this.azv = aOd();
        this.azu = C1193f.aOc(1);
        C1174a.aKx(this.azb);
        this.azE = C1174a.aKw(300);
        if (C0421M.dC().dD() instanceof C0411D) {
            this.azE = C1174a.aKw(450);
        }
        C1176c.aKB(6);
        MakerService.aLt(this.azO);
        MakerService.aLu(this.ayU.Tq().age());
        aNQ();
    }

    private void aOg() {
        if (this.azJ == null) {
            ViewGroup viewGroup = (ViewGroup) this.ayT.getWindow().getDecorView();
            this.azf = (RelativeLayout) viewGroup.findViewById(R.id.export_dialog);
            this.azJ = viewGroup.findViewById(R.id.ztemt_video_editor_layout);
            this.azn = (ImageView) viewGroup.findViewById(R.id.image_view);
            this.azn.setImageBitmap(aNU(0, 0, true));
            this.azD = (LooperShowView) viewGroup.findViewById(R.id.loopershow_view);
            this.azC = (ImageButton) viewGroup.findViewById(R.id.playback_button);
            this.azC.setOnClickListener(this);
            this.azm = (HorizontalScrollView) viewGroup.findViewById(R.id.video_editor_photo_list);
            this.azU = (ThumbImageListView) viewGroup.findViewById(R.id.thumb_listview);
            this.azU.aNB(this);
            aOo();
            this.azN = (TextView) viewGroup.findViewById(R.id.selected_number_info);
            this.azN.setText(String.format(this.ayT.getResources().getString(R.string.video_maker_num_unit), new Object[]{Integer.valueOf(0)}));
            this.aze = (TextView) viewGroup.findViewById(R.id.time_info);
            this.ayW = (Button) viewGroup.findViewById(R.id.audio_button);
            this.azK = (Button) viewGroup.findViewById(R.id.select_music_button);
            this.azz = (Button) viewGroup.findViewById(R.id.order_button);
            this.azQ = (Button) viewGroup.findViewById(R.id.speed_button);
            this.aza = (ImageButton) viewGroup.findViewById(R.id.cancel_button);
            this.azd = (ImageButton) viewGroup.findViewById(R.id.done_button);
            aOe();
            this.ayW.setOnClickListener(this);
            this.azK.setOnClickListener(this);
            this.azz.setOnClickListener(this);
            this.azQ.setOnClickListener(this);
            this.aza.setOnClickListener(this);
            this.azd.setOnClickListener(this);
            this.azG = (ProgressBar) viewGroup.findViewById(R.id.audioTrack_progress);
            this.azi = AnimationUtils.loadAnimation(this.ayT, 17432576);
            this.azj = AnimationUtils.loadAnimation(this.ayT, 17432577);
            this.azi.setDuration(150);
            this.azj.setDuration(150);
        }
    }

    private void aOo() {
        C1174a.aKx(this.azb);
        this.azU.aNz(C1174a.aKw(60));
        this.azc = 0;
        this.azT = 0;
        this.azl.removeMessages(258);
        this.azl.removeMessages(259);
        this.azl.sendEmptyMessage(258);
    }

    public void aOe() {
        if (this.ayW != null) {
            this.ayW.setText(this.ayT.getResources().getString(R.string.original_sound));
            if (this.azK != null) {
                this.azK.setVisibility(8);
            }
        }
        if (this.azz != null) {
            this.azz.setText(this.ayT.getResources().getString(R.string.video_maker_rewind));
        }
        if (this.azQ != null) {
            this.azQ.setText(this.ayT.getResources().getString(R.string.image_duration_medium));
        }
    }

    private void aOq() {
        if (this.azc < this.azP.size()) {
            Bitmap aNU = aNU(this.azc, 0, false);
            if (aNU == null) {
                C0090a.m1e("VideoMakerPage", "onAddItem, bitmap == null");
                return;
            }
            this.azU.aNu(new C1196i(this.azT, (String) this.azP.get(this.azc), aNU, null), this.azT);
            this.azT++;
            aOB();
        }
    }

    private void aOp() {
        this.azc++;
        if (this.azc < this.azP.size()) {
            this.azl.sendEmptyMessage(259);
            return;
        }
        C0090a.bvm("VideoMakerPage", "0716, onAddItemFinished");
        aOr();
    }

    private void aOr() {
        this.azl.sendEmptyMessage(260);
    }

    public void aOC() {
        if (this.azn != null) {
            this.azn.setImageBitmap(aNU(aNX(), 0, true));
        }
        aOB();
    }

    public void aOB() {
        int aNx = this.azU.aNx();
        if (this.azN != null) {
            this.azN.setText(String.format(this.ayT.getResources().getString(R.string.video_maker_num_unit), new Object[]{Integer.valueOf(aNx)}));
        }
        if (this.aze != null) {
            String string = this.ayT.getResources().getString(R.string.video_duration);
            this.aze.setText(string + " " + aNW(this.azk, aNx) + " " + this.ayT.getResources().getString(R.string.intervalometer_time_s));
        }
    }

    public void aNO() {
        C1193f.aOn("clearData");
        MakerService.aLv(this.azb);
        MakerService.aLw(this.azO);
        if (this.azP != null) {
            this.azP.clear();
        }
        if (this.azU != null) {
            this.azU.clear();
        }
        if (this.azV != null) {
            File file = new File(this.azV.getAbsolutePath() + System.currentTimeMillis());
            this.azV.renameTo(file);
            if (file != null && file.exists()) {
                C1177d.aKC(file);
            }
        }
        if (this.azF != null) {
            this.azF.release();
            this.azF = null;
        }
        aNP();
        this.azy = null;
        this.azS = null;
        this.azx = null;
    }

    private void aNP() {
        if (this.azH != null) {
            this.azH.clear();
            this.azH = null;
        }
    }

    public boolean aNH() {
        return this.azo;
    }

    private int aNX() {
        for (int i = 0; i < this.azU.getCount(); i++) {
            C1196i item = this.azU.getItem(i);
            if (item != null && item.aPx()) {
                return i;
            }
        }
        return 0;
    }

    private Bitmap aNU(int i, int i2, boolean z) {
        if (this.azP.size() <= 0 || this.azP.get(i) == null) {
            return null;
        }
        if (!z) {
            return C1205s.aQp((String) this.azP.get(i), i2, 200);
        }
        Bitmap aQp = C1205s.aQp((String) this.azP.get(i), i2, 600);
        if (aQp == null && i == 0 && this.azP.size() > 1) {
            return C1205s.aQp((String) this.azP.get(i + 1), i2, 600);
        }
        return aQp;
    }

    public void aND(int i) {
        if (this.azU.getItem(i) != null) {
            if (this.mState == 0) {
                aON();
            }
            this.azl.sendEmptyMessage(257);
        }
    }

    private void aNQ() {
        MakerService.aLx(this.azb);
    }

    private void aNM() {
        String[] strArr = (String[]) aOa().toArray(new String[this.azP.size()]);
        if (this.azM != 0) {
            MakerService.aLy(this.azb, strArr, C1176c.aKA());
        }
    }

    private ArrayList aOa() {
        ArrayList arrayList = new ArrayList();
        int count = this.azU.getCount();
        int i;
        if (this.azA == 1) {
            for (i = 0; i < count; i++) {
                C1196i item = this.azU.getItem(i);
                if (item != null && item.aPx()) {
                    arrayList.add(item.aPz());
                }
            }
        } else {
            for (i = count - 1; i >= 0; i--) {
                C1196i item2 = this.azU.getItem(i);
                if (item2 != null && item2.aPx()) {
                    arrayList.add(item2.aPz());
                }
            }
        }
        this.azM = arrayList.size();
        return arrayList;
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.cancel_button:
                if (this.mState == 0) {
                    aON();
                }
                aOm();
                return;
            case R.id.playback_button:
                if (this.mState == 0) {
                    aON();
                    return;
                } else {
                    aOA();
                    return;
                }
            case R.id.audio_button:
                if (this.mState == 0) {
                    aON();
                }
                aOF();
                return;
            case R.id.speed_button:
                if (this.mState == 0) {
                    aON();
                }
                aOI();
                return;
            case R.id.order_button:
                aOG();
                if (this.mState == 0) {
                    aON();
                    return;
                } else {
                    aOE();
                    return;
                }
            case R.id.select_music_button:
                if (this.mState == 0) {
                    aON();
                }
                if (this.azx != null) {
                    MakerService.aLz(this.azb, this.azy);
                }
                aNI("documentsui");
                return;
            case R.id.done_button:
                if (aOh()) {
                    C0090a.m1e("VideoMakerPage", "wlb  invalid State busy....");
                    return;
                }
                if (this.mState == 0) {
                    aON();
                }
                if (aOl()) {
                    this.mState = 2;
                    MakerService.aLA(false);
                    aNM();
                    if (this.azM != 0) {
                        aOK();
                        this.azB = C1177d.aKE(1);
                        return;
                    }
                    return;
                }
                Toast.makeText(this.azb, R.string.invalid_duration, 1).show();
                return;
            default:
                return;
        }
    }

    private boolean aOh() {
        if (2 == this.mState || this.azt.isShowing() || MakerService.aLB() != 0) {
            return true;
        }
        return false;
    }

    private void aOA() {
        aOE();
        this.azD.aMl(this.azA, 1000 / ((long) this.azk));
        this.azn.setVisibility(8);
        this.azD.setVisibility(0);
        this.azC.setVisibility(8);
        aOD();
        aOz();
        this.mState = 0;
    }

    public void aON() {
        this.azD.stop();
        this.azD.setVisibility(8);
        this.azn.setVisibility(0);
        this.azC.setVisibility(0);
        aOO();
        aOM();
        this.mState = 1;
        aOE();
    }

    public int getState() {
        return this.mState;
    }

    private void aOE() {
        this.azD.aMk(aOa(), this.azE, this.azE);
        if (this.azD.aMi() != null) {
            this.azD.aMi().aPF(this);
        }
    }

    private void aOz() {
        if (this.ayZ != 1) {
            this.azF = new MediaPlayer();
            if (this.azF != null) {
                try {
                    if (this.ayZ == 0) {
                        if (this.azH != null && new File((String) this.azH.get(0)).exists()) {
                            aOu();
                        }
                    } else if (this.ayZ == 2 && this.azL) {
                        this.azF.setDataSource(this.azb, this.azy);
                        aOw(true);
                    } else {
                        C0090a.m1e("VideoMakerPage", "wrong audio state!");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    C0090a.bvo("VideoMakerPage", "exception = " + e);
                }
            }
        }
    }

    private void aOu() {
        if (aOk(this.azH)) {
            aOy(0);
        }
    }

    private void aOv(String str, int i) {
        this.azF.setDataSource(str);
        this.azF.setOnCompletionListener(new C1218x(this, i));
        aOw(false);
    }

    private void aOx(int i) {
        if (aOk(this.azH)) {
            int i2 = i + 1;
            if (i2 < this.azH.size()) {
                this.azF.reset();
                aOy(i2);
                return;
            }
            this.azF.reset();
            aOy(0);
        }
    }

    private void aOy(int i) {
        aOv((String) this.azH.get(i), i);
    }

    private boolean aOk(ArrayList arrayList) {
        return arrayList != null && arrayList.size() > 0;
    }

    private void aOw(boolean z) {
        this.azF.setLooping(z);
        this.azF.prepare();
        this.azF.start();
    }

    private void aOM() {
        if (this.azF != null) {
            this.azF.release();
            this.azF = null;
        }
    }

    private void aOK() {
        this.azg = (ProgressBar) this.azf.findViewById(R.id.export_progress_bar);
        this.azg.setMax(this.azM + 100);
        this.azg.setProgress(0);
        this.azh = (TextView) this.azf.findViewById(R.id.export_progress_text);
        this.azh.setText(this.ayU.SN().getResources().getString(R.string.video_maker_export, new Object[]{Integer.valueOf(0)}));
        ((TextView) this.azf.findViewById(R.id.export_dialog_cancel)).setOnClickListener(new C1219y(this));
        this.azf.setVisibility(0);
    }

    void aOt(int i) {
        int i2 = 100;
        if (this.azf != null && this.azg != null && this.azh != null) {
            this.azg.setProgress(i);
            int i3 = (i * 100) / (this.azM + 100);
            if (i3 <= 100) {
                i2 = i3;
            }
            this.azh.setText(this.ayU.SN().getResources().getString(R.string.video_maker_export, new Object[]{Integer.valueOf(i2)}));
        }
    }

    void aOs() {
        if (this.azf != null) {
            this.azf.setVisibility(8);
            this.mState = 1;
        }
    }

    private void aNN() {
        C1193f.aOn("cancelExport, mIsStartEncoding = " + this.azr);
        MakerService.aLA(true);
        if (this.azr) {
            MakerService.aLC(this.azb, this.azB);
        }
        this.azB = null;
        if (this.azf != null) {
            this.azf.setVisibility(8);
        }
        this.mState = 1;
    }

    private boolean aOj(Uri uri) {
        C1193f.aOn("isSupportMusicUri, uri = " + uri);
        boolean z = true;
        String aNZ = aNZ(uri);
        if ("audio/mpeg".equals(aNZ) || "audio/mp4".equals(aNZ) || "audio/amr".equals(aNZ) || "audio/aac".equals(aNZ)) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            if (mediaPlayer == null) {
                return false;
            }
            try {
                mediaPlayer.setDataSource(this.azb, uri);
                mediaPlayer.prepare();
            } catch (Exception e) {
                z = e;
                C0090a.bvo("VideoMakerPage", "exception = " + z);
                z.printStackTrace();
                z = false;
                return z;
            } finally {
                mediaPlayer.release();
            }
        } else {
            z = false;
        }
        return z;
    }

    private boolean aOi(String str) {
        if (str == null) {
            return false;
        }
        boolean z;
        if (str.endsWith(".m4a") || str.endsWith(".aac") || str.endsWith(".mp3")) {
            z = true;
        } else {
            z = str.endsWith(".amr");
        }
        return z;
    }

    public void aNL(Uri uri) {
        if (uri.getScheme().startsWith("file")) {
            this.azS = uri;
            aNJ(uri.getPath());
        } else if (aOj(uri)) {
            this.azS = uri;
            MakerService.aLD(this.azb, uri, true);
        } else {
            Toast.makeText(this.azb, R.string.editor_not_support_audio_track, 1).show();
            if (this.azx != null && this.azy != null) {
                MakerService.aLD(this.azb, this.azy, true);
            }
        }
    }

    private String aNY(Uri uri) {
        Cursor query;
        Exception e;
        Throwable th;
        String str = null;
        if (uri.getScheme().startsWith("file")) {
            String path = uri.getPath();
            return path.substring(path.lastIndexOf(47) + 1, path.lastIndexOf(46));
        }
        try {
            query = this.azb.getContentResolver().query(uri, this.ayS, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToNext()) {
                        str = query.getString(query.getColumnIndex("title"));
                    }
                } catch (Exception e2) {
                    e = e2;
                    try {
                        e.printStackTrace();
                        if (query != null) {
                            return null;
                        }
                        query.close();
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        if (query != null) {
                            query.close();
                        }
                        throw th;
                    }
                }
            }
            if (query == null) {
                return str;
            }
            query.close();
            return str;
        } catch (Exception e3) {
            e = e3;
            query = null;
            e.printStackTrace();
            if (query != null) {
                return null;
            }
            query.close();
            return null;
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
    }

    private String aNZ(Uri uri) {
        Cursor query;
        Exception e;
        Throwable th;
        String str = null;
        C1193f.aOn("getMusicType");
        try {
            query = this.azb.getContentResolver().query(uri, this.ayS, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToNext()) {
                        str = query.getString(query.getColumnIndex("mime_type"));
                        C1193f.aOn("type = " + str);
                    }
                } catch (Exception e2) {
                    e = e2;
                    try {
                        e.printStackTrace();
                        if (query != null) {
                            query.close();
                        }
                        return str;
                    } catch (Throwable th2) {
                        th = th2;
                        if (query != null) {
                            query.close();
                        }
                        throw th;
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception e3) {
            e = e3;
            query = null;
            e.printStackTrace();
            if (query != null) {
                query.close();
            }
            return str;
        } catch (Throwable th3) {
            th = th3;
            query = null;
            if (query != null) {
                query.close();
            }
            throw th;
        }
        return str;
    }

    private void aNJ(String str) {
        C1193f.aOn("addAudioTrackNoUri, filename = " + str);
        if (str != null) {
            if (aOi(str)) {
                File file = new File(str);
                C1193f.aOn("file.length() = " + file.length());
                if (file.exists() && file.length() >= 300) {
                    C1193f.aOn("file exists, addAudioTrackNoUri");
                    MakerService.aLE(this.azb, str, true);
                }
            } else {
                Toast.makeText(this.azb, R.string.editor_not_support_audio_track, 1).show();
                if (!(this.azx == null || this.azy == null)) {
                    this.azS = this.azy;
                    MakerService.aLD(this.azb, this.azy, true);
                }
            }
        }
    }

    private void aNK(ArrayList arrayList) {
        MakerService.aLF(this.azb, arrayList, false);
    }

    private void aOF() {
        if (this.ayZ == 0) {
            MakerService.aLG(this.azb, (String) null);
            aOP(1, this.ayT.getResources().getString(R.string.silence_sound), 8);
        } else if (this.ayZ == 1) {
            if (this.ayU == null || !this.ayU.SM().arE()) {
                this.azL = false;
                aOP(2, this.ayT.getResources().getString(R.string.music_sound), 0);
                return;
            }
            aOH();
        } else if (this.ayZ == 2) {
            MakerService.aLz(this.azb, this.azy);
            this.azx = null;
            aOH();
        }
    }

    private void aOH() {
        aNK(this.azH);
        aOP(0, this.ayT.getResources().getString(R.string.original_sound), 8);
    }

    private void aOP(int i, String str, int i2) {
        this.ayZ = i;
        this.ayW.setText(str);
        this.azK.setText(this.ayT.getResources().getString(R.string.select_music));
        this.azK.setVisibility(i2);
    }

    private void aOG() {
        if (this.azA == 1) {
            this.azA = 2;
            this.azz.setText(this.ayT.getResources().getString(R.string.video_maker_unrewind));
            return;
        }
        this.azA = 1;
        this.azz.setText(this.ayT.getResources().getString(R.string.video_maker_rewind));
    }

    private void aOI() {
        CharSequence string;
        if (this.azR == 2) {
            this.azR = 1;
            this.azk = 15;
            string = this.ayT.getResources().getString(R.string.image_duration_fast);
        } else if (this.azR == 1) {
            this.azR = 3;
            this.azk = 3;
            string = this.ayT.getResources().getString(R.string.image_duration_slow);
        } else {
            this.azR = 2;
            this.azk = 6;
            string = this.ayT.getResources().getString(R.string.image_duration_medium);
        }
        this.azQ.setText(string);
        String string2 = this.ayT.getResources().getString(R.string.video_duration);
        this.aze.setText(string2 + " " + aNW(this.azk, this.azU.aNx()) + " " + this.ayT.getResources().getString(R.string.intervalometer_time_s));
    }

    private String aNW(int i, int i2) {
        return C1175b.aKy(this.azb, aNV(i, i2));
    }

    private long aNV(int i, int i2) {
        return (((long) i2) * 1000) / ((long) i);
    }

    private boolean aOl() {
        if (this.azU == null) {
            return false;
        }
        if (aNV(this.azk, this.azU.aNx()) >= 1000) {
            return true;
        }
        return false;
    }

    private int aOd() {
        return ((Integer) C1180a.awQ[0].second).intValue();
    }

    private static int aOc(int i) {
        switch (i) {
            case 0:
                return 512000;
            case 1:
                return 2000000;
            case 2:
                return 8000000;
            default:
                return 2000000;
        }
    }

    private static void aOn(String str) {
        if (Log.isLoggable("VideoMakerPage", 3)) {
            C0090a.m0d("VideoMakerPage", str);
        }
    }

    public void aOL() {
        aON();
    }

    private void aNI(String str) {
        CharSequence string = this.ayT.getResources().getString(R.string.select_music);
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("audio/*");
        Iterable<ResolveInfo> queryIntentActivities = this.azb.getPackageManager().queryIntentActivities(intent, 0);
        if (!queryIntentActivities.isEmpty()) {
            List arrayList = new ArrayList();
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
                intent2.setType("audio/*");
                intent2.putExtra("android.intent.extra.durationLimit", 30);
                ActivityInfo activityInfo = resolveInfo.activityInfo;
                if (!(activityInfo.packageName.contains(str) || activityInfo.name.contains(str))) {
                    intent2.setPackage(activityInfo.packageName);
                    arrayList.add(intent2);
                }
            }
            Intent createChooser = Intent.createChooser((Intent) arrayList.remove(0), string);
            if (createChooser != null) {
                try {
                    createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
                    createChooser.setFlags(67108864);
                    this.ayT.startActivityForResult(createChooser, 1001);
                } catch (ActivityNotFoundException e) {
                    Toast.makeText(this.azb, "Can't find component to select music", 1).show();
                }
            }
        }
    }

    private void aOQ(String str, Uri uri) {
        C1193f.aOn("updateThumbnail");
        if (str != null && uri != null && this.ayU.SN() != null) {
            this.ayU.Ul(uri);
            Bitmap afU = C0562f.afU(str, aOb());
            if (afU != null) {
                aOJ(C0562f.afN(uri, afU, 0));
                C0701s.aif = uri;
            }
            if (this.ayU.SO()) {
                this.ayU.Th().afv();
            }
        }
    }

    private int aOb() {
        return this.ayU.Vg();
    }

    private void aOJ(C0562f c0562f) {
        this.ayU.Th().afx(c0562f);
    }

    private void aOD() {
        if (this.ayY == null) {
            this.ayY = (AudioManager) this.azb.getSystemService("audio");
        }
        this.ayY.requestAudioFocus(this.ayX, 3, 1);
    }

    private void aOO() {
        if (this.ayY != null) {
            this.ayY.abandonAudioFocus(this.ayX);
            this.ayY = null;
        }
    }
}
