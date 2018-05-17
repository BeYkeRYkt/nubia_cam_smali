.class Lcom/android/common/c/f;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic gK:Lcom/android/common/c/e;


# direct methods
.method public constructor <init>(Lcom/android/common/c/e;)V
    .registers 3

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/common/c/f;->gK:Lcom/android/common/c/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 94
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 93
    :goto_5
    return-void

    .line 96
    :pswitch_6
    iget-object v0, p0, Lcom/android/common/c/f;->gK:Lcom/android/common/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/common/c/e;->hA(Lcom/android/common/c/e;Z)V

    goto :goto_5

    .line 94
    nop

    :pswitch_data_e
    .packed-switch 0x1c
        :pswitch_6
    .end packed-switch
.end method
