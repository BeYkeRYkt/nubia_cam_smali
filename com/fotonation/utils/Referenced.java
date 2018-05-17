package com.fotonation.utils;

public class Referenced {
    protected int mRefCount = 1;

    public int AddRef() {
        int i = this.mRefCount + 1;
        this.mRefCount = i;
        return i;
    }

    public int Release() {
        if (this.mRefCount <= 0) {
            return 0;
        }
        int i = this.mRefCount - 1;
        this.mRefCount = i;
        return i;
    }
}
