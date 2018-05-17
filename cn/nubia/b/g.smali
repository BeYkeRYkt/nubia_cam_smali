.class public Lcn/nubia/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/V;


# instance fields
.field private bpo:Lcom/android/common/appService/W;

.field private bpp:Lcn/nubia/b/b;

.field private bpq:Lcn/nubia/bigAperture/BigApertureProcess;

.field private bpr:I

.field private bps:Landroid/graphics/Rect;

.field private bpt:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    .line 50
    iput-object v0, p0, Lcn/nubia/b/g;->bpq:Lcn/nubia/bigAperture/BigApertureProcess;

    .line 51
    iput-object v0, p0, Lcn/nubia/b/g;->bpp:Lcn/nubia/b/b;

    .line 54
    iput-object v0, p0, Lcn/nubia/b/g;->bps:Landroid/graphics/Rect;

    .line 59
    iput-object p1, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    .line 60
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    iput v0, p0, Lcn/nubia/b/g;->bpr:I

    .line 61
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v0

    iput v0, p0, Lcn/nubia/b/g;->bpt:I

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcn/nubia/b/g;->bps:Landroid/graphics/Rect;

    .line 58
    return-void
.end method

.method private bLC()I
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 198
    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pS()J

    move-result-wide v0

    invoke-direct {p0}, Lcn/nubia/b/g;->bLI()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/b/g;->bLD(JI)Lcn/nubia/b/a;

    move-result-object v0

    .line 201
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/b/g;->bLN(I)V

    .line 203
    iget v1, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {p0, v1}, Lcn/nubia/b/g;->bLJ(I)Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 204
    iget v2, p0, Lcn/nubia/b/g;->bpt:I

    invoke-direct {p0, v2}, Lcn/nubia/b/g;->bLJ(I)Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 205
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    .line 206
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    .line 207
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v3

    iget v4, p0, Lcn/nubia/b/g;->bpr:I

    invoke-virtual {v3, v4}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v3

    .line 208
    new-array v1, v1, [B

    .line 207
    invoke-virtual {v3, v1}, Lcom/android/common/cameradevice/j;->KD([B)V

    .line 209
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    iget v3, p0, Lcn/nubia/b/g;->bpt:I

    invoke-virtual {v1, v3}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v1

    .line 210
    new-array v2, v2, [B

    .line 209
    invoke-virtual {v1, v2}, Lcom/android/common/cameradevice/j;->KD([B)V

    .line 212
    new-instance v1, Lcn/nubia/b/k;

    iget v2, p0, Lcn/nubia/b/g;->bpr:I

    iget-object v3, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-direct {v1, v2, v3, v0}, Lcn/nubia/b/k;-><init>(ILcom/android/common/appService/W;Lcn/nubia/b/a;)V

    .line 214
    iget v2, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {p0, v2}, Lcn/nubia/b/g;->bLF(I)Lcom/android/common/cameradevice/j;

    move-result-object v2

    new-instance v3, Lcom/android/common/e/b;

    iget-object v4, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-direct {v3, v4}, Lcom/android/common/e/b;-><init>(Lcom/android/common/appService/W;)V

    .line 215
    new-instance v4, Lcn/nubia/b/h;

    iget v5, p0, Lcn/nubia/b/g;->bpr:I

    iget-object v6, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-direct {v4, v5, v6, v0}, Lcn/nubia/b/h;-><init>(ILcom/android/common/appService/W;Lcn/nubia/b/a;)V

    .line 217
    new-instance v5, Lcn/nubia/b/i;

    iget-object v6, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    iget v7, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {v5, v6, v7, v0}, Lcn/nubia/b/i;-><init>(Lcom/android/common/appService/W;ILcn/nubia/b/a;)V

    .line 214
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 218
    iget v1, p0, Lcn/nubia/b/g;->bpt:I

    invoke-direct {p0, v1}, Lcn/nubia/b/g;->bLF(I)Lcom/android/common/cameradevice/j;

    move-result-object v1

    .line 219
    new-instance v2, Lcn/nubia/b/h;

    iget v3, p0, Lcn/nubia/b/g;->bpt:I

    iget-object v4, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-direct {v2, v3, v4, v0}, Lcn/nubia/b/h;-><init>(ILcom/android/common/appService/W;Lcn/nubia/b/a;)V

    .line 221
    new-instance v3, Lcn/nubia/b/i;

    iget-object v4, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    iget v5, p0, Lcn/nubia/b/g;->bpt:I

    invoke-direct {v3, v4, v5, v0}, Lcn/nubia/b/i;-><init>(Lcom/android/common/appService/W;ILcn/nubia/b/a;)V

    .line 218
    invoke-virtual {v1, v8, v2, v8, v3}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 222
    const/4 v0, 0x2

    return v0
.end method

.method private bLD(JI)Lcn/nubia/b/a;
    .registers 17

    .prologue
    const/4 v11, 0x0

    .line 241
    iget-object v0, p0, Lcn/nubia/b/g;->bpp:Lcn/nubia/b/b;

    if-nez v0, :cond_19

    .line 242
    new-instance v0, Lcn/nubia/b/b;

    iget-object v1, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/b/g;->bpp:Lcn/nubia/b/b;

    .line 243
    iget-object v0, p0, Lcn/nubia/b/g;->bpp:Lcn/nubia/b/b;

    iget-object v1, p0, Lcn/nubia/b/g;->bpq:Lcn/nubia/bigAperture/BigApertureProcess;

    invoke-virtual {v0, v1}, Lcn/nubia/b/b;->bLb(Lcn/nubia/bigAperture/BigApertureProcess;)V

    .line 246
    :cond_19
    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_bigaperture_pic_bokeh_level"

    invoke-static {}, Lcom/android/common/setting/j;->VH()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getFloat(Ljava/lang/String;F)F

    move-result v6

    .line 247
    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_bigaperture_focus_length"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getFloat(Ljava/lang/String;F)F

    move-result v7

    .line 248
    iget v0, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {p0, v0}, Lcn/nubia/b/g;->bLJ(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 249
    iget v0, p0, Lcn/nubia/b/g;->bpt:I

    invoke-direct {p0, v0}, Lcn/nubia/b/g;->bLJ(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 250
    iget v0, p0, Lcn/nubia/b/g;->bpt:I

    invoke-direct {p0, v0}, Lcn/nubia/b/g;->bLJ(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "altek-back-sub-crop-size"

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcn/nubia/bigAperture/a;->bIW(Ljava/lang/String;)Lcn/nubia/bigAperture/f;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_6c

    .line 253
    invoke-virtual {v0}, Lcn/nubia/bigAperture/f;->bJq()I

    move-result v1

    iput v1, v9, Landroid/hardware/Camera$Size;->width:I

    .line 254
    invoke-virtual {v0}, Lcn/nubia/bigAperture/f;->bJr()I

    move-result v0

    iput v0, v9, Landroid/hardware/Camera$Size;->height:I

    .line 256
    :cond_6c
    iget-object v1, p0, Lcn/nubia/b/g;->bpp:Lcn/nubia/b/b;

    invoke-direct {p0}, Lcn/nubia/b/g;->bLH()Landroid/graphics/Rect;

    move-result-object v5

    .line 257
    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-static {v0}, Lcom/android/common/h;->apa(Lcom/android/common/appService/W;)I

    move-result v10

    move-wide v2, p1

    move/from16 v4, p3

    .line 256
    invoke-virtual/range {v1 .. v11}, Lcn/nubia/b/b;->bKZ(JILandroid/graphics/Rect;FFLandroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;I[I)Lcn/nubia/b/c;

    move-result-object v0

    return-object v0
.end method

.method private bLE()I
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 168
    new-instance v4, Lcn/nubia/b/i;

    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    iget v5, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {v4, v0, v5, v3}, Lcn/nubia/b/i;-><init>(Lcom/android/common/appService/W;ILcn/nubia/b/a;)V

    .line 171
    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v5, "fusion_no_need_1x"

    invoke-interface {v0, v5, v2}, Lcom/android/common/cameradevice/p;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_67

    move v0, v1

    .line 172
    :goto_1c
    const-string/jumbo v5, "DualCameraCapture"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fusionNoNeed1X: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-eqz v0, :cond_69

    move-object v0, v3

    .line 179
    :goto_39
    invoke-direct {p0}, Lcn/nubia/b/g;->bLI()I

    move-result v5

    invoke-direct {p0, v5}, Lcn/nubia/b/g;->bLN(I)V

    .line 181
    iget-object v5, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v5}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/common/appService/H;->mJ(Z)V

    .line 183
    iget v5, p0, Lcn/nubia/b/g;->bpt:I

    invoke-direct {p0, v5}, Lcn/nubia/b/g;->bLF(I)Lcom/android/common/cameradevice/j;

    move-result-object v5

    invoke-virtual {v5, v3, v3, v3, v0}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 187
    iget v5, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {p0, v5}, Lcn/nubia/b/g;->bLF(I)Lcom/android/common/cameradevice/j;

    move-result-object v5

    new-instance v6, Lcom/android/common/e/b;

    iget-object v7, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-direct {v6, v7}, Lcom/android/common/e/b;-><init>(Lcom/android/common/appService/W;)V

    invoke-virtual {v5, v6, v3, v3, v4}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 193
    if-nez v0, :cond_73

    :goto_64
    add-int/lit8 v0, v2, 0x1

    return v0

    :cond_67
    move v0, v2

    .line 171
    goto :goto_1c

    .line 176
    :cond_69
    new-instance v0, Lcn/nubia/b/i;

    iget-object v5, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    iget v6, p0, Lcn/nubia/b/g;->bpt:I

    invoke-direct {v0, v5, v6, v3}, Lcn/nubia/b/i;-><init>(Lcom/android/common/appService/W;ILcn/nubia/b/a;)V

    goto :goto_39

    :cond_73
    move v2, v1

    .line 193
    goto :goto_64
.end method

.method private bLF(I)Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 293
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method private bLG()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    return-object v0
.end method

.method private bLH()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcn/nubia/b/g;->bps:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcn/nubia/b/g;->bLL(Landroid/graphics/Rect;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_a

    move-result v0

    if-nez v0, :cond_b

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 78
    :catch_a
    move-exception v0

    .line 80
    :cond_b
    iget-object v0, p0, Lcn/nubia/b/g;->bps:Landroid/graphics/Rect;

    return-object v0
.end method

.method private bLI()I
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pV()I

    move-result v0

    return v0
.end method

.method private bLJ(I)Lcom/android/common/cameradevice/p;
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    return-object v0
.end method

.method private bLK()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 139
    :try_start_1
    iget-object v1, p0, Lcn/nubia/b/g;->bpq:Lcn/nubia/bigAperture/BigApertureProcess;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcn/nubia/b/g;->bpq:Lcn/nubia/bigAperture/BigApertureProcess;

    invoke-interface {v1}, Lcn/nubia/bigAperture/BigApertureProcess;->getBigApertureTmpDir()Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_f

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    .line 140
    :catch_f
    move-exception v1

    .line 141
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 143
    const-string/jumbo v1, "DualCameraCapture"

    const-string/jumbo v2, "isAperProcessAlive: false"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return v0
.end method

.method private bLL(Landroid/graphics/Rect;)Z
    .registers 6

    .prologue
    const/16 v3, 0x3e8

    const/16 v1, -0x3e8

    const/4 v2, 0x0

    .line 84
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_16

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_16

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_16

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_16

    return v2

    .line 85
    :cond_16
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_1b

    return v2

    .line 86
    :cond_1b
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_20

    return v2

    .line 87
    :cond_20
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v3, :cond_28

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_29

    :cond_28
    return v2

    .line 88
    :cond_29
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_30

    return v2

    .line 89
    :cond_30
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_37

    return v2

    .line 90
    :cond_37
    const/4 v0, 0x1

    return v0
.end method

.method private bLM(Lcom/android/common/cameradevice/p;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 154
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->ade()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 155
    :cond_11
    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fR()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 157
    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fS()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 160
    :cond_23
    invoke-interface {p1, v2}, Lcom/android/common/cameradevice/p;->Mf(I)V

    .line 163
    :goto_26
    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fT()[F

    move-result-object v0

    .line 164
    aget v1, v0, v2

    aget v2, v0, v3

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-interface {p1, v1, v2, v0}, Lcom/android/common/cameradevice/p;->Me(FFF)V

    .line 153
    return-void

    .line 158
    :cond_35
    invoke-interface {p1, v3}, Lcom/android/common/cameradevice/p;->Mf(I)V

    goto :goto_26
.end method

.method private bLN(I)V
    .registers 6

    .prologue
    .line 226
    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    .line 227
    iget v1, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {p0, v1}, Lcn/nubia/b/g;->bLF(I)Lcom/android/common/cameradevice/j;

    move-result-object v1

    monitor-enter v1

    .line 228
    :try_start_11
    iget-object v2, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {p0, v3}, Lcn/nubia/b/g;->bLJ(I)Lcom/android/common/cameradevice/p;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/common/h;->aqh(Landroid/content/Context;Lcom/android/common/cameradevice/p;Landroid/location/Location;)V

    .line 229
    iget-object v2, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcn/nubia/b/g;->bpt:I

    invoke-direct {p0, v3}, Lcn/nubia/b/g;->bLJ(I)Lcom/android/common/cameradevice/p;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/common/h;->aqh(Landroid/content/Context;Lcom/android/common/cameradevice/p;Landroid/location/Location;)V

    .line 231
    iget v0, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {p0, v0}, Lcn/nubia/b/g;->bLJ(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/common/cameradevice/p;->MJ(I)V

    .line 232
    iget v0, p0, Lcn/nubia/b/g;->bpt:I

    invoke-direct {p0, v0}, Lcn/nubia/b/g;->bLJ(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/common/cameradevice/p;->MJ(I)V

    .line 234
    iget v0, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {p0, v0}, Lcn/nubia/b/g;->bLJ(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/b/g;->bLM(Lcom/android/common/cameradevice/p;)V

    .line 235
    iget v0, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {p0, v0}, Lcn/nubia/b/g;->bLF(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget v2, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {p0, v2}, Lcn/nubia/b/g;->bLJ(I)Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 236
    iget v0, p0, Lcn/nubia/b/g;->bpt:I

    invoke-direct {p0, v0}, Lcn/nubia/b/g;->bLF(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget v2, p0, Lcn/nubia/b/g;->bpt:I

    invoke-direct {p0, v2}, Lcn/nubia/b/g;->bLJ(I)Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V
    :try_end_68
    .catchall {:try_start_11 .. :try_end_68} :catchall_6a

    monitor-exit v1

    .line 225
    return-void

    .line 227
    :catchall_6a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bLO()Z
    .registers 5

    .prologue
    .line 283
    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 284
    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    .line 285
    iget-object v2, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    const v3, 0x7f0a0330

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string/jumbo v1, "on"

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bLA(Ljava/util/ArrayList;)V
    .registers 9

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x3

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v6, v0, :cond_6c

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    if-ne v1, v0, :cond_6c

    .line 67
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v3, v0

    .line 68
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v4

    int-to-float v4, v0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v5

    int-to-float v0, v0

    .line 67
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 69
    iget-object v0, p0, Lcn/nubia/b/g;->bps:Landroid/graphics/Rect;

    invoke-static {v1, v0}, Lcom/android/common/h;->aqc(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 65
    :cond_6c
    return-void
.end method

.method public bLB(Lcn/nubia/bigAperture/BigApertureProcess;)V
    .registers 4

    .prologue
    .line 94
    iput-object p1, p0, Lcn/nubia/b/g;->bpq:Lcn/nubia/bigAperture/BigApertureProcess;

    .line 95
    iget-object v0, p0, Lcn/nubia/b/g;->bpp:Lcn/nubia/b/b;

    if-eqz v0, :cond_d

    .line 96
    iget-object v0, p0, Lcn/nubia/b/g;->bpp:Lcn/nubia/b/b;

    iget-object v1, p0, Lcn/nubia/b/g;->bpq:Lcn/nubia/bigAperture/BigApertureProcess;

    invoke-virtual {v0, v1}, Lcn/nubia/b/b;->bLb(Lcn/nubia/bigAperture/BigApertureProcess;)V

    .line 93
    :cond_d
    return-void
.end method

.method public bLz()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcn/nubia/b/g;->bpp:Lcn/nubia/b/b;

    if-eqz v0, :cond_9

    .line 149
    iget-object v0, p0, Lcn/nubia/b/g;->bpp:Lcn/nubia/b/b;

    invoke-virtual {v0}, Lcn/nubia/b/b;->release()V

    .line 147
    :cond_9
    return-void
.end method

.method public pa()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 105
    iget v0, p0, Lcn/nubia/b/g;->bpr:I

    if-eq v0, v1, :cond_a

    .line 106
    iget v0, p0, Lcn/nubia/b/g;->bpt:I

    if-ne v0, v1, :cond_35

    .line 107
    :cond_a
    const-string/jumbo v0, "DualCameraCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Camera id not found. ColorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/b/g;->bpr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", MonoId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/b/g;->bpt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_35
    const-string/jumbo v0, "DualCameraCapture"

    const-string/jumbo v1, "takePicture"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget v0, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {p0, v0}, Lcn/nubia/b/g;->bLF(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/b/g;->bLO()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KB(Z)V

    .line 114
    iget v0, p0, Lcn/nubia/b/g;->bpt:I

    invoke-direct {p0, v0}, Lcn/nubia/b/g;->bLF(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-direct {p0}, Lcn/nubia/b/g;->bLO()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KB(Z)V

    .line 117
    iget v0, p0, Lcn/nubia/b/g;->bpr:I

    invoke-direct {p0, v0}, Lcn/nubia/b/g;->bLF(I)Lcom/android/common/cameradevice/j;

    move-result-object v1

    monitor-enter v1

    .line 118
    :try_start_5f
    invoke-direct {p0}, Lcn/nubia/b/g;->bLG()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v2, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v2, :cond_9c

    .line 119
    invoke-direct {p0}, Lcn/nubia/b/g;->bLE()I
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_bd

    move-result v0

    :goto_6b
    monitor-exit v1

    .line 129
    iget-object v1, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v1, v2}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 131
    const-string/jumbo v1, "DualCameraCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "burstNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v1, v0}, Lcom/android/common/appService/W;->rb(I)V

    .line 133
    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rc()V

    .line 134
    return v4

    .line 121
    :cond_9c
    :try_start_9c
    invoke-direct {p0}, Lcn/nubia/b/g;->bLK()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 122
    const-string/jumbo v0, "DualCameraCapture"

    const-string/jumbo v2, "Process not connected. Try to reconnect bigAperture service"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcn/nubia/b/g;->bpo:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hN()V

    .line 125
    :cond_b8
    invoke-direct {p0}, Lcn/nubia/b/g;->bLC()I
    :try_end_bb
    .catchall {:try_start_9c .. :try_end_bb} :catchall_bd

    move-result v0

    goto :goto_6b

    .line 117
    :catchall_bd
    move-exception v0

    monitor-exit v1

    throw v0
.end method
