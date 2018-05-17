.class public Lcom/android/pretty/LargeMultipleTouchableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private aDk:Lcom/android/pretty/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/android/pretty/LargeMultipleTouchableRelativeLayout;->aSv(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method private aSv(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 22
    new-instance v0, Lcom/android/pretty/h;

    invoke-direct {v0, p0, p0}, Lcom/android/pretty/h;-><init>(Lcom/android/pretty/LargeMultipleTouchableRelativeLayout;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/pretty/LargeMultipleTouchableRelativeLayout;->aDk:Lcom/android/pretty/h;

    .line 21
    return-void
.end method


# virtual methods
.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .registers 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/pretty/LargeMultipleTouchableRelativeLayout;->aDk:Lcom/android/pretty/h;

    invoke-virtual {v0, p1}, Lcom/android/pretty/h;->aSw(Landroid/view/TouchDelegate;)V

    .line 28
    iget-object v0, p0, Lcom/android/pretty/LargeMultipleTouchableRelativeLayout;->aDk:Lcom/android/pretty/h;

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 26
    return-void
.end method
