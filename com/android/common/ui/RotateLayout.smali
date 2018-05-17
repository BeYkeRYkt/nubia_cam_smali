.class public Lcom/android/common/ui/RotateLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/h;


# instance fields
.field protected Dj:Landroid/view/View;

.field private Dk:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/android/common/ui/RotateLayout;->setBackgroundResource(I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 45
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 42
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 51
    sub-int v0, p4, p2

    .line 52
    sub-int v1, p5, p3

    .line 53
    iget v2, p0, Lcom/android/common/ui/RotateLayout;->Dk:I

    sparse-switch v2, :sswitch_data_18

    .line 50
    :goto_a
    return-void

    .line 56
    :sswitch_b
    iget-object v2, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_a

    .line 60
    :sswitch_11
    iget-object v2, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_a

    .line 53
    nop

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_b
        0x5a -> :sswitch_11
        0xb4 -> :sswitch_b
        0x10e -> :sswitch_11
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 68
    iget v1, p0, Lcom/android/common/ui/RotateLayout;->Dk:I

    sparse-switch v1, :sswitch_data_6e

    move v1, v0

    .line 82
    :goto_8
    invoke-virtual {p0, v1, v0}, Lcom/android/common/ui/RotateLayout;->setMeasuredDimension(II)V

    .line 84
    iget v2, p0, Lcom/android/common/ui/RotateLayout;->Dk:I

    sparse-switch v2, :sswitch_data_80

    .line 102
    :goto_10
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    iget v1, p0, Lcom/android/common/ui/RotateLayout;->Dk:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 66
    return-void

    .line 71
    :sswitch_1a
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/common/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 72
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 73
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_8

    .line 77
    :sswitch_2c
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/common/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 78
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 79
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_8

    .line 86
    :sswitch_3e
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 87
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_10

    .line 90
    :sswitch_49
    iget-object v1, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 91
    iget-object v1, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_10

    .line 94
    :sswitch_55
    iget-object v2, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 95
    iget-object v1, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_10

    .line 98
    :sswitch_62
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 99
    iget-object v0, p0, Lcom/android/common/ui/RotateLayout;->Dj:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_10

    .line 68
    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_1a
        0x5a -> :sswitch_2c
        0xb4 -> :sswitch_1a
        0x10e -> :sswitch_2c
    .end sparse-switch

    .line 84
    :sswitch_data_80
    .sparse-switch
        0x0 -> :sswitch_3e
        0x5a -> :sswitch_49
        0xb4 -> :sswitch_55
        0x10e -> :sswitch_62
    .end sparse-switch
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public vn(IZ)V
    .registers 5

    .prologue
    .line 113
    rem-int/lit16 v0, p1, 0x168

    .line 114
    iget v1, p0, Lcom/android/common/ui/RotateLayout;->Dk:I

    if-ne v1, v0, :cond_7

    return-void

    .line 115
    :cond_7
    iput v0, p0, Lcom/android/common/ui/RotateLayout;->Dk:I

    .line 116
    invoke-virtual {p0}, Lcom/android/common/ui/RotateLayout;->requestLayout()V

    .line 112
    return-void
.end method
