package com.android.videomaker;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.android.camera.R;
import java.util.ArrayList;

public class ThumbImageListView extends LinearLayout implements OnClickListener {
    private Context ayF;
    private int ayG = -1;
    private int ayH = -1;
    private int ayI = 0;
    private int ayJ = 0;
    private boolean ayK = true;
    private int ayL = -1;
    private C1191e ayM = null;
    private Rect ayN = new Rect();
    private Bitmap ayO = null;
    private ArrayList ayP;
    private Toast ayQ = null;
    private Bitmap ayR = null;

    public ThumbImageListView(Context context) {
        super(context);
        this.ayF = context;
    }

    public ThumbImageListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.ayF = context;
    }

    public ThumbImageListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ayF = context;
    }

    public void aNz(int i) {
        this.ayJ = i;
        this.ayO = BitmapFactory.decodeResource(getResources(), R.drawable.thumb_select);
        this.ayR = BitmapFactory.decodeResource(getResources(), R.drawable.thumb_unselect);
        this.ayN.left = 0;
        this.ayN.top = 0;
        this.ayN.right = this.ayO.getWidth();
        this.ayN.bottom = this.ayO.getHeight();
        clear();
        this.ayP = new ArrayList();
        this.ayI = 0;
    }

    public void clear() {
        removeAllViews();
        if (this.ayP != null) {
            for (int i = 0; i < getCount(); i++) {
                getItem(i).aPv();
            }
            this.ayP = null;
            this.ayI = 0;
        }
        System.gc();
    }

    public void aNu(C1196i c1196i, int i) {
        this.ayP.add(c1196i);
        c1196i.aPw(true);
        View aNv = aNv(c1196i, i);
        aNC(aNv, i);
        aNv.setOnClickListener(this);
        addView(aNv, i);
        this.ayI++;
    }

    public int aNx() {
        return this.ayI;
    }

    public void onClick(View view) {
        int aNy = aNy(view);
        if (!((C1196i) this.ayP.get(aNy)).aPx()) {
            this.ayI++;
            ((C1196i) this.ayP.get(aNy)).aPw(true);
            aNA(aNy, true);
        } else if (this.ayI <= 3) {
            if (this.ayQ == null) {
                this.ayQ = Toast.makeText(this.ayF, R.string.editor_number_error, 1);
            }
            this.ayQ.show();
            return;
        } else {
            this.ayI--;
            ((C1196i) this.ayP.get(aNy)).aPw(false);
            aNA(aNy, false);
        }
        if (this.ayM != null) {
            this.ayM.aND(aNy);
        }
    }

    public int getCount() {
        if (this.ayP == null) {
            return 0;
        }
        return this.ayP.size();
    }

    public C1196i getItem(int i) {
        return (C1196i) this.ayP.get(i);
    }

    public int getItemId(int i) {
        return i;
    }

    private int aNC(View view, int i) {
        view.setId(i);
        return i;
    }

    private int aNy(View view) {
        return view.getId();
    }

    private View aNv(C1196i c1196i, int i) {
        Bitmap aPy = c1196i.aPy();
        View inflate = LayoutInflater.from(this.ayF).inflate(R.layout.ztemt_video_editor_linear, null);
        if (aPy != null) {
            aNw((ImageView) inflate.findViewById(R.id.thumb_item_imageview), i, true);
        }
        return inflate;
    }

    private boolean aNA(int i, boolean z) {
        View findViewById = findViewById(getItemId(i));
        if (findViewById != null) {
            aNw((ImageView) findViewById.findViewById(R.id.thumb_item_imageview), i, z);
        }
        return true;
    }

    private void aNw(ImageView imageView, int i, boolean z) {
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        Rect rect3 = new Rect();
        Paint paint = new Paint();
        paint.setColor(-16777216);
        paint.setAlpha(150);
        paint.setAntiAlias(true);
        int i2 = this.ayJ;
        int i3 = this.ayJ;
        if (i2 != 0 && i3 != 0) {
            Bitmap aPy = ((C1196i) this.ayP.get(i)).aPy();
            if (aPy != null) {
                int width = aPy.getWidth();
                int height = aPy.getHeight();
                rect.left = 0;
                rect.top = 0;
                rect.right = width;
                rect.bottom = height;
                Bitmap createBitmap = Bitmap.createBitmap(i2, i3, aPy.getConfig());
                Canvas canvas = new Canvas(createBitmap);
                canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
                rect2.left = 0;
                rect2.top = 0;
                rect2.right = i2;
                rect2.bottom = i3;
                rect3.left = 8;
                rect3.top = 8;
                rect3.right = 33;
                rect3.bottom = 33;
                canvas.drawBitmap(aPy, rect, rect2, null);
                if (z) {
                    canvas.drawBitmap(this.ayO, this.ayN, rect3, null);
                } else {
                    canvas.drawRect((float) rect2.left, (float) rect2.top, (float) rect2.right, (float) rect2.bottom, paint);
                    canvas.drawBitmap(this.ayR, this.ayN, rect3, null);
                }
                imageView.setImageBitmap(createBitmap);
            }
        }
    }

    public void aNB(C1191e c1191e) {
        this.ayM = c1191e;
    }
}
