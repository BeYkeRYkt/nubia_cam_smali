.class public Lcom/android/electronicfno/i;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/e;
.implements Lcom/android/electronicfno/b;
.implements Lcom/android/common/p;
.implements Lcom/android/common/u;


# instance fields
.field private aVA:F

.field private aVB:J

.field private aVC:Lcom/android/electronicfno/j;

.field private aVD:Lcom/android/common/n;

.field private aVE:Lcom/android/common/t;

.field private aVF:Z

.field public aVG:Lcom/android/electronicfno/k;

.field private aVH:Lcom/android/common/ui/NubiaProgressWheel;

.field public aVI:I

.field public aVJ:I

.field private aVK:Landroid/widget/ImageView;

.field private aVL:I

.field public aVM:Lcom/android/electronicfno/l;

.field private aVN:Landroid/widget/RelativeLayout;

.field private aVO:Lcom/android/common/ui/ZtemtShutterButton;

.field private aVP:Lcom/android/common/ui/RotateLayout;

.field private aVQ:F

.field private aVR:Lcom/android/common/f/b;

.field private aVS:Lcom/android/common/appService/z;

.field private aVm:Z

.field private aVn:Ljava/lang/String;

.field private aVo:J

.field private aVp:Lcom/android/common/h/c;

.field private aVq:Landroid/widget/RelativeLayout;

.field private aVr:Lcom/android/common/ui/RotateImageView;

.field private aVs:J

.field private aVt:J

.field private aVu:Landroid/widget/TextView;

.field private aVv:I

.field private aVw:Ljava/lang/String;

.field private aVx:I

.field private aVy:Lcom/android/electronicfno/a;

.field private aVz:Lcom/android/common/ui/MultiFunctionImageView;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 126
    new-instance v0, Lcom/android/electronicfno/k;

    invoke-direct {v0, p0}, Lcom/android/electronicfno/k;-><init>(Lcom/android/electronicfno/i;)V

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVG:Lcom/android/electronicfno/k;

    .line 128
    iput v4, p0, Lcom/android/electronicfno/i;->aVI:I

    .line 129
    iput v4, p0, Lcom/android/electronicfno/i;->aVJ:I

    .line 130
    iput v1, p0, Lcom/android/electronicfno/i;->aVL:I

    .line 131
    iput v1, p0, Lcom/android/electronicfno/i;->aVv:I

    .line 132
    iput v1, p0, Lcom/android/electronicfno/i;->aVx:I

    .line 133
    iput-boolean v1, p0, Lcom/android/electronicfno/i;->aVF:Z

    .line 135
    iput v3, p0, Lcom/android/electronicfno/i;->aVA:F

    .line 136
    iput v3, p0, Lcom/android/electronicfno/i;->aVQ:F

    .line 137
    iput-boolean v1, p0, Lcom/android/electronicfno/i;->aVm:Z

    .line 138
    iput-object v2, p0, Lcom/android/electronicfno/i;->aVD:Lcom/android/common/n;

    .line 140
    new-instance v0, Lcom/android/electronicfno/l;

    invoke-direct {v0, p0}, Lcom/android/electronicfno/l;-><init>(Lcom/android/electronicfno/i;)V

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVM:Lcom/android/electronicfno/l;

    .line 145
    iput-wide v6, p0, Lcom/android/electronicfno/i;->aVo:J

    .line 146
    iput-object v2, p0, Lcom/android/electronicfno/i;->aVR:Lcom/android/common/f/b;

    .line 151
    iput-object v2, p0, Lcom/android/electronicfno/i;->aVC:Lcom/android/electronicfno/j;

    .line 154
    const-string/jumbo v0, "11"

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVn:Ljava/lang/String;

    .line 155
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVw:Ljava/lang/String;

    .line 157
    iput-object v2, p0, Lcom/android/electronicfno/i;->aVE:Lcom/android/common/t;

    .line 320
    iput-wide v6, p0, Lcom/android/electronicfno/i;->aVB:J

    .line 575
    iput v1, p0, Lcom/android/electronicfno/i;->mState:I

    .line 174
    return-void
.end method

.method public constructor <init>(I)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 126
    new-instance v0, Lcom/android/electronicfno/k;

    invoke-direct {v0, p0}, Lcom/android/electronicfno/k;-><init>(Lcom/android/electronicfno/i;)V

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVG:Lcom/android/electronicfno/k;

    .line 128
    iput v4, p0, Lcom/android/electronicfno/i;->aVI:I

    .line 129
    iput v4, p0, Lcom/android/electronicfno/i;->aVJ:I

    .line 130
    iput v1, p0, Lcom/android/electronicfno/i;->aVL:I

    .line 131
    iput v1, p0, Lcom/android/electronicfno/i;->aVv:I

    .line 132
    iput v1, p0, Lcom/android/electronicfno/i;->aVx:I

    .line 133
    iput-boolean v1, p0, Lcom/android/electronicfno/i;->aVF:Z

    .line 135
    iput v3, p0, Lcom/android/electronicfno/i;->aVA:F

    .line 136
    iput v3, p0, Lcom/android/electronicfno/i;->aVQ:F

    .line 137
    iput-boolean v1, p0, Lcom/android/electronicfno/i;->aVm:Z

    .line 138
    iput-object v2, p0, Lcom/android/electronicfno/i;->aVD:Lcom/android/common/n;

    .line 140
    new-instance v0, Lcom/android/electronicfno/l;

    invoke-direct {v0, p0}, Lcom/android/electronicfno/l;-><init>(Lcom/android/electronicfno/i;)V

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVM:Lcom/android/electronicfno/l;

    .line 145
    iput-wide v6, p0, Lcom/android/electronicfno/i;->aVo:J

    .line 146
    iput-object v2, p0, Lcom/android/electronicfno/i;->aVR:Lcom/android/common/f/b;

    .line 151
    iput-object v2, p0, Lcom/android/electronicfno/i;->aVC:Lcom/android/electronicfno/j;

    .line 154
    const-string/jumbo v0, "11"

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVn:Ljava/lang/String;

    .line 155
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVw:Ljava/lang/String;

    .line 157
    iput-object v2, p0, Lcom/android/electronicfno/i;->aVE:Lcom/android/common/t;

    .line 320
    iput-wide v6, p0, Lcom/android/electronicfno/i;->aVB:J

    .line 575
    iput v1, p0, Lcom/android/electronicfno/i;->mState:I

    .line 171
    return-void
