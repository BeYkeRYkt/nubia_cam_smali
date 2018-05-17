.class public Lcom/android/common/appService/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected kg:Landroid/app/Activity;

.field protected kh:Lcom/android/common/appService/I;

.field protected ki:Lcom/android/common/appService/y;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/common/appService/y;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    .line 24
    iput-object v0, p0, Lcom/android/common/appService/H;->kg:Landroid/app/Activity;

    .line 25
    iput-object v0, p0, Lcom/android/common/appService/H;->ki:Lcom/android/common/appService/y;

    .line 28
    iput-object p1, p0, Lcom/android/common/appService/H;->kg:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/android/common/appService/H;->ki:Lcom/android/common/appService/y;

    .line 27
    return-void
.end method

.method private ni(Lcom/android/common/appService/CameraMember;I)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v1, :cond_12

    .line 87
    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget v1, v1, Lcom/android/common/appService/I;->kk:I

    if-ne v1, p2, :cond_12

    .line 88
    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v1, v1, Lcom/android/common/appService/I;->kj:Lcom/android/common/appService/CameraMember;

    if-ne v1, p1, :cond_12

    const/4 v0, 0x1

    .line 86
    :cond_12
    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v1, :cond_d

    .line 158
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1}, Lcom/android/common/o/a;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 160
    :cond_d
    return v0
.end method

.method public mI()V
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 426
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->mI()V

    .line 424
    :cond_b
    return-void
.end method

.method public mJ(Z)V
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 241
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1}, Lcom/android/common/o/a;->mJ(Z)V

    .line 239
    :cond_b
    return-void
.end method

.method public mK()V
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 383
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->mK()V

    .line 381
    :cond_b
    return-void
.end method

.method public mL()V
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 208
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->mL()V

    .line 206
    :cond_b
    return-void
.end method

.method public mM(Z)Z
    .registers 3

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_d

    .line 367
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1}, Lcom/android/common/o/a;->mM(Z)Z

    move-result v0

    return v0

    .line 369
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public mN(ZZ)V
    .registers 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 390
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/o/a;->mN(ZZ)V

    .line 388
    :cond_b
    return-void
.end method

.method public mO()Z
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_d

    .line 360
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->mO()Z

    move-result v0

    return v0

    .line 362
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public mP()V
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 469
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->mP()V

    .line 467
    :cond_b
    return-void
.end method

.method public mQ()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 171
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->mQ()V

    .line 169
    :cond_b
    return-void
.end method

.method public mR()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 235
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->mR()V

    .line 233
    :cond_b
    return-void
.end method

.method public mS()V
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 260
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->mS()V

    .line 258
    :cond_b
    return-void
.end method

.method public mT()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 266
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->mT()V

    .line 264
    :cond_b
    return-void
.end method

.method public mU(Z)V
    .registers 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 504
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1}, Lcom/android/common/o/a;->mU(Z)V

    .line 502
    :cond_b
    return-void
.end method

.method public mV()V
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 405
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->mV()V

    .line 403
    :cond_b
    return-void
.end method

.method public mW()V
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 483
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->mW()V

    .line 481
    :cond_b
    return-void
.end method

.method public mX(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_14

    .line 118
    const-string/jumbo v0, "BaseFamilyManager"

    const-string/jumbo v1, "onJpegStorageDone inner"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1}, Lcom/android/common/o/a;->alO(Ljava/lang/String;)V

    .line 116
    :cond_14
    return-void
.end method

.method public mY([B)Z
    .registers 4

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v1, :cond_16

    .line 110
    const-string/jumbo v0, "BaseFamilyManager"

    const-string/jumbo v1, "onJpegDataTaken inner"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1}, Lcom/android/common/o/a;->mY([B)Z

    move-result v0

    .line 113
    :cond_16
    return v0
.end method

.method public mZ(Lcom/android/common/appService/W;)[Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_e

    .line 253
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1}, Lcom/android/common/o/a;->mZ(Lcom/android/common/appService/W;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 255
    :cond_e
    return-object v1
.end method

.method public nA()V
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 279
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nA()V

    .line 277
    :cond_b
    return-void
.end method

.method public nB()V
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 285
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nB()V

    .line 283
    :cond_b
    return-void
.end method

.method public nC()V
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 476
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nC()V

    .line 474
    :cond_b
    return-void
.end method

.method public nD()Z
    .registers 3

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v1, :cond_d

    .line 94
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nD()Z

    move-result v0

    .line 96
    :cond_d
    return v0
.end method

.method public nE(II)Z
    .registers 4

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_d

    .line 228
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/o/a;->nE(II)Z

    move-result v0

    return v0

    .line 230
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public nF(Z)V
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 165
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1}, Lcom/android/common/o/a;->nF(Z)V

    .line 163
    :cond_b
    return-void
.end method

.method public nG()V
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 177
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nG()V

    .line 175
    :cond_b
    return-void
.end method

.method public nH(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 340
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1}, Lcom/android/common/o/a;->nH(Ljava/lang/String;)V

    .line 338
    :cond_b
    return-void
.end method

.method public nI()V
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 518
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nI()V

    .line 516
    :cond_b
    return-void
.end method

.method public nJ()V
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 247
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nJ()V

    .line 245
    :cond_b
    return-void
.end method

.method public nK()V
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 490
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nK()V

    .line 488
    :cond_b
    return-void
.end method

.method public nL()V
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 447
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nL()V

    .line 445
    :cond_b
    return-void
.end method

.method public nM()V
    .registers 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 497
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nM()V

    .line 495
    :cond_b
    return-void
.end method

.method public nN()V
    .registers 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 454
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nN()V

    .line 452
    :cond_b
    return-void
.end method

.method public nO()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 151
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nO()V

    .line 149
    :cond_b
    return-void
.end method

.method public na(Lcom/android/common/appService/W;)Z
    .registers 3

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/common/appService/H;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public nb()Z
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_d

    .line 272
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nb()Z

    move-result v0

    return v0

    .line 274
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public nc()Z
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 310
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nc()Z

    .line 312
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public nd()Z
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_d

    .line 295
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nd()Z

    move-result v0

    return v0

    .line 297
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public ne()V
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 412
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->ne()V

    .line 410
    :cond_b
    return-void
.end method

.method public nf()V
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 419
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nf()V

    .line 417
    :cond_b
    return-void
.end method

.method public ng()V
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 190
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->ng()V

    .line 188
    :cond_b
    return-void
.end method

.method public nh()V
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 376
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nh()V

    .line 374
    :cond_b
    return-void
.end method

.method public nj()V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/common/appService/H;->kg:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 69
    const-string/jumbo v0, "currentFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 70
    const-string/jumbo v0, "BaseFamilyManager"

    const-string/jumbo v2, "destroy old abandonded fragment"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "currentFragment"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/common/o/l;

    .line 72
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 67
    :cond_2c
    return-void
.end method

.method public nk(Z)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 396
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_e

    .line 397
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, v1}, Lcom/android/common/o/a;->nk(Z)Z

    move-result v0

    return v0

    .line 399
    :cond_e
    return v1
