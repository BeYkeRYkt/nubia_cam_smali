package com.android.gallery3d.p038a;

import android.net.Uri;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;

public class C0885q {
    private LinkedList apO = new LinkedList();
    private HashMap apP = new HashMap();

    public C0875o aBI(int i) {
        return (C0875o) this.apO.get(i);
    }

    public C0875o aBJ(int i) {
        C0875o c0875o = (C0875o) this.apO.remove(i);
        this.apP.remove(c0875o);
        return c0875o;
    }

    public void aBL(int i, C0875o c0875o) {
        this.apO.set(i, c0875o);
        this.apP.put(c0875o.aAV(), c0875o);
    }

    public void aBF(C0875o c0875o) {
        this.apO.addFirst(c0875o);
        this.apP.put(c0875o.aAV(), c0875o);
    }

    public void aBM(int i, C0875o c0875o) {
        this.apO.add(i, c0875o);
        this.apP.put(c0875o.aAV(), c0875o);
    }

    public int aBG() {
        return this.apO.size();
    }

    public void aBH(Comparator comparator) {
        Collections.sort(this.apO, comparator);
    }

    public int aBK(Uri uri) {
        if (this.apP.containsKey(uri)) {
            return this.apO.indexOf(new C0886r(uri));
        }
        return -1;
    }
}