.end method

.method private bnA()V
    .registers 11

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 599
    iget-object v1, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/j;->KX()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 603
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->acF()I

    move-result v1

    .line 604
    packed-switch v1, :pswitch_data_7c

    move v6, v0

    .line 619
    :goto_20
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVy:Lcom/android/electronicfno/a;

    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    .line 620
    iget v3, p0, Lcom/android/electronicfno/i;->aVI:I

    iget v4, p0, Lcom/android/electronicfno/i;->aVv:I

    .line 621
    iget v7, p0, Lcom/android/electronicfno/i;->aVL:I

    iget-object v8, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v8}, Lcom/android/common/appService/W;->pv()I

    move-result v8

    invoke-static {v8}, Lcom/android/common/h;->apu(I)I

    move-result v8

    .line 619
    invoke-virtual/range {v0 .. v8}, Lcom/android/electronicfno/a;->bmv(IIIIIZII)V

    .line 622
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v5}, Lcom/android/common/appService/W;->qn(Z)V

    .line 623
    invoke-virtual {p0}, Lcom/android/electronicfno/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "eletronic_1"

    const-string/jumbo v2, "ElectronicFnoFragment"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void

    .line 606
    :pswitch_4c
    invoke-virtual {p0}, Lcom/android/electronicfno/i;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_anti_shake"

    const-string/jumbo v3, "on"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v6, v0

    .line 607
    goto :goto_20

    .line 609
    :pswitch_63
    iget-object v1, p0, Lcom/android/electronicfno/i;->aVn:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 610
    const/high16 v3, 0x41800000    # 16.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_78

    iget-wide v6, p0, Lcom/android/electronicfno/i;->aVB:J

    const-wide/16 v8, 0x12c

    cmp-long v1, v6, v8

    if-gez v1, :cond_78

    move v0, v5

    :cond_78
    move v6, v0

    .line 611
    goto :goto_20

    :pswitch_7a
    move v6, v0

    .line 614
    goto :goto_20

    .line 604
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_63
        :pswitch_7a
        :pswitch_4c
    .end packed-switch
.end method

