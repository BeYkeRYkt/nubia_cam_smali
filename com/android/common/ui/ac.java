package com.android.common.ui;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;

public class ac extends Dialog {
    private int uk = 0;
    private int ul = 0;
    private int um = 0;

    public ac(Context context, int i, int i2) {
        super(context);
        this.um = i2;
        this.ul = i;
    }

    public ac(int i, int i2, int i3, Context context) {
        super(context);
        this.um = i2;
        this.ul = i;
        this.uk = i3;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.um == 1) {
            requestWindowFeature(1);
            getWindow().setFlags(1024, 1024);
        }
        if (this.uk != 0) {
            getWindow().setBackgroundDrawableResource(this.uk);
        }
        setContentView(this.ul);
    }
}
