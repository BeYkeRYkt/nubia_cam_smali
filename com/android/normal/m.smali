.class final Lcom/android/normal/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/u;


# instance fields
.field final synthetic bbm:Lcom/android/normal/b;


# direct methods
.method constructor <init>(Lcom/android/normal/b;)V
    .registers 2

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lE()V
    .registers 3

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsd(Lcom/android/normal/b;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 362
    :cond_9
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->brv()V

    .line 363
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->brG()V

    .line 364
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->brH()V

    .line 365
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eF()V

    .line 366
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/normal/b;->bru(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qX()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 368
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->brT()V

    .line 360
    :cond_3c
    return-void
.end method

.method public lF()V
    .registers 7

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsd(Lcom/android/normal/b;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 356
    :cond_9
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0xc8

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/normal/b;->bsn(Lcom/android/normal/b;ZJJ)V

    .line 354
    return-void
.end method

.method public lG()V
    .registers 7

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsd(Lcom/android/normal/b;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 337
    :cond_9
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    const-wide/16 v2, 0x64

    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/normal/b;->bsm(Lcom/android/normal/b;ZJJ)V

    .line 339
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsc(Lcom/android/normal/b;)Lcom/android/common/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/t;->arx()V

    .line 340
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bse(Lcom/android/normal/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 341
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bse(Lcom/android/normal/b;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 343
    :cond_2f
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/normal/b;->bru(Z)V

    .line 344
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ec()V

    .line 345
    iget-object v0, p0, Lcom/android/normal/m;->bbm:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->brw()V

    .line 335
    return-void
.end method
