.class final Lcom/android/common/appService/h;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic hB:Lcom/android/common/appService/g;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/g;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/common/appService/h;->hB:Lcom/android/common/appService/g;

    .line 162
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 161
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 167
    const-string/jumbo v0, "SmileShot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[handleMessage]msg.what ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 166
    :goto_21
    return-void

    .line 170
    :pswitch_22
    iget-object v0, p0, Lcom/android/common/appService/h;->hB:Lcom/android/common/appService/g;

    invoke-static {v0}, Lcom/android/common/appService/g;->iJ(Lcom/android/common/appService/g;)V

    goto :goto_21

    .line 168
    :pswitch_data_28
    .packed-switch 0x3e8
        :pswitch_22
    .end packed-switch
.end method
