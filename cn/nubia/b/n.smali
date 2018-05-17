.class final Lcn/nubia/b/n;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic bpZ:Lcn/nubia/b/f;


# direct methods
.method constructor <init>(Lcn/nubia/b/f;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcn/nubia/b/n;->bpZ:Lcn/nubia/b/f;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 49
    const-string/jumbo v0, "DualCameraControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 48
    :goto_21
    return-void

    .line 52
    :pswitch_22
    iget-object v0, p0, Lcn/nubia/b/n;->bpZ:Lcn/nubia/b/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/b/f;->bLy(Lcn/nubia/b/f;Z)Z

    goto :goto_21

    .line 50
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch
.end method
