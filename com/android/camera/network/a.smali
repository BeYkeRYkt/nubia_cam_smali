.class public Lcom/android/camera/network/a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic amR:Lcom/android/camera/network/ProgressWebView;


# direct methods
.method public constructor <init>(Lcom/android/camera/network/ProgressWebView;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/camera/network/a;->amR:Lcom/android/camera/network/ProgressWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    .prologue
    const/16 v1, 0x8

    .line 27
    const/16 v0, 0x64

    if-ne p2, v0, :cond_13

    .line 28
    iget-object v0, p0, Lcom/android/camera/network/a;->amR:Lcom/android/camera/network/ProgressWebView;

    invoke-static {v0}, Lcom/android/camera/network/ProgressWebView;->ayu(Lcom/android/camera/network/ProgressWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 34
    :goto_f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 26
    return-void

    .line 30
    :cond_13
    iget-object v0, p0, Lcom/android/camera/network/a;->amR:Lcom/android/camera/network/ProgressWebView;

    invoke-static {v0}, Lcom/android/camera/network/ProgressWebView;->ayu(Lcom/android/camera/network/ProgressWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_29

    .line 31
    iget-object v0, p0, Lcom/android/camera/network/a;->amR:Lcom/android/camera/network/ProgressWebView;

    invoke-static {v0}, Lcom/android/camera/network/ProgressWebView;->ayu(Lcom/android/camera/network/ProgressWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 32
    :cond_29
    iget-object v0, p0, Lcom/android/camera/network/a;->amR:Lcom/android/camera/network/ProgressWebView;

    invoke-static {v0}, Lcom/android/camera/network/ProgressWebView;->ayu(Lcom/android/camera/network/ProgressWebView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_f
.end method
