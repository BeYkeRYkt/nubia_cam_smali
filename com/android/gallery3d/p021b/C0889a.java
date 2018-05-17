package com.android.gallery3d.p021b;

import android.content.ContentResolver;
import android.database.Cursor;
import android.database.sqlite.SQLiteDiskIOException;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.provider.MediaStore.Images.Thumbnails;
import android.provider.MediaStore.Video;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.p014n.C0111p;
import com.android.common.p028h.C0562f;
import com.android.common.storagemanager.C0724i;
import com.android.common.ui.RotateLayout;
import com.android.gallery3d.p038a.C0871a;
import com.android.gallery3d.p038a.C0875o;
import com.android.gallery3d.ui.FilmStripView;
import com.p010a.C0090a;
import java.util.ArrayList;

public class C0889a extends C0111p {
    private View arD;
    private C0890c arE = null;
    private C0871a arF;
    private OnClickListener arG = new C0896h(this);
    private ViewGroup arH;
    private boolean arI = false;
    private FilmStripView arJ;
    private C0892d arK = new C0892d();
    private boolean arL = true;
    private boolean arM = false;
    private boolean arN = false;
    private Handler arO = new C0893e();
    private boolean arP = false;
    private RotateLayout arQ;
    private C0205b arR;
    private View arS;
    private ViewGroup arT;

    public C0889a(int i, C0205b c0205b) {
        super(i);
        this.arR = c0205b;
    }

    public static C0889a aFm(C0205b c0205b) {
        return new C0889a(1, c0205b);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        View inflate = layoutInflater.inflate(R.layout.gallery_filmstrip, viewGroup, false);
        aFl(inflate);
        aFr();
        return inflate;
    }