.end method

.method public nl()Lcom/android/common/appService/V;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_e

    .line 102
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nl()Lcom/android/common/appService/V;

    move-result-object v0

    return-object v0

    .line 104
    :cond_e
    return-object v1
.end method

.method public nm()Lcom/android/common/ui/FaceView;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_e

    .line 183
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nm()Lcom/android/common/ui/FaceView;

    move-result-object v0

    return-object v0

    .line 185
    :cond_e
    return-object v1
.end method

.method public nn()Landroid/hardware/Camera$PictureCallback;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_e

    .line 332
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nn()Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    return-object v0

    .line 334
    :cond_e
    return-object v1
.end method

.method public no()Landroid/hardware/Camera$PictureCallback;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_e

    .line 324
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->no()Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    return-object v0

    .line 326
    :cond_e
    return-object v1
.end method

.method public np()V
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 440
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->np()V

    .line 438
    :cond_b
    return-void
.end method

.method public nq(Z)V
    .registers 3

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 511
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1}, Lcom/android/common/o/a;->nq(Z)V

    .line 509
    :cond_b
    return-void
.end method

.method public final nr(ILcom/android/common/appService/CameraMember;Lcom/android/common/appService/W;)V
    .registers 7

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/common/appService/H;->kg:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "currentFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 48
    invoke-virtual {p0}, Lcom/android/common/appService/H;->nu()Z

    move-result v0

    .line 47
    if-eqz v0, :cond_1c

    .line 49
    invoke-direct {p0, p2, p1}, Lcom/android/common/appService/H;->ni(Lcom/android/common/appService/CameraMember;I)Z

    move-result v0

    .line 47
    if-eqz v0, :cond_1c

    .line 50
    return-void

    .line 53
    :cond_1c
    const-string/jumbo v0, "BaseFamilyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch member: (-1, -1) -> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/common/appService/H;->nj()V

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/common/appService/H;->ns(ILcom/android/common/appService/CameraMember;Lcom/android/common/appService/W;)V

    .line 44
    return-void
.end method

.method protected ns(ILcom/android/common/appService/CameraMember;Lcom/android/common/appService/W;)V
    .registers 8

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/common/appService/H;->kg:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/android/common/appService/I;

    iget-object v2, p0, Lcom/android/common/appService/H;->ki:Lcom/android/common/appService/y;

    invoke-interface {v2, p1, p2}, Lcom/android/common/appService/y;->lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/common/appService/I;-><init>(Lcom/android/common/appService/H;ILcom/android/common/appService/CameraMember;Lcom/android/common/o/a;)V

    iput-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    .line 62
    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v1, :cond_2c

    .line 63
    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v1, v1, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    const-string/jumbo v2, "currentFragment"

    const v3, 0x7f10004f

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 59
    :cond_2c
    return-void
.end method

.method public nt()V
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 433
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nt()V

    .line 431
    :cond_b
    return-void
.end method

.method protected nu()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 77
    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v1, v1, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public nv()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 196
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nv()V

    .line 194
    :cond_b
    return-void
.end method

.method public nw()Z
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_d

    .line 461
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nw()Z

    move-result v0

    return v0

    .line 463
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public nx(Lcom/android/common/setting/ListPreference;)V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 202
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1}, Lcom/android/common/o/a;->nx(Lcom/android/common/setting/ListPreference;)V

    .line 200
    :cond_b
    return-void
.end method

.method public ny(Z)Z
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_d

    .line 303
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1}, Lcom/android/common/o/a;->ny(Z)Z

    move-result v0

    return v0

    .line 305
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public nz()V
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 317
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->nz()V

    .line 315
    :cond_b
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v0, :cond_b

    .line 354
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/common/o/a;->onActivityResult(IILandroid/content/Intent;)V

    .line 352
    :cond_b
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v1, :cond_d

    .line 215
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->onBackPressed()Z

    move-result v0

    .line 218
    :cond_d
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 125
    const-string/jumbo v0, "BaseFamilyManager"

    const-string/jumbo v1, "onKeyDown"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v1, :cond_16

    .line 128
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/o/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 130
    :cond_16
    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v1, :cond_d

    .line 144
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/o/a;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 146
    :cond_d
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    if-eqz v1, :cond_d

    .line 136
    iget-object v0, p0, Lcom/android/common/appService/H;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/o/a;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 138
    :cond_d
    return v0
.end method
