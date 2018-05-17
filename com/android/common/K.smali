.class final Lcom/android/common/K;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic akC:Lcom/android/common/l;


# direct methods
.method constructor <init>(Lcom/android/common/l;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/common/K;->akC:Lcom/android/common/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 23
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 22
    :cond_5
    :goto_5
    return-void

    .line 25
    :pswitch_6
    iget-object v0, p0, Lcom/android/common/K;->akC:Lcom/android/common/l;

    invoke-static {v0}, Lcom/android/common/l;->aqD(Lcom/android/common/l;)Lcom/android/common/m;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 26
    iget-object v0, p0, Lcom/android/common/K;->akC:Lcom/android/common/l;

    invoke-static {v0}, Lcom/android/common/l;->aqD(Lcom/android/common/l;)Lcom/android/common/m;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v1

    invoke-interface {v0, v2, v3}, Lcom/android/common/m;->onTick(J)V

    goto :goto_5

    .line 30
    :pswitch_1b
    iget-object v0, p0, Lcom/android/common/K;->akC:Lcom/android/common/l;

    invoke-static {v0}, Lcom/android/common/l;->aqD(Lcom/android/common/l;)Lcom/android/common/m;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 31
    iget-object v0, p0, Lcom/android/common/K;->akC:Lcom/android/common/l;

    invoke-static {v0}, Lcom/android/common/l;->aqD(Lcom/android/common/l;)Lcom/android/common/m;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/m;->xA()V

    goto :goto_5

    .line 23
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1b
    .end packed-switch
.end method
