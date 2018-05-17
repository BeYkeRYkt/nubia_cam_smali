.class public Lcom/android/video/VideoSnapButton;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private aID:Lcom/android/video/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method public aXX(Lcom/android/video/p;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/video/VideoSnapButton;->aID:Lcom/android/video/p;

    .line 24
    return-void
.end method

.method public performClick()Z
    .registers 3

    .prologue
    .line 30
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/android/video/VideoSnapButton;->aID:Lcom/android/video/p;

    if-eqz v1, :cond_d

    .line 32
    iget-object v1, p0, Lcom/android/video/VideoSnapButton;->aID:Lcom/android/video/p;

    invoke-interface {v1}, Lcom/android/video/p;->aXn()V

    .line 34
    :cond_d
    return v0
.end method
