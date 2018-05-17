package com.android.trajectory;

import android.content.ContentValues;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Matrix;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import com.android.camera.R;
import com.android.camera.Trajectory.C0154a;
import com.android.camera.Trajectory.NubiaTrajectory;
import com.android.common.C0616j;
import com.android.common.C0701s;
import com.android.common.camerastate.DeviceState;
import com.android.common.camerastate.FunctionState;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.exif.C0513e;
import com.android.common.exif.C0523o;
import com.android.common.p001l.C0623b;
import com.android.common.p014n.C0111p;
import com.android.common.ui.C0366P;
import com.android.common.ui.C0474A;
import com.android.common.ui.MultiFunctionImageView;
import com.android.common.ui.MultiFunctionImageView.Function;
import com.android.common.ui.RotateImageView;
import com.android.common.ui.RotateLayout;
import com.p010a.C0090a;
import com.umeng.analytics.ReportPolicy;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;

public class C1127b extends C0111p implements C0154a, C0366P {
    private static final int[] baA = new int[]{1, 3, 5, 7, 9, 11, 13, 15};
    private static final int[] bay = new int[]{1, 4, 6, 8, 9, 10, 11, 12, 13, 14, 15};
    private static final int[] baz = new int[]{1, 2, 3, 4, 5, 6, 7, 8, 10, 12, 15};
    protected RotateImageView baB = null;
    private OnSeekBarChangeListener baC = new C1137l(this);
    private RotateLayout baD = null;
    private RotateLayout baE = null;
    private RotateLayout baF = null;
    private SeekBar baG = null;
    private TextView baH = null;
    private int baI = 15;
    private OnSeekBarChangeListener baJ = new C1136k(this);
    private int[] baK = new int[]{5, 10, 15};
    private RotateLayout baL = null;
    private RotateLayout baM = null;
    private RotateLayout baN = null;
    private SeekBar baO = null;
    private TextView baP = null;
    protected RotateImageView baQ = null;
    protected RotateImageView baR = null;
    private String[] baS = null;
    private final Handler baT = new C1129d();
    private int baU;
    ArrayList baV = null;
    private int baW;
    private boolean baX = false;
    private boolean baY = false;
    private boolean baZ = false;
    private RelativeLayout bbA = null;
    private GridView bbB = null;
    private HorizontalScrollView bbC = null;
    private RelativeLayout bbD = null;
    private MultiFunctionImageView bbE = null;
    private int bbF;
    private boolean bbG = false;
    private boolean bba = false;
    private boolean bbb = false;
    private boolean bbc = false;
    private int[] bbd = null;
    private int bbe = 0;
    private float bbf = 0.0f;
    private boolean[] bbg = null;
    private Thread bbh = null;
    private Bitmap bbi = null;
    private View bbj = null;
    private Thread bbk = null;
    private float bbl = 90.0f;
    private Thread bbm = null;
    private LinearLayout bbn = null;
    private Bitmap bbo = null;
    private TextView bbp = null;
    private RotateLayout bbq = null;
    private RelativeLayout bbr = null;
    private ImageView bbs = null;
    private SimpleAdapter bbt = null;
    private int bbu = 5;
    private boolean bbv = true;
    private Bitmap[] bbw = null;
    private Bitmap bbx = null;
    private RotateLayout bby = null;
    private NubiaTrajectory bbz = null;

    public C1127b(int i) {
        super(i);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        C0090a.bvo("TrajectoryFragment", "onCreateView");
        View inflate = layoutInflater.inflate(R.layout.ztemt_trajectory_layout, viewGroup, false);
        if (inflate == null) {
            C0090a.bvo("TrajectoryFragment", "view == null");
        }
        brA(inflate);
        return inflate;
    }

