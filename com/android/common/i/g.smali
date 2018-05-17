.class Lcom/android/common/i/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic Zf:Lcom/android/common/i/e;


# direct methods
.method constructor <init>(Lcom/android/common/i/e;)V
    .registers 2

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/common/i/g;->Zf:Lcom/android/common/i/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 384
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 391
    :cond_5
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 383
    return-void

    .line 386
    :pswitch_9
    iget-object v0, p0, Lcom/android/common/i/g;->Zf:Lcom/android/common/i/e;

    invoke-static {v0}, Lcom/android/common/i/e;->aft(Lcom/android/common/i/e;)Lcom/android/common/i/h;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/common/i/g;->Zf:Lcom/android/common/i/e;

    invoke-static {v0}, Lcom/android/common/i/e;->afs(Lcom/android/common/i/e;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/android/common/i/g;->Zf:Lcom/android/common/i/e;

    invoke-static {v0}, Lcom/android/common/i/e;->aft(Lcom/android/common/i/e;)Lcom/android/common/i/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/i/h;->abP()V

    goto :goto_5

    .line 384
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
