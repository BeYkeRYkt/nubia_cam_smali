.class final Lcom/android/videomaker/u;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aNy:Lcom/android/videomaker/f;


# direct methods
.method constructor <init>(Lcom/android/videomaker/f;)V
    .registers 2

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    .line 373
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_84

    .line 415
    :goto_5
    return-void

    .line 375
    :pswitch_6
    iget-object v0, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-virtual {v0}, Lcom/android/videomaker/f;->bbl()V

    goto :goto_5

    .line 383
    :pswitch_c
    iget-object v0, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    iget-object v1, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-static {v1}, Lcom/android/videomaker/f;->bbC(Lcom/android/videomaker/f;)Landroid/content/Context;

    move-result-object v1

    .line 384
    iget-object v2, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-static {v2}, Lcom/android/videomaker/f;->bbB(Lcom/android/videomaker/f;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 385
    const v3, 0x7f0a0337

    .line 384
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 383
    const/4 v3, 0x0

    .line 385
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 383
    invoke-static {v1, v3, v2, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/videomaker/f;->bbQ(Lcom/android/videomaker/f;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 387
    :pswitch_2f
    iget-object v0, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bca(Lcom/android/videomaker/f;)V

    .line 388
    iget-object v0, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbZ(Lcom/android/videomaker/f;)V

    goto :goto_5

    .line 392
    :pswitch_3a
    iget-object v0, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-virtual {v0}, Lcom/android/videomaker/f;->bax()V

    .line 393
    iget-object v0, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbE(Lcom/android/videomaker/f;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 394
    iget-object v0, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bcc(Lcom/android/videomaker/f;)V

    goto :goto_5

    .line 398
    :pswitch_50
    iget-object v0, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbF(Lcom/android/videomaker/f;)Lcom/android/videomaker/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/videomaker/g;->bce()V

    goto :goto_5

    .line 402
    :pswitch_5a
    iget-object v0, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/videomaker/f;->bbb(I)V

    goto :goto_5

    .line 408
    :pswitch_62
    iget-object v0, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-static {v0}, Lcom/android/videomaker/f;->bbC(Lcom/android/videomaker/f;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-static {v1}, Lcom/android/videomaker/f;->bbK(Lcom/android/videomaker/f;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-static {v2}, Lcom/android/videomaker/f;->bbH(Lcom/android/videomaker/f;)I

    move-result v2

    iget-object v3, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-static {v3}, Lcom/android/videomaker/f;->bbG(Lcom/android/videomaker/f;)I

    move-result v3

    iget-object v4, p0, Lcom/android/videomaker/u;->aNy:Lcom/android/videomaker/f;

    invoke-static {v4}, Lcom/android/videomaker/f;->bbD(Lcom/android/videomaker/f;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/videomaker/service/MakerService;->aZb(Landroid/content/Context;Ljava/lang/String;III)V

    goto :goto_5

    .line 373
    :pswitch_data_84
    .packed-switch 0x101
        :pswitch_6
        :pswitch_c
        :pswitch_2f
        :pswitch_3a
        :pswitch_50
        :pswitch_5a
        :pswitch_62
    .end packed-switch
.end method