.method private bnB()V
    .registers 4

    .prologue
    .line 524
    :try_start_0
    invoke-virtual {p0}, Lcom/android/electronicfno/i;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/android/electronicfno/i;->aVM:Lcom/android/electronicfno/l;

    iget-object v2, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pv()I

    move-result v2

    .line 524
    invoke-virtual {v0, v1, v2}, Lcom/android/common/appService/k;->jO(Landroid/hardware/Camera$PreviewCallback;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_14

    .line 522
    :goto_13
    return-void

    .line 526
    :catch_14
    move-exception v0

    goto :goto_13
.end method

.method private bnC()V
    .registers 3

    .prologue
    .line 532
    :try_start_0
    invoke-virtual {p0}, Lcom/android/electronicfno/i;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/android/electronicfno/i;->aVM:Lcom/android/electronicfno/l;

    .line 532
    invoke-virtual {v0, v1}, Lcom/android/common/appService/k;->jJ(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_d} :catch_e

    .line 530
    :goto_d
    return-void

    .line 534
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private bnD()V
    .registers 3

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVD:Lcom/android/common/n;

    if-eqz v0, :cond_17

    .line 927
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_17

    .line 928
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVD:Lcom/android/common/n;

    invoke-virtual {v0}, Lcom/android/common/n;->stop()V

    .line 925
    :cond_17
    return-void
.end method

.method private bnE()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 666
    const-string/jumbo v0, "0702"

    const-string/jumbo v1, "updateBCaptureTime"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVu:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/electronicfno/i;->aVo:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v6}, Lcom/android/common/h;->apU(JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVu:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVG:Lcom/android/electronicfno/k;

    const-wide/16 v2, 0x3e8

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/electronicfno/k;->sendEmptyMessageDelayed(IJ)Z

    .line 665
    return-void
.end method

.method static synthetic bnF(Lcom/android/electronicfno/i;)Lcom/android/electronicfno/a;
    .registers 2

    iget-object v0, p0, Lcom/android/electronicfno/i;->aVy:Lcom/android/electronicfno/a;

    return-object v0
.end method

.method static synthetic bnG(Lcom/android/electronicfno/i;)Lcom/android/common/ui/MultiFunctionImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    return-object v0
.end method

.method static synthetic bnH(Lcom/android/electronicfno/i;)Lcom/android/common/ui/ZtemtShutterButton;
    .registers 2

    iget-object v0, p0, Lcom/android/electronicfno/i;->aVO:Lcom/android/common/ui/ZtemtShutterButton;

    return-object v0
.end method

.method static synthetic bnI(Lcom/android/electronicfno/i;)Lcom/android/common/appService/z;
    .registers 2

    iget-object v0, p0, Lcom/android/electronicfno/i;->aVS:Lcom/android/common/appService/z;

    return-object v0
.end method

.method static synthetic bnJ(Lcom/android/electronicfno/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/electronicfno/i;->bns()V

    return-void
.end method

.method static synthetic bnK(Lcom/android/electronicfno/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnt()V

    return-void
.end method

.method static synthetic bnL(Lcom/android/electronicfno/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnC()V

    return-void
.end method

.method static synthetic bnM(Lcom/android/electronicfno/i;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnE()V

    return-void
.end method

.method public static bna()Lcom/android/electronicfno/i;
    .registers 2

    .prologue
    .line 426
    new-instance v0, Lcom/android/electronicfno/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/electronicfno/i;-><init>(I)V

    .line 427
    return-object v0
.end method

.method private bnh(Landroid/graphics/Bitmap;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 732
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 733
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_50

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 734
    :goto_16
    int-to-float v0, v0

    const/high16 v2, 0x44340000    # 720.0f

    div-float v0, v2, v0

    .line 735
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-virtual {v5, v0, v0, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 736
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 737
    iget-object v1, p0, Lcom/android/electronicfno/i;->aVR:Lcom/android/common/f/b;

    if-eqz v1, :cond_4f

    .line 738
    invoke-virtual {p0}, Lcom/android/electronicfno/i;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v1, v2, :cond_4f

    .line 739
    iget-object v1, p0, Lcom/android/electronicfno/i;->aVR:Lcom/android/common/f/b;

    const/4 v2, -0x1

    invoke-static {v2}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/common/f/b;->aaq(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 731
    :cond_4f
    return-void

    .line 733
    :cond_50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_16
.end method

.method private bni(Ljava/lang/String;Ljava/lang/String;JIILandroid/location/Location;)Landroid/content/ContentValues;
    .registers 13

    .prologue
    .line 476
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 477
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string/jumbo v1, "_display_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string/jumbo v1, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 480
    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string/jumbo v1, "_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string/jumbo v1, "width"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 483
    const-string/jumbo v1, "height"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 484
    if-eqz p7, :cond_91

    .line 485
    const-string/jumbo v1, "latitude"

    invoke-virtual {p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 486
    const-string/jumbo v1, "longitude"

    invoke-virtual {p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 488
    :cond_91
    return-object v0
.end method

.method private bnj(Landroid/location/Location;II)Landroid/util/SparseArray;
    .registers 11

    .prologue
    const v6, 0x3c23d70a    # 0.01f

    .line 454
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVn:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 457
    const-string/jumbo v1, "ElectronicFnoFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCaptureEndTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/electronicfno/i;->aVs:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mCaptureStartTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/electronicfno/i;->aVt:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-wide v2, p0, Lcom/android/electronicfno/i;->aVs:J

    iget-wide v4, p0, Lcom/android/electronicfno/i;->aVt:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    .line 459
    iget-object v2, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->Ln()F

    move-result v2

    .line 460
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 461
    sget v4, Lcom/android/common/exif/o;->PE:I

    new-instance v5, Lcom/android/common/exif/m;

    invoke-direct {v5, v0, v6}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    sget v0, Lcom/android/common/exif/o;->PK:I

    new-instance v4, Lcom/android/common/exif/m;

    invoke-direct {v4, v1, v6}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget v0, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget v0, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget v0, Lcom/android/common/exif/o;->PF:I

    new-instance v1, Lcom/android/common/exif/m;

    invoke-direct {v1, v2, v6}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget v0, Lcom/android/common/exif/o;->PG:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    sget v0, Lcom/android/common/exif/o;->PH:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    if-eqz p1, :cond_a9

    .line 469
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5, v3}, Lcom/android/common/h;->aoW(DDLandroid/util/SparseArray;)V

    .line 471
    :cond_a9
    return-object v3
.end method

.method private bnk()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 517
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVO:Lcom/android/common/ui/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setEnabled(Z)V

    .line 518
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVG:Lcom/android/electronicfno/k;

    invoke-virtual {v0, v4}, Lcom/android/electronicfno/k;->removeMessages(I)V

    .line 519
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVG:Lcom/android/electronicfno/k;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/electronicfno/k;->sendEmptyMessageDelayed(IJ)Z

    .line 516
    return-void
.end method

.method private bnl(F)F
    .registers 4

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 422
    mul-float v0, p1, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0
.end method

.method private bnm(F[F)F
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 355
    aget v0, p2, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_a

    .line 356
    aget v0, p2, v1

    return v0

    .line 358
    :cond_a
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget v0, p2, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_19

    .line 359
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget v0, p2, v0

    return v0

    :cond_19
    move v0, v1

    .line 362
    :goto_1a
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3f

    .line 363
    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2a

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 366
    :cond_2a
    aget v1, p2, v0

    sub-float v1, p1, v1

    .line 367
    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    sub-float/2addr v2, p1

    .line 368
    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3c

    .line 369
    add-int/lit8 v0, v0, 0x1

    aget v0, p2, v0

    return v0

    .line 371
    :cond_3c
    aget v0, p2, v0

    return v0

    .line 374
    :cond_3f
    aget v0, p2, v1

    return v0
.end method

.method private bnn(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 299
    const v0, 0x7f100047

    .line 298
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVq:Landroid/widget/RelativeLayout;

    .line 301
    const v0, 0x7f10018d

    .line 300
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVr:Lcom/android/common/ui/RotateImageView;

    .line 302
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVq:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/electronicfno/p;

    invoke-direct {v1, p0}, Lcom/android/electronicfno/p;-><init>(Lcom/android/electronicfno/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    return-void
.end method

.method private bno(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 280
    new-instance v0, Lcom/android/common/t;

    invoke-virtual {p0}, Lcom/android/electronicfno/i;->aln()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/common/t;-><init>(Landroid/view/View;Landroid/content/SharedPreferences;Lcom/android/common/u;)V

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVE:Lcom/android/common/t;

    .line 281
    const v0, 0x7f1000c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVK:Landroid/widget/ImageView;

    .line 282
    invoke-direct {p0, p1}, Lcom/android/electronicfno/i;->bnn(Landroid/view/View;)V

    .line 283
    const v0, 0x7f10018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    .line 284
    const v0, 0x7f100196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVP:Lcom/android/common/ui/RotateLayout;

    .line 285
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acF()I

    move-result v0

    const/4 v1, 0x2

    if-eq v1, v0, :cond_44

    .line 286
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVP:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 288
    :cond_44
    const v0, 0x7f100044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/NubiaProgressWheel;

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVH:Lcom/android/common/ui/NubiaProgressWheel;

    .line 289
    const v0, 0x7f10018e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVO:Lcom/android/common/ui/ZtemtShutterButton;

    .line 290
    const v0, 0x7f1000c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVu:Landroid/widget/TextView;

    .line 292
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVO:Lcom/android/common/ui/ZtemtShutterButton;

    iget-object v1, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->rU()Lcom/android/common/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/h/l;->acb()Lcom/android/common/h/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->xa(Lcom/android/common/ui/u;)V

    .line 294
    const v0, 0x7f10018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVN:Landroid/widget/RelativeLayout;

    .line 279
    return-void
.end method

.method private bnp(Z)V
    .registers 4

    .prologue
    .line 867
    if-nez p1, :cond_1b

    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eR()Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    move-result-object v0

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eS:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    if-ne v0, v1, :cond_1b

    .line 868
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/i;->ft(Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;)V

    .line 870
    :cond_1b
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/g;->dy(Z)V

    .line 871
    if-eqz p1, :cond_32

    const/16 v0, 0x8

    .line 872
    :goto_28
    iget-object v1, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 866
    return-void

    .line 871
    :cond_32
    const/4 v0, 0x0

    goto :goto_28
.end method

.method private bnq(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 379
    iput-object p1, p0, Lcom/android/electronicfno/i;->aVn:Ljava/lang/String;

    .line 380
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 381
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_62

    .line 382
    iput-boolean v4, p0, Lcom/android/electronicfno/i;->aVF:Z

    .line 383
    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/electronicfno/i;->aVI:I

    .line 384
    const-string/jumbo v0, "ElectronicFnoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==del== mNumWanted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/electronicfno/i;->aVI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget v0, p0, Lcom/android/electronicfno/i;->aVI:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_59

    .line 387
    iget v0, p0, Lcom/android/electronicfno/i;->aVI:I

    iget v1, p0, Lcom/android/electronicfno/i;->aVv:I

    add-int/lit8 v1, v1, 0xa

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/electronicfno/i;->aVJ:I

    .line 388
    iput v4, p0, Lcom/android/electronicfno/i;->aVx:I

    .line 401
    :goto_4e
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    iget-boolean v1, p0, Lcom/android/electronicfno/i;->aVF:Z

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sn(Z)V

    .line 402
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnt()V

    .line 378
    return-void

    .line 390
    :cond_59
    iget v0, p0, Lcom/android/electronicfno/i;->aVv:I

    iput v0, p0, Lcom/android/electronicfno/i;->aVx:I

    .line 391
    iget v0, p0, Lcom/android/electronicfno/i;->aVI:I

    iput v0, p0, Lcom/android/electronicfno/i;->aVJ:I

    goto :goto_4e

    .line 395
    :cond_62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/electronicfno/i;->aVF:Z

    .line 396
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/electronicfno/i;->aVI:I

    .line 397
    iput v4, p0, Lcom/android/electronicfno/i;->aVx:I

    .line 398
    iput v4, p0, Lcom/android/electronicfno/i;->aVv:I

    .line 399
    iput v4, p0, Lcom/android/electronicfno/i;->aVx:I

    goto :goto_4e
.end method

.method private bnr(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/electronicfno/i;->aVw:Ljava/lang/String;

    .line 408
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnt()V

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/electronicfno/i;->aVv:I

    .line 411
    iget v0, p0, Lcom/android/electronicfno/i;->aVI:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1d

    .line 412
    iget v0, p0, Lcom/android/electronicfno/i;->aVI:I

    iput v0, p0, Lcom/android/electronicfno/i;->aVJ:I

    .line 413
    iget v0, p0, Lcom/android/electronicfno/i;->aVv:I

    iput v0, p0, Lcom/android/electronicfno/i;->aVx:I

    .line 418
    :goto_19
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnu()V

    .line 406
    return-void

    .line 415
    :cond_1d
    iget v0, p0, Lcom/android/electronicfno/i;->aVI:I

    iget v1, p0, Lcom/android/electronicfno/i;->aVv:I

    add-int/lit8 v1, v1, 0xa

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/electronicfno/i;->aVJ:I

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/electronicfno/i;->aVx:I

    goto :goto_19
.end method

.method private bns()V
    .registers 3

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->aVm:Z

    if-nez v0, :cond_a

    .line 634
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 636
    :cond_a
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->aVF:Z

    if-eqz v0, :cond_15

    .line 637
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 632
    :goto_14
    return-void

    .line 639
    :cond_15
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    goto :goto_14
.end method

.method private bnt()V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/16 v4, 0x4a

    .line 322
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_f

    .line 323
    return-void

    .line 326
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->ap()Lcom/android/common/a/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/a/i;->aT(Z)V

    .line 327
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->ap()Lcom/android/common/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/i;->aS()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/electronicfno/i;->aVB:J
    :try_end_2d
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_2d} :catch_56

    .line 333
    :goto_2d
    iget-wide v0, p0, Lcom/android/electronicfno/i;->aVB:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_5a

    .line 334
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/electronicfno/i;->aVQ:F

    .line 340
    :goto_38
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_68

    .line 341
    iget v1, p0, Lcom/android/electronicfno/i;->aVQ:F

    invoke-direct {p0, v1, v0}, Lcom/android/electronicfno/i;->bnm(F[F)F

    move-result v0

    iput v0, p0, Lcom/android/electronicfno/i;->aVQ:F

    .line 343
    :try_start_46
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnu()V
    :try_end_49
    .catch Ljava/lang/NullPointerException; {:try_start_46 .. :try_end_49} :catch_63

    .line 348
    :goto_49
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVG:Lcom/android/electronicfno/k;

    invoke-virtual {v0, v4}, Lcom/android/electronicfno/k;->removeMessages(I)V

    .line 349
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVG:Lcom/android/electronicfno/k;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/electronicfno/k;->sendEmptyMessageDelayed(IJ)Z

    .line 321
    return-void

    .line 328
    :catch_56
    move-exception v0

    .line 329
    iput-wide v2, p0, Lcom/android/electronicfno/i;->aVB:J

    goto :goto_2d

    .line 337
    :cond_5a
    iget-wide v0, p0, Lcom/android/electronicfno/i;->aVB:J

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/electronicfno/i;->aVQ:F

    goto :goto_38

    .line 344
    :catch_63
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_49

    .line 340
    :array_68
    .array-data 4
        0x3e19999a    # 0.15f
        0x3e800000    # 0.25f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3faccccd    # 1.35f
    .end array-data
.end method

.method private bnu()V
    .registers 3

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/electronicfno/i;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_9

    .line 268
    return-void

    .line 269
    :cond_9
    const v0, 0x7f0a0102

    invoke-virtual {p0, v0}, Lcom/android/electronicfno/i;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    iget-boolean v1, p0, Lcom/android/electronicfno/i;->aVF:Z

    if-nez v1, :cond_3b

    .line 271
    iget v0, p0, Lcom/android/electronicfno/i;->aVJ:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/electronicfno/i;->aVQ:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/electronicfno/i;->aVx:I

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/electronicfno/i;->bnl(F)F

    move-result v0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    :cond_3b
    iget-object v1, p0, Lcom/android/electronicfno/i;->aVp:Lcom/android/common/h/c;

    if-eqz v1, :cond_44

    .line 275
    iget-object v1, p0, Lcom/android/electronicfno/i;->aVp:Lcom/android/common/h/c;

    invoke-interface {v1, v0}, Lcom/android/common/h/c;->abC(Ljava/lang/String;)V

    .line 266
    :cond_44
    return-void
.end method

.method private bnv(F)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 806
    float-to-double v2, p1

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpg-double v1, v2, v4

    if-gez v1, :cond_40

    .line 807
    invoke-virtual {p0}, Lcom/android/electronicfno/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 808
    invoke-virtual {p0}, Lcom/android/electronicfno/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 810
    :goto_2b
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/electronicfno/i;->aVK:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 812
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 813
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVK:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    return-void

    :cond_40
    move v1, v0

    goto :goto_2b
.end method

.method private bnw()V
    .registers 1

    .prologue
    .line 316
    return-void
.end method

.method private bnx()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/android/electronicfno/i;->alr()V

    .line 495
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnk()V

    .line 496
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->aVF:Z

    if-eqz v0, :cond_2d

    .line 497
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ED(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVH:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVH:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->start()V

    .line 507
    :goto_20
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVP:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVN:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 492
    return-void

    .line 503
    :cond_2d
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    goto :goto_20
.end method

.method private bny()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 245
    invoke-virtual {p0}, Lcom/android/electronicfno/i;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_c

    .line 246
    return-void

    .line 248
    :cond_c
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnu()V

    .line 249
    invoke-virtual {p0, v3}, Lcom/android/electronicfno/i;->bnz(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVK:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVK:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVu:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 257
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v3, v3}, Lcom/android/common/ui/MultiFunctionImageView;->Ex(IZ)V

    .line 259
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVH:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->stop()V

    .line 260
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVH:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/electronicfno/i;->alq()V

    .line 263
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVN:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 244
    return-void
.end method


# virtual methods
.method public aip()V
    .registers 2

    .prologue
    .line 894
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->adv:Z

    if-eqz v0, :cond_5

    .line 895
    return-void

    .line 897
    :cond_5
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVE:Lcom/android/common/t;

    if-eqz v0, :cond_e

    .line 898
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVE:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->arx()V

    .line 893
    :cond_e
    return-void
.end method

.method public aiq()V
    .registers 2

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVE:Lcom/android/common/t;

    if-eqz v0, :cond_9

    .line 905
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVE:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->show()V

    .line 903
    :cond_9
    return-void
.end method

.method protected ajt(IZ)V
    .registers 3

    .prologue
    .line 432
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 433
    iput p1, p0, Lcom/android/electronicfno/i;->aVL:I

    .line 431
    return-void
.end method

.method protected alq()V
    .registers 8

    .prologue
    const-wide/16 v2, -0x1

    .line 911
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_32

    .line 912
    iget-object v0, p0, Lcom/android/electronicfno/i;->ady:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_16
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/e/h;

    .line 913
    instance-of v1, v0, Lcom/android/common/o/e;

    if-nez v1, :cond_2a

    .line 914
    instance-of v1, v0, Lcom/android/common/o/a;

    .line 913
    if-eqz v1, :cond_16

    .line 915
    :cond_2a
    if-eqz v0, :cond_16

    .line 916
    const/4 v1, 0x0

    move-wide v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/common/e/h;->ZP(ZJJ)V

    goto :goto_16

    .line 921
    :cond_32
    invoke-super {p0}, Lcom/android/common/o/l;->alq()V

    .line 910
    :cond_35
    return-void
.end method

.method public arG()V
    .registers 2

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mI()V

    .line 888
    return-void
.end method

.method public bmG()V
    .registers 3

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnC()V

    .line 764
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/electronicfno/i;->bnp(Z)V

    .line 765
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->aVF:Z

    if-eqz v0, :cond_28

    .line 766
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->EC(Lcom/android/common/ui/af;)V

    .line 767
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVH:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->stop()V

    .line 768
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVH:Lcom/android/common/ui/NubiaProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 772
    :goto_1d
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 773
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnD()V

    .line 762
    return-void

    .line 770
    :cond_28
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {p0, v0}, Lcom/android/electronicfno/i;->als(Lcom/android/common/camerastate/DeviceState;)V

    goto :goto_1d
.end method

.method public bmH(Landroid/graphics/Bitmap;)V
    .registers 15

    .prologue
    .line 778
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {p0, v0}, Lcom/android/electronicfno/i;->als(Lcom/android/common/camerastate/DeviceState;)V

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 780
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pF()I

    move-result v0

    invoke-static {v0}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v3

    .line 781
    invoke-static {v4, v5}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v2

    .line 782
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v8

    .line 783
    new-instance v0, Lcom/android/common/b/d;

    iget-object v9, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    .line 785
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {p0, v8, v1, v6}, Lcom/android/electronicfno/i;->bnj(Landroid/location/Location;II)Landroid/util/SparseArray;

    move-result-object v10

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 788
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/electronicfno/i;->bni(Ljava/lang/String;Ljava/lang/String;JIILandroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v6

    .line 789
    const/4 v7, 0x0

    .line 790
    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p1

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    .line 783
    invoke-direct/range {v0 .. v8}, Lcom/android/common/b/d;-><init>(Lcom/android/common/appService/W;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 791
    iget-object v1, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 792
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/electronicfno/i;->bnp(Z)V

    .line 793
    invoke-direct {p0, p1}, Lcom/android/electronicfno/i;->bnh(Landroid/graphics/Bitmap;)V

    .line 795
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 796
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->EA()V

    .line 797
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVC:Lcom/android/electronicfno/j;

    if-eqz v0, :cond_98

    .line 798
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVC:Lcom/android/electronicfno/j;

    invoke-interface {v0}, Lcom/android/electronicfno/j;->bnN()V

    .line 777
    :cond_98
    return-void
.end method

.method public bmI(ILandroid/graphics/Bitmap;)V
    .registers 9

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 817
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->adv:Z

    if-eqz v0, :cond_8

    return-void

    .line 818
    :cond_8
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVK:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 819
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->aVF:Z

    if-eqz v0, :cond_12

    return-void

    .line 820
    :cond_12
    if-ne p1, v5, :cond_34

    iget-wide v0, p0, Lcom/android/electronicfno/i;->aVs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    .line 821
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/electronicfno/i;->aVs:J

    .line 822
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 823
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    new-instance v1, Lcom/android/electronicfno/q;

    invoke-direct {v1, p0}, Lcom/android/electronicfno/q;-><init>(Lcom/android/electronicfno/i;)V

    invoke-virtual {v0, p1, v4, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ES(IZLcom/android/common/ui/af;)V

    .line 816
    :cond_33
    :goto_33
    return-void

    .line 830
    :cond_34
    if-ge p1, v5, :cond_33

    .line 831
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 832
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, p1, v4}, Lcom/android/common/ui/MultiFunctionImageView;->Ex(IZ)V

    goto :goto_33
.end method

.method public bmJ()V
    .registers 3

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bny()V

    .line 860
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 861
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_1e

    .line 862
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 864
    :cond_1e
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->ay()V

    .line 858
    return-void
.end method

.method public bmK(I)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 744
    if-ne p1, v2, :cond_9

    .line 745
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {p0, v0}, Lcom/android/electronicfno/i;->als(Lcom/android/common/camerastate/DeviceState;)V

    .line 746
    return-void

    .line 748
    :cond_9
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_1d

    .line 749
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 751
    :cond_1d
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->pM(Z)V

    .line 752
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnx()V

    .line 753
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVK:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 754
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnB()V

    .line 755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/electronicfno/i;->aVt:J

    .line 756
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/electronicfno/i;->aVs:J

    .line 757
    invoke-direct {p0, v2}, Lcom/android/electronicfno/i;->bnp(Z)V

    .line 758
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->as()V

    .line 743
    return-void
.end method

.method public bmL(I)V
    .registers 6

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->aVF:Z

    if-eqz v0, :cond_26

    .line 839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/electronicfno/i;->aVs:J

    .line 840
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->EC(Lcom/android/common/ui/af;)V

    .line 841
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 842
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVH:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->stop()V

    .line 843
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVH:Lcom/android/common/ui/NubiaProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 844
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bns()V

    .line 846
    :cond_26
    iget-wide v0, p0, Lcom/android/electronicfno/i;->aVs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    .line 847
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/electronicfno/i;->aVs:J

    .line 837
    :cond_34
    return-void
.end method

.method public bnb(Lcom/android/common/h/c;)V
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/electronicfno/i;->aVp:Lcom/android/common/h/c;

    .line 163
    return-void
.end method

.method public bnc(Lcom/android/common/n;)V
    .registers 2

    .prologue
    .line 629
    iput-object p1, p0, Lcom/android/electronicfno/i;->aVD:Lcom/android/common/n;

    .line 628
    return-void
.end method

.method public bnd(Lcom/android/electronicfno/j;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/electronicfno/i;->aVC:Lcom/android/electronicfno/j;

    .line 167
    return-void
.end method

.method public bne(Lcom/android/common/f/b;)V
    .registers 2

    .prologue
    .line 728
    iput-object p1, p0, Lcom/android/electronicfno/i;->aVR:Lcom/android/common/f/b;

    .line 727
    return-void
.end method

.method public bnf()V
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVO:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/electronicfno/i;->aVN:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/electronicfno/i;->aVN:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    .line 695
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVO:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    .line 693
    :cond_15
    return-void
.end method

.method public bng()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 876
    iget-object v1, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    .line 877
    sget-object v2, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    .line 876
    if-eq v1, v2, :cond_1d

    .line 878
    iget-object v1, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v1, v2, :cond_31

    .line 879
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->XK()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 880
    if-eqz v0, :cond_33

    .line 883
    :cond_2b
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVE:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->arx()V

    .line 875
    :goto_30
    return-void

    .line 878
    :cond_31
    const/4 v0, 0x0

    goto :goto_1d

    .line 881
    :cond_33
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVE:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->show()V

    goto :goto_30
.end method

.method public bnz(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 540
    if-eqz p1, :cond_22

    .line 541
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVO:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setEnabled(Z)V

    .line 542
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVz:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 544
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVG:Lcom/android/electronicfno/k;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/electronicfno/k;->removeMessages(I)V

    .line 545
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVu:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    :goto_21
    return-void

    .line 547
    :cond_22
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnu()V

    .line 548
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnk()V

    goto :goto_21
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVP:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 688
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVP:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 690
    :cond_10
    return v2
.end method

.method public nD()Z
    .registers 4

    .prologue
    .line 578
    const-string/jumbo v0, "ElectronicFnoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "==del== onShutterBottomClicked  B_shutter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/electronicfno/i;->aVF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVy:Lcom/android/electronicfno/a;

    invoke-virtual {v0}, Lcom/android/electronicfno/a;->bmu()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 595
    :cond_25
    :goto_25
    :pswitch_25
    const/4 v0, 0x1

    return v0

    .line 581
    :pswitch_27
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->aVF:Z

    if-nez v0, :cond_30

    .line 582
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {p0, v0}, Lcom/android/electronicfno/i;->als(Lcom/android/common/camerastate/DeviceState;)V

    .line 584
    :cond_30
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnA()V

    goto :goto_25

    .line 587
    :pswitch_34
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->aVF:Z

    if-eqz v0, :cond_25

    .line 588
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnC()V

    .line 589
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVy:Lcom/android/electronicfno/a;

    invoke-virtual {v0}, Lcom/android/electronicfno/a;->stop()V

    goto :goto_25

    .line 579
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_27
        :pswitch_25
        :pswitch_34
    .end packed-switch
.end method

.method public onBackPressed()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 559
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->aVm:Z

    if-nez v0, :cond_1b

    .line 560
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVy:Lcom/android/electronicfno/a;

    invoke-virtual {v0}, Lcom/android/electronicfno/a;->bmu()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 567
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVS:Lcom/android/common/appService/z;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/z;->lL(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 568
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVy:Lcom/android/electronicfno/a;

    invoke-virtual {v0}, Lcom/android/electronicfno/a;->cancel()V

    .line 570
    :cond_1a
    return v1

    .line 572
    :cond_1b
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 195
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->adu:Z

    if-eqz v0, :cond_8

    .line 196
    return-void

    .line 198
    :cond_8
    new-instance v0, Lcom/android/common/appService/z;

    invoke-virtual {p0}, Lcom/android/electronicfno/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/appService/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVS:Lcom/android/common/appService/z;

    .line 199
    invoke-virtual {p0}, Lcom/android/electronicfno/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 200
    const v1, 0x7f0a00fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/electronicfno/i;->aVn:Ljava/lang/String;

    .line 201
    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVw:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 181
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 182
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->adu:Z

    if-eqz v0, :cond_9

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_9
    const v0, 0x7f04002a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 186
    invoke-direct {p0, v0}, Lcom/android/electronicfno/i;->bno(Landroid/view/View;)V

    .line 187
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bny()V

    .line 188
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnw()V

    .line 189
    return-object v0
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 224
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->adu:Z

    if-eqz v0, :cond_a

    .line 225
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 226
    return-void

    .line 228
    :cond_a
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bny()V

    .line 229
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnC()V

    .line 231
    invoke-direct {p0, v1}, Lcom/android/electronicfno/i;->bnp(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVy:Lcom/android/electronicfno/a;

    invoke-virtual {v0}, Lcom/android/electronicfno/a;->cancel()V

    .line 233
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVy:Lcom/android/electronicfno/a;

    invoke-virtual {v0, v2}, Lcom/android/electronicfno/a;->bmw(Lcom/android/electronicfno/b;)V

    .line 235
    :try_start_1d
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->ap()Lcom/android/common/a/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/a/i;->aT(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVG:Lcom/android/electronicfno/k;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Lcom/android/electronicfno/k;->removeMessages(I)V

    .line 237
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVG:Lcom/android/electronicfno/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/electronicfno/k;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_38} :catch_3c

    .line 241
    :goto_38
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 223
    return-void

    .line 238
    :catch_3c
    move-exception v0

    .line 239
    const-string/jumbo v0, "ElectronicFnoFragment"

    const-string/jumbo v1, "onpause openComputeFrameInterval failed"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 208
    iget-boolean v0, p0, Lcom/android/electronicfno/i;->adu:Z

    if-eqz v0, :cond_8

    .line 209
    return-void

    .line 211
    :cond_8
    new-instance v0, Lcom/android/electronicfno/a;

    invoke-direct {v0}, Lcom/android/electronicfno/a;-><init>()V

    iput-object v0, p0, Lcom/android/electronicfno/i;->aVy:Lcom/android/electronicfno/a;

    .line 212
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVy:Lcom/android/electronicfno/a;

    invoke-virtual {v0, p0}, Lcom/android/electronicfno/a;->bmw(Lcom/android/electronicfno/b;)V

    .line 213
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVn:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/electronicfno/i;->bnq(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVw:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/electronicfno/i;->bnr(Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/electronicfno/i;->aVm:Z

    .line 217
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bny()V

    .line 218
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnt()V

    .line 219
    invoke-virtual {p0}, Lcom/android/electronicfno/i;->bng()V

    .line 205
    return-void
.end method

.method public setPreviewSize(II)V
    .registers 5

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/electronicfno/i;->aVK:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 935
    return-void

    .line 937
    :cond_5
    if-le p1, p2, :cond_e

    .line 938
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 941
    :goto_a
    invoke-direct {p0, v0}, Lcom/android/electronicfno/i;->bnv(F)V

    .line 932
    return-void

    .line 940
    :cond_e
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    goto :goto_a
.end method

.method public vm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 713
    const-string/jumbo v0, "pref_camera_electronic_compensation_key"

    invoke-static {v0, p1}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 714
    invoke-direct {p0, p2}, Lcom/android/electronicfno/i;->bnr(Ljava/lang/String;)V

    .line 712
    :cond_d
    :goto_d
    return-void

    .line 715
    :cond_e
    const-string/jumbo v0, "pref_camera_electronic_aperture_key"

    invoke-static {v0, p1}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 716
    invoke-direct {p0, p2}, Lcom/android/electronicfno/i;->bnq(Ljava/lang/String;)V

    goto :goto_d

    .line 717
    :cond_1b
    const-string/jumbo v0, "b_shutter"

    invoke-static {v0, p1}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 718
    const-string/jumbo v0, "on"

    invoke-static {v0, p2}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/electronicfno/i;->aVF:Z

    .line 719
    iget-object v0, p0, Lcom/android/electronicfno/i;->adt:Lcom/android/common/appService/W;

    iget-boolean v1, p0, Lcom/android/electronicfno/i;->aVF:Z

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sn(Z)V

    .line 720
    iput v2, p0, Lcom/android/electronicfno/i;->aVx:I

    .line 721
    iput v2, p0, Lcom/android/electronicfno/i;->aVv:I

    .line 722
    iput v2, p0, Lcom/android/electronicfno/i;->aVx:I

    .line 723
    invoke-direct {p0}, Lcom/android/electronicfno/i;->bnu()V

    goto :goto_d
.end method
