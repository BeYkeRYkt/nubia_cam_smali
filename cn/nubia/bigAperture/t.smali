.class final Lcn/nubia/bigAperture/t;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic boj:Lcn/nubia/bigAperture/g;


# direct methods
.method constructor <init>(Lcn/nubia/bigAperture/g;)V
    .registers 2

    .prologue
    .line 922
    iput-object p1, p0, Lcn/nubia/bigAperture/t;->boj:Lcn/nubia/bigAperture/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 924
    iget-object v1, p0, Lcn/nubia/bigAperture/t;->boj:Lcn/nubia/bigAperture/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/bigAperture/g;->bKk(Lcn/nubia/bigAperture/g;Ljava/lang/String;)V

    .line 925
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_80

    .line 923
    :goto_21
    return-void

    .line 927
    :pswitch_22
    iget-object v1, p0, Lcn/nubia/bigAperture/t;->boj:Lcn/nubia/bigAperture/g;

    invoke-static {v1}, Lcn/nubia/bigAperture/g;->bKe(Lcn/nubia/bigAperture/g;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 928
    iget-object v1, p0, Lcn/nubia/bigAperture/t;->boj:Lcn/nubia/bigAperture/g;

    const-string/jumbo v2, "com.android.camera"

    iget-object v3, p0, Lcn/nubia/bigAperture/t;->boj:Lcn/nubia/bigAperture/g;

    invoke-static {v3}, Lcn/nubia/bigAperture/g;->bKd(Lcn/nubia/bigAperture/g;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcn/nubia/bigAperture/g;->bKi(Lcn/nubia/bigAperture/g;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v0, 0x0

    .line 929
    :cond_3c
    if-eqz v0, :cond_63

    .line 930
    iget-object v0, p0, Lcn/nubia/bigAperture/t;->boj:Lcn/nubia/bigAperture/g;

    invoke-static {v0}, Lcn/nubia/bigAperture/g;->bKf(Lcn/nubia/bigAperture/g;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 931
    :try_start_45
    iget-object v0, p0, Lcn/nubia/bigAperture/t;->boj:Lcn/nubia/bigAperture/g;

    invoke-static {v0}, Lcn/nubia/bigAperture/g;->bKf(Lcn/nubia/bigAperture/g;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcn/nubia/bigAperture/t;->boj:Lcn/nubia/bigAperture/g;

    invoke-static {v0}, Lcn/nubia/bigAperture/g;->bKh(Lcn/nubia/bigAperture/g;)Lcn/nubia/bigAperture/h;

    move-result-object v0

    if-nez v0, :cond_5e

    .line 932
    iget-object v0, p0, Lcn/nubia/bigAperture/t;->boj:Lcn/nubia/bigAperture/g;

    invoke-static {v0}, Lcn/nubia/bigAperture/g;->bKl(Lcn/nubia/bigAperture/g;)V
    :try_end_5e
    .catchall {:try_start_45 .. :try_end_5e} :catchall_60

    :cond_5e
    monitor-exit v1

    goto :goto_21

    .line 930
    :catchall_60
    move-exception v0

    monitor-exit v1

    throw v0

    .line 936
    :cond_63
    iget-object v0, p0, Lcn/nubia/bigAperture/t;->boj:Lcn/nubia/bigAperture/g;

    const-string/jumbo v1, "send another MSG_CHECK_CAMERA_IN_FOREGROUND"

    invoke-static {v0, v1}, Lcn/nubia/bigAperture/g;->bKk(Lcn/nubia/bigAperture/g;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcn/nubia/bigAperture/t;->boj:Lcn/nubia/bigAperture/g;

    invoke-static {v0}, Lcn/nubia/bigAperture/g;->bKe(Lcn/nubia/bigAperture/g;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const/16 v0, 0x7530

    :goto_75
    int-to-long v0, v0

    .line 937
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0, v1}, Lcn/nubia/bigAperture/t;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_21

    .line 938
    :cond_7b
    const v0, 0x1d4c0

    goto :goto_75

    .line 925
    nop

    :pswitch_data_80
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method
