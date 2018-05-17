.class public Lcom/android/common/ui/RotateTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/h;


# instance fields
.field private yu:Lcom/android/common/ui/I;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v0, Lcom/android/common/ui/I;

    invoke-direct {v0}, Lcom/android/common/ui/I;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/RotateTextView;->yu:Lcom/android/common/ui/I;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance v0, Lcom/android/common/ui/I;

    invoke-direct {v0}, Lcom/android/common/ui/I;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/RotateTextView;->yu:Lcom/android/common/ui/I;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance v0, Lcom/android/common/ui/I;

    invoke-direct {v0}, Lcom/android/common/ui/I;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/RotateTextView;->yu:Lcom/android/common/ui/I;

    .line 12
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    .line 37
    if-eqz v0, :cond_e

    if-nez v1, :cond_f

    :cond_e
    return-void

    .line 39
    :cond_f
    iget-object v0, p0, Lcom/android/common/ui/RotateTextView;->yu:Lcom/android/common/ui/I;

    invoke-virtual {v0}, Lcom/android/common/ui/I;->Ai()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 40
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->invalidate()V

    .line 43
    :cond_1a
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->getPaddingStart()I

    move-result v0

    .line 44
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->getPaddingTop()I

    move-result v1

    .line 45
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->getPaddingEnd()I

    move-result v2

    .line 46
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->getPaddingBottom()I

    move-result v3

    .line 47
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int v2, v4, v2

    .line 48
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v1

    sub-int v3, v4, v3

    .line 50
    int-to-float v0, v0

    int-to-float v4, v2

    div-float/2addr v4, v5

    add-float/2addr v0, v4

    int-to-float v1, v1

    int-to-float v4, v3

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 51
    iget-object v0, p0, Lcom/android/common/ui/RotateTextView;->yu:Lcom/android/common/ui/I;

    invoke-virtual {v0}, Lcom/android/common/ui/I;->Ag()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 52
    neg-int v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v5

    neg-int v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 34
    return-void
.end method

.method public vn(IZ)V
    .registers 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/common/ui/RotateTextView;->yu:Lcom/android/common/ui/I;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/I;->Ah(IZ)V

    .line 30
    invoke-virtual {p0}, Lcom/android/common/ui/RotateTextView;->invalidate()V

    .line 28
    return-void
.end method
