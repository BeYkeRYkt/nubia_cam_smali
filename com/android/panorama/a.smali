.class public Lcom/android/panorama/a;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Lcom/android/panorama/k;
.implements Lcom/android/common/ui/u;


# instance fields
.field private aOk:Landroid/widget/Toast;

.field private aOl:Lcom/android/panorama/d;

.field private aOm:Lcom/android/panorama/b;

.field private aOn:Lcom/android/panorama/PanoPreviewView;

.field private aOo:I

.field private aOp:Lcom/android/panorama/c;

.field private aOq:Lcom/android/common/ui/ZtemtShutterButton;

.field private aOr:Lcom/android/common/ui/MultiFunctionImageView;

.field private aOs:Landroid/widget/RelativeLayout;

.field private aOt:I

.field private aOu:[B

.field private aOv:I

.field private aOw:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 80
    iput v1, p0, Lcom/android/panorama/a;->aOo:I

    .line 81
    iput v1, p0, Lcom/android/panorama/a;->aOt:I

    .line 82
    iput-object v0, p0, Lcom/android/panorama/a;->aOq:Lcom/android/common/ui/ZtemtShutterButton;

    .line 83
    iput-object v0, p0, Lcom/android/panorama/a;->aOr:Lcom/android/common/ui/MultiFunctionImageView;

    .line 84
    iput-object v0, p0, Lcom/android/panorama/a;->aOs:Landroid/widget/RelativeLayout;

    .line 409
    iput-object v0, p0, Lcom/android/panorama/a;->aOk:Landroid/widget/Toast;

    .line 90
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 80
    iput v1, p0, Lcom/android/panorama/a;->aOo:I

    .line 81
    iput v1, p0, Lcom/android/panorama/a;->aOt:I

    .line 82
    iput-object v0, p0, Lcom/android/panorama/a;->aOq:Lcom/android/common/ui/ZtemtShutterButton;

    .line 83
    iput-object v0, p0, Lcom/android/panorama/a;->aOr:Lcom/android/common/ui/MultiFunctionImageView;

    .line 84
    iput-object v0, p0, Lcom/android/panorama/a;->aOs:Landroid/widget/RelativeLayout;

    .line 409
    iput-object v0, p0, Lcom/android/panorama/a;->aOk:Landroid/widget/Toast;

    .line 86
    return-void
.end method

.method private beE(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 198
    const v0, 0x7f10013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/panorama/PanoPreviewView;

    iput-object v0, p0, Lcom/android/panorama/a;->aOn:Lcom/android/panorama/PanoPreviewView;

    .line 199
    iget-object v0, p0, Lcom/android/panorama/a;->aOn:Lcom/android/panorama/PanoPreviewView;

    iget v1, p0, Lcom/android/panorama/a;->aOw:I

    iget v2, p0, Lcom/android/panorama/a;->aOv:I

    invoke-virtual {v0, v1, v2}, Lcom/android/panorama/PanoPreviewView;->setPreviewSize(II)V

    .line 200
    const v0, 0x7f10013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/panorama/a;->aOs:Landroid/widget/RelativeLayout;

    .line 201
    const v0, 0x7f100140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/panorama/a;->aOq:Lcom/android/common/ui/ZtemtShutterButton;

    .line 202
    const v0, 0x7f100141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/panorama/a;->aOr:Lcom/android/common/ui/MultiFunctionImageView;

    .line 203
    iget-object v0, p0, Lcom/android/panorama/a;->aOq:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/ZtemtShutterButton;->xa(Lcom/android/common/ui/u;)V

    .line 204
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/common/ui/h;

    iput-object v0, p0, Lcom/android/panorama/a;->adw:[Lcom/android/common/ui/h;

    .line 197
    return-void
.end method

.method public static beG()Lcom/android/panorama/a;
    .registers 2

    .prologue
    .line 208
    new-instance v0, Lcom/android/panorama/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/panorama/a;-><init>(I)V

    return-object v0
.end method

.method private beO()V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/panorama/a;->aOl:Lcom/android/panorama/d;

    invoke-virtual {v0}, Lcom/android/panorama/d;->bfk()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/android/panorama/a;->aOr:Lcom/android/common/ui/MultiFunctionImageView;

    if-eqz v0, :cond_2b

    .line 170
    invoke-virtual {p0}, Lcom/android/panorama/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_2b

    .line 171
    iget-object v0, p0, Lcom/android/panorama/a;->aOq:Lcom/android/common/ui/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/panorama/a;->aOr:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/panorama/a;->aOo:I

    .line 174
    invoke-virtual {p0}, Lcom/android/panorama/a;->alq()V

    .line 175
    invoke-virtual {p0}, Lcom/android/panorama/a;->aly()V

    .line 168
    :cond_2b
    return-void
.end method

.method private beP(I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 412
    packed-switch p1, :pswitch_data_2c

    move-object v0, v1

    .line 420
    :goto_5
    if-eqz v0, :cond_22

    .line 421
    iget-object v2, p0, Lcom/android/panorama/a;->aOk:Landroid/widget/Toast;

    if-eqz v2, :cond_12

    .line 422
    iget-object v2, p0, Lcom/android/panorama/a;->aOk:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 423
    iput-object v1, p0, Lcom/android/panorama/a;->aOk:Landroid/widget/Toast;

    .line 425
    :cond_12
    invoke-virtual {p0}, Lcom/android/panorama/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/a;->aOk:Landroid/widget/Toast;

    .line 426
    iget-object v0, p0, Lcom/android/panorama/a;->aOk:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 410
    :cond_22
    return-void

    .line 414
    :pswitch_23
    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Lcom/android/panorama/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 412
    nop

    :pswitch_data_2c
    .packed-switch 0x7
        :pswitch_23
    .end packed-switch
.end method

.method private beQ(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 407
    const-string/jumbo v0, "debug_pano"

    invoke-static {v0, p1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private beR()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 239
    iget v0, p0, Lcom/android/panorama/a;->aOo:I

    if-eqz v0, :cond_6

    .line 240
    return-void

    .line 242
    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/panorama/a;->aOo:I

    .line 243
    iget-object v0, p0, Lcom/android/panorama/a;->aOp:Lcom/android/panorama/c;

    invoke-virtual {v0}, Lcom/android/panorama/c;->bfa()V

    .line 244
    invoke-virtual {p0}, Lcom/android/panorama/a;->alz()V

    .line 245
    iget-object v0, p0, Lcom/android/panorama/a;->aOm:Lcom/android/panorama/b;

    invoke-virtual {v0, v1}, Lcom/android/panorama/b;->sendEmptyMessage(I)Z

    .line 238
    return-void
.end method

.method private beS()V
    .registers 3

    .prologue
    .line 248
    iget v0, p0, Lcom/android/panorama/a;->aOo:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 249
    return-void

    .line 251
    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/panorama/a;->aOo:I

    .line 252
    iget-object v0, p0, Lcom/android/panorama/a;->aOm:Lcom/android/panorama/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/panorama/b;->sendEmptyMessage(I)Z

    .line 247
    return-void
.end method

.method static synthetic beU(Lcom/android/panorama/a;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic beV(Lcom/android/panorama/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/panorama/a;->adv:Z

    return v0
.end method

.method static synthetic beW(Lcom/android/panorama/a;)Lcom/android/panorama/d;
    .registers 2

    iget-object v0, p0, Lcom/android/panorama/a;->aOl:Lcom/android/panorama/d;

    return-object v0
.end method

.method static synthetic beX(Lcom/android/panorama/a;)Lcom/android/panorama/PanoPreviewView;
    .registers 2

    iget-object v0, p0, Lcom/android/panorama/a;->aOn:Lcom/android/panorama/PanoPreviewView;

    return-object v0
.end method

.method static synthetic beY(Lcom/android/panorama/a;)[B
    .registers 2

    iget-object v0, p0, Lcom/android/panorama/a;->aOu:[B

    return-object v0
.end method

.method static synthetic beZ(Lcom/android/panorama/a;)Lcom/android/common/appService/W;
    .registers 2

    invoke-virtual {p0}, Lcom/android/panorama/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    return-object v0
.end method

.method private start()V
    .registers 4

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/panorama/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 432
    :cond_7
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-nez v0, :cond_30

    .line 433
    const-string/jumbo v0, "PanoramaFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Storage enough: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    return-void

    .line 436
    :cond_30
    invoke-direct {p0}, Lcom/android/panorama/a;->beR()V

    .line 430
    return-void
.end method

.method private stop()V
    .registers 3

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/panorama/a;->aOp:Lcom/android/panorama/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/panorama/c;->bfd(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 441
    iget-object v0, p0, Lcom/android/panorama/a;->aOp:Lcom/android/panorama/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/panorama/c;->bfc(I)V

    .line 442
    return-void

    .line 444
    :cond_10
    invoke-direct {p0}, Lcom/android/panorama/a;->beS()V

    .line 439
    return-void
.end method


# virtual methods
.method protected ajt(IZ)V
    .registers 5

    .prologue
    .line 296
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 297
    iget v0, p0, Lcom/android/panorama/a;->aOt:I

    if-eq p1, v0, :cond_16

    .line 298
    iput p1, p0, Lcom/android/panorama/a;->aOt:I

    .line 299
    iget v0, p0, Lcom/android/panorama/a;->aOo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 300
    invoke-direct {p0}, Lcom/android/panorama/a;->beS()V

    .line 302
    :cond_11
    iget-object v0, p0, Lcom/android/panorama/a;->aOl:Lcom/android/panorama/d;

    invoke-virtual {v0, p1}, Lcom/android/panorama/d;->bfn(I)V

    .line 295
    :cond_16
    return-void
.end method

.method protected akC()V
    .registers 3

    .prologue
    .line 161
    invoke-super {p0}, Lcom/android/common/o/l;->akC()V

    .line 162
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 163
    invoke-virtual {p0}, Lcom/android/panorama/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    iget-object v1, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/common/appService/k;->jP(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 164
    invoke-virtual {p0}, Lcom/android/panorama/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/panorama/a;->aOu:[B

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KW([B)V

    .line 160
    :cond_29
    return-void
.end method

.method protected alq()V
    .registers 3

    .prologue
    .line 512
    invoke-super {p0}, Lcom/android/common/o/l;->alq()V

    .line 513
    iget-object v0, p0, Lcom/android/panorama/a;->aOs:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    .line 514
    iget-object v0, p0, Lcom/android/panorama/a;->aOs:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 511
    :cond_e
    return-void
.end method

.method protected alr()V
    .registers 3

    .prologue
    .line 520
    invoke-super {p0}, Lcom/android/common/o/l;->alr()V

    .line 521
    iget-object v0, p0, Lcom/android/panorama/a;->aOs:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    .line 522
    iget-object v0, p0, Lcom/android/panorama/a;->aOs:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 519
    :cond_d
    return-void
.end method

.method protected aly()V
    .registers 2

    .prologue
    .line 398
    invoke-super {p0}, Lcom/android/common/o/l;->aly()V

    .line 399
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 397
    return-void
.end method

.method protected alz()V
    .registers 5

    .prologue
    .line 391
    invoke-super {p0}, Lcom/android/common/o/l;->alz()V

    .line 392
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/common/camerastate/b;

    sget-object v2, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 393
    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 394
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 392
    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amM([Lcom/android/common/camerastate/b;)V

    .line 390
    return-void
.end method

.method public beF(I)V
    .registers 3

    .prologue
    .line 377
    const-string/jumbo v0, "moveTooFast"

    invoke-direct {p0, v0}, Lcom/android/panorama/a;->beQ(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public beH([B)V
    .registers 3

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/panorama/a;->aOn:Lcom/android/panorama/PanoPreviewView;

    invoke-virtual {v0, p1}, Lcom/android/panorama/PanoPreviewView;->beB([B)V

    .line 349
    return-void
.end method

.method public beI(Lcom/android/common/m/a;[B)V
    .registers 5

    .prologue
    .line 359
    if-eqz p1, :cond_14

    .line 360
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {p1}, Lcom/android/common/m/a;->ahe()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rY(Landroid/net/Uri;)Z

    .line 361
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/m/c;->ahj(Lcom/android/common/m/a;)V

    .line 363
    :cond_14
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 364
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/m/c;->ahr()V

    .line 365
    return-void

    .line 367
    :cond_26
    const-string/jumbo v0, "onImageSaveDone"

    invoke-direct {p0, v0}, Lcom/android/panorama/a;->beQ(Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/panorama/a;->aOo:I

    .line 369
    invoke-virtual {p0}, Lcom/android/panorama/a;->alq()V

    .line 370
    invoke-virtual {p0}, Lcom/android/panorama/a;->aly()V

    .line 371
    iget-object v0, p0, Lcom/android/panorama/a;->aOq:Lcom/android/common/ui/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/android/panorama/a;->aOr:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 358
    return-void
.end method

.method public beJ(Z)V
    .registers 4

    .prologue
    .line 502
    if-eqz p1, :cond_c

    .line 503
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/appService/k;->jK(Landroid/hardware/Camera$PreviewCallback;)V

    .line 501
    :goto_b
    return-void

    .line 505
    :cond_c
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    iget-object v1, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/common/appService/k;->jP(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 506
    invoke-virtual {p0}, Lcom/android/panorama/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/panorama/a;->aOu:[B

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KW([B)V

    goto :goto_b
.end method

.method public beK()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 313
    const-string/jumbo v0, "onPanoramaStart"

    invoke-direct {p0, v0}, Lcom/android/panorama/a;->beQ(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->pM(Z)V

    .line 315
    invoke-virtual {p0}, Lcom/android/panorama/a;->alr()V

    .line 316
    iget-object v0, p0, Lcom/android/panorama/a;->aOq:Lcom/android/common/ui/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/android/panorama/a;->aOr:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->EB()V

    .line 318
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 319
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/g;->dy(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 312
    return-void
.end method

.method public beL(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPanoramaStop ret "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/panorama/a;->beQ(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->pM(Z)V

    .line 326
    packed-switch p1, :pswitch_data_4e

    .line 335
    :goto_20
    :pswitch_20
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/panorama/a;->aOo:I

    .line 336
    iget-object v0, p0, Lcom/android/panorama/a;->aOr:Lcom/android/common/ui/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->EC(Lcom/android/common/ui/af;)V

    .line 337
    iget-object v0, p0, Lcom/android/panorama/a;->aOr:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 338
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 339
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/g;->dy(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 323
    return-void

    .line 328
    :pswitch_49
    invoke-direct {p0, p1}, Lcom/android/panorama/a;->beP(I)V

    goto :goto_20

    .line 326
    nop

    :pswitch_data_4e
    .packed-switch 0x7
        :pswitch_49
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public beM(Landroid/graphics/Bitmap;Landroid/graphics/Point;I)V
    .registers 5

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/panorama/a;->aOn:Lcom/android/panorama/PanoPreviewView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/panorama/PanoPreviewView;->beA(Landroid/graphics/Bitmap;Landroid/graphics/Point;I)V

    .line 344
    return-void
.end method

.method public beN()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v0, p0, Lcom/android/panorama/a;->aOq:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_14

    .line 495
    iget-object v0, p0, Lcom/android/panorama/a;->aOq:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 496
    iget-object v0, p0, Lcom/android/panorama/a;->aOq:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    .line 497
    const/4 v0, 0x1

    return v0

    .line 499
    :cond_14
    return v1
.end method

.method public beT()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "takeStillPicture paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/panorama/a;->adv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/panorama/a;->beQ(Ljava/lang/String;)V

    .line 382
    iget-boolean v0, p0, Lcom/android/panorama/a;->adv:Z

    if-eqz v0, :cond_1f

    return-void

    .line 383
    :cond_1f
    iget-object v0, p0, Lcom/android/panorama/a;->aOp:Lcom/android/panorama/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/panorama/c;->bfc(I)V

    .line 384
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->MJ(I)V

    .line 385
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 386
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, p0}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 380
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 481
    iget v0, p0, Lcom/android/panorama/a;->aOo:I

    packed-switch v0, :pswitch_data_10

    .line 490
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0

    .line 483
    :pswitch_b
    return v1

    .line 485
    :pswitch_c
    invoke-direct {p0}, Lcom/android/panorama/a;->stop()V

    .line 486
    return v1

    .line 481
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 113
    iget-boolean v0, p0, Lcom/android/panorama/a;->adu:Z

    if-eqz v0, :cond_9

    return-void

    .line 114
    :cond_9
    new-instance v0, Lcom/android/panorama/c;

    invoke-direct {v0, v1}, Lcom/android/panorama/c;-><init>(Lcom/android/panorama/c;)V

    iput-object v0, p0, Lcom/android/panorama/a;->aOp:Lcom/android/panorama/c;

    .line 115
    new-instance v0, Lcom/android/panorama/b;

    invoke-direct {v0, p0, v1}, Lcom/android/panorama/b;-><init>(Lcom/android/panorama/a;Lcom/android/panorama/b;)V

    iput-object v0, p0, Lcom/android/panorama/a;->aOm:Lcom/android/panorama/b;

    .line 116
    invoke-virtual {p0}, Lcom/android/panorama/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 117
    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/android/panorama/a;->aOv:I

    .line 118
    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/android/panorama/a;->aOw:I

    .line 119
    iget v0, p0, Lcom/android/panorama/a;->aOv:I

    iget v1, p0, Lcom/android/panorama/a;->aOw:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/panorama/a;->aOu:[B

    .line 121
    invoke-virtual {p0}, Lcom/android/panorama/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/panorama/a;->aOl:Lcom/android/panorama/d;

    if-nez v1, :cond_5c

    .line 123
    new-instance v1, Lcom/android/panorama/d;

    iget v2, p0, Lcom/android/panorama/a;->aOw:I

    iget v3, p0, Lcom/android/panorama/a;->aOv:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/panorama/d;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/panorama/a;->aOl:Lcom/android/panorama/d;

    .line 124
    iget-object v0, p0, Lcom/android/panorama/a;->aOl:Lcom/android/panorama/d;

    invoke-virtual {v0, p0}, Lcom/android/panorama/d;->bfi(Lcom/android/panorama/k;)V

    .line 111
    :cond_5c
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 98
    iget-boolean v0, p0, Lcom/android/panorama/a;->adu:Z

    if-eqz v0, :cond_9

    return-object v1

    .line 100
    :cond_9
    const-string/jumbo v0, "PanoramaFragment"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string/jumbo v0, "PanoramaFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "morphor panorama version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/morpho/core/MorphoPanoramaGP;->bue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const v0, 0x7f040054

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    if-nez v0, :cond_43

    .line 104
    const-string/jumbo v1, "PanoramaFragment"

    const-string/jumbo v2, "view == null"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_43
    invoke-direct {p0, v0}, Lcom/android/panorama/a;->beE(Landroid/view/View;)V

    .line 107
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-boolean v0, p0, Lcom/android/panorama/a;->adu:Z

    if-eqz v0, :cond_9

    .line 149
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroy()V

    .line 150
    return-void

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/android/panorama/a;->aOl:Lcom/android/panorama/d;

    if-eqz v0, :cond_14

    .line 153
    iget-object v0, p0, Lcom/android/panorama/a;->aOl:Lcom/android/panorama/d;

    invoke-virtual {v0, v1}, Lcom/android/panorama/d;->bfi(Lcom/android/panorama/k;)V

    .line 154
    iput-object v1, p0, Lcom/android/panorama/a;->aOl:Lcom/android/panorama/d;

    .line 156
    :cond_14
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroy()V

    .line 147
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/panorama/a;->adu:Z

    if-eqz v0, :cond_8

    .line 181
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 182
    return-void

    .line 185
    :cond_8
    const-string/jumbo v0, "PanoramaFragment"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget v0, p0, Lcom/android/panorama/a;->aOo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 187
    iget-object v0, p0, Lcom/android/panorama/a;->aOn:Lcom/android/panorama/PanoPreviewView;

    invoke-virtual {v0}, Lcom/android/panorama/PanoPreviewView;->clear()V

    .line 189
    :cond_1b
    invoke-direct {p0}, Lcom/android/panorama/a;->beS()V

    .line 190
    iget-object v0, p0, Lcom/android/panorama/a;->aOn:Lcom/android/panorama/PanoPreviewView;

    invoke-virtual {v0}, Lcom/android/panorama/PanoPreviewView;->bez()V

    .line 191
    iget-object v0, p0, Lcom/android/panorama/a;->aOl:Lcom/android/panorama/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/panorama/d;->bfh(I)V

    .line 192
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/appService/k;->jK(Landroid/hardware/Camera$PreviewCallback;)V

    .line 193
    iget-object v0, p0, Lcom/android/panorama/a;->aOn:Lcom/android/panorama/PanoPreviewView;

    invoke-virtual {v0}, Lcom/android/panorama/PanoPreviewView;->beD()V

    .line 194
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 179
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 221
    iget-object v1, p0, Lcom/android/panorama/a;->aOp:Lcom/android/panorama/c;

    invoke-virtual {v1, v2}, Lcom/android/panorama/c;->bfb(I)V

    .line 222
    iget v1, p0, Lcom/android/panorama/a;->aOo:I

    if-ne v1, v2, :cond_40

    .line 224
    iget-object v1, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    if-eqz v1, :cond_36

    .line 225
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aeh()Z

    move-result v1

    .line 224
    if-eqz v1, :cond_36

    .line 226
    iget-object v1, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 227
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 228
    const-string/jumbo v1, "pref_picture_artist_info"

    .line 227
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_36
    iget-object v1, p0, Lcom/android/panorama/a;->aOl:Lcom/android/panorama/d;

    invoke-virtual {v1, v0}, Lcom/android/panorama/d;->bfl(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/panorama/a;->aOl:Lcom/android/panorama/d;

    invoke-virtual {v0, p1}, Lcom/android/panorama/d;->bfm([B)V

    .line 234
    :cond_40
    iget-object v0, p0, Lcom/android/panorama/a;->aOp:Lcom/android/panorama/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/panorama/c;->bfd(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 235
    invoke-direct {p0}, Lcom/android/panorama/a;->beS()V

    .line 220
    :cond_4c
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 213
    iget v0, p0, Lcom/android/panorama/a;->aOo:I

    if-ne v1, v0, :cond_b

    .line 214
    iget-object v0, p0, Lcom/android/panorama/a;->aOm:Lcom/android/panorama/b;

    invoke-virtual {v0, v1}, Lcom/android/panorama/b;->sendEmptyMessage(I)Z

    .line 212
    :goto_a
    return-void

    .line 216
    :cond_b
    iget-object v0, p0, Lcom/android/panorama/a;->aOm:Lcom/android/panorama/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/panorama/b;->sendEmptyMessage(I)Z

    goto :goto_a
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 130
    iget-boolean v0, p0, Lcom/android/panorama/a;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 132
    :cond_8
    const-string/jumbo v0, "PanoramaFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0}, Lcom/android/panorama/a;->beO()V

    .line 134
    iget-object v0, p0, Lcom/android/panorama/a;->aOn:Lcom/android/panorama/PanoPreviewView;

    invoke-virtual {v0}, Lcom/android/panorama/PanoPreviewView;->beC()V

    .line 135
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 136
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rW()V

    .line 137
    iget-object v0, p0, Lcom/android/panorama/a;->aOl:Lcom/android/panorama/d;

    iget-object v1, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/panorama/d;->bfj(Lcom/android/common/appService/W;)V

    .line 139
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    iget-object v1, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 140
    return-void

    .line 142
    :cond_3f
    invoke-virtual {p0}, Lcom/android/panorama/a;->akC()V

    .line 143
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rX()Lcom/android/common/d;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/d;->aoe(I)V

    .line 128
    return-void
.end method

.method public xf()V
    .registers 3

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/panorama/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_14

    .line 450
    :cond_c
    invoke-virtual {p0}, Lcom/android/panorama/a;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_15

    .line 453
    :cond_14
    return-void

    .line 451
    :cond_15
    invoke-virtual {p0}, Lcom/android/panorama/a;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_14

    .line 452
    invoke-virtual {p0}, Lcom/android/panorama/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_14

    .line 455
    iget v0, p0, Lcom/android/panorama/a;->aOo:I

    packed-switch v0, :pswitch_data_34

    .line 448
    :goto_2a
    return-void

    .line 457
    :pswitch_2b
    invoke-direct {p0}, Lcom/android/panorama/a;->start()V

    goto :goto_2a

    .line 460
    :pswitch_2f
    invoke-direct {p0}, Lcom/android/panorama/a;->stop()V

    goto :goto_2a

    .line 455
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2f
    .end packed-switch
.end method

.method public xg(Z)V
    .registers 3

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/android/panorama/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    if-eqz v0, :cond_7

    return-void

    .line 471
    :cond_7
    invoke-virtual {p0}, Lcom/android/panorama/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->pL(Z)V

    .line 469
    return-void
.end method

.method public xh()V
    .registers 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/android/panorama/a;->xf()V

    .line 475
    return-void
.end method
