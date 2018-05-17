.class final Lcom/android/common/o/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic aeK:Lcom/android/common/o/p;


# direct methods
.method constructor <init>(Lcom/android/common/o/p;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/common/o/I;->aeK:Lcom/android/common/o/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/common/o/I;->aeK:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amp(Lcom/android/common/o/p;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3af04c76

    mul-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 212
    iget-object v1, p0, Lcom/android/common/o/I;->aeK:Lcom/android/common/o/p;

    invoke-static {v1}, Lcom/android/common/o/p;->aml(Lcom/android/common/o/p;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 210
    return-void
.end method
