package com.android.common.storagemanager;

import android.net.Uri;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Video;
import java.util.ArrayList;

public class C0724i {
    private boolean afl = false;
    protected ArrayList afm = new ArrayList();
    protected ArrayList afn = new ArrayList();

    public void amu() {
        if (this.afm != null) {
            this.afm.clear();
        }
        if (this.afn != null) {
            this.afn.clear();
        }
    }

    public void amw(boolean z) {
        this.afl = z;
    }

    public boolean amt(Uri uri) {
        if (this.afn.contains(uri)) {
            return false;
        }
        return this.afn.add(uri);
    }

    public boolean ams(Uri uri) {
        if (this.afm.contains(uri)) {
            return false;
        }
        return this.afm.add(uri);
    }

    public boolean amv(Uri uri) {
        if (!this.afl) {
            return false;
        }
        String uri2 = uri.toString();
        if (uri2.contains(Media.EXTERNAL_CONTENT_URI.toString())) {
            return ams(uri);
        }
        if (uri2.contains(Video.Media.EXTERNAL_CONTENT_URI.toString())) {
            return amt(uri);
        }
        return false;
    }

    public boolean amx(Uri uri) {
        if (this.afm.contains(uri)) {
            return this.afm.remove(uri);
        }
        if (this.afn.contains(uri)) {
            return this.afn.remove(uri);
        }
        return false;
    }

    public ArrayList amy() {
        return this.afm;
    }

    public ArrayList amz() {
        return this.afn;
    }

    public int amr() {
        return this.afm.size() + this.afn.size();
    }
}
