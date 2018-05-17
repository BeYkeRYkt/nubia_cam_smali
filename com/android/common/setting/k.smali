.class public Lcom/android/common/setting/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TY:[Landroid/hardware/Camera$CameraInfo;

.field private TZ:Landroid/content/Context;

.field private Ua:Landroid/util/SparseArray;

.field private Ub:Lcom/android/common/setting/a;

.field private Uc:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/android/common/setting/k;->TZ:Landroid/content/Context;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/common/setting/k;->Ua:Landroid/util/SparseArray;

    .line 35
    iput-object v1, p0, Lcom/android/common/setting/k;->Ub:Lcom/android/common/setting/a;

    .line 42
    iput-object p1, p0, Lcom/android/common/setting/k;->TZ:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/android/common/setting/a;

    iget-object v1, p0, Lcom/android/common/setting/k;->TZ:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/setting/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/setting/k;->Ub:Lcom/android/common/setting/a;

    .line 44
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/k;->TY:[Landroid/hardware/Camera$CameraInfo;

    .line 45
    iput-object p2, p0, Lcom/android/common/setting/k;->Uc:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method private VN(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Lcom/android/common/cameradevice/p;)V
    .registers 11

    .prologue
    .line 463
    invoke-interface {p3}, Lcom/android/common/cameradevice/p;->Ls()I

    move-result v0

    .line 464
    invoke-interface {p3}, Lcom/android/common/cameradevice/p;->Lx()I

    move-result v1

    .line 465
    if-nez v0, :cond_14

    if-nez v1, :cond_14

    .line 466
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    .line 467
    return-void

    .line 469
    :cond_14
    invoke-interface {p3}, Lcom/android/common/cameradevice/p;->Ll()F

    move-result v2

    .line 472
    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    float-to-int v3, v0

    .line 473
    int-to-float v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    .line 474
    sub-int v1, v3, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 475
    sub-int v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 476
    :goto_32
    if-gt v0, v3, :cond_5d

    .line 477
    add-int v5, v3, v0

    int-to-float v6, v0

    div-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    if-lez v0, :cond_4e

    const/16 v6, 0x2b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    :cond_4e
    add-int v6, v3, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v6

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 482
    :cond_5d
    invoke-virtual {p2, v1}, Lcom/android/common/setting/ListPreference;->VF([Ljava/lang/CharSequence;)V

    .line 483
    invoke-virtual {p2, v4}, Lcom/android/common/setting/ListPreference;->VG([Ljava/lang/CharSequence;)V

    .line 462
    return-void
.end method

.method private VO(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/cameradevice/p;)V
    .registers 5

    .prologue
    .line 508
    const-string/jumbo v0, "pref_camera_front_flashmode_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_10

    .line 510
    invoke-interface {p2}, Lcom/android/common/cameradevice/p;->LL()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 513
    :cond_10
    const-string/jumbo v0, "pref_camera_backlight_flashmode_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_20

    .line 515
    invoke-interface {p2}, Lcom/android/common/cameradevice/p;->LO()Ljava/util/List;

    move-result-object v1

    .line 516
    invoke-direct {p0, p1, v0, v1}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 507
    :cond_20
    return-void
.end method

.method private VP(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Lcom/android/common/cameradevice/p;I)V
    .registers 13

    .prologue
    .line 488
    if-eqz p2, :cond_51

    .line 489
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    if-ne p4, v0, :cond_51

    .line 490
    const/4 v1, 0x0

    .line 491
    invoke-interface {p3}, Lcom/android/common/cameradevice/p;->LQ()Ljava/util/List;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 493
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v3, v3

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v0, v0

    div-float v0, v3, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v4, v0

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v0, v4, v6

    if-gez v0, :cond_15

    .line 494
    const/4 v0, 0x1

    .line 498
    :goto_3b
    if-nez v0, :cond_51

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    const-string/jumbo v1, "16:9"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    const-string/jumbo v1, "4:3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-direct {p0, p1, p2, v0}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 486
    :cond_51
    return-void

    :cond_52
    move v0, v1

    goto :goto_3b
.end method

.method private VQ(ILcom/android/common/appService/CameraMember;Lcom/android/common/setting/e;)V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/m;->Na(I)Lcom/android/common/cameradevice/p;

    move-result-object v5

    .line 50
    iget-object v0, p0, Lcom/android/common/setting/k;->Uc:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 51
    iget-object v0, p0, Lcom/android/common/setting/k;->Uc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_17

    .line 53
    :cond_16
    return-void

    .line 52
    :cond_17
    if-eqz v5, :cond_16

    .line 56
    iget-object v2, p0, Lcom/android/common/setting/k;->Ub:Lcom/android/common/setting/a;

    iget-object v0, p0, Lcom/android/common/setting/k;->Uc:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0, p3}, Lcom/android/common/setting/a;->SV(ILandroid/content/SharedPreferences;)Lcom/android/common/setting/q;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/PreferenceGroup;

    move v2, v1

    .line 57
    :goto_2e
    iget-object v1, p0, Lcom/android/common/setting/k;->Uc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_5f

    .line 58
    iget-object v3, p0, Lcom/android/common/setting/k;->Ub:Lcom/android/common/setting/a;

    iget-object v1, p0, Lcom/android/common/setting/k;->Uc:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1, p3}, Lcom/android/common/setting/a;->SV(ILandroid/content/SharedPreferences;)Lcom/android/common/setting/q;

    move-result-object v1

    check-cast v1, Lcom/android/common/setting/PreferenceGroup;

    move v3, v4

    .line 59
    :goto_4b
    invoke-virtual {v1}, Lcom/android/common/setting/PreferenceGroup;->YX()I

    move-result v6

    if-ge v3, v6, :cond_5b

    .line 60
    invoke-virtual {v1, v3}, Lcom/android/common/setting/PreferenceGroup;->YY(I)Lcom/android/common/setting/q;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/common/setting/PreferenceGroup;->YW(Lcom/android/common/setting/q;)V

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 57
    :cond_5b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2e

    .line 63
    :cond_5f
    iget-object v1, p0, Lcom/android/common/setting/k;->Ua:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    invoke-direct {p0, v0, v5, p1}, Lcom/android/common/setting/k;->VY(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/cameradevice/p;I)V

    .line 48
    return-void
.end method

.method private VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 298
    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_11

    .line 299
    :cond_9
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    .line 300
    return-void

    .line 303
    :cond_11
    invoke-virtual {p2, p3}, Lcom/android/common/setting/ListPreference;->VC(Ljava/util/List;)V

    .line 304
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_23

    .line 305
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    .line 306
    return-void

    .line 309
    :cond_23
    invoke-direct {p0, p2}, Lcom/android/common/setting/k;->Wc(Lcom/android/common/setting/ListPreference;)V

    .line 294
    return-void
.end method

.method private VS(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;ILcom/android/common/cameradevice/p;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 396
    if-eqz p3, :cond_9

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_11

    .line 397
    :cond_9
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    .line 398
    return-void

    .line 401
    :cond_11
    invoke-virtual {p2, p3}, Lcom/android/common/setting/ListPreference;->VC(Ljava/util/List;)V

    .line 402
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_23

    .line 403
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    .line 404
    return-void

    .line 407
    :cond_23
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    if-ne p4, v0, :cond_30

    .line 408
    invoke-direct {p0, p1, p2, p5}, Lcom/android/common/setting/k;->VZ(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Lcom/android/common/cameradevice/p;)V

    .line 392
    :cond_30
    return-void
.end method

.method private VT(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V
    .registers 15

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 347
    if-eqz p3, :cond_a

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v10, :cond_12

    .line 348
    :cond_a
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    .line 349
    return-void

    .line 352
    :cond_12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 353
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 354
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vs()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v5, v0

    move v1, v2

    :goto_22
    if-ge v1, v5, :cond_9a

    .line 355
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vs()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/common/custom/x;->acH()Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 357
    const-string/jumbo v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 356
    if-eqz v6, :cond_7e

    .line 358
    const-string/jumbo v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 359
    aget-object v0, v6, v2

    .line 360
    const-string/jumbo v7, "CameraSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fps = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " quality= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v6, v6, v2

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "supported"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_7e
    invoke-interface {p3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_96

    .line 363
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vs()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_96
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 367
    :cond_9a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 368
    new-array v0, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lcom/android/common/setting/ListPreference;->VF([Ljava/lang/CharSequence;)V

    .line 369
    new-array v0, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Lcom/android/common/setting/ListPreference;->VG([Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v10, :cond_c3

    .line 372
    invoke-virtual {p2}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    .line 373
    return-void

    .line 343
    :cond_c3
    return-void
.end method

.method private VU(ILcom/android/common/cameradevice/p;Ljava/lang/String;)Ljava/util/List;
    .registers 5

    .prologue
    .line 380
    invoke-static {}, Lcom/android/common/cameradevice/d;->JO()Lcom/android/common/cameradevice/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/d;->JP()Lcom/android/common/cameradevice/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/common/cameradevice/r;->Ob(ILcom/android/common/cameradevice/p;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private VV(Lcom/android/common/cameradevice/p;)Ljava/util/List;
    .registers 4

    .prologue
    .line 286
    invoke-interface {p1}, Lcom/android/common/cameradevice/p;->LP()Ljava/util/List;

    move-result-object v0

    .line 287
    if-nez v0, :cond_11

    .line 288
    const-string/jumbo v0, "jpeg,raw"

    const-string/jumbo v1, ","

    invoke-static {v0, v1}, Lcom/android/common/h;->aqm(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 290
    :cond_11
    return-object v0
.end method

.method private VW(I)Ljava/util/ArrayList;
    .registers 3

    .prologue
    .line 339
    invoke-static {}, Lcom/android/common/cameradevice/d;->JO()Lcom/android/common/cameradevice/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/d;->JP()Lcom/android/common/cameradevice/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/r;->Of(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private VX(Lcom/android/common/cameradevice/p;)Ljava/util/List;
    .registers 5

    .prologue
    .line 447
    invoke-interface {p1}, Lcom/android/common/cameradevice/p;->LV()Ljava/util/List;

    move-result-object v0

    .line 448
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    .line 449
    invoke-interface {v1}, Lcom/android/common/custom/x;->aeG()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 450
    const-string/jumbo v2, "manual-cct"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_18
    invoke-interface {v1}, Lcom/android/common/custom/x;->aeH()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 453
    const-string/jumbo v2, "measure"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_24
    invoke-interface {v1}, Lcom/android/common/custom/x;->aeD()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 456
    const-string/jumbo v1, "point-measure"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_30
    return-object v0
.end method

.method private VY(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/cameradevice/p;I)V
    .registers 23

    .prologue
    .line 91
    const-string/jumbo v5, "pref_video_quality_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v5

    .line 92
    const-string/jumbo v6, "pref_front_video_quality_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v6

    .line 93
    const-string/jumbo v7, "pref_video_slomo_quality_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v8

    .line 94
    const-string/jumbo v7, "pref_camera_picturesize_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v7

    .line 95
    const-string/jumbo v9, "pref_camera_whitebalance_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v11

    .line 96
    const-string/jumbo v9, "pref_camera_scenemode_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v12

    .line 97
    const-string/jumbo v9, "pref_camera_flashmode_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v13

    .line 98
    const-string/jumbo v9, "pref_camera_focusmode_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v14

    .line 99
    const-string/jumbo v9, "pref_camera_exposure_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v15

    .line 100
    const-string/jumbo v9, "pref_camera_video_flashmode_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v16

    .line 101
    const-string/jumbo v9, "pref_camera_pictureformat_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v9

    .line 102
    const-string/jumbo v10, "pref_camera_picture_ratio_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v17

    .line 103
    const-string/jumbo v10, "pref_third_arith_hdr_key"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v18

    .line 105
    if-eqz v9, :cond_86

    .line 106
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/common/setting/k;->VV(Lcom/android/common/cameradevice/p;)Ljava/util/List;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 109
    :cond_86
    if-eqz v5, :cond_9d

    .line 113
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/common/setting/k;->VW(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v9}, Lcom/android/common/setting/k;->VT(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 115
    :cond_9d
    if-eqz v6, :cond_b4

    .line 118
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/common/setting/k;->VW(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 116
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 120
    :cond_b4
    if-eqz v8, :cond_ca

    .line 124
    const-string/jumbo v5, "120"

    .line 122
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Lcom/android/common/setting/k;->VU(ILcom/android/common/cameradevice/p;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v5}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 127
    :cond_ca
    if-eqz v7, :cond_e1

    .line 129
    invoke-interface/range {p2 .. p2}, Lcom/android/common/cameradevice/p;->LQ()Ljava/util/List;

    move-result-object v5

    .line 128
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/common/setting/k;->We(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v9, p3

    move-object/from16 v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/android/common/setting/k;->VS(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;ILcom/android/common/cameradevice/p;)V

    .line 131
    :cond_e1
    if-eqz v11, :cond_f2

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/common/setting/k;->VX(Lcom/android/common/cameradevice/p;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v5}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 135
    :cond_f2
    if-eqz v12, :cond_ff

    .line 136
    invoke-interface/range {p2 .. p2}, Lcom/android/common/cameradevice/p;->LT()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v5}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 138
    :cond_ff
    if-eqz v13, :cond_10c

    .line 139
    invoke-interface/range {p2 .. p2}, Lcom/android/common/cameradevice/p;->LL()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v5}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 141
    :cond_10c
    if-eqz v14, :cond_11f

    .line 142
    invoke-interface/range {p2 .. p2}, Lcom/android/common/cameradevice/p;->Lu()I

    move-result v5

    if-nez v5, :cond_11f

    .line 143
    invoke-interface/range {p2 .. p2}, Lcom/android/common/cameradevice/p;->LM()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v5}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 146
    :cond_11f
    if-eqz v16, :cond_12e

    .line 147
    invoke-interface/range {p2 .. p2}, Lcom/android/common/cameradevice/p;->LL()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v5}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 149
    :cond_12e
    if-eqz v15, :cond_139

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v15, v2}, Lcom/android/common/setting/k;->VN(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Lcom/android/common/cameradevice/p;)V

    .line 151
    :cond_139
    if-eqz v17, :cond_148

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/common/setting/k;->VP(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Lcom/android/common/cameradevice/p;I)V

    .line 153
    :cond_148
    if-eqz v18, :cond_166

    .line 154
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->acS()Z

    move-result v5

    .line 153
    if-eqz v5, :cond_166

    .line 156
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->acR()Z

    move-result v5

    if-eqz v5, :cond_17c

    .line 164
    :cond_166
    :goto_166
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v5

    move/from16 v0, p3

    if-ne v0, v5, :cond_197

    .line 165
    invoke-direct/range {p0 .. p2}, Lcom/android/common/setting/k;->VO(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/cameradevice/p;)V

    .line 171
    :goto_175
    invoke-direct/range {p0 .. p2}, Lcom/android/common/setting/k;->Wa(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/cameradevice/p;)V

    .line 172
    invoke-direct/range {p0 .. p3}, Lcom/android/common/setting/k;->Wf(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/cameradevice/p;I)V

    .line 90
    return-void

    .line 158
    :cond_17c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 159
    const-string/jumbo v6, "off"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    const-string/jumbo v6, "on"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v5}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    goto :goto_166

    .line 167
    :cond_197
    const-string/jumbo v5, "pref_camera_backlight_flashmode_key"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    .line 168
    const-string/jumbo v5, "pref_camera_front_flashmode_key"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_175
.end method

.method private VZ(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Lcom/android/common/cameradevice/p;)V
    .registers 14

    .prologue
    const-wide v8, 0x3fb99999a0000000L    # 0.10000000149011612

    .line 414
    invoke-interface {p3}, Lcom/android/common/cameradevice/p;->LQ()Ljava/util/List;

    move-result-object v1

    .line 415
    if-nez v1, :cond_15

    .line 416
    const-string/jumbo v0, "CameraSettings"

    const-string/jumbo v1, "overrideDefaultPictureRatio supported == null"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void

    .line 419
    :cond_15
    const-wide/16 v2, 0x0

    .line 421
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 422
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v1, v0

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 423
    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v4, v5

    int-to-double v4, v4

    .line 424
    cmpl-double v7, v4, v2

    if-lez v7, :cond_cf

    move-wide v2, v4

    :goto_3a
    move-object v1, v0

    goto :goto_23

    .line 429
    :cond_3c
    const-string/jumbo v0, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxPictureSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget v0, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v0

    iget v0, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-double v0, v0

    div-double v0, v2, v0

    .line 431
    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v8

    if-gez v2, :cond_93

    .line 432
    const-string/jumbo v0, "CameraSettings"

    const-string/jumbo v1, "picture ratio default 4:3"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string/jumbo v0, "pref_camera_picture_ratio_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    const-string/jumbo v1, "4:3"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->VD(Ljava/lang/String;)V

    .line 434
    return-void

    .line 435
    :cond_93
    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v8

    if-gez v0, :cond_b8

    .line 436
    const-string/jumbo v0, "CameraSettings"

    const-string/jumbo v1, "picture ratio default 16:9"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string/jumbo v0, "pref_camera_picture_ratio_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    const-string/jumbo v1, "16:9"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->VD(Ljava/lang/String;)V

    .line 438
    return-void

    .line 440
    :cond_b8
    const-string/jumbo v0, "CameraSettings"

    const-string/jumbo v1, "picture ratio default 1:1"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string/jumbo v0, "pref_camera_picture_ratio_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    const-string/jumbo v1, "1:1"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->VD(Ljava/lang/String;)V

    .line 442
    return-void

    :cond_cf
    move-object v0, v1

    goto/16 :goto_3a
.end method

.method private Wa(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/cameradevice/p;)V
    .registers 11

    .prologue
    .line 176
    const-string/jumbo v0, "pref_camera_facedetection_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    .line 177
    const-string/jumbo v0, "pref_camera_autoexposure_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    .line 178
    const-string/jumbo v0, "pref_camera_antibanding_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v3

    .line 179
    const-string/jumbo v0, "pref_camera_iso_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v4

    .line 180
    const-string/jumbo v0, "pref_camera_denoise_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v5

    .line 181
    const-string/jumbo v0, "pref_video_denoise_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v6

    .line 182
    const-string/jumbo v0, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    .line 183
    const-string/jumbo v0, "pref_camera_jpegquality_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    .line 184
    const-string/jumbo v0, "pref_camera_stabilization_key"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/IconListPreference;

    .line 185
    const-string/jumbo v1, "pref_camera_volume_key"

    invoke-virtual {p1, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/common/setting/IconListPreference;

    .line 187
    sget-boolean v7, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-nez v7, :cond_4f

    .line 188
    sget-boolean v7, Lcom/android/common/independentutil/IndependenceUtil;->agd:Z

    .line 187
    if-eqz v7, :cond_58

    .line 189
    :cond_4f
    if-eqz v4, :cond_58

    .line 190
    invoke-interface {p2}, Lcom/android/common/cameradevice/p;->NB()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, p1, v4, v7}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 194
    :cond_58
    sget-boolean v4, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-nez v4, :cond_60

    sget-boolean v4, Lcom/android/common/independentutil/IndependenceUtil;->agl:Z

    if-eqz v4, :cond_81

    .line 195
    :cond_60
    if-eqz v5, :cond_78

    .line 196
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/common/custom/x;->acq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/common/setting/ListPreference;->VD(Ljava/lang/String;)V

    .line 197
    invoke-interface {p2}, Lcom/android/common/cameradevice/p;->Nz()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p1, v5, v4}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 200
    :cond_78
    if-eqz v6, :cond_81

    .line 201
    invoke-interface {p2}, Lcom/android/common/cameradevice/p;->Nz()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p1, v6, v4}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 205
    :cond_81
    if-eqz v3, :cond_8a

    .line 206
    invoke-interface {p2}, Lcom/android/common/cameradevice/p;->LK()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    .line 209
    :cond_8a
    if-eqz v0, :cond_9b

    .line 210
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/custom/x;->aez()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/common/setting/IconListPreference;->VD(Ljava/lang/String;)V

    .line 213
    :cond_9b
    if-eqz v1, :cond_ac

    .line 214
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/setting/IconListPreference;->VD(Ljava/lang/String;)V

    .line 217
    :cond_ac
    if-eqz v2, :cond_bf

    .line 218
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agr:Z

    if-nez v0, :cond_c0

    .line 219
    invoke-interface {p2}, Lcom/android/common/cameradevice/p;->Lt()I

    move-result v0

    if-gtz v0, :cond_c0

    .line 220
    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    .line 175
    :cond_bf
    :goto_bf
    return-void

    .line 222
    :cond_c0
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/common/setting/ListPreference;->VD(Ljava/lang/String;)V

    goto :goto_bf
.end method

.method private Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 313
    invoke-virtual {p1}, Lcom/android/common/setting/PreferenceGroup;->YX()I

    move-result v4

    move v2, v3

    :goto_7
    if-ge v2, v4, :cond_33

    .line 314
    invoke-virtual {p1, v2}, Lcom/android/common/setting/PreferenceGroup;->YY(I)Lcom/android/common/setting/q;

    move-result-object v1

    .line 315
    instance-of v0, v1, Lcom/android/common/setting/PreferenceGroup;

    if-eqz v0, :cond_1b

    move-object v0, v1

    .line 316
    check-cast v0, Lcom/android/common/setting/PreferenceGroup;

    invoke-direct {p0, v0, p2}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 317
    return v5

    .line 320
    :cond_1b
    instance-of v0, v1, Lcom/android/common/setting/ListPreference;

    if-eqz v0, :cond_2f

    .line 321
    check-cast v1, Lcom/android/common/setting/ListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 320
    if-eqz v0, :cond_2f

    .line 322
    invoke-virtual {p1, v2}, Lcom/android/common/setting/PreferenceGroup;->YZ(I)V

    .line 323
    return v5

    .line 313
    :cond_2f
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 326
    :cond_33
    return v3
.end method

.method private Wc(Lcom/android/common/setting/ListPreference;)V
    .registers 4

    .prologue
    .line 331
    invoke-virtual {p1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    .line 332
    const-string/jumbo v1, "manual-cct"

    invoke-static {v0, v1}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    return-void

    .line 333
    :cond_e
    invoke-virtual {p1, v0}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 334
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/setting/ListPreference;->Vt(I)V

    .line 329
    :cond_19
    return-void
.end method

.method private We(Ljava/util/List;)Ljava/util/List;
    .registers 10

    .prologue
    .line 384
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 385
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 386
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%dx%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 388
    :cond_37
    return-object v1
.end method

.method private Wf(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/cameradevice/p;I)V
    .registers 15

    .prologue
    .line 228
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v0, :cond_5

    .line 229
    return-void

    .line 231
    :cond_5
    const-string/jumbo v0, "pref_key_capture_camera"

    invoke-virtual {p1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 232
    const-string/jumbo v1, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {p1, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    .line 233
    const-string/jumbo v2, "pref_camera_shutter_sound_key"

    invoke-virtual {p1, v2}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    .line 234
    const-string/jumbo v3, "pref_camera_multishot_key"

    invoke-virtual {p1, v3}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v3

    .line 235
    const-string/jumbo v4, "pref_camera_colorfilter_key"

    invoke-virtual {p1, v4}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v4

    .line 236
    const-string/jumbo v5, "pref_fengzhi_focus_key"

    invoke-virtual {p1, v5}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v5

    .line 237
    const-string/jumbo v6, "pref_capture_focus_key"

    invoke-virtual {p1, v6}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v6

    .line 239
    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anv()Z

    move-result v7

    if-eqz v7, :cond_81

    .line 243
    :cond_3e
    :goto_3e
    if-eqz v1, :cond_4b

    .line 244
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agt:Z

    if-nez v0, :cond_89

    .line 245
    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    .line 253
    :cond_4b
    :goto_4b
    if-eqz v2, :cond_58

    .line 254
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->age:Z

    if-nez v0, :cond_9e

    .line 255
    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    .line 260
    :cond_58
    :goto_58
    if-eqz v3, :cond_62

    .line 261
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agf:Z

    if-eqz v0, :cond_ae

    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v0, :cond_ae

    .line 272
    :cond_62
    :goto_62
    if-eqz v4, :cond_6a

    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->ans()Z

    move-result v0

    if-eqz v0, :cond_de

    .line 276
    :cond_6a
    :goto_6a
    if-eqz v5, :cond_70

    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->ags:Z

    if-eqz v0, :cond_e6

    .line 280
    :cond_70
    :goto_70
    if-eqz v6, :cond_80

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adh()Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 227
    :cond_80
    :goto_80
    return-void

    .line 240
    :cond_81
    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_3e

    .line 247
    :cond_89
    const-string/jumbo v0, "hdr"

    invoke-interface {p2}, Lcom/android/common/cameradevice/p;->LT()Ljava/util/List;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/common/h;->apd(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 248
    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_4b

    .line 256
    :cond_9e
    iget-object v0, p0, Lcom/android/common/setting/k;->TY:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, p3

    iget-boolean v0, v0, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z

    if-nez v0, :cond_58

    .line 257
    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_58

    .line 262
    :cond_ae
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    iget-object v0, p0, Lcom/android/common/setting/k;->TZ:Landroid/content/Context;

    const v2, 0x7f0a03a5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-virtual {v3}, Lcom/android/common/setting/ListPreference;->Vs()[Ljava/lang/CharSequence;

    move-result-object v7

    const/4 v0, 0x0

    array-length v8, v7

    :goto_c2
    if-ge v0, v8, :cond_da

    aget-object v9, v7, v0

    .line 265
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d7

    .line 266
    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_d7
    add-int/lit8 v0, v0, 0x1

    goto :goto_c2

    .line 269
    :cond_da
    invoke-direct {p0, p1, v3, v1}, Lcom/android/common/setting/k;->VR(Lcom/android/common/setting/PreferenceGroup;Lcom/android/common/setting/ListPreference;Ljava/util/List;)V

    goto :goto_62

    .line 273
    :cond_de
    invoke-virtual {v4}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_6a

    .line 277
    :cond_e6
    invoke-virtual {v5}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_70

    .line 281
    :cond_ee
    invoke-virtual {v6}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/k;->Wb(Lcom/android/common/setting/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_80
.end method


# virtual methods
.method public VL(ILcom/android/common/appService/CameraMember;Lcom/android/common/setting/e;)V
    .registers 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/common/setting/k;->Ua:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/PreferenceGroup;

    .line 70
    if-nez v0, :cond_e

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/setting/k;->VQ(ILcom/android/common/appService/CameraMember;Lcom/android/common/setting/e;)V

    .line 67
    :goto_d
    return-void

    .line 73
    :cond_e
    invoke-virtual {v0}, Lcom/android/common/setting/PreferenceGroup;->VB()V

    goto :goto_d
.end method

.method public VM(I)Lcom/android/common/setting/PreferenceGroup;
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/common/setting/k;->Ua:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/PreferenceGroup;

    return-object v0
.end method

.method public Wd(I)V
    .registers 4

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/common/setting/k;->Ua:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/PreferenceGroup;

    .line 79
    if-eqz v0, :cond_e

    .line 80
    invoke-virtual {v0}, Lcom/android/common/setting/PreferenceGroup;->VB()V

    .line 77
    :goto_d
    return-void

    .line 82
    :cond_e
    const-string/jumbo v0, "CameraSettings"

    const-string/jumbo v1, "restore error. preferencegroup is null"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method
