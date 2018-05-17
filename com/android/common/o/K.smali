.class final Lcom/android/common/o/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic aeM:Lcom/android/common/o/p;


# direct methods
.method constructor <init>(Lcom/android/common/o/p;)V
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/common/o/K;->aeM:Lcom/android/common/o/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/common/o/K;->aeM:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amm(Lcom/android/common/o/p;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    sub-long v0, v2, v0

    long-to-float v0, v0

    const v1, 0x3b102de0    # 0.0022f

    mul-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 254
    iget-object v1, p0, Lcom/android/common/o/K;->aeM:Lcom/android/common/o/p;

    invoke-static {v1}, Lcom/android/common/o/p;->aml(Lcom/android/common/o/p;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 252
    return-void
.end method
