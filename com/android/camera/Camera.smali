.class public Lcom/android/camera/Camera;
.super Lcom/android/common/ActivityBase;
.source "SourceFile"


# instance fields
.field private aoA:Lcn/nubia/a/a;

.field aoB:Landroid/app/Fragment;

.field private aoC:Z

.field private aoD:Z

.field private aoE:Z

.field private aoF:Lcom/android/camera/a;

.field private aoG:Z

.field aoH:Lcom/android/gallery3d/b/b;

.field private aoI:I

.field private aoJ:I

.field private aoK:I

.field private aoL:I

.field private aoM:I

.field private aoN:I

.field private aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

.field private aow:Lcom/android/camera/cameraFamily/l;

.field private aox:Z

.field aoy:Lcom/android/common/appService/l;

.field aoz:Lcom/android/camera/f;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Lcom/android/common/ActivityBase;-><init>()V

    .line 125
    iput-boolean v1, p0, Lcom/android/camera/Camera;->aoE:Z

    .line 126
    iput-object v2, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    .line 128
    new-instance v0, Lcom/android/camera/g;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/g;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/g;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->aoH:Lcom/android/gallery3d/b/b;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera;->aoG:Z

    .line 133
    iput-object v2, p0, Lcom/android/camera/Camera;->aoA:Lcn/nubia/a/a;

    .line 137
    iput-object v2, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    .line 138
    iput v1, p0, Lcom/android/camera/Camera;->aoI:I

    .line 139
    iput-boolean v1, p0, Lcom/android/camera/Camera;->aoD:Z

    .line 830
    iput v1, p0, Lcom/android/camera/Camera;->aoL:I

    .line 831
    iput v1, p0, Lcom/android/camera/Camera;->aoM:I

    .line 832
    iput v1, p0, Lcom/android/camera/Camera;->aoJ:I

    .line 833
    iput v1, p0, Lcom/android/camera/Camera;->aoK:I

    .line 834
    iput-boolean v1, p0, Lcom/android/camera/Camera;->aox:Z

    .line 1261
    iput-boolean v1, p0, Lcom/android/camera/Camera;->aoC:Z

    .line 1292
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/camera/Camera;->aoN:I

    .line 121
    return-void
.end method

.method private aAA()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 952
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 953
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 954
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 955
    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 957
    iget-object v1, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    invoke-virtual {v1}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMax()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0xa

    .line 960
    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/independentFocusExposure/a;->ck()Lcom/android/common/ui/VerticalSeekBarForEv;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/common/ui/VerticalSeekBarForEv;->setVisibility(I)V

    .line 961
    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qv()I

    move-result v2

    sparse-switch v2, :sswitch_data_96

    .line 980
    :goto_45
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 982
    iget-object v0, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    invoke-virtual {v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->vv()V

    .line 951
    return-void

    .line 963
    :sswitch_5b
    iget v2, p0, Lcom/android/camera/Camera;->aoK:I

    mul-int/2addr v1, v2

    div-int v0, v1, v0

    .line 964
    iget-object v1, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    iget v2, p0, Lcom/android/camera/Camera;->aoI:I

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->setProgress(I)V

    goto :goto_45

    .line 967
    :sswitch_6a
    iget v2, p0, Lcom/android/camera/Camera;->aoJ:I

    mul-int/2addr v1, v2

    div-int v0, v1, v0

    .line 968
    iget-object v1, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    iget v2, p0, Lcom/android/camera/Camera;->aoI:I

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->setProgress(I)V

    goto :goto_45

    .line 971
    :sswitch_79
    iget v2, p0, Lcom/android/camera/Camera;->aoK:I

    mul-int/2addr v1, v2

    div-int v0, v1, v0

    .line 972
    iget-object v1, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    iget v2, p0, Lcom/android/camera/Camera;->aoI:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->setProgress(I)V

    goto :goto_45

    .line 975
    :sswitch_87
    iget v2, p0, Lcom/android/camera/Camera;->aoJ:I

    mul-int/2addr v1, v2

    div-int v0, v1, v0

    .line 976
    iget-object v1, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    iget v2, p0, Lcom/android/camera/Camera;->aoI:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->setProgress(I)V

    goto :goto_45

    .line 961
    nop

    :sswitch_data_96
    .sparse-switch
        0x0 -> :sswitch_5b
        0x5a -> :sswitch_6a
        0xb4 -> :sswitch_79
        0x10e -> :sswitch_87
    .end sparse-switch
.end method

.method private aAB(I)V
    .registers 4

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/camera/Camera;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v0}, Lcom/android/common/a/g;->ay()V

    .line 680
    iget-object v0, p0, Lcom/android/camera/Camera;->ajd:Lcom/android/common/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->aB(Z)V

    .line 681
    iget-object v0, p0, Lcom/android/camera/Camera;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v0, p1}, Lcom/android/common/a/g;->aC(I)V

    .line 682
    iget-object v0, p0, Lcom/android/camera/Camera;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v0}, Lcom/android/common/a/g;->ap()Lcom/android/common/a/i;

    move-result-object v0

    .line 683
    new-instance v1, Lcom/android/camera/v;

    invoke-direct {v1, p0}, Lcom/android/camera/v;-><init>(Lcom/android/camera/Camera;)V

    .line 682
    invoke-virtual {v0, v1}, Lcom/android/common/a/i;->aR(Lcom/android/common/a/j;)V

    .line 706
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asH()V

    .line 678
    return-void
.end method

.method private aAC()V
    .registers 3

    .prologue
    .line 300
    invoke-static {}, Lcom/android/common/n/a;->ahN()Lcom/android/common/n/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/common/n/a;->ahO(Landroid/content/Context;Z)Lcom/android/common/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/n/a;->ahP()V

    .line 299
    return-void
.end method

