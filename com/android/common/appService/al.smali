.class final Lcom/android/common/appService/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field final synthetic nn:Lcom/android/common/appService/t;


# direct methods
.method constructor <init>(Lcom/android/common/appService/t;)V
    .registers 2

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/common/appService/al;->nn:Lcom/android/common/appService/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .registers 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/common/appService/al;->nn:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lt(Lcom/android/common/appService/t;)Lcom/android/common/ui/EffectPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/EffectPage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 278
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 280
    :cond_13
    iget-object v0, p0, Lcom/android/common/appService/al;->nn:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lt(Lcom/android/common/appService/t;)Lcom/android/common/ui/EffectPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/EffectPage;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_39

    .line 281
    const-string/jumbo v0, "EffectPageManager"

    const-string/jumbo v1, "Effect page hide"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/common/appService/al;->nn:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/effects/e;->release()V

    .line 283
    iget-object v0, p0, Lcom/android/common/appService/al;->nn:Lcom/android/common/appService/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/appService/t;->lz(Lcom/android/common/appService/t;Lcom/android/common/effects/e;)Lcom/android/common/effects/e;

    .line 275
    :cond_39
    return-void
.end method