    private void brA(View view) {
        this.bbs = (ImageView) view.findViewById(R.id.ztemt_trajectory_show_picture);
        this.bbC = (HorizontalScrollView) view.findViewById(R.id.trajectory_list_container);
        this.bbB = (GridView) view.findViewById(R.id.trajectory_grid_view);
        this.bbD = (RelativeLayout) view.findViewById(R.id.trajectory_view);
        this.bbn = (LinearLayout) view.findViewById(R.id.ztemt_trajectory_seekbar);
        this.baL = (RotateLayout) view.findViewById(R.id.capture_number_layout);
        this.baP = (TextView) view.findViewById(R.id.capture_number_text);
        this.baO = (SeekBar) view.findViewById(R.id.capture_number_seekbar);
        this.baN = (RotateLayout) view.findViewById(R.id.capture_number_min_layout);
        this.baM = (RotateLayout) view.findViewById(R.id.capture_number_max_layout);
        this.baD = (RotateLayout) view.findViewById(R.id.capture_interval_layout);
        this.baH = (TextView) view.findViewById(R.id.capture_interval_text);
        this.baG = (SeekBar) view.findViewById(R.id.capture_interval_seekbar);
        this.baF = (RotateLayout) view.findViewById(R.id.capture_interval_min_layout);
        this.baE = (RotateLayout) view.findViewById(R.id.capture_interval_max_layout);
        this.bbq = (RotateLayout) view.findViewById(R.id.show_capture_number_layout);
        this.bbp = (TextView) view.findViewById(R.id.show_capture_number);
        this.bbr = (RelativeLayout) view.findViewById(R.id.show_tip_layout);
        this.bby = (RotateLayout) view.findViewById(R.id.hold_steadily_tips);
        this.bbA = (RelativeLayout) view.findViewById(R.id.trajectory_bottom_layout);
        this.baR = (RotateImageView) view.findViewById(R.id.btn_done);
        this.baB = (RotateImageView) view.findViewById(R.id.btn_cancel);
        this.baQ = (RotateImageView) view.findViewById(R.id.btn_change);
        this.bby.setVisibility(0);
        this.bbj = view.findViewById(R.id.trajectoryPreviewRelativePage);
        this.bbE = (MultiFunctionImageView) view.findViewById(R.id.wait_indicator);
        brz();
        this.adE = new C0474A[]{this.baR, this.baB, this.baQ};
    }

    private void brz() {
        if (this.bbz == null) {
            this.bbz = new NubiaTrajectory(alA(), this);
        }
        this.baR.setOnClickListener(new C1132g());
        this.baB.setOnClickListener(new C1133h());
        this.baQ.setOnClickListener(new C1131f());
        this.bbu = 5;
        this.bba = false;
        this.bbz.stop();
        this.adA.SX().Ka();
        brT(this.bbu);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.baY = false;
    }

