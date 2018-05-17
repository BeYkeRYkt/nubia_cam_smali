.class public Lcom/android/camera/network/ProgressWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# instance fields
.field private amQ:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    .line 16
    const v2, 0x1010078

    .line 15
    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/camera/network/ProgressWebView;->amQ:Landroid/widget/ProgressBar;

    .line 17
    iget-object v0, p0, Lcom/android/camera/network/ProgressWebView;->amQ:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, -0x1

    .line 18
    const/4 v3, 0x3

    .line 17
    invoke-direct {v1, v2, v3, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/network/ProgressWebView;->amQ:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/android/camera/network/ProgressWebView;->addView(Landroid/view/View;)V

    .line 21
    new-instance v0, Lcom/android/camera/network/a;

    invoke-direct {v0, p0}, Lcom/android/camera/network/a;-><init>(Lcom/android/camera/network/ProgressWebView;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/network/ProgressWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 13
    return-void
.end method

.method static synthetic ayu(Lcom/android/camera/network/ProgressWebView;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/network/ProgressWebView;->amQ:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .registers 7

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/camera/network/ProgressWebView;->amQ:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 42
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 43
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 44
    iget-object v1, p0, Lcom/android/camera/network/ProgressWebView;->amQ:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 40
    return-void
.end method
