.class public Lcom/android/common/ui/OneRowGridView;
.super Landroid/widget/GridView;
.source "SourceFile"


# instance fields
.field private qU:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 48
    iget v1, p0, Lcom/android/common/ui/OneRowGridView;->qU:I

    if-eqz v1, :cond_26

    .line 49
    invoke-virtual {p0}, Lcom/android/common/ui/OneRowGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 50
    :goto_b
    iget v1, p0, Lcom/android/common/ui/OneRowGridView;->qU:I

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/android/common/ui/OneRowGridView;->getHorizontalSpacing()I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/common/ui/OneRowGridView;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/common/ui/OneRowGridView;->getPaddingEnd()I

    move-result v1

    add-int/2addr v0, v1

    .line 51
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 53
    :cond_26
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 47
    return-void

    .line 49
    :cond_2a
    invoke-virtual {p0}, Lcom/android/common/ui/OneRowGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_b
.end method

.method public setColumnWidth(I)V
    .registers 3

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 32
    iget v0, p0, Lcom/android/common/ui/OneRowGridView;->qU:I

    if-eq v0, p1, :cond_c

    .line 33
    iput p1, p0, Lcom/android/common/ui/OneRowGridView;->qU:I

    .line 34
    invoke-virtual {p0}, Lcom/android/common/ui/OneRowGridView;->requestLayout()V

    .line 30
    :cond_c
    return-void
.end method
