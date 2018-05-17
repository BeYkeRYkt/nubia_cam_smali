.class public Lcn/nubia/videogenerator/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public brk:Landroid/view/Surface;

.field private brl:I

.field private brm:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;II)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/nubia/videogenerator/a/h;->brk:Landroid/view/Surface;

    .line 18
    iput p2, p0, Lcn/nubia/videogenerator/a/h;->brl:I

    .line 19
    iput p3, p0, Lcn/nubia/videogenerator/a/h;->brm:I

    .line 20
    return-void
.end method

.method private bOn(I)I
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 132
    div-int/lit8 v2, p1, 0x5a

    if-gt v2, v1, :cond_7

    .line 135
    :goto_6
    return v0

    :cond_7
    move v0, v1

    .line 133
    goto :goto_6
.end method


# virtual methods
.method public bOm(Landroid/graphics/Bitmap;I)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcn/nubia/videogenerator/a/h;->brk:Landroid/view/Surface;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_7} :catch_dc
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_7} :catch_9d
    .catchall {:try_start_1 .. :try_end_7} :catchall_b3

    move-result-object v0

    .line 82
    :try_start_8
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    .line 83
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    .line 84
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x1000000

    .line 86
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 87
    int-to-float v3, v6

    int-to-float v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_21} :catch_80
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_8 .. :try_end_21} :catch_d7
    .catchall {:try_start_8 .. :try_end_21} :catchall_d2

    .line 88
    if-nez p1, :cond_29

    .line 119
    :goto_23
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    if-nez v0, :cond_c5

    .line 129
    :cond_28
    :goto_28
    return-void

    .line 89
    :cond_29
    :try_start_29
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 91
    rem-int/lit16 v3, p2, 0xb4

    if-nez v3, :cond_97

    .line 98
    :goto_35
    int-to-float v3, v6

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 99
    int-to-float v4, v7

    int-to-float v5, v1

    div-float/2addr v4, v5

    .line 100
    int-to-float v5, v6

    int-to-float v8, v7

    div-float/2addr v5, v8

    .line 101
    int-to-float v8, v2

    int-to-float v9, v1

    div-float/2addr v8, v9

    .line 102
    cmpl-float v5, v8, v5

    if-lez v5, :cond_9b

    .line 103
    :goto_45
    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 104
    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 105
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 106
    int-to-float v5, p2

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 107
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 108
    add-int/lit8 v3, p2, 0x5a

    rem-int/lit16 v3, v3, 0x168

    invoke-direct {p0, v3}, Lcn/nubia/videogenerator/a/h;->bOn(I)I

    move-result v3

    .line 109
    invoke-direct {p0, p2}, Lcn/nubia/videogenerator/a/h;->bOn(I)I

    move-result v5

    .line 110
    mul-int/2addr v2, v3

    add-int/2addr v2, v6

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    mul-int/2addr v1, v5

    add-int/2addr v1, v7

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 111
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 112
    invoke-virtual {v0, p1, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_7f} :catch_80
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_29 .. :try_end_7f} :catch_d7
    .catchall {:try_start_29 .. :try_end_7f} :catchall_d2

    goto :goto_23

    .line 114
    :catch_80
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    .line 115
    :goto_84
    :try_start_84
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_b3

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    if-eqz v1, :cond_28

    .line 123
    :try_start_8c
    iget-object v0, p0, Lcn/nubia/videogenerator/a/h;->brk:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8c .. :try_end_91} :catch_92

    goto :goto_28

    .line 125
    :catch_92
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_28

    :cond_97
    move v10, v2

    move v2, v1

    move v1, v10

    .line 94
    goto :goto_35

    :cond_9b
    move v3, v4

    .line 102
    goto :goto_45

    .line 126
    :catch_9d
    move-exception v0

    .line 117
    :goto_9e
    :try_start_9e
    invoke-virtual {v0}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_b3

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    if-eqz v1, :cond_28

    .line 123
    :try_start_a6
    iget-object v0, p0, Lcn/nubia/videogenerator/a/h;->brk:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a6 .. :try_end_ab} :catch_ad

    goto/16 :goto_28

    .line 125
    :catch_ad
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_28

    :catchall_b3
    move-exception v0

    .line 119
    :goto_b4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    if-nez v1, :cond_ba

    .line 128
    :goto_b9
    throw v0

    .line 123
    :cond_ba
    :try_start_ba
    iget-object v2, p0, Lcn/nubia/videogenerator/a/h;->brk:Landroid/view/Surface;

    invoke-virtual {v2, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ba .. :try_end_bf} :catch_c0

    goto :goto_b9

    .line 125
    :catch_c0
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_b9

    .line 123
    :cond_c5
    :try_start_c5
    iget-object v1, p0, Lcn/nubia/videogenerator/a/h;->brk:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c5 .. :try_end_ca} :catch_cc

    goto/16 :goto_28

    .line 125
    :catch_cc
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_28

    :catchall_d2
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_b4

    :catch_d7
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_9e

    .line 114
    :catch_dc
    move-exception v0

    goto :goto_84
.end method

.method public bOo()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcn/nubia/videogenerator/a/h;->brl:I

    return v0
.end method

.method public bOp()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcn/nubia/videogenerator/a/h;->brm:I

    return v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcn/nubia/videogenerator/a/h;->brk:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcn/nubia/videogenerator/a/h;->brk:Landroid/view/Surface;

    .line 141
    return-void
.end method
