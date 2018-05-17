.class public Lcom/android/camera/network/WebViewActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private amO:Landroid/webkit/WebSettings;

.field private amP:Lcom/android/camera/network/ProgressWebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/camera/network/WebViewActivity;->amP:Lcom/android/camera/network/ProgressWebView;

    .line 23
    iput-object v0, p0, Lcom/android/camera/network/WebViewActivity;->amO:Landroid/webkit/WebSettings;

    .line 19
    return-void
.end method

.method private ays()V
    .registers 2

    .prologue
    .line 39
    const v0, 0x7f1001ad

    invoke-virtual {p0, v0}, Lcom/android/camera/network/WebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/network/ProgressWebView;

    iput-object v0, p0, Lcom/android/camera/network/WebViewActivity;->amP:Lcom/android/camera/network/ProgressWebView;

    .line 38
    return-void
.end method

.method private ayt()V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/network/WebViewActivity;->amP:Lcom/android/camera/network/ProgressWebView;

    invoke-virtual {v0}, Lcom/android/camera/network/ProgressWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/network/WebViewActivity;->amO:Landroid/webkit/WebSettings;

    .line 44
    iget-object v0, p0, Lcom/android/camera/network/WebViewActivity;->amO:Landroid/webkit/WebSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/network/WebViewActivity;->amP:Lcom/android/camera/network/ProgressWebView;

    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/camera/network/ProgressWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/network/WebViewActivity;->amP:Lcom/android/camera/network/ProgressWebView;

    const-string/jumbo v1, "http://bbs.nubia.cn/forum.php?mod=forumdisplay&fid=53&filter=typeid&typeid=237"

    invoke-virtual {v0, v1}, Lcom/android/camera/network/ProgressWebView;->loadUrl(Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/network/WebViewActivity;->requestWindowFeature(I)Z

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/network/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 31
    const v0, 0x7f04008c

    invoke-virtual {p0, v0}, Lcom/android/camera/network/WebViewActivity;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcom/android/camera/network/WebViewActivity;->ays()V

    .line 33
    invoke-direct {p0}, Lcom/android/camera/network/WebViewActivity;->ayt()V

    .line 34
    invoke-virtual {p0}, Lcom/android/camera/network/WebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0a03d4

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/network/WebViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 26
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 60
    const/4 v0, 0x4

    if-ne p1, v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/network/WebViewActivity;->amP:Lcom/android/camera/network/ProgressWebView;

    if-eqz v0, :cond_16

    .line 61
    iget-object v0, p0, Lcom/android/camera/network/WebViewActivity;->amP:Lcom/android/camera/network/ProgressWebView;

    invoke-virtual {v0}, Lcom/android/camera/network/ProgressWebView;->canGoBack()Z

    move-result v0

    .line 60
    if-eqz v0, :cond_16

    .line 62
    iget-object v0, p0, Lcom/android/camera/network/WebViewActivity;->amP:Lcom/android/camera/network/ProgressWebView;

    invoke-virtual {v0}, Lcom/android/camera/network/ProgressWebView;->goBack()V

    .line 63
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_16
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/network/WebViewActivity;->finish()V

    .line 53
    const/4 v0, 0x1

    return v0

    .line 55
    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