    public void onPause() {
        if (this.adB) {
            super.onPause();
            return;
        }
        if (this.arE != null) {
            this.arE.dismiss();
        }
        super.onPause();
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.adB) {
            return false;
        }
        View view = getView();
        if (view == null) {
            C0090a.m1e("GalleryFragment", "dispatchTouchEvent be called when view is null");
            return super.dispatchTouchEvent(motionEvent);
        }
        view.dispatchTouchEvent(motionEvent);
        if (motionEvent.getActionMasked() == 0) {
            if (this.arP && !this.arN) {
                this.arO.removeMessages(2);
                aFn();
            }
        } else if (motionEvent.getActionMasked() == 1 && this.arI) {
            this.arH.setBackgroundResource(R.drawable.panel_undo_holo);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case 24:
            case 25:
            case 27:
            case 79:
            case 80:
            case 85:
            case 126:
            case 127:
                return true;
            default:
                return super.onKeyDown(i, keyEvent);
        }
    }

    private void aFj(View view) {
        this.arJ = (FilmStripView) view.findViewById(R.id.filmstrip_view);
        this.arJ.aCo(getResources().getDimensionPixelSize(R.dimen.dimens_12));
        this.arJ.aCn(this.arK);
        this.arF = new C0871a(new ColorDrawable(getResources().getColor(R.color.photo_placeholder)));
        this.arJ.aCm(this.arF);
        this.arF.aAM(getActivity().getContentResolver(), new ArrayList(this.adA.Ti().ame().amy()), new ArrayList(this.adA.Ti().ame().amz()));
    }

    private void aFl(View view) {
        this.arS = view.findViewById(R.id.top_bar);
        view.findViewById(R.id.topbar_delete_button).setOnClickListener(this.arG);
        this.arD = view.findViewById(R.id.gallery_bottom_bar);
        view.findViewById(R.id.bottombar_delete_button).setOnClickListener(this.arG);
        this.arH = (ViewGroup) view.findViewById(R.id.delete_bar);
        this.arQ = (RotateLayout) view.findViewById(R.id.gallery_rotatelayout);
        aFk(view);
        aFj(view);
    }

    private void aFr() {
        if (this.arS.getVisibility() != 0) {
            this.arO.removeMessages(1);
            this.arO.removeMessages(0);
            this.arO.sendEmptyMessage(0);
        }
    }

    private void aFh() {
        if (this.arS.getVisibility() == 0) {
            this.arO.removeMessages(1);
            this.arO.removeMessages(0);
            this.arO.sendEmptyMessage(1);
        }
    }

    private void aFq(int i) {
        TextView textView = (TextView) this.arS.findViewById(R.id.title);
        C0875o aAF = this.arF.aAF(i);
        if (aAF != null) {
            textView.setText(aAF.aBk());
        } else {
            textView.setText("");
        }
    }

    private void aFk(View view) {
        this.arT = (ViewGroup) view.findViewById(R.id.undo_bar);
        this.arT.setOnClickListener(new C0899k(this));
        this.arT.setOnTouchListener(new C0900l(this));
    }

    private void aFs() {
        this.arH.setVisibility(8);
        this.arT.setVisibility(0);
    }

    private void aFi() {
        this.arT.setVisibility(8);
        if (!this.arL) {
            this.arH.setVisibility(0);
        }
    }

    private void aFp(int i) {
        this.arF.aAK(getActivity(), i);
        this.arP = true;
        if (this.arL) {
            aFn();
            return;
        }
        aFs();
        if (this.arF.aAG() <= 0) {
            this.arO.removeMessages(2);
            this.arO.sendEmptyMessageDelayed(2, 3000);
        }
    }

    private void aFn() {
        if (this.arP) {
            this.arP = false;
            aFi();
            this.adA.Ti().ame().amx(this.arF.aAD());
            this.arF.aAB(getActivity());
            if (this.arF.aAG() <= 0) {
                aFb();
            }
        }
    }

    protected void ain(int i, boolean z) {
        super.ain(i, z);
        if (!this.adB) {
            this.arQ.fc(i, z);
            if (this.arF.aAG() > 0) {
                if (this.arJ.aCb()) {
                    this.arJ.aBY().aDm();
                }
                this.arO.sendEmptyMessage(0);
            }
        }
    }

    public void aFb() {
        C0090a.bvo("GalleryFragment", "backToCamera");
        if (this.arM) {
            C0090a.m1e("GalleryFragment", "fragment has remove!");
            return;
        }
        aFc();
        this.arO.removeCallbacksAndMessages(null);
        this.arR.aFO();
        aFo();
        this.arM = true;
    }

    private void aFc() {
        if (this.arP) {
            this.adA.Ti().ame().amx(this.arF.aAD());
            this.arF.aAB(getActivity());
            this.arP = false;
        }
    }

    private void aFo() {
        if (!this.adC) {
            alA().Th().afx(aFd());
        }
    }

    private C0562f aFd() {
        C0724i ame = this.adA.Ti().ame();
        if (ame.amr() <= 0) {
            return null;
        }
        Uri uri;
        boolean z;
        ContentResolver contentResolver = getActivity().getContentResolver();
        ArrayList amy = ame.amy();
        ArrayList amz = ame.amz();
        if (amy.isEmpty()) {
            uri = (Uri) amz.get(amz.size() - 1);
            z = false;
        } else if (amz.isEmpty()) {
            uri = (Uri) amy.get(amy.size() - 1);
            z = true;
        } else {
            Uri uri2 = (Uri) amy.get(amy.size() - 1);
            uri = (Uri) amz.get(amz.size() - 1);
            Cursor query = contentResolver.query(uri2, new String[]{"datetaken", "date_modified"}, null, null, null);
            Cursor query2 = contentResolver.query(uri, new String[]{"datetaken", "date_modified"}, null, null, null);
            query.moveToFirst();
            query2.moveToFirst();
            if (query.getLong(0) > query2.getLong(0) || query.getLong(1) >= query2.getLong(1)) {
                uri = uri2;
                z = true;
            } else {
                z = false;
            }
        }
        return aFf(contentResolver, uri, z);
    }

    private C0562f aFf(ContentResolver contentResolver, Uri uri, boolean z) {
        if (z) {
            return aFe(contentResolver, uri);
        }
        return aFg(contentResolver, uri);
    }

    private C0562f aFe(ContentResolver contentResolver, Uri uri) {
        Throwable e;
        C0562f c0562f = null;
        Cursor query;
        try {
            query = contentResolver.query(uri, new String[]{"_id", "orientation"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        Bitmap thumbnail = Thumbnails.getThumbnail(contentResolver, query.getLong(0), 1, null);
                        if (C0616j.aoR(uri, contentResolver)) {
                            c0562f = C0562f.afN(uri, thumbnail, query.getInt(1));
                        }
                    }
                } catch (SQLiteDiskIOException e2) {
                    e = e2;
                    C0090a.bvi("GalleryFragment", "sql i/o exctption in thumbnail", e);
                    if (query != null) {
                        query.close();
                    }
                    return c0562f;
                } catch (NullPointerException e3) {
                    e = e3;
                    try {
                        C0090a.bvi("GalleryFragment", "getThumbnailFromUri fail", e);
                        if (query != null) {
                            query.close();
                        }
                        return c0562f;
                    } catch (Throwable th) {
                        e = th;
                        if (query != null) {
                            query.close();
                        }
                        throw e;
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLiteDiskIOException e4) {
            e = e4;
            query = null;
            C0090a.bvi("GalleryFragment", "sql i/o exctption in thumbnail", e);
            if (query != null) {
                query.close();
            }
            return c0562f;
        } catch (NullPointerException e5) {
            e = e5;
            query = null;
            C0090a.bvi("GalleryFragment", "getThumbnailFromUri fail", e);
            if (query != null) {
                query.close();
            }
            return c0562f;
        } catch (Throwable th2) {
            e = th2;
            query = null;
            if (query != null) {
                query.close();
            }
            throw e;
        }
        return c0562f;
    }

    private C0562f aFg(ContentResolver contentResolver, Uri uri) {
        Cursor query;
        Throwable e;
        C0562f c0562f = null;
        try {
            query = contentResolver.query(uri, new String[]{"_id"}, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        Bitmap thumbnail = Video.Thumbnails.getThumbnail(contentResolver, query.getLong(0), 1, null);
                        if (C0616j.aoR(uri, contentResolver)) {
                            c0562f = C0562f.afN(uri, thumbnail, 0);
                        }
                    }
                } catch (SQLiteDiskIOException e2) {
                    e = e2;
                    C0090a.bvi("GalleryFragment", "sql i/o exctption in thumbnail", e);
                    if (query != null) {
                        query.close();
                    }
                    return c0562f;
                } catch (NullPointerException e3) {
                    e = e3;
                    try {
                        C0090a.bvi("GalleryFragment", "getThumbnailFromUri fail", e);
                        if (query != null) {
                            query.close();
                        }
                        return c0562f;
                    } catch (Throwable th) {
                        e = th;
                        if (query != null) {
                            query.close();
                        }
                        throw e;
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (SQLiteDiskIOException e4) {
            e = e4;
            query = null;
            C0090a.bvi("GalleryFragment", "sql i/o exctption in thumbnail", e);
            if (query != null) {
                query.close();
            }
            return c0562f;
        } catch (NullPointerException e5) {
            e = e5;
            query = null;
            C0090a.bvi("GalleryFragment", "getThumbnailFromUri fail", e);
            if (query != null) {
                query.close();
            }
            return c0562f;
        } catch (Throwable th2) {
            e = th2;
            query = null;
            if (query != null) {
                query.close();
            }
            throw e;
        }
        return c0562f;
    }
}
