.class final Lcom/android/common/appService/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic np:Lcom/android/common/appService/t;


# direct methods
.method constructor <init>(Lcom/android/common/appService/t;)V
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/common/appService/an;->np:Lcom/android/common/appService/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/common/appService/an;->np:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lu(Lcom/android/common/appService/t;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setAlpha(F)V

    .line 265
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/common/appService/an;->np:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lu(Lcom/android/common/appService/t;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setAlpha(F)V

    .line 260
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 255
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/common/appService/an;->np:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lu(Lcom/android/common/appService/t;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/android/common/appService/an;->np:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lu(Lcom/android/common/appService/t;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setAlpha(F)V

    .line 249
    return-void
.end method
