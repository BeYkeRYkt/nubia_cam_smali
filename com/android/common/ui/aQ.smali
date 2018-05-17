.class final Lcom/android/common/ui/aQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic DX:Lcom/android/common/ui/F;

.field final synthetic DY:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/android/common/ui/F;Landroid/view/ViewTreeObserver;)V
    .registers 3

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/common/ui/aQ;->DX:Lcom/android/common/ui/F;

    iput-object p2, p0, Lcom/android/common/ui/aQ;->DY:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 342
    iget-object v0, p0, Lcom/android/common/ui/aQ;->DX:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zE(Lcom/android/common/ui/F;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 343
    iget-object v0, p0, Lcom/android/common/ui/aQ;->DX:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zH(Lcom/android/common/ui/F;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 344
    :cond_11
    iget-object v0, p0, Lcom/android/common/ui/aQ;->DX:Lcom/android/common/ui/F;

    const-string/jumbo v1, "Animation is null ignore onPreDraw"

    invoke-static {v0, v1}, Lcom/android/common/ui/F;->zN(Lcom/android/common/ui/F;Ljava/lang/String;)V

    .line 345
    return v2

    .line 347
    :cond_1a
    iget-object v0, p0, Lcom/android/common/ui/aQ;->DX:Lcom/android/common/ui/F;

    const-string/jumbo v1, "onPreDraw"

    invoke-static {v0, v1}, Lcom/android/common/ui/F;->zN(Lcom/android/common/ui/F;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/common/ui/aQ;->DY:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 349
    iget-object v0, p0, Lcom/android/common/ui/aQ;->DX:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zO(Lcom/android/common/ui/F;)V

    .line 350
    return v2
.end method
