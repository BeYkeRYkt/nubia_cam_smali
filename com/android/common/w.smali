.class public Lcom/android/common/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aiA:Ljava/lang/String;

.field private static final aiB:Ljava/lang/String;

.field private static aiC:Ljava/io/File;

.field private static aiD:Z

.field private static aiE:[Ljava/io/File;

.field private static aiF:[I

.field private static aiG:[I

.field private static aiH:Z

.field private static aiI:Ljava/io/File;

.field private static aiJ:Z

.field private static aiK:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_a6

    const-string/jumbo v0, "/data/nubiaeffect"

    :goto_a
    sput-object v0, Lcom/android/common/w;->aiB:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/common/w;->aiB:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@78
    nop

    move-result-object v1

    .line 32
    const-string/jumbo v2, "/"

    .line 31
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@78
    nop

    move-result-object v1

    .line 32
    const-string/jumbo v2, "water_mark_drawable_white.argb"

    .line 31
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@78
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@7
    nop

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/w;->aiK:Ljava/io/File;

    .line 33
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/common/w;->aiB:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@78
    nop

    move-result-object v1

    .line 34
    const-string/jumbo v2, "/"

    .line 33
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@78
    nop

    move-result-object v1

    .line 34
    const-string/jumbo v2, "water_mark_drawable_black.argb"

    .line 33
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@78
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@7
    nop

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/w;->aiC:Ljava/io/File;

    .line 35
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/common/w;->aiB:Ljava/lang/String;

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@78
    nop

    move-result-object v1

    .line 36
    const-string/jumbo v2, "/"

    .line 35
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@78
    nop

    move-result-object v1

    .line 36
    const-string/jumbo v2, "water_mark_drawable.argb"

    .line 35
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2}, vtable@78
    nop

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@7
    nop

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/w;->aiI:Ljava/io/File;

    .line 37
    const-string/jumbo v0, "custom_text_pic_water_mask"

    sput-object v0, Lcom/android/common/w;->aiA:Ljava/lang/String;

    .line 38
    sput-boolean v3, Lcom/android/common/w;->aiJ:Z

    .line 48
    const v0, 0x7f0202ed

    .line 49
    const v1, 0x7f0202ee

    const v2, 0x7f0201ac

    .line 48
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/common/w;->aiF:[I

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/File;

    sget-object v1, Lcom/android/common/w;->aiK:Ljava/io/File;

    aput-object v1, v0, v3

    .line 51
    sget-object v1, Lcom/android/common/w;->aiC:Ljava/io/File;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/w;->aiI:Ljava/io/File;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 50
    sput-object v0, Lcom/android/common/w;->aiE:[Ljava/io/File;

    .line 52
    sput-boolean v3, Lcom/android/common/w;->aiH:Z

    .line 54
    sput-boolean v3, Lcom/android/common/w;->aiD:Z

    .line 27
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 30
    :cond_a6
    const-string/jumbo v0, "/data/data/com.android.camera/effect"

    goto/16 :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arH(IILandroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-static {p3, p2, p0}, Lcom/android/common/w;->arQ(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)V

    .line 109
    packed-switch p1, :pswitch_data_58

    .line 107
    :goto_8
    :pswitch_8
    return-void

    .line 114
    :pswitch_9
    const-string/jumbo v0, "WaterMarkUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "case1 mNeedToUseDarkLogo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/common/w;->aiH:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-boolean v0, Lcom/android/common/w;->aiH:Z

    if-eqz v0, :cond_33

    sget-object v0, Lcom/android/common/w;->aiF:[I

    aget v0, v0, v4

    .line 116
    :goto_2d
    sget-object v1, Lcom/android/common/WaterMarkUtil$LOCATION;->aiL:Lcom/android/common/WaterMarkUtil$LOCATION;

    .line 115
    invoke-static {p0, p2, p3, v0, v1}, Lcom/android/common/w;->arL(ILandroid/content/res/Resources;Landroid/graphics/Bitmap;ILcom/android/common/WaterMarkUtil$LOCATION;)V

    goto :goto_8

    :cond_33
    sget-object v0, Lcom/android/common/w;->aiF:[I

    aget v0, v0, v3

    goto :goto_2d

    .line 119
    :pswitch_38
    invoke-static {}, Lcom/android/common/w;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/android/common/WaterMarkUtil$LOCATION;->aiM:Lcom/android/common/WaterMarkUtil$LOCATION;

    .line 120
    invoke-static {p0, p3, v0, v1}, Lcom/android/common/w;->arK(ILandroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/common/WaterMarkUtil$LOCATION;)V

    goto :goto_8

    .line 125
    :pswitch_42
    invoke-static {}, Lcom/android/common/w;->getCurrentTime()Ljava/lang/String;

    move-result-object v1

    .line 127
    sget-boolean v0, Lcom/android/common/w;->aiH:Z

    if-eqz v0, :cond_52

    sget-object v0, Lcom/android/common/w;->aiF:[I

    aget v0, v0, v4

    .line 126
    :goto_4e
    invoke-static {p0, p2, p3, v0, v1}, Lcom/android/common/w;->arJ(ILandroid/content/res/Resources;Landroid/graphics/Bitmap;ILjava/lang/String;)V

    goto :goto_8

    .line 127
    :cond_52
    sget-object v0, Lcom/android/common/w;->aiF:[I

    aget v0, v0, v3

    goto :goto_4e

    .line 109
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_38
        :pswitch_42
    .end packed-switch
.end method

.method public static arI(Landroid/content/res/Resources;Lcom/android/common/ActivityBase;)V
    .registers 4

    .prologue
    .line 528
    invoke-static {}, Lcom/android/common/w;->arN()V

    .line 530
    sget-boolean v0, Lcom/android/common/w;->aiJ:Z

    if-eqz v0, :cond_d

    .line 531
    invoke-static {p1}, Lcom/android/common/w;->arU(Lcom/android/common/ActivityBase;)Z

    move-result v0

    .line 530
    if-eqz v0, :cond_1e

    .line 532
    :cond_d
    const-string/jumbo v0, "WaterMarkUtil"

    const-string/jumbo v1, "create effect use thread"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v0, Lcom/android/common/x;

    invoke-direct {v0, p0}, Lcom/android/common/x;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0}, Lcom/android/common/x;->start()V

    .line 527
    :cond_1e
    return-void
.end method

.method public static arJ(ILandroid/content/res/Resources;Landroid/graphics/Bitmap;ILjava/lang/String;)V
    .registers 14

    .prologue
    .line 185
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/w;->arT(II)F

    move-result v1

    .line 187
    invoke-static {p1, p3}, Lcom/android/common/w;->arP(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 189
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 192
    invoke-static {v0, p0}, Lcom/android/common/w;->arR(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 194
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 193
    invoke-static {p0, v0, v5, v2, v3}, Lcom/android/common/w;->arS(IIIII)[I

    move-result-object v2

    .line 197
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 198
    new-instance v3, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x1

    aget v6, v2, v6

    const/4 v7, 0x2

    aget v7, v2, v7

    .line 199
    const/4 v8, 0x3

    aget v2, v2, v8

    .line 198
    invoke-direct {v3, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 200
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 201
    if-nez v4, :cond_a7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 207
    :goto_51
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 208
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    const/16 v2, 0xad

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v6, 0xff

    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 210
    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 211
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 212
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 213
    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 217
    invoke-virtual {v5, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 218
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 219
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v5, p4, v4, v3, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 220
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 221
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 222
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 223
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 225
    sparse-switch p0, :sswitch_data_124

    .line 183
    :goto_a6
    return-void

    .line 202
    :cond_a7
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_51

    .line 227
    :sswitch_ab
    sub-int v2, v6, v3

    const/16 v3, 0xf

    invoke-static {v3}, Lcom/android/common/h;->aoT(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 228
    sub-int v3, v7, v4

    .line 229
    const/16 v4, 0xf

    invoke-static {v4}, Lcom/android/common/h;->aoT(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 228
    sub-int v1, v3, v1

    int-to-float v1, v1

    .line 227
    invoke-virtual {v0, p4, v2, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a6

    .line 232
    :sswitch_c7
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 233
    int-to-float v1, v6

    const/16 v7, 0xf

    invoke-static {v7}, Lcom/android/common/h;->aoT(I)I

    move-result v7

    add-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 234
    int-to-float v1, v6

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 235
    const/4 v3, 0x0

    neg-int v1, v4

    int-to-float v4, v1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_a6

    .line 238
    :sswitch_e5
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 239
    const/16 v1, 0xf

    invoke-static {v1}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    add-int/2addr v1, v3

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 240
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    const/4 v3, 0x0

    neg-int v1, v4

    int-to-float v4, v1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_a6

    .line 244
    :sswitch_103
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 245
    const/4 v1, 0x0

    sub-int v3, v7, v3

    const/16 v6, 0xf

    invoke-static {v6}, Lcom/android/common/h;->aoT(I)I

    move-result v6

    sub-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 246
    const/4 v1, 0x0

    int-to-float v3, v7

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 247
    const/4 v3, 0x0

    neg-int v1, v4

    int-to-float v4, v1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_a6

    .line 225
    nop

    :sswitch_data_124
    .sparse-switch
        0x0 -> :sswitch_ab
        0x5a -> :sswitch_c7
        0xb4 -> :sswitch_e5
        0x10e -> :sswitch_103
    .end sparse-switch
.end method

.method public static arK(ILandroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/common/WaterMarkUtil$LOCATION;)V
    .registers 13

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/16 v6, 0xff

    const/16 v8, 0xf

    const/4 v3, 0x0

    .line 358
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 359
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 360
    invoke-static {v1, v4}, Lcom/android/common/w;->arT(II)F

    move-result v0

    .line 362
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 363
    :cond_22
    return-void

    .line 367
    :cond_23
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 368
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 369
    const/16 v2, 0xad

    invoke-virtual {v5, v2, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 370
    const/high16 v2, 0x42480000    # 50.0f

    mul-float/2addr v0, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 371
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 372
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 373
    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v2, -0x1000000

    invoke-virtual {v5, v0, v7, v7, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 376
    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 377
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 378
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 379
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 380
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 382
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 383
    sparse-switch p0, :sswitch_data_ce

    .line 356
    :goto_6b
    return-void

    .line 385
    :sswitch_6c
    sub-int/2addr v1, v6

    invoke-static {v8}, Lcom/android/common/h;->aoT(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 386
    sub-int v2, v4, v7

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/android/common/h;->aoT(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 385
    invoke-virtual {v0, p2, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6b

    .line 389
    :sswitch_80
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 390
    int-to-float v4, v1

    invoke-static {v8}, Lcom/android/common/h;->aoT(I)I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 391
    int-to-float v1, v1

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 392
    neg-int v1, v7

    int-to-float v4, v1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_6b

    .line 395
    :sswitch_9a
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 396
    invoke-static {v8}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    add-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 397
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 398
    neg-int v1, v7

    int-to-float v4, v1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_6b

    .line 401
    :sswitch_b2
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 402
    sub-int v1, v4, v6

    invoke-static {v8}, Lcom/android/common/h;->aoT(I)I

    move-result v6

    sub-int/2addr v1, v6

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 403
    int-to-float v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 404
    neg-int v1, v7

    int-to-float v4, v1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_6b

    .line 383
    nop

    :sswitch_data_ce
    .sparse-switch
        0x0 -> :sswitch_6c
        0x5a -> :sswitch_80
        0xb4 -> :sswitch_9a
        0x10e -> :sswitch_b2
    .end sparse-switch
.end method

.method public static arL(ILandroid/content/res/Resources;Landroid/graphics/Bitmap;ILcom/android/common/WaterMarkUtil$LOCATION;)V
    .registers 13

    .prologue
    const/4 v7, 0x0

    .line 74
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 75
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 76
    invoke-static {v0, v1}, Lcom/android/common/w;->arT(II)F

    move-result v0

    .line 78
    invoke-static {p1, p3}, Lcom/android/common/w;->arP(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 80
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 82
    invoke-static {v1, p0}, Lcom/android/common/w;->arR(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 84
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 83
    invoke-static {p0, v3, v4, v2, v0}, Lcom/android/common/w;->arS(IIIII)[I

    move-result-object v0

    .line 87
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    const/4 v5, 0x2

    aget v5, v0, v5

    .line 88
    const/4 v6, 0x3

    aget v0, v0, v6

    .line 87
    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    invoke-virtual {v0, v1, v7, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 91
    if-nez v1, :cond_51

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 72
    :goto_50
    return-void

    .line 92
    :cond_51
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_50
.end method

.method private static arM(Landroid/graphics/Bitmap;)Ljava/io/InputStream;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 509
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 510
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 511
    mul-int v0, v3, v7

    add-int/lit8 v0, v0, 0x2

    new-array v1, v0, [I

    .line 512
    aput v3, v1, v4

    .line 513
    const/4 v0, 0x1

    aput v7, v1, v0

    .line 514
    const/4 v2, 0x2

    move-object v0, p0

    move v5, v4

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 515
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 516
    :goto_20
    array-length v2, v1

    if-ge v4, v2, :cond_5c

    .line 517
    mul-int/lit8 v2, v4, 0x4

    aget v3, v1, v4

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x0

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 518
    mul-int/lit8 v2, v4, 0x4

    add-int/lit8 v2, v2, 0x1

    aget v3, v1, v4

    const v5, 0xff00

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 519
    mul-int/lit8 v2, v4, 0x4

    add-int/lit8 v2, v2, 0x2

    aget v3, v1, v4

    const/high16 v5, 0xff0000

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 520
    mul-int/lit8 v2, v4, 0x4

    add-int/lit8 v2, v2, 0x3

    aget v3, v1, v4

    const/high16 v5, -0x1000000

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 516
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 522
    :cond_5c
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 523
    return-object v1
.end method

.method private static arN()V
    .registers 2

    .prologue
    .line 539
    sget-object v0, Lcom/android/common/w;->aiK:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 540
    sget-object v0, Lcom/android/common/w;->aiC:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 539
    :goto_e
    sput-boolean v0, Lcom/android/common/w;->aiJ:Z

    .line 542
    sget-boolean v0, Lcom/android/common/w;->aiJ:Z

    if-nez v0, :cond_24

    .line 543
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/common/w;->aiB:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_24

    .line 545
    invoke-static {v0}, Lcom/android/common/w;->arV(Ljava/io/File;)V

    .line 537
    :cond_24
    return-void

    .line 539
    :cond_25
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static arO(Landroid/content/res/Resources;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 553
    :goto_1
    :try_start_1
    sget-object v1, Lcom/android/common/w;->aiF:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4b

    .line 554
    sget-object v1, Lcom/android/common/w;->aiF:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lcom/android/common/w;->arP(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/android/common/w;->arM(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object v1

    .line 555
    new-instance v2, Ljava/io/FileOutputStream;

    sget-object v3, Lcom/android/common/w;->aiE:[Ljava/io/File;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 556
    const v3, 0xfa000

    new-array v3, v3, [B

    .line 558
    :goto_20
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4c

    .line 559
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    goto :goto_20

    .line 565
    :catch_2c
    move-exception v0

    .line 567
    const-string/jumbo v1, "WaterMarkUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "create water effect file fail!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_4b
    return-void

    .line 561
    :cond_4c
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 562
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 563
    sget-object v1, Lcom/android/common/w;->aiE:[Ljava/io/File;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/common/w;->arW(Ljava/io/File;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_59} :catch_2c

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static arP(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 256
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 257
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    .line 258
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 259
    iget v0, v0, Landroid/util/TypedValue;->density:I

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 260
    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static arQ(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)V
    .registers 16

    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/w;->arT(II)F

    move-result v0

    .line 137
    sget-object v1, Lcom/android/common/w;->aiF:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {p1, v1}, Lcom/android/common/w;->arP(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 139
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 142
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v3, "NX563J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    .line 143
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {p2, v2, v3, v1, v0}, Lcom/android/common/w;->arS(IIIII)[I

    move-result-object v2

    .line 144
    const-string/jumbo v3, "WaterMarkUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ori:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",logoNewWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",logoNewHeight"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/16 v3, 0x5a

    if-eq p2, v3, :cond_72

    const/16 v3, 0x10e

    if-ne p2, v3, :cond_75

    :cond_72
    move v12, v1

    move v1, v0

    move v0, v12

    .line 150
    :cond_75
    const-string/jumbo v3, "WaterMarkUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "logoNewWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",logoNewHeight"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-static {p0, v3, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    :goto_a4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v1, v1, [I

    sput-object v1, Lcom/android/common/w;->aiG:[I

    .line 156
    sget-object v1, Lcom/android/common/w;->aiG:[I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 157
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 156
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 157
    const/4 v5, 0x0

    .line 156
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 158
    const-string/jumbo v1, "WaterMarkUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMeteringArea length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/common/w;->aiG:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-wide/16 v2, 0x0

    .line 160
    const/4 v1, 0x0

    :goto_e5
    sget-object v4, Lcom/android/common/w;->aiG:[I

    array-length v4, v4

    if-ge v1, v4, :cond_121

    .line 161
    sget-object v4, Lcom/android/common/w;->aiG:[I

    aget v4, v4, v1

    .line 162
    const/high16 v5, 0xff0000

    and-int/2addr v5, v4

    shr-int/lit8 v5, v5, 0x10

    .line 163
    const v6, 0xff00

    and-int/2addr v6, v4

    shr-int/lit8 v6, v6, 0x8

    .line 164
    and-int/lit16 v4, v4, 0xff

    .line 165
    int-to-double v8, v5

    const-wide v10, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v8, v10

    int-to-double v6, v6

    const-wide v10, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v6, v10

    add-double/2addr v6, v8

    int-to-double v4, v4

    const-wide v8, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_e5

    .line 153
    :cond_116
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a4

    .line 167
    :cond_121
    if-eqz v0, :cond_126

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    :cond_126
    const-string/jumbo v0, "WaterMarkUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "average is :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/android/common/w;->aiG:[I

    array-length v4, v4

    int-to-double v4, v4

    div-double v4, v2, v4

    double-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/android/common/w;->aiG:[I

    array-length v0, v0

    int-to-double v0, v0

    div-double v0, v2, v0

    double-to-int v0, v0

    const/16 v1, 0xb4

    if-le v0, v1, :cond_159

    const/4 v0, 0x1

    :goto_153
    sput-boolean v0, Lcom/android/common/w;->aiH:Z

    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/common/w;->aiD:Z

    .line 133
    return-void

    .line 171
    :cond_159
    const/4 v0, 0x0

    goto :goto_153
.end method

.method private static arR(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 315
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 316
    sparse-switch p1, :sswitch_data_58

    .line 331
    :goto_9
    :sswitch_9
    if-eqz p1, :cond_1a

    .line 332
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 333
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v1

    .line 332
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 335
    :cond_1a
    return-object p0

    .line 321
    :sswitch_1b
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_9

    .line 324
    :sswitch_2f
    const/high16 v0, -0x3ccc0000    # -180.0f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_9

    .line 327
    :sswitch_43
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_9

    .line 316
    nop

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_9
        0x5a -> :sswitch_1b
        0xb4 -> :sswitch_2f
        0x10e -> :sswitch_43
    .end sparse-switch
.end method

.method private static arS(IIIII)[I
    .registers 11

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 274
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 275
    sparse-switch p0, :sswitch_data_38

    .line 302
    :goto_a
    return-object v0

    .line 277
    :sswitch_b
    aput v2, v0, v2

    .line 278
    sub-int v1, p2, p4

    aput v1, v0, v3

    .line 279
    aput p3, v0, v4

    .line 280
    aput p2, v0, v5

    goto :goto_a

    .line 283
    :sswitch_16
    sub-int v1, p1, p4

    aput v1, v0, v2

    .line 284
    sub-int v1, p2, p3

    aput v1, v0, v3

    .line 285
    aput p1, v0, v4

    .line 286
    aput p2, v0, v5

    goto :goto_a

    .line 289
    :sswitch_23
    sub-int v1, p1, p3

    aput v1, v0, v2

    .line 290
    aput v2, v0, v3

    .line 291
    aput p1, v0, v4

    .line 292
    aput p4, v0, v5

    goto :goto_a

    .line 295
    :sswitch_2e
    aput v2, v0, v2

    .line 296
    aput v2, v0, v3

    .line 297
    aput p4, v0, v4

    .line 298
    aput p3, v0, v5

    goto :goto_a

    .line 275
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_b
        0x5a -> :sswitch_16
        0xb4 -> :sswitch_23
        0x10e -> :sswitch_2e
    .end sparse-switch
.end method

.method private static arT(II)F
    .registers 5

    .prologue
    const/high16 v2, 0x44870000    # 1080.0f

    const v1, 0x3eb33333    # 0.35f

    .line 346
    if-le p1, p0, :cond_b

    .line 347
    int-to-float v0, p0

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    .line 352
    :goto_a
    return v0

    .line 349
    :cond_b
    int-to-float v0, p1

    div-float/2addr v0, v2

    mul-float/2addr v0, v1

    goto :goto_a
.end method

.method private static arU(Lcom/android/common/ActivityBase;)Z
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 447
    :try_start_a
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v0

    .line 448
    const-string/jumbo v3, "pref_water_mark_logo_version_key"

    const/4 v4, 0x0

    .line 447
    invoke-virtual {v0, v3, v4}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_23

    move-result v0

    .line 452
    :goto_16
    if-ge v0, v5, :cond_26

    .line 453
    const-string/jumbo v0, "pref_water_mark_logo_version_key"

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 454
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 455
    const/4 v0, 0x1

    return v0

    .line 449
    :catch_23
    move-exception v0

    move v0, v1

    .line 450
    goto :goto_16

    .line 457
    :cond_26
    return v1
.end method

.method private static arV(Ljava/io/File;)V
    .registers 1

    .prologue
    .line 479
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 480
    invoke-static {p0}, Lcom/android/common/w;->arW(Ljava/io/File;)V

    .line 478
    return-void
.end method

.method private static arW(Ljava/io/File;)V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 474
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 475
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 472
    return-void
.end method

.method static synthetic arX(Landroid/content/res/Resources;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/w;->arO(Landroid/content/res/Resources;)V

    return-void
.end method

.method private static getCurrentTime()Ljava/lang/String;
    .registers 3

    .prologue
    .line 465
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 466
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
