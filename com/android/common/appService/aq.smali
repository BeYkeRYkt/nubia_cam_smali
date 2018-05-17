.class final Lcom/android/common/appService/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ns:Lcom/android/common/appService/t;


# direct methods
.method constructor <init>(Lcom/android/common/appService/t;)V
    .registers 2

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/common/appService/aq;->ns:Lcom/android/common/appService/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/common/appService/aq;->ns:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lA(Lcom/android/common/appService/t;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 513
    iget-object v0, p0, Lcom/android/common/appService/aq;->ns:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lr(Lcom/android/common/appService/t;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    .line 512
    if-nez v0, :cond_47

    .line 514
    iget-object v0, p0, Lcom/android/common/appService/aq;->ns:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lu(Lcom/android/common/appService/t;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 520
    const-string/jumbo v0, "EffectPageManager"

    const-string/jumbo v1, "debug, click effect button"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/android/common/appService/aq;->ns:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lv(Lcom/android/common/appService/t;)Lcom/android/common/appService/v;

    move-result-object v0

    if-eqz v0, :cond_92

    .line 522
    iget-object v0, p0, Lcom/android/common/appService/aq;->ns:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lv(Lcom/android/common/appService/t;)Lcom/android/common/appService/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/v;->lH()Z

    move-result v0

    .line 521
    if-eqz v0, :cond_92

    .line 523
    const-string/jumbo v0, "EffectPageManager"

    const-string/jumbo v1, "click intercepted"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return-void

    .line 515
    :cond_47
    const-string/jumbo v0, "EffectPageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Has Effect Render: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/appService/aq;->ns:Lcom/android/common/appService/t;

    invoke-static {v2}, Lcom/android/common/appService/t;->lA(Lcom/android/common/appService/t;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 516
    const-string/jumbo v2, "; Acticity Paused: "

    .line 515
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 516
    iget-object v2, p0, Lcom/android/common/appService/aq;->ns:Lcom/android/common/appService/t;

    invoke-static {v2}, Lcom/android/common/appService/t;->lr(Lcom/android/common/appService/t;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z

    move-result v2

    .line 515
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 517
    const-string/jumbo v2, "; isClickable: "

    .line 515
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 517
    iget-object v2, p0, Lcom/android/common/appService/aq;->ns:Lcom/android/common/appService/t;

    invoke-static {v2}, Lcom/android/common/appService/t;->lu(Lcom/android/common/appService/t;)Lcom/android/common/ui/RotateImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/ui/RotateImageView;->isClickable()Z

    move-result v2

    .line 515
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void

    .line 526
    :cond_92
    iget-object v0, p0, Lcom/android/common/appService/aq;->ns:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/effects/e;->II()Z

    move-result v0

    if-eqz v0, :cond_ae

    const/4 v0, 0x0

    .line 527
    :goto_9f
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v1

    .line 528
    new-instance v2, Lcom/android/common/c/p;

    iget-object v3, p0, Lcom/android/common/appService/aq;->ns:Lcom/android/common/appService/t;

    invoke-direct {v2, v3, v0}, Lcom/android/common/c/p;-><init>(Lcom/android/common/appService/t;Z)V

    .line 527
    invoke-virtual {v1, v2}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 511
    return-void

    .line 526
    :cond_ae
    const/4 v0, 0x1

    goto :goto_9f
.end method