.method private aAE(Landroid/view/MotionEvent;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 841
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAU()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 842
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    invoke-virtual {v0, p1}, Lcom/android/camera/a;->azL(Landroid/view/MotionEvent;)V

    .line 844
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_70

    .line 839
    :cond_13
    :goto_13
    return-void

    .line 846
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/Camera;->aoL:I

    .line 847
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/Camera;->aoM:I

    .line 848
    iput v1, p0, Lcom/android/camera/Camera;->aoJ:I

    .line 849
    iput v1, p0, Lcom/android/camera/Camera;->aoK:I

    .line 850
    iput-boolean v1, p0, Lcom/android/camera/Camera;->aox:Z

    .line 851
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->ck()Lcom/android/common/ui/VerticalSeekBarForEv;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    .line 852
    iget-object v0, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    if-eqz v0, :cond_13

    .line 853
    iget-object v0, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    invoke-virtual {v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/camera/Camera;->aoI:I

    goto :goto_13

    .line 857
    :pswitch_41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/Camera;->aoL:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/Camera;->aoJ:I

    .line 858
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/Camera;->aoM:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/Camera;->aoK:I

    .line 868
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAT()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 869
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAA()V

    .line 870
    invoke-direct {p0}, Lcom/android/camera/Camera;->aBf()V

    goto :goto_13

    .line 875
    :pswitch_62
    iput-boolean v1, p0, Lcom/android/camera/Camera;->aox:Z

    .line 876
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAT()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 877
    invoke-direct {p0}, Lcom/android/camera/Camera;->aBg()V

    .line 879
    :cond_6d
    iput-boolean v1, p0, Lcom/android/camera/Camera;->aoD:Z

    goto :goto_13

    .line 844
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_14
        :pswitch_62
        :pswitch_41
        :pswitch_62
    .end packed-switch
.end method

.method private aAF()Z
    .registers 3

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/camera/Camera;->aoB:Landroid/app/Fragment;

    if-eqz v0, :cond_16

    .line 1272
    iget-object v0, p0, Lcom/android/camera/Camera;->aoB:Landroid/app/Fragment;

    check-cast v0, Lcom/android/gallery3d/b/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/b/a;->aLQ()V

    .line 1274
    const-string/jumbo v0, "nubiaCamera"

    const-string/jumbo v1, "remove gallery fragment"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const/4 v0, 0x1

    return v0

    .line 1277
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private aAG()Lcom/android/common/appService/CameraMember;
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 318
    sget-object v0, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    .line 319
    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pe()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 320
    sget-object v0, Lcom/android/common/appService/CameraMember;->jg:Lcom/android/common/appService/CameraMember;

    .line 359
    :cond_d
    :goto_d
    return-object v0

    .line 321
    :cond_e
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAR()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 322
    sget-object v0, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    goto :goto_d

    .line 323
    :cond_17
    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pd()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 324
    sget-object v0, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    goto :goto_d

    .line 325
    :cond_22
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "dualcameracalibration"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 326
    sget-object v0, Lcom/android/common/appService/CameraMember;->jl:Lcom/android/common/appService/CameraMember;

    goto :goto_d

    .line 327
    :cond_33
    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pc()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 328
    sget-object v0, Lcom/android/common/appService/CameraMember;->jJ:Lcom/android/common/appService/CameraMember;

    goto :goto_d

    .line 330
    :cond_3e
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "nubia.camera.family"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 332
    if-eq v2, v4, :cond_86

    .line 333
    invoke-static {v2}, Lcom/android/common/appService/CameraMember;->md(I)Lcom/android/common/appService/CameraMember;

    move-result-object v0

    .line 346
    :cond_57
    :goto_57
    sget-object v1, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_6b

    .line 347
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->adP()Z

    move-result v1

    .line 346
    if-eqz v1, :cond_6b

    .line 348
    sget-object v0, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    .line 350
    :cond_6b
    sget-object v1, Lcom/android/common/appService/CameraMember;->jP:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    if-ne v2, v1, :cond_78

    .line 351
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asg()V

    .line 352
    sget-object v0, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    .line 354
    :cond_78
    sget-object v1, Lcom/android/common/appService/CameraMember;->jQ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    if-ne v2, v1, :cond_d

    .line 355
    invoke-virtual {p0}, Lcom/android/camera/Camera;->ash()V

    .line 356
    sget-object v0, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    goto :goto_d

    .line 334
    :cond_86
    const-string/jumbo v3, "com.android.camera.action.FORCE_TOUCH_ACTION_SELFIE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 335
    sget-object v0, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    goto :goto_57

    .line 336
    :cond_92
    const-string/jumbo v3, "com.android.camera.action.FORCE_TOUCH_ACTION_VIDEO"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 337
    sget-object v0, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    goto :goto_57

    .line 338
    :cond_9e
    const-string/jumbo v3, "com.android.camera.action.subcamtest"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 339
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MU()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_be

    .line 340
    sget-object v0, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    .line 341
    const-string/jumbo v1, "nubiaCamera"

    const-string/jumbo v3, "open in SUB_CAM_TEST state"

    invoke-static {v1, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    .line 343
    :cond_be
    const-string/jumbo v1, "nubiaCamera"

    const-string/jumbo v3, "open in SUB_CAM_TEST state, but fail"

    invoke-static {v1, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57
.end method

.method private aAH(Lcom/android/common/appService/CameraMember;)Lcom/android/common/cameradevice/g;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 370
    iget-object v0, p0, Lcom/android/camera/Camera;->aiY:Lcom/android/common/appService/y;

    invoke-interface {v0, p1}, Lcom/android/common/appService/y;->kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_f

    .line 373
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    .line 374
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No suituable camera id found!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_26

    .line 376
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/cameradevice/g;

    return-object v0

    .line 379
    :cond_26
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->aAJ(Ljava/util/List;)Lcom/android/common/cameradevice/g;

    move-result-object v0

    return-object v0
.end method

.method private aAI()Lcom/android/camera/i;
    .registers 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    check-cast v0, Lcom/android/camera/i;

    return-object v0
.end method

.method private aAJ(Ljava/util/List;)Lcom/android/common/cameradevice/g;
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 384
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "nubia.camera.family"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 387
    const-string/jumbo v3, "com.android.camera.action.FORCE_TOUCH_ACTION_SELFIE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 388
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v0

    move v1, v0

    .line 393
    :goto_26
    if-eq v1, v2, :cond_56

    .line 394
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/cameradevice/g;

    .line 395
    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/g;->Kg(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 396
    return-object v0

    .line 389
    :cond_3f
    const-string/jumbo v3, "com.android.camera.action.FORCE_TOUCH_ACTION_VIDEO"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 390
    if-eq v1, v2, :cond_54

    .line 391
    :cond_4a
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    move v1, v0

    goto :goto_26

    :cond_54
    move v1, v2

    .line 390
    goto :goto_26

    .line 400
    :cond_56
    const/4 v0, 0x0

    return-object v0
.end method

.method private aAK(Landroid/os/ConditionVariable;)V
    .registers 6

    .prologue
    .line 1361
    const-string/jumbo v0, ""

    sget-object v1, Lcom/android/common/m/a;->aaR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1362
    return-void

    .line 1364
    :cond_c
    const-string/jumbo v0, "cn.nubia.gallery3d.commonservice"

    .line 1365
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "cn.nubia.gallery3d.commonservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1366
    const-string/jumbo v1, "cn.nubia.gallery3d"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1367
    new-instance v1, Lcom/android/camera/A;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/A;-><init>(Lcom/android/camera/Camera;Landroid/os/ConditionVariable;)V

    .line 1387
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/Camera;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 1388
    const-string/jumbo v1, "nubiaCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bindService cn.nubia.gallery3d.commonservice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    if-eqz v0, :cond_46

    .line 1390
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 1360
    :cond_46
    return-void
.end method

.method private aAL()V
    .registers 3

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/android/camera/Camera;->aoB:Landroid/app/Fragment;

    if-nez v0, :cond_20

    .line 1189
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAz()V

    .line 1190
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->mM(Z)Z

    .line 1191
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->ath(I)V

    .line 1192
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asF()V

    .line 1193
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->ht()V

    .line 1187
    :cond_20
    return-void
.end method

.method private aAM(I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1080
    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qv()I

    move-result v2

    .line 1082
    if-nez v2, :cond_29

    .line 1083
    iget-object v2, p0, Lcom/android/camera/Camera;->aoy:Lcom/android/common/appService/l;

    iget v2, v2, Lcom/android/common/appService/l;->hK:I

    if-eq p1, v2, :cond_16

    iget-object v2, p0, Lcom/android/camera/Camera;->aoy:Lcom/android/common/appService/l;

    iget v2, v2, Lcom/android/common/appService/l;->hL:I

    if-ne p1, v2, :cond_17

    :cond_16
    move v0, v1

    .line 1101
    :cond_17
    :goto_17
    if-eqz v0, :cond_28

    .line 1102
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asN()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1103
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mQ()V

    .line 1079
    :cond_28
    return-void

    .line 1086
    :cond_29
    const/16 v3, 0xb4

    if-ne v2, v3, :cond_3b

    .line 1087
    iget-object v2, p0, Lcom/android/camera/Camera;->aoy:Lcom/android/common/appService/l;

    iget v2, v2, Lcom/android/common/appService/l;->hM:I

    if-eq p1, v2, :cond_39

    iget-object v2, p0, Lcom/android/camera/Camera;->aoy:Lcom/android/common/appService/l;

    iget v2, v2, Lcom/android/common/appService/l;->hN:I

    if-ne p1, v2, :cond_17

    :cond_39
    move v0, v1

    .line 1088
    goto :goto_17

    .line 1090
    :cond_3b
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_4d

    .line 1091
    iget-object v2, p0, Lcom/android/camera/Camera;->aoy:Lcom/android/common/appService/l;

    iget v2, v2, Lcom/android/common/appService/l;->hK:I

    if-eq p1, v2, :cond_4b

    iget-object v2, p0, Lcom/android/camera/Camera;->aoy:Lcom/android/common/appService/l;

    iget v2, v2, Lcom/android/common/appService/l;->hM:I

    if-ne p1, v2, :cond_17

    :cond_4b
    move v0, v1

    .line 1092
    goto :goto_17

    .line 1094
    :cond_4d
    const/16 v3, 0x10e

    if-ne v2, v3, :cond_17

    .line 1095
    iget-object v2, p0, Lcom/android/camera/Camera;->aoy:Lcom/android/common/appService/l;

    iget v2, v2, Lcom/android/common/appService/l;->hL:I

    if-eq p1, v2, :cond_5d

    iget-object v2, p0, Lcom/android/camera/Camera;->aoy:Lcom/android/common/appService/l;

    iget v2, v2, Lcom/android/common/appService/l;->hN:I

    if-ne p1, v2, :cond_17

    :cond_5d
    move v0, v1

    .line 1096
    goto :goto_17
.end method

.method private aAN()V
    .registers 4

    .prologue
    .line 776
    const-string/jumbo v0, "nubiaCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Start to switch camera. id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qD()Lcom/android/common/cameradevice/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qD()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qG(Lcom/android/common/cameradevice/g;)V

    .line 778
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qH()Lcom/android/common/ui/i;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 779
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qH()Lcom/android/common/ui/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->asn()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/i;->vA(I)V

    .line 775
    :cond_40
    return-void
.end method

.method private aAO()V
    .registers 4

    .prologue
    .line 1143
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1144
    if-eqz v0, :cond_1c

    .line 1146
    const-string/jumbo v1, "pref_key_capture_camera"

    const-string/jumbo v2, "off"

    .line 1145
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1147
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1148
    invoke-virtual {p0}, Lcom/android/camera/Camera;->avD()V

    .line 1142
    :cond_1c
    :goto_1c
    return-void

    .line 1150
    :cond_1d
    invoke-virtual {p0}, Lcom/android/camera/Camera;->avy()V

    goto :goto_1c
.end method

.method private aAP()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 1023
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->adF()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1024
    iget-object v1, p0, Lcom/android/camera/Camera;->aoA:Lcn/nubia/a/a;

    if-nez v1, :cond_1b

    .line 1025
    new-instance v1, Lcn/nubia/a/a;

    invoke-direct {v1}, Lcn/nubia/a/a;-><init>()V

    iput-object v1, p0, Lcom/android/camera/Camera;->aoA:Lcn/nubia/a/a;

    .line 1027
    :cond_1b
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1028
    const-string/jumbo v2, "nubia_fingerprint_photo_switch"

    .line 1027
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1030
    if-ne v1, v6, :cond_61

    const-string/jumbo v0, "on"

    .line 1032
    :goto_2b
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asu()Lcom/android/common/setting/e;

    move-result-object v2

    .line 1034
    const-string/jumbo v3, "pref_camrea_fingerprint_shutter_key"

    .line 1035
    iget-object v4, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    .line 1036
    const v5, 0x7f0a046a

    .line 1035
    invoke-virtual {v4, v5}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v4

    .line 1032
    invoke-virtual {v2, v3, v4}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1031
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 1037
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asu()Lcom/android/common/setting/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1038
    const-string/jumbo v3, "pref_camrea_fingerprint_shutter_key"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1039
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v0, v1

    .line 1047
    :cond_57
    :goto_57
    iget-object v1, p0, Lcom/android/camera/Camera;->aoA:Lcn/nubia/a/a;

    if-eqz v1, :cond_60

    if-ne v0, v6, :cond_60

    .line 1048
    invoke-virtual {p0}, Lcom/android/camera/Camera;->aAV()V

    .line 1021
    :cond_60
    return-void

    .line 1030
    :cond_61
    const-string/jumbo v0, "off"

    goto :goto_2b

    :cond_65
    move v0, v1

    goto :goto_57
.end method

.method private aAQ()V
    .registers 6

    .prologue
    .line 230
    new-instance v0, Lcom/android/camera/cameraFamily/l;

    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/cameraFamily/l;-><init>(Landroid/app/Activity;Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    .line 231
    new-instance v0, Lcom/android/camera/a;

    .line 232
    const v1, 0x7f10006e

    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    .line 234
    iget-object v3, p0, Lcom/android/camera/Camera;->ajd:Lcom/android/common/a/g;

    .line 235
    iget-object v4, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    .line 231
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/a;-><init>(Landroid/view/View;Lcom/android/common/appService/W;Lcom/android/common/a/g;Lcom/android/camera/cameraFamily/l;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    .line 236
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    new-instance v1, Lcom/android/camera/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/h;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/h;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/a;->azR(Lcom/android/camera/b;)V

    .line 237
    iget-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    iget-object v1, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/l;->ayc(Lcom/android/camera/cameraFamily/c;)V

    .line 238
    iget-boolean v0, p0, Lcom/android/camera/Camera;->aje:Z

    if-eqz v0, :cond_38

    .line 239
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->ath(I)V

    .line 229
    :cond_38
    return-void
.end method

.method private aAR()Z
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    return v0
.end method

.method private aAS()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 815
    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-eq v1, v2, :cond_15

    .line 816
    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    if-ne v1, v2, :cond_16

    .line 815
    :cond_15
    :goto_15
    return v0

    .line 816
    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private aAT()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 910
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acZ()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 911
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XI()Z

    move-result v0

    .line 910
    if-eqz v0, :cond_1d

    .line 912
    return v2

    .line 915
    :cond_1d
    iget-object v0, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    if-eqz v0, :cond_41

    .line 916
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cl()Z

    move-result v0

    .line 915
    if-nez v0, :cond_41

    .line 917
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dA()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 918
    invoke-virtual {p0}, Lcom/android/camera/Camera;->ass()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_42

    .line 922
    :cond_41
    return v2

    .line 919
    :cond_42
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cm()I

    move-result v0

    if-nez v0, :cond_41

    .line 920
    invoke-virtual {p0}, Lcom/android/camera/Camera;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_41

    .line 924
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_67

    .line 925
    return v2

    .line 928
    :cond_67
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qv()I

    move-result v0

    sparse-switch v0, :sswitch_data_96

    .line 948
    :cond_70
    :goto_70
    iget-boolean v0, p0, Lcom/android/camera/Camera;->aoD:Z

    return v0

    .line 934
    :sswitch_73
    iget v0, p0, Lcom/android/camera/Camera;->aoK:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/Camera;->aoJ:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_70

    .line 935
    iput-boolean v3, p0, Lcom/android/camera/Camera;->aoD:Z

    goto :goto_70

    .line 943
    :sswitch_84
    iget v0, p0, Lcom/android/camera/Camera;->aoJ:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/Camera;->aoK:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_70

    .line 944
    iput-boolean v3, p0, Lcom/android/camera/Camera;->aoD:Z

    goto :goto_70

    .line 928
    nop

    :sswitch_data_96
    .sparse-switch
        0x0 -> :sswitch_73
        0x5a -> :sswitch_84
        0xb4 -> :sswitch_73
        0x10e -> :sswitch_84
    .end sparse-switch
.end method

.method private aAU()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 889
    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pv()I

    move-result v2

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v3

    if-eq v2, v3, :cond_1c

    .line 890
    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    if-ne v2, v3, :cond_1d

    .line 892
    :cond_1c
    return v1

    .line 891
    :cond_1d
    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    if-eq v2, v3, :cond_1c

    .line 895
    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qv()I

    move-result v2

    sparse-switch v2, :sswitch_data_48

    move v2, v0

    .line 905
    :goto_31
    if-eqz v2, :cond_37

    iget-boolean v2, p0, Lcom/android/camera/Camera;->aoD:Z

    if-eqz v2, :cond_45

    :cond_37
    :goto_37
    return v0

    :sswitch_38
    move v2, v1

    .line 899
    goto :goto_31

    .line 902
    :sswitch_3a
    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/independentFocusExposure/a;->cl()Z

    move-result v2

    goto :goto_31

    :cond_45
    move v0, v1

    .line 905
    goto :goto_37

    .line 895
    nop

    :sswitch_data_48
    .sparse-switch
        0x0 -> :sswitch_38
        0x5a -> :sswitch_3a
        0xb4 -> :sswitch_38
        0x10e -> :sswitch_3a
    .end sparse-switch
.end method

.method private aAW()V
    .registers 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/common/w;->arI(Landroid/content/res/Resources;Lcom/android/common/ActivityBase;)V

    .line 215
    return-void
.end method

.method private aAX()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1009
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aew()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1010
    iget-object v0, p0, Lcom/android/camera/Camera;->aoy:Lcom/android/common/appService/l;

    if-nez v0, :cond_1e

    .line 1011
    new-instance v0, Lcom/android/common/appService/l;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/appService/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->aoy:Lcom/android/common/appService/l;

    .line 1013
    :cond_1e
    iget-object v0, p0, Lcom/android/camera/Camera;->aoz:Lcom/android/camera/f;

    if-nez v0, :cond_29

    .line 1014
    new-instance v0, Lcom/android/camera/f;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/f;-><init>(Lcom/android/camera/Camera;Lcom/android/camera/f;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->aoz:Lcom/android/camera/f;

    .line 1017
    :cond_29
    iget-object v0, p0, Lcom/android/camera/Camera;->aoy:Lcom/android/common/appService/l;

    iget-object v1, p0, Lcom/android/camera/Camera;->aoz:Lcom/android/camera/f;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/l;->jQ(Lcom/android/common/appService/m;)V

    .line 1008
    :cond_30
    return-void
.end method

.method private aAY()V
    .registers 4

    .prologue
    .line 1208
    const-string/jumbo v0, "nubiaCamera"

    const-string/jumbo v1, "remove gallery fragment"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1210
    const/high16 v1, 0x7f060000

    .line 1211
    const v2, 0x7f060001

    .line 1210
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 1212
    iget-object v1, p0, Lcom/android/camera/Camera;->aoB:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera;->aoB:Landroid/app/Fragment;

    .line 1207
    return-void
.end method

.method private aAZ()V
    .registers 3

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/camera/Camera;->aji:Landroid/os/Handler;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 772
    iget-object v0, p0, Lcom/android/camera/Camera;->aji:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 770
    return-void
.end method

.method private aAz()V
    .registers 5

    .prologue
    .line 1198
    const-string/jumbo v0, "nubiaCamera"

    const-string/jumbo v1, "add gallery fragment"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/android/camera/Camera;->aoH:Lcom/android/gallery3d/b/b;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aLP(Lcom/android/gallery3d/b/b;)Lcom/android/gallery3d/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera;->aoB:Landroid/app/Fragment;

    .line 1200
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1201
    const/high16 v1, 0x7f060000

    .line 1202
    const v2, 0x7f060001

    .line 1201
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 1203
    iget-object v1, p0, Lcom/android/camera/Camera;->aoB:Landroid/app/Fragment;

    const-string/jumbo v2, "gallery"

    const v3, 0x7f100051

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1204
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1197
    return-void
.end method

.method private aBa()V
    .registers 4

    .prologue
    .line 283
    invoke-static {p0}, Lcom/android/common/h;->apK(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 284
    return-void

    .line 285
    :cond_7
    iget-boolean v0, p0, Lcom/android/camera/Camera;->aoG:Z

    if-eqz v0, :cond_17

    invoke-static {p0}, Lcom/android/common/h;->apM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 287
    :try_start_11
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAC()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_18

    .line 291
    :goto_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera;->aoG:Z

    .line 282
    :cond_17
    return-void

    .line 288
    :catch_18
    move-exception v0

    .line 289
    const-string/jumbo v1, "nubiaCamera"

    const-string/jumbo v2, "checkVersion failed"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method private aBb()V
    .registers 2

    .prologue
    .line 296
    invoke-static {}, Lcom/android/common/n/a;->ahN()Lcom/android/common/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/n/a;->release()V

    .line 295
    return-void
.end method

.method private aBc(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 1417
    sget-object v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kv:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    if-ne p2, v0, :cond_15

    .line 1418
    iput-boolean v1, p0, Lcom/android/camera/Camera;->ajc:Z

    .line 1423
    :cond_7
    :goto_7
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asT()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1424
    iget-object v0, p0, Lcom/android/camera/Camera;->ajg:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 1425
    return-void

    .line 1419
    :cond_15
    sget-object v0, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kw:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    if-ne p2, v0, :cond_7

    .line 1420
    iput-boolean v1, p0, Lcom/android/camera/Camera;->ajb:Z

    goto :goto_7

    .line 1428
    :cond_1c
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qA()Lcom/android/common/setting/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->asn()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/common/setting/g;->UY(Landroid/content/Context;ILcom/android/common/appService/CameraMember;)V

    .line 1430
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dB()V

    .line 1431
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ee()V

    .line 1433
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asU()V

    .line 1435
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asV()Lcom/android/common/appService/T;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 1436
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asV()Lcom/android/common/appService/T;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/T;->oH()V

    .line 1439
    :cond_51
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qJ()Lcom/android/common/appService/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/i;->iK()V

    .line 1441
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAI()Lcom/android/camera/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->asn()I

    move-result v1

    .line 1442
    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    .line 1441
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/camera/i;->aBy(ILcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/W;)V

    .line 1415
    return-void
.end method

.method private aBd(Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V
    .registers 8

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 711
    return-void

    .line 713
    :cond_9
    const-string/jumbo v0, "nubiaCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchCameraByMember, cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qD()Lcom/android/common/cameradevice/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->asI(Lcom/android/common/camerastate/FunctionState;)V

    .line 716
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qA()Lcom/android/common/setting/g;

    move-result-object v0

    .line 717
    invoke-virtual {p1}, Lcom/android/common/cameradevice/g;->Kh()I

    move-result v1

    .line 718
    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->asf()Z

    move-result v3

    .line 716
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/common/setting/g;->UX(Landroid/content/Context;ILcom/android/common/appService/CameraMember;Z)V

    .line 719
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qE(Z)V

    .line 720
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hO()V

    .line 722
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {p1}, Lcom/android/common/cameradevice/g;->Ki()[I

    move-result-object v1

    new-instance v2, Lcom/android/camera/x;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/camera/x;-><init>(Lcom/android/camera/Camera;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/common/appService/W;->qF([ILcom/android/common/appService/K;)V

    .line 709
    return-void
.end method

.method private aBe()V
    .registers 3

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/camera/Camera;->aoy:Lcom/android/common/appService/l;

    if-eqz v0, :cond_b

    .line 1110
    iget-object v0, p0, Lcom/android/camera/Camera;->aoy:Lcom/android/common/appService/l;

    iget-object v1, p0, Lcom/android/camera/Camera;->aoz:Lcom/android/camera/f;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/l;->jR(Lcom/android/common/appService/m;)V

    .line 1108
    :cond_b
    return-void
.end method

.method private aBf()V
    .registers 5

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    invoke-virtual {v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getProgress()I

    move-result v0

    .line 987
    iget-object v1, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    invoke-virtual {v1}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMax()I

    move-result v1

    .line 988
    if-ltz v0, :cond_37

    if-gt v0, v1, :cond_37

    .line 989
    div-int/lit8 v2, v1, 0x18

    rem-int v2, v0, v2

    if-nez v2, :cond_37

    .line 990
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asu()Lcom/android/common/setting/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 991
    const-string/jumbo v3, "pref_camera_exposure_key"

    div-int/lit8 v1, v1, 0x18

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 992
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 993
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 985
    :cond_37
    return-void
.end method

.method private aBg()V
    .registers 5

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    invoke-virtual {v0}, Lcom/android/common/ui/VerticalSeekBarForEv;->getProgress()I

    move-result v0

    .line 999
    iget-object v1, p0, Lcom/android/camera/Camera;->aoO:Lcom/android/common/ui/VerticalSeekBarForEv;

    invoke-virtual {v1}, Lcom/android/common/ui/VerticalSeekBarForEv;->getMax()I

    move-result v1

    .line 1000
    if-ltz v0, :cond_31

    if-gt v0, v1, :cond_31

    .line 1001
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asu()Lcom/android/common/setting/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1002
    const-string/jumbo v3, "pref_camera_exposure_key"

    div-int/lit8 v1, v1, 0x18

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1003
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1004
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 997
    :cond_31
    return-void
.end method

.method static synthetic aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aBi(Lcom/android/camera/Camera;)Lcom/android/common/camerastate/a;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->ajg:Lcom/android/common/camerastate/a;

    return-object v0
.end method

.method static synthetic aBj(Lcom/android/camera/Camera;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->aji:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic aBk(Lcom/android/camera/Camera;)Lcom/android/camera/a;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    return-object v0
.end method

.method static synthetic aBl(Lcom/android/camera/Camera;)Lcom/android/common/a/g;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/Camera;->ajd:Lcom/android/common/a/g;

    return-object v0
.end method

.method static synthetic aBm(Lcom/android/camera/Camera;)Lcom/android/camera/i;
    .registers 2

    invoke-direct {p0}, Lcom/android/camera/Camera;->aAI()Lcom/android/camera/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aBn(Lcom/android/camera/Camera;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->asn()I

    move-result v0

    return v0
.end method

.method static synthetic aBo(Lcom/android/camera/Camera;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->aAB(I)V

    return-void
.end method

.method static synthetic aBp(Lcom/android/camera/Camera;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->asG()V

    return-void
.end method

.method static synthetic aBq(Lcom/android/camera/Camera;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->aAM(I)V

    return-void
.end method

.method static synthetic aBr(Lcom/android/camera/Camera;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/Camera;->aAN()V

    return-void
.end method

.method static synthetic aBs(Lcom/android/camera/Camera;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/Camera;->aAY()V

    return-void
.end method

.method static synthetic aBt(Lcom/android/camera/Camera;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/camera/Camera;->aAZ()V

    return-void
.end method

.method static synthetic aBu(Lcom/android/camera/Camera;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/camera/Camera;->asF()V

    return-void
.end method

.method static synthetic aBv(Lcom/android/camera/Camera;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/camera/Camera;->aBc(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V

    return-void
.end method

.method static synthetic aBw(Lcom/android/camera/Camera;Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/Camera;->aBd(Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V

    return-void
.end method


# virtual methods
.method public aAD()V
    .registers 3

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/camera/Camera;->aoA:Lcn/nubia/a/a;

    if-eqz v0, :cond_a

    .line 1067
    iget-object v0, p0, Lcom/android/camera/Camera;->aoA:Lcn/nubia/a/a;

    invoke-virtual {v0, p0}, Lcn/nubia/a/a;->bKH(Landroid/content/Context;)V

    .line 1065
    :goto_9
    return-void

    .line 1069
    :cond_a
    const-string/jumbo v0, "nubiaCamera"

    const-string/jumbo v1, "closeFingerprint failed, mFingerprint is null."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public aAV()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1054
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qa()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1055
    const-string/jumbo v1, "nubia_fingerprint_calibration_state"

    .line 1054
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1056
    iget-object v1, p0, Lcom/android/camera/Camera;->aoA:Lcn/nubia/a/a;

    if-eqz v1, :cond_2a

    .line 1057
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aeu()Z

    move-result v1

    if-eqz v1, :cond_22

    if-eqz v0, :cond_2a

    .line 1058
    :cond_22
    iget-object v0, p0, Lcom/android/camera/Camera;->aoA:Lcn/nubia/a/a;

    iget-object v1, p0, Lcom/android/camera/Camera;->aji:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Lcn/nubia/a/a;->bKI(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1053
    :goto_29
    return-void

    .line 1060
    :cond_2a
    const-string/jumbo v1, "nubiaCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openFingerprint failed, mFingerprint is null, or state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method public asB(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 540
    iget-object v0, p0, Lcom/android/camera/Camera;->aoB:Landroid/app/Fragment;

    if-eqz v0, :cond_10

    .line 541
    iget-object v0, p0, Lcom/android/camera/Camera;->aoB:Landroid/app/Fragment;

    check-cast v0, Lcom/android/gallery3d/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/b/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 542
    return v1

    .line 546
    :cond_10
    sparse-switch p1, :sswitch_data_2c

    .line 571
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/android/common/ActivityBase;->asB(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 548
    :sswitch_18
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asA()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 549
    return v1

    .line 563
    :sswitch_1f
    iget-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    if-eqz v0, :cond_13

    .line 564
    iget-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/l;->axY()Z

    move-result v0

    .line 563
    if-eqz v0, :cond_13

    .line 565
    return v1

    .line 546
    :sswitch_data_2c
    .sparse-switch
        0x18 -> :sswitch_1f
        0x19 -> :sswitch_1f
        0x1b -> :sswitch_1f
        0x42 -> :sswitch_1f
        0x4f -> :sswitch_1f
        0x50 -> :sswitch_18
        0x52 -> :sswitch_1f
        0x55 -> :sswitch_1f
        0x7e -> :sswitch_1f
        0x7f -> :sswitch_1f
        0x2710 -> :sswitch_1f
        0x2714 -> :sswitch_1f
    .end sparse-switch
.end method

.method protected asC(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 576
    sparse-switch p1, :sswitch_data_1e

    .line 602
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/common/ActivityBase;->asC(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 578
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asA()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 579
    return v1

    .line 593
    :sswitch_10
    iget-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    if-eqz v0, :cond_4

    .line 594
    iget-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/l;->axY()Z

    move-result v0

    .line 593
    if-eqz v0, :cond_4

    .line 595
    return v1

    .line 576
    nop

    :sswitch_data_1e
    .sparse-switch
        0x18 -> :sswitch_10
        0x19 -> :sswitch_10
        0x1b -> :sswitch_10
        0x42 -> :sswitch_10
        0x4f -> :sswitch_10
        0x50 -> :sswitch_9
        0x52 -> :sswitch_10
        0x55 -> :sswitch_10
        0x7e -> :sswitch_10
        0x7f -> :sswitch_10
        0x2710 -> :sswitch_10
        0x2714 -> :sswitch_10
    .end sparse-switch
.end method

.method protected asD(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 607
    sparse-switch p1, :sswitch_data_16

    .line 627
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/common/ActivityBase;->asD(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 619
    :sswitch_8
    iget-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    if-eqz v0, :cond_3

    .line 620
    iget-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/l;->axY()Z

    move-result v0

    .line 619
    if-eqz v0, :cond_3

    .line 621
    const/4 v0, 0x1

    return v0

    .line 607
    :sswitch_data_16
    .sparse-switch
        0x18 -> :sswitch_8
        0x19 -> :sswitch_8
        0x1b -> :sswitch_8
        0x42 -> :sswitch_8
        0x4f -> :sswitch_8
        0x52 -> :sswitch_8
        0x55 -> :sswitch_8
        0x7e -> :sswitch_8
        0x7f -> :sswitch_8
        0x2710 -> :sswitch_8
        0x2714 -> :sswitch_8
    .end sparse-switch
.end method

.method protected asE()V
    .registers 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jB:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_d

    .line 633
    invoke-super {p0}, Lcom/android/common/ActivityBase;->asE()V

    .line 631
    :cond_d
    return-void
.end method

.method public asO()V
    .registers 2

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1122
    return-void

    .line 1124
    :cond_9
    invoke-super {p0}, Lcom/android/common/ActivityBase;->asO()V

    .line 1125
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAO()V

    .line 1120
    return-void
.end method

.method public asP(Z)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x8

    .line 1295
    invoke-super {p0, p1}, Lcom/android/common/ActivityBase;->asP(Z)V

    .line 1296
    if-eqz p1, :cond_32

    .line 1297
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    iget v0, v0, Lcom/android/camera/a;->aoo:I

    iput v0, p0, Lcom/android/camera/Camera;->aoN:I

    .line 1298
    iget v0, p0, Lcom/android/camera/Camera;->aoN:I

    if-eq v0, v3, :cond_15

    .line 1299
    invoke-virtual {p0, v3}, Lcom/android/camera/Camera;->ath(I)V

    .line 1301
    :cond_15
    const-string/jumbo v0, "enableCloseCameraBlackBoard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSwitcherVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->aoN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :goto_31
    return-void

    .line 1303
    :cond_32
    iget v0, p0, Lcom/android/camera/Camera;->aoN:I

    if-nez v0, :cond_39

    .line 1304
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->ath(I)V

    .line 1306
    :cond_39
    const-string/jumbo v0, "enableCloseCameraBlackBoard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSwitcherVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/Camera;->aoN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    iput v3, p0, Lcom/android/camera/Camera;->aoN:I

    goto :goto_31
.end method

.method protected asQ()V
    .registers 2

    .prologue
    .line 1348
    invoke-super {p0}, Lcom/android/common/ActivityBase;->asQ()V

    .line 1349
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->azM()V

    .line 1347
    return-void
.end method

.method protected asR()V
    .registers 3

    .prologue
    .line 1354
    invoke-super {p0}, Lcom/android/common/ActivityBase;->asR()V

    .line 1355
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    .line 1356
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->aAK(Landroid/os/ConditionVariable;)V

    .line 1357
    iget-object v1, p0, Lcom/android/camera/Camera;->aiZ:Lcom/android/common/m/c;

    invoke-virtual {v1, v0}, Lcom/android/common/m/c;->ahm(Landroid/os/ConditionVariable;)V

    .line 1353
    return-void
.end method

.method protected asS()V
    .registers 5

    .prologue
    .line 1404
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    .line 1405
    invoke-interface {v0}, Lcom/android/common/custom/x;->adS()Z

    move-result v1

    if-nez v1, :cond_28

    .line 1406
    invoke-interface {v0}, Lcom/android/common/custom/x;->adQ()Z

    move-result v1

    .line 1405
    if-nez v1, :cond_28

    .line 1407
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "dualcameracalibration"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1408
    invoke-interface {v0}, Lcom/android/common/custom/x;->adR()Z

    move-result v0

    .line 1405
    if-eqz v0, :cond_32

    .line 1409
    :cond_28
    new-instance v0, Lcn/nubia/b/f;

    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcn/nubia/b/f;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->ajl:Lcom/android/common/appService/b;

    .line 1403
    :goto_31
    return-void

    .line 1411
    :cond_32
    invoke-super {p0}, Lcom/android/common/ActivityBase;->asS()V

    goto :goto_31
.end method

.method public asm()V
    .registers 2

    .prologue
    .line 1180
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asf()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1181
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAL()V

    .line 1179
    :goto_9
    return-void

    .line 1183
    :cond_a
    invoke-super {p0}, Lcom/android/common/ActivityBase;->asm()V

    goto :goto_9
.end method

.method protected asr()V
    .registers 3

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/common/ActivityBase;->asr()V

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/Camera;->ass()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_11

    .line 203
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/a;->azS(Z)V

    .line 200
    :cond_11
    return-void
.end method

.method public atH(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asf()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "gallery"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_1f

    instance-of v2, v0, Lcom/android/common/o/l;

    if-eqz v2, :cond_1f

    .line 156
    check-cast v0, Lcom/android/common/o/l;

    invoke-virtual {v0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 160
    :cond_1f
    iget-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v0, p1}, Lcom/android/camera/cameraFamily/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 161
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_2d
    invoke-virtual {p0}, Lcom/android/camera/Camera;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v2, :cond_6a

    .line 167
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mO()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->asp(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 170
    :goto_47
    if-nez v0, :cond_4e

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->asq(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 175
    :cond_4e
    :goto_4e
    if-nez v0, :cond_67

    iget-object v1, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v1}, Lcom/android/camera/cameraFamily/l;->axV()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 176
    iget-object v1, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    invoke-virtual {v1}, Lcom/android/camera/a;->azA()I

    move-result v1

    if-nez v1, :cond_67

    .line 177
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->aAE(Landroid/view/MotionEvent;)V

    .line 181
    :cond_67
    return v0

    :cond_68
    move v0, v1

    goto :goto_47

    :cond_6a
    move v0, v1

    goto :goto_4e
.end method

.method public ate(IZJJ)V
    .registers 16

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    const/4 v2, 0x1

    move v1, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/a;->azT(IZZJJ)V

    .line 1284
    return-void
.end method

.method public atf()V
    .registers 2

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->azU()V

    .line 1338
    return-void
.end method

.method public atg()V
    .registers 2

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->azV()V

    .line 1342
    return-void
.end method

.method public ath(I)V
    .registers 10

    .prologue
    const-wide/16 v4, -0x1

    .line 1281
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v1, p1

    move-wide v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/a;->azT(IZZJJ)V

    .line 1280
    return-void
.end method

.method public ati(IZ)V
    .registers 11

    .prologue
    const-wide/16 v4, -0x1

    .line 1289
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move-wide v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/a;->azT(IZZJJ)V

    .line 1288
    return-void
.end method

.method public att(J)V
    .registers 4

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    if-eqz v0, :cond_9

    .line 1448
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/a;->azw(J)V

    .line 1446
    :cond_9
    return-void
.end method

.method protected atu()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    if-eqz v0, :cond_9

    .line 187
    iget-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/l;->ayb()V

    .line 185
    :cond_9
    return-void
.end method

.method protected auH(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAQ()V

    .line 210
    invoke-direct {p0}, Lcom/android/camera/Camera;->aBa()V

    .line 211
    new-instance v0, Lcom/android/camera/j;

    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/j;-><init>(Landroid/app/Activity;Lcom/android/common/appService/W;)V

    invoke-virtual {v0}, Lcom/android/camera/j;->aBz()V

    .line 212
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAW()V

    .line 208
    return-void
.end method

.method protected auQ()V
    .registers 4

    .prologue
    .line 405
    const-string/jumbo v0, "nubiaCamera"

    const-string/jumbo v1, "onResumeAfterSuper"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acu()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 407
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 408
    const-string/jumbo v1, "cameraswitch"

    const/4 v2, 0x0

    .line 407
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 409
    if-nez v0, :cond_28

    .line 410
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAO()V

    .line 414
    :cond_28
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAX()V

    .line 415
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAP()V

    .line 416
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->azO()V

    .line 404
    return-void
.end method

.method protected auR()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-boolean v0, p0, Lcom/android/camera/Camera;->ajf:Z

    if-eqz v0, :cond_28

    .line 422
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asf()Z

    move-result v0

    if-nez v0, :cond_29

    .line 423
    invoke-virtual {p0, v1}, Lcom/android/camera/Camera;->asw(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agz(Z)V

    .line 432
    :goto_17
    iget-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/l;->ayd()V

    .line 433
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->azW()V

    .line 434
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAI()Lcom/android/camera/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/i;->mP()V

    .line 420
    :cond_28
    return-void

    .line 426
    :cond_29
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qA()Lcom/android/common/setting/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/g;->UV()V

    .line 427
    invoke-virtual {p0}, Lcom/android/camera/Camera;->auh()V

    .line 428
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qA()Lcom/android/common/setting/g;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    .line 430
    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->asf()Z

    move-result v3

    .line 428
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/common/setting/g;->UW(Landroid/content/Context;ILcom/android/common/appService/CameraMember;Z)V

    goto :goto_17
.end method

.method protected aub()Lcom/android/common/appService/H;
    .registers 3

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/camera/Camera;->ajj:Lcom/android/common/appService/H;

    if-nez v0, :cond_f

    .line 1234
    new-instance v0, Lcom/android/camera/i;

    invoke-virtual {p0}, Lcom/android/camera/Camera;->auf()Lcom/android/common/appService/y;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/i;-><init>(Landroid/app/Activity;Lcom/android/common/appService/y;)V

    iput-object v0, p0, Lcom/android/camera/Camera;->ajj:Lcom/android/common/appService/H;

    .line 1236
    :cond_f
    iget-object v0, p0, Lcom/android/camera/Camera;->ajj:Lcom/android/common/appService/H;

    return-object v0
.end method

.method protected auf()Lcom/android/common/appService/y;
    .registers 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/camera/Camera;->aiY:Lcom/android/common/appService/y;

    if-nez v0, :cond_b

    .line 1256
    new-instance v0, Lcom/android/camera/d;

    invoke-direct {v0}, Lcom/android/camera/d;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->aiY:Lcom/android/common/appService/y;

    .line 1258
    :cond_b
    iget-object v0, p0, Lcom/android/camera/Camera;->aiY:Lcom/android/common/appService/y;

    return-object v0
.end method

.method protected aug()Lcom/android/common/setting/t;
    .registers 2

    .prologue
    .line 1241
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v0, :cond_12

    .line 1242
    iget-object v0, p0, Lcom/android/camera/Camera;->ajk:Lcom/android/common/setting/t;

    if-nez v0, :cond_f

    .line 1243
    new-instance v0, Lcom/android/camera/b/b;

    invoke-direct {v0}, Lcom/android/camera/b/b;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->ajk:Lcom/android/common/setting/t;

    .line 1250
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/camera/Camera;->ajk:Lcom/android/common/setting/t;

    return-object v0

    .line 1246
    :cond_12
    iget-object v0, p0, Lcom/android/camera/Camera;->ajk:Lcom/android/common/setting/t;

    if-nez v0, :cond_f

    .line 1247
    new-instance v0, Lcom/android/common/setting/b;

    invoke-direct {v0}, Lcom/android/common/setting/b;-><init>()V

    iput-object v0, p0, Lcom/android/camera/Camera;->ajk:Lcom/android/common/setting/t;

    goto :goto_f
.end method

.method protected auh()V
    .registers 3

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAG()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    .line 365
    invoke-direct {p0, v0}, Lcom/android/camera/Camera;->aAH(Lcom/android/common/appService/CameraMember;)Lcom/android/common/cameradevice/g;

    move-result-object v1

    .line 366
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/Camera;->asv(Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V

    .line 363
    return-void
.end method

.method protected auu()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1116
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asf()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/camera/Camera;->aoB:Landroid/app/Fragment;

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public avD()V
    .registers 4

    .prologue
    .line 1157
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1158
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 1159
    if-nez v0, :cond_18

    .line 1160
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1161
    const-string/jumbo v1, "capture_service_camera_on"

    .line 1162
    const/4 v2, 0x0

    .line 1160
    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aqb(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 1155
    :cond_18
    :goto_18
    return-void

    .line 1164
    :catch_19
    move-exception v0

    .line 1165
    const-string/jumbo v1, "nubiaCamera"

    const-string/jumbo v2, "stop service failed!"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method

.method public avF(I)V
    .registers 6

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 642
    return-void

    .line 644
    :cond_9
    const-string/jumbo v0, "nubiaCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchCamera, cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qD()Lcom/android/common/cameradevice/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qE(Z)V

    .line 647
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qA()Lcom/android/common/setting/g;

    move-result-object v0

    .line 648
    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qD()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/g;->Kh()I

    move-result v1

    .line 649
    iget-object v2, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->asf()Z

    move-result v3

    .line 647
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/common/setting/g;->UX(Landroid/content/Context;ILcom/android/common/appService/CameraMember;Z)V

    .line 650
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qD()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/g;->Ki()[I

    move-result-object v1

    new-instance v2, Lcom/android/camera/t;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/t;-><init>(Lcom/android/camera/Camera;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/common/appService/W;->qF([ILcom/android/common/appService/K;)V

    .line 640
    return-void
.end method

.method public avl(Z)V
    .registers 3

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->qI(Z)V

    .line 790
    return-void
.end method

.method public avy()V
    .registers 4

    .prologue
    .line 1171
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1172
    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 1169
    :goto_a
    return-void

    .line 1173
    :catch_b
    move-exception v0

    .line 1174
    const-string/jumbo v1, "nubiaCamera"

    const-string/jumbo v2, "start service failed!"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .prologue
    .line 485
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 486
    packed-switch p1, :pswitch_data_30

    .line 505
    :goto_6
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAI()Lcom/android/camera/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/i;->onActivityResult(IILandroid/content/Intent;)V

    .line 484
    return-void

    .line 488
    :pswitch_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 489
    if-eqz p3, :cond_1e

    .line 490
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 491
    if-eqz v1, :cond_1e

    .line 492
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 495
    :cond_1e
    invoke-virtual {p0, p2, v0}, Lcom/android/camera/Camera;->asy(ILandroid/content/Intent;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/camera/Camera;->finish()V

    .line 498
    const-string/jumbo v0, "crop-temp"

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_6

    .line 486
    nop

    :pswitch_data_30
    .packed-switch 0x3e8
        :pswitch_e
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 521
    const-string/jumbo v0, "nubiaCamera"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/camera/Camera;->ass()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_1a

    .line 523
    iget-object v0, p0, Lcom/android/camera/Camera;->aow:Lcom/android/camera/cameraFamily/l;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/l;->onBackPressed()Z

    move-result v0

    .line 522
    if-eqz v0, :cond_1a

    .line 524
    return-void

    .line 527
    :cond_1a
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asf()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/android/camera/Camera;->aAF()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 528
    return-void

    .line 531
    :cond_27
    invoke-super {p0}, Lcom/android/common/ActivityBase;->onBackPressed()V

    .line 520
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .prologue
    .line 479
    invoke-super {p0, p1}, Lcom/android/common/ActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 480
    const-string/jumbo v0, "nubiaCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/android/common/ActivityBase;->onDestroy()V

    .line 223
    invoke-direct {p0}, Lcom/android/camera/Camera;->aBb()V

    .line 221
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 511
    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/i;->ed()Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/a;->cj()Z

    move-result v1

    if-nez v1, :cond_25

    .line 512
    iget-object v1, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/o;->fO()Z

    move-result v1

    .line 511
    if-eqz v1, :cond_26

    .line 513
    :cond_25
    return v0

    .line 516
    :cond_26
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asz()Z

    move-result v1

    if-eqz v1, :cond_2d

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x1

    goto :goto_2c
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 452
    const-string/jumbo v0, "nubiaCamera"

    const-string/jumbo v1, "onPause begin"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/android/camera/Camera;->ajg:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_18

    .line 456
    iget-object v0, p0, Lcom/android/camera/Camera;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qB()V

    .line 459
    :cond_18
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->release()V

    .line 461
    invoke-super {p0}, Lcom/android/common/ActivityBase;->onPause()V

    .line 463
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asf()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 464
    invoke-direct {p0}, Lcom/android/camera/Camera;->aAF()Z

    .line 466
    :cond_29
    invoke-direct {p0}, Lcom/android/camera/Camera;->aBe()V

    .line 467
    invoke-virtual {p0}, Lcom/android/camera/Camera;->aAD()V

    .line 468
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->azK()V

    .line 451
    return-void
.end method

.method public onSearchRequested()Z
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/camera/Camera;->aoF:Lcom/android/camera/a;

    invoke-virtual {v0}, Lcom/android/camera/a;->azA()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/camera/Camera;->aAS()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 822
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asK()Z

    move-result v0

    if-nez v0, :cond_20

    .line 823
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asL()Z

    move-result v0

    .line 822
    if-nez v0, :cond_20

    .line 824
    invoke-virtual {p0}, Lcom/android/camera/Camera;->asM()Z

    move-result v0

    .line 822
    if-eqz v0, :cond_25

    .line 827
    :cond_20
    :goto_20
    invoke-super {p0, p1}, Lcom/android/common/ActivityBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 825
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/camera/Camera;->aAE(Landroid/view/MotionEvent;)V

    goto :goto_20
.end method
