.class public Lcom/android/common/ui/ZtemtModeSwitchButton;
.super Lcom/android/common/ui/RotateImageView;
.source "SourceFile"


# instance fields
.field private rX:Lcom/android/common/ui/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method public performClick()Z
    .registers 4

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/common/ui/RotateImageView;->performClick()Z

    move-result v0

    .line 37
    invoke-static {p0}, Lcom/android/common/c/l;->hD(Lcom/android/common/ui/ZtemtModeSwitchButton;)Lcom/android/common/c/a;

    move-result-object v1

    .line 38
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 39
    return v0
.end method

.method public wY()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/common/ui/ZtemtModeSwitchButton;->rX:Lcom/android/common/ui/s;

    if-eqz v0, :cond_9

    .line 44
    iget-object v0, p0, Lcom/android/common/ui/ZtemtModeSwitchButton;->rX:Lcom/android/common/ui/s;

    invoke-interface {v0}, Lcom/android/common/ui/s;->wZ()V

    .line 42
    :cond_9
    return-void
.end method
