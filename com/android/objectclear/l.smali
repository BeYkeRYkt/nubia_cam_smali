.class Lcom/android/objectclear/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aUP:Lcom/android/objectclear/i;


# direct methods
.method private constructor <init>(Lcom/android/objectclear/i;)V
    .registers 2

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/objectclear/i;Lcom/android/objectclear/l;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/objectclear/l;-><init>(Lcom/android/objectclear/i;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 425
    const-string/jumbo v0, "NubiaObjectClearFragment"

    const-string/jumbo v1, "SaveButtonClickListener"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->blZ(Lcom/android/objectclear/i;)Lcom/android/common/ui/ZtemtShutterButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_21

    .line 427
    const-string/jumbo v0, "NubiaObjectClearFragment"

    const-string/jumbo v1, "ignore click because view is not visible"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void

    .line 430
    :cond_21
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->blW(Lcom/android/objectclear/i;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return-void

    .line 431
    :cond_2a
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/objectclear/i;->bmg(Lcom/android/objectclear/i;Z)Z

    .line 432
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bme(Lcom/android/objectclear/i;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 433
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bmi(Lcom/android/objectclear/i;)V

    .line 434
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bmo(Lcom/android/objectclear/i;)V

    .line 435
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bmp(Lcom/android/objectclear/i;)V

    .line 436
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bmj(Lcom/android/objectclear/i;)V

    .line 437
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bmn(Lcom/android/objectclear/i;)V

    .line 438
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-virtual {v0, v3, v3}, Lcom/android/objectclear/i;->blU(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 439
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bml(Lcom/android/objectclear/i;)V

    .line 440
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->blX(Lcom/android/objectclear/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 441
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->blX(Lcom/android/objectclear/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/g;->dy(Z)V

    .line 442
    iget-object v0, p0, Lcom/android/objectclear/l;->aUP:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->blX(Lcom/android/objectclear/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/g;->dz(I)V

    .line 443
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 424
    return-void
.end method
