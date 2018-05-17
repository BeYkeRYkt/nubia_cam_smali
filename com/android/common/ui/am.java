package com.android.common.ui;

import android.os.Handler;

public class am {
    private final Handler wg;
    private final Runnable wh;

    public void cancel() {
        this.wg.post(this.wh);
    }
}
