.class final Lcom/android/common/ui/bi;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field final synthetic Er:Lcom/android/common/ui/EffectPage;


# direct methods
.method constructor <init>(Lcom/android/common/ui/EffectPage;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/common/ui/bi;->Er:Lcom/android/common/ui/EffectPage;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 130
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/ui/bi;->Er:Lcom/android/common/ui/EffectPage;

    invoke-static {v1}, Lcom/android/common/ui/EffectPage;->Ee(Lcom/android/common/ui/EffectPage;)I

    move-result v1

    mul-int/2addr v0, v1

    .line 131
    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v1

    .line 132
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 133
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 132
    invoke-super {p0, v0, v1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 129
    return-void
.end method