    public void onResume() {
        super.onResume();
        if (!this.adB) {
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.bby != null && this.bby.getVisibility() == 0) {
            this.bby.setVisibility(8);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public static C1127b brE() {
        return new C1127b(1);
    }

    private void brF(Bitmap[] bitmapArr) {
        brB();
        this.bbD.setVisibility(0);
    }

    public void aXi() {
        C0090a.bvo("TrajectoryFragment", "onRestart");
        brC();
        this.baT.removeMessages(1);
        this.baT.removeMessages(0);
        this.baT.removeMessages(2);
        this.baT.removeMessages(3);
        this.baT.removeMessages(5);
        brJ();
    }

    private void brJ() {
        bry();
        brv();
        brw();
        if (this.bbz != null) {
            this.bbz.aWL(false);
        }
        if (this.bbs != null) {
            this.bbs.setVisibility(8);
        }
        if (this.bbD != null) {
            this.bbD.setVisibility(8);
        }
        this.baS = null;
        brr();
        brq();
        NubiaTrajectory.CompositionCancel();
        this.bbc = false;
    }

    private void brq() {
        if (!(this.bbi == null || this.bbi.isRecycled())) {
            this.bbi.recycle();
            this.bbi = null;
        }
        System.gc();
    }

    private void brr() {
        int i = 0;
        if (this.bbs != null) {
            this.bbs.setImageBitmap(null);
            this.bbs.setVisibility(8);
        }
        if (this.bbB != null) {
            this.bbB.setAdapter(null);
        }
        if (this.bbt != null) {
            this.bbt.setViewBinder(null);
            this.bbt = null;
        }
        if (this.baV != null && this.baV.size() > 0) {
            this.baV.clear();
        }
        if (this.bbw != null && this.bbw.length > 0) {
            while (i < this.bbw.length) {
                if (!(this.bbw[i] == null || this.bbw[i].isRecycled())) {
                    this.bbw[i].recycle();
                    this.bbw[i] = null;
                }
                i++;
            }
        }
        this.bbw = null;
    }

    private void brC() {
        try {
            if (this.bbh != null) {
                this.bbh.interrupt();
            }
            if (this.bbk != null) {
                this.bbk.interrupt();
            }
            if (this.bbm != null) {
                this.bbm.interrupt();
            }
        } catch (Throwable e) {
            C0090a.bvi("TrajectoryFragment", "joinThread", e);
        }
        this.bbv = false;
    }

    public void aXj() {
        if (this.adA != null) {
            alA().TB();
        }
        this.bbD.setVisibility(8);
        this.bbs.setVisibility(8);
        this.baT.sendEmptyMessage(3);
    }

    public void aXf() {
        brx();
        brr();
    }

    private void brv() {
        if (this.bbq != null) {
            this.bbq.setVisibility(8);
        }
    }

    private void brR() {
    }

    private void brx() {
        if (this.bby != null) {
            this.bby.setVisibility(8);
        }
    }

    private void brN(int i) {
        this.baI = i;
        this.bbg = new boolean[this.baI];
    }

    private void brL(String str, int i) {
        Editor edit = als().edit();
        edit.putInt(str, i);
        edit.apply();
    }

    private String brt(int i) {
        if (this.adA == null) {
            return null;
        }
        return this.adA.SN().getString(R.string.trajectory_capture_number, new Object[]{Integer.valueOf(i)});
    }

    private String brs(int i) {
        if (this.adA == null) {
            return null;
        }
        return this.adA.SN().getString(R.string.trajectory_capture_interval, new Object[]{Integer.valueOf(i)});
    }

    private void brO(int i) {
        if (this.bbo == null) {
            this.bbo = Bitmap.createBitmap(this.baU, this.bbF, Config.ARGB_8888);
        } else {
            this.bbo.recycle();
            this.bbo = null;
            this.bbo = Bitmap.createBitmap(this.baU, this.bbF, Config.ARGB_8888);
        }
        Bitmap createBitmap = Bitmap.createBitmap(this.bbF, this.baU, Config.ARGB_8888);
        int GetSavedImageRGBA = NubiaTrajectory.GetSavedImageRGBA(i, createBitmap);
        if (GetSavedImageRGBA != 0) {
            C0090a.m1e("TrajectoryFragment", "show " + i + " view failed: ret = " + GetSavedImageRGBA);
            brJ();
        }
        C0090a.bvo("TrajectoryFragment", "mShowBimap.getWidth() = " + this.bbo.getWidth() + "; mShowBimap.getHeight() = " + this.bbo.getHeight() + "; mWidth = " + this.bbF + "; mHeight = " + this.baU);
        NubiaTrajectory.RotateBitmapRGBA8888(createBitmap, this.bbo, this.bbF, this.baU, bru());
    }

    private void brB() {
        this.bbB.setNumColumns(this.baI);
        this.bbB.setColumnWidth(C0616j.aoT(68));
        this.bbt = new C1138m(this, getActivity(), this.baV, R.layout.ztemt_trajectory_icon, new String[]{"effectIcon", "effectTitles"}, new int[]{R.id.icon, R.id.icon_title});
        this.bbt.setViewBinder(new C1128c());
        this.bbB.setAdapter(this.bbt);
        this.bbB.setOnItemClickListener(new C1139n(this));
        this.bbB.setEnabled(false);
        if (this.bbC != null) {
            this.bbC.scrollTo(0, 0);
        }
    }

    protected void ain(int i, boolean z) {
        this.bbe = i;
        this.bbG = z;
        if (this.bbt != null) {
            this.bbt.notifyDataSetChanged();
        }
        super.ain(i, z);
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        if (this.baX) {
            bro(true);
            if (this.bbE != null) {
                this.bbE.lx(0, false);
                this.bbE.lB(Function.PROGRESS);
            }
        }
        super.onPause();
    }

    public void onDestroy() {
        if (this.adB) {
            super.onDestroy();
            return;
        }
        this.baY = true;
        if (this.bbb) {
            try {
                this.bbh.join();
            } catch (Exception e) {
            }
        }
        this.baT.removeMessages(1);
        this.baT.removeMessages(0);
        this.baT.removeMessages(2);
        this.baT.removeMessages(3);
        brJ();
        super.onDestroy();
    }

    public void aXg(int i) {
        if (i <= this.baI) {
            int aWQ = (int) ((100.0f / ((float) this.bbz.aWQ())) * ((float) i));
            this.bbE.setVisibility(0);
            this.bbE.lw(Function.PROGRESS);
            this.bbE.lx(aWQ, true);
        }
        if (i == this.baI) {
            this.adA.TA();
            this.bbE.lx(100, true);
            this.bbE.setVisibility(8);
            this.bbE.lx(0, false);
            this.bbE.lB(Function.PROGRESS);
            brS();
        }
    }

    public void aXh(int i, int i2, int i3) {
        this.bbF = i;
        this.baU = i2;
        this.baW = i3;
        this.baX = false;
        if (this.bbz == null || !this.bbz.aWR()) {
            if (this.adA != null) {
                this.bbl = (float) C0616j.aoQ(this.adA.SQ(), this.adA.Tp());
                this.bbf = (float) this.adA.Tp();
            }
            PreRegister();
            this.adA.Wb(0);
        }
    }

    private void brn(int[] iArr) {
        this.bbz.aWL(true);
        brS();
        new C1140o(this, iArr).start();
    }

    private void PreRegister() {
        this.bbh = new C1141p(this);
        C0090a.bvo("TrajectoryFragment", "PreRegister Start");
        this.bbh.start();
    }

    private void brS() {
        if (this.adA != null) {
            this.bbE.setVisibility(0);
            this.bbE.lw(Function.WAIT);
        }
    }

    private void bry() {
        if (this.adA != null) {
            this.bbE.setVisibility(8);
            this.bbE.lB(Function.WAIT);
        }
    }

    private int bru() {
        switch (C0616j.aoS(0, this.adA.SQ())) {
            case 180:
                return 1;
            case 270:
                return 2;
            default:
                return 0;
        }
    }

    private void brQ() {
        if (this.bbr != null && this.baQ != null) {
            this.bbr.setVisibility(0);
            this.baQ.setVisibility(8);
        }
    }

    private void brw() {
        if (this.bbr != null) {
            this.bbr.setVisibility(8);
        }
    }

    private void brP(byte[] bArr) {
        alA().WQ(bArr);
    }

    private void brM(Bitmap bitmap) {
        try {
            Matrix matrix = new Matrix();
            matrix.reset();
            matrix.postScale(0.5f, 0.5f);
            matrix.postRotate(this.bbl);
            Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            createBitmap.compress(CompressFormat.JPEG, 100, byteArrayOutputStream);
            brP(byteArrayOutputStream.toByteArray());
            this.adA.Ur();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void brK(Bitmap bitmap) {
        long currentTimeMillis = System.currentTimeMillis();
        String aoP = C0616j.aoP(currentTimeMillis);
        String ara = C0701s.ara(this.adA.UW());
        Location age = this.adA.Tq().age();
        Matrix matrix = new Matrix();
        matrix.reset();
        matrix.postRotate(this.bbf);
        Bitmap createBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        ContentValues brp = brp(aoP, ara, currentTimeMillis, createBitmap.getWidth(), createBitmap.getHeight(), age);
        this.adA.Ti().alX(new C0623b(this.adA, createBitmap, brU(age, createBitmap.getWidth(), createBitmap.getHeight()), ara + "/", aoP + ".jpg", brp, 0, new C1130e()));
    }

    private ContentValues brp(String str, String str2, long j, int i, int i2, Location location) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("title", str);
        contentValues.put("datetaken", Long.valueOf(j));
        contentValues.put("_data", str2 + "/" + str + ".jpg");
        contentValues.put("width", Integer.valueOf(i));
        contentValues.put("height", Integer.valueOf(i2));
        if (location != null) {
            contentValues.put("latitude", Double.valueOf(location.getLatitude()));
            contentValues.put("longitude", Double.valueOf(location.getLongitude()));
        }
        return contentValues;
    }

    private SparseArray brU(Location location, int i, int i2) {
        float Gd = this.adA.Tn().Gd();
        float UU = this.adA.UU();
        SparseArray sparseArray = new SparseArray();
        sparseArray.put(C0523o.BY, C0421M.dC().dD().br());
        sparseArray.put(C0523o.BZ, C0421M.dC().dD().bs());
        sparseArray.put(C0523o.Cc, new C0513e(UU, 0.01f));
        sparseArray.put(C0523o.Cs, new C0513e(Gd, 0.01f));
        sparseArray.put(C0523o.Cp, Integer.valueOf(i));
        sparseArray.put(C0523o.Cq, Integer.valueOf(i2));
        if (location != null) {
            C0616j.apc(location.getLatitude(), location.getLongitude(), sparseArray);
        }
        return sparseArray;
    }

    private boolean brD() {
        if (this.bbz == null || !this.bbz.aWP()) {
            return false;
        }
        return true;
    }

    private void brT(int i) {
        switch (i) {
            case 5:
                this.baR.setVisibility(8);
                this.baB.setVisibility(8);
                this.baQ.setVisibility(8);
                alr();
                return;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                alz();
                return;
            case 7:
                bry();
                this.baR.setVisibility(0);
                this.baB.setVisibility(0);
                this.baQ.setVisibility(0);
                return;
            default:
                return;
        }
    }

    private void bro(boolean z) {
        if (brD()) {
            C0090a.bvo("TrajectoryFragment", "need cancel stop: true. wait...");
            return;
        }
        this.bbu = 5;
        this.bba = false;
        this.bbz.stop();
        this.adA.Wb(3);
        this.adA.TE().Lq(false);
        this.adA.SX().Ka();
        if (!(this.adA == null || alt() != DeviceState.PREVIEW_STOPPED || z || this.adC)) {
            this.adA.TB();
        }
        brT(this.bbu);
    }

    private void brG() {
        if (this.adA != null) {
            this.adA.TE().Lq(false);
            this.adA.SX().Ka();
            if (alt() == DeviceState.PREVIEW_STOPPED) {
                this.adA.TB();
            }
        }
        this.bbu = 5;
        brT(this.bbu);
    }

    private void brH() {
        boolean z = true;
        if (this.bbz == null || this.adA == null) {
            boolean z2;
            String str = "TrajectoryFragment";
            StringBuilder append = new StringBuilder().append("trajectory null: ");
            if (this.bbz == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            StringBuilder append2 = append.append(z2).append("; appService null: ");
            if (this.adA != null) {
                z = false;
            }
            C0090a.bvo(str, append2.append(z).toString());
        } else if (!this.adA.Tl() || this.adA.SO() || alu() != FunctionState.NORMAL || alt() != DeviceState.IDLE || alq() != UIState.NORMAL) {
            C0090a.bvm("TrajectoryFragment", "storage enough: " + this.adA.Tl() + "; Activity pause: " + this.adA.SO() + "; FunctionState: " + alu() + "; DeviceState: " + alt() + "; UIState: " + alq());
        } else if (this.bbu != 5) {
            C0090a.m1e("TrajectoryFragment", "mStatus is " + this.bbu + " can't start trajectory!");
        } else {
            this.baX = true;
            this.bbz.start();
            this.bbu = 6;
            this.adA.Wb(2);
            brT(this.bbu);
        }
    }

    public boolean onBackPressed() {
        if (this.baB != null && this.baB.getVisibility() == 0) {
            bro(false);
            return true;
        } else if (this.bbu == 5) {
            return super.onBackPressed();
        } else {
            return true;
        }
    }

    public void qf(boolean z) {
        if (alA() == null) {
            alA().VY(z);
        }
    }

    public void qe() {
        brH();
    }

    public void qg() {
        qe();
    }

    public boolean brI() {
        return false;
    }

    protected void ajH(int i, int i2, int i3, int i4) {
        if (this.bbj.getWidth() != i3 - i || this.bbj.getHeight() != i4 - i2) {
            C0090a.bvo("TrajectoryFragment", "relayout mPreviewRelativeContent");
            LayoutParams layoutParams = (LayoutParams) this.bbj.getLayoutParams();
            layoutParams.width = i3 - i;
            layoutParams.height = i4 - i2;
            layoutParams.topMargin = i2;
            layoutParams.setMarginStart(i);
            this.bbj.requestLayout();
        }
    }

    protected void alr() {
        super.alr();
        if (this.bbA != null) {
            this.bbA.setVisibility(8);
        }
    }

    protected void alz() {
        super.alz();
        if (this.bbA != null) {
            this.bbA.setVisibility(0);
        }
    }
}
