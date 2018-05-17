.class Lcom/android/clone/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic aTe:Lcom/android/clone/a;


# direct methods
.method private constructor <init>(Lcom/android/clone/a;)V
    .registers 2

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/clone/a;Lcom/android/clone/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/clone/c;-><init>(Lcom/android/clone/a;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjD(Lcom/android/clone/a;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjQ(Lcom/android/clone/a;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_55

    .line 1083
    :cond_11
    const-string/jumbo v0, "CloneViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsCanDraw = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bjD(Lcom/android/clone/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1084
    iget-object v2, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bjQ(Lcom/android/clone/a;)I

    move-result v2

    .line 1083
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1084
    const-string/jumbo v2, "; mIsWaiting = "

    .line 1083
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1084
    iget-object v2, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bjI(Lcom/android/clone/a;)Z

    move-result v2

    .line 1083
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const/4 v0, 0x0

    return v0

    .line 1082
    :cond_55
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjI(Lcom/android/clone/a;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1087
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_29e

    .line 1159
    :goto_66
    :pswitch_66
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjw(Lcom/android/clone/a;)Lcom/android/ui/ScaleLayout;

    move-result-object v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjG(Lcom/android/clone/a;)Z

    move-result v0

    if-eqz v0, :cond_292

    .line 1163
    :cond_76
    :goto_76
    const/4 v0, 0x1

    return v0

    .line 1089
    :pswitch_78
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bkd(Lcom/android/clone/a;)V

    .line 1090
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjV(Lcom/android/clone/a;F)F

    .line 1091
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjW(Lcom/android/clone/a;F)F

    .line 1092
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bki(Lcom/android/clone/a;)V

    .line 1093
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_cb

    .line 1094
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjU(Lcom/android/clone/a;Z)Z

    .line 1098
    :goto_a1
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/clone/a;->bjX(Lcom/android/clone/a;J)J

    .line 1099
    const-string/jumbo v0, "CloneViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ACTION_DOWN mIsScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bjH(Lcom/android/clone/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    .line 1096
    :cond_cb
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjU(Lcom/android/clone/a;Z)Z

    goto :goto_a1

    .line 1102
    :pswitch_d2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bjR(Lcom/android/clone/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_e9

    .line 1103
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjU(Lcom/android/clone/a;Z)Z

    .line 1105
    :cond_e9
    const-string/jumbo v0, "CloneViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ACTION_POINTER_1_DOWN mIsScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bjH(Lcom/android/clone/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1106
    const-string/jumbo v2, "; uesTime = "

    .line 1105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v4}, Lcom/android/clone/a;->bjR(Lcom/android/clone/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1105
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    .line 1109
    :pswitch_121
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjw(Lcom/android/clone/a;)Lcom/android/ui/ScaleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ui/ScaleLayout;->bto()F

    move-result v3

    .line 1110
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjw(Lcom/android/clone/a;)Lcom/android/ui/ScaleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ui/ScaleLayout;->btp()F

    move-result v4

    .line 1111
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjw(Lcom/android/clone/a;)Lcom/android/ui/ScaleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ui/ScaleLayout;->btq()I

    move-result v5

    .line 1112
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjw(Lcom/android/clone/a;)Lcom/android/ui/ScaleLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ui/ScaleLayout;->btr()I

    move-result v6

    .line 1113
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjH(Lcom/android/clone/a;)Z

    move-result v0

    if-nez v0, :cond_1bd

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bjR(Lcom/android/clone/a;)J

    move-result-wide v8

    sub-long/2addr v0, v8

    const-wide/16 v8, 0x64

    cmp-long v0, v0, v8

    if-lez v0, :cond_1bd

    .line 1114
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjE(Lcom/android/clone/a;)Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 1115
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjq(Lcom/android/clone/a;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v1}, Lcom/android/clone/a;->bjO(Lcom/android/clone/a;)F

    move-result v1

    mul-float/2addr v1, v3

    int-to-float v2, v5

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bjP(Lcom/android/clone/a;)F

    move-result v2

    mul-float/2addr v2, v4

    .line 1116
    int-to-float v7, v6

    .line 1115
    add-float/2addr v2, v7

    .line 1116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    mul-float/2addr v3, v7

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    .line 1117
    int-to-float v5, v6

    .line 1116
    add-float/2addr v4, v5

    .line 1117
    iget-object v5, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v5}, Lcom/android/clone/a;->bjr(Lcom/android/clone/a;)Landroid/graphics/Paint;

    move-result-object v5

    .line 1115
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1118
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjz(Lcom/android/clone/a;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1119
    iget-object v2, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bju(Lcom/android/clone/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v3}, Lcom/android/clone/a;->bjy(Lcom/android/clone/a;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1118
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1120
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjT(Lcom/android/clone/a;Z)Z

    .line 1133
    :cond_1bd
    :goto_1bd
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjV(Lcom/android/clone/a;F)F

    .line 1134
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjW(Lcom/android/clone/a;F)F

    .line 1135
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bki(Lcom/android/clone/a;)V

    goto/16 :goto_66

    .line 1122
    :cond_1d6
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjx(Lcom/android/clone/a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjB(Lcom/android/clone/a;)Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    .line 1124
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 1123
    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1125
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjA(Lcom/android/clone/a;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v1}, Lcom/android/clone/a;->bjO(Lcom/android/clone/a;)F

    move-result v1

    mul-float/2addr v1, v3

    int-to-float v2, v5

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bjP(Lcom/android/clone/a;)F

    move-result v2

    mul-float/2addr v2, v4

    .line 1126
    int-to-float v7, v6

    .line 1125
    add-float/2addr v2, v7

    .line 1126
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    mul-float/2addr v3, v7

    int-to-float v5, v5

    add-float/2addr v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    .line 1127
    int-to-float v5, v6

    .line 1126
    add-float/2addr v4, v5

    .line 1127
    iget-object v5, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v5}, Lcom/android/clone/a;->bjB(Lcom/android/clone/a;)Landroid/graphics/Paint;

    move-result-object v5

    .line 1125
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1128
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjx(Lcom/android/clone/a;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 1129
    iget-object v2, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bju(Lcom/android/clone/a;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v3}, Lcom/android/clone/a;->bjv(Lcom/android/clone/a;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1128
    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1130
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjT(Lcom/android/clone/a;Z)Z

    goto/16 :goto_1bd

    .line 1138
    :pswitch_245
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "ACTION_UP"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjH(Lcom/android/clone/a;)Z

    move-result v0

    if-nez v0, :cond_263

    .line 1140
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjE(Lcom/android/clone/a;)Z

    move-result v0

    if-nez v0, :cond_28c

    .line 1141
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bka(Lcom/android/clone/a;)V

    .line 1146
    :cond_263
    :goto_263
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjV(Lcom/android/clone/a;F)F

    .line 1147
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjW(Lcom/android/clone/a;F)F

    .line 1148
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bkj(Lcom/android/clone/a;)V

    .line 1149
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bke(Lcom/android/clone/a;)V

    .line 1150
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bkh(Lcom/android/clone/a;)V

    .line 1151
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjU(Lcom/android/clone/a;Z)Z

    .line 1152
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjT(Lcom/android/clone/a;Z)Z

    goto/16 :goto_66

    .line 1143
    :cond_28c
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjZ(Lcom/android/clone/a;)V

    goto :goto_263

    .line 1160
    :cond_292
    iget-object v0, p0, Lcom/android/clone/c;->aTe:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjw(Lcom/android/clone/a;)Lcom/android/ui/ScaleLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/ui/ScaleLayout;->bts(Landroid/view/MotionEvent;)V

    goto/16 :goto_76

    .line 1087
    nop

    :pswitch_data_29e
    .packed-switch 0x0
        :pswitch_78
        :pswitch_245
        :pswitch_121
        :pswitch_66
        :pswitch_66
        :pswitch_d2
    .end packed-switch
.end method
