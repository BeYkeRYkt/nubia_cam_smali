.class public Lcom/android/common/ui/aj;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private final AR:F

.field private AS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/common/ui/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/common/ui/aj;->AR:F

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/aj;->AS:Z

    .line 30
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 41
    iget-boolean v0, p0, Lcom/android/common/ui/aj;->AS:Z

    if-eqz v0, :cond_e

    .line 42
    if-eqz p1, :cond_f

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/common/ui/aj;->setAlpha(F)V

    .line 39
    :cond_e
    :goto_e
    return-void

    .line 45
    :cond_f
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/android/common/ui/aj;->setAlpha(F)V

    goto :goto_e
.end method
