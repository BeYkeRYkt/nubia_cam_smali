.class public Lcom/android/common/cameradevice/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Nk:I

.field final synthetic Nl:Lcom/android/common/cameradevice/h;


# direct methods
.method public constructor <init>(Lcom/android/common/cameradevice/h;I)V
    .registers 4

    .prologue
    .line 378
    iput-object p1, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iget-object v0, p1, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/android/common/h;->apf(Z)V

    .line 380
    iput p2, p0, Lcom/android/common/cameradevice/j;->Nk:I

    .line 378
    return-void

    .line 379
    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public KA(Lcom/android/common/cameradevice/s;Landroid/hardware/Camera$PictureCallback;)V
    .registers 6

    .prologue
    .line 621
    new-instance v0, Lcom/android/common/cameradevice/k;

    iget-object v1, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/common/cameradevice/k;-><init>(Lcom/android/common/cameradevice/h;Lcom/android/common/cameradevice/s;Landroid/hardware/Camera$PictureCallback;)V

    .line 622
    iget-object v1, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v1}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 620
    return-void
.end method

.method public KB(Z)V
    .registers 5

    .prologue
    .line 596
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-nez v0, :cond_8

    .line 597
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->age:Z

    .line 596
    if-eqz v0, :cond_2d

    .line 598
    :cond_8
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 599
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 600
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 595
    :cond_2d
    return-void
.end method

.method public KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .registers 13

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 504
    const/4 v6, 0x0

    .line 505
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kq(Lcom/android/common/cameradevice/h;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 506
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    .line 510
    :cond_1b
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/android/common/cameradevice/t;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/common/cameradevice/t;-><init>(Lcom/android/common/cameradevice/j;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 522
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 502
    return-void
.end method

.method public KD([B)V
    .registers 4

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 616
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 617
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 614
    return-void
.end method

.method public KE(Lcom/android/common/cameradevice/p;)V
    .registers 4

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xcf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 564
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 565
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v1, v0}, Lcom/android/common/cameradevice/h;->Kv(Lcom/android/common/cameradevice/h;Landroid/os/Message;)V

    .line 567
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 568
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 562
    return-void
.end method

.method public KF(Lcom/android/common/cameradevice/c;)V
    .registers 4

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 645
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 646
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 643
    return-void
.end method

.method public KG()V
    .registers 3

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 651
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 652
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 649
    return-void
.end method

.method public KH()V
    .registers 3

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v1, v0}, Lcom/android/common/cameradevice/h;->Kv(Lcom/android/common/cameradevice/h;Landroid/os/Message;)V

    .line 425
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 422
    return-void
.end method

.method public KI(Lcom/android/common/cameradevice/a;)V
    .registers 4

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 627
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 628
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 625
    return-void
.end method

.method public KJ()V
    .registers 3

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 633
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 634
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 631
    return-void
.end method

.method public KK()V
    .registers 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 639
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 640
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 637
    return-void
.end method

.method public KL(I)V
    .registers 5

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 527
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 529
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 525
    return-void
.end method

.method public KM(Landroid/hardware/Camera$ErrorCallback;)V
    .registers 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 558
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 559
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 556
    return-void
.end method

.method public KN()V
    .registers 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 489
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 490
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 487
    return-void
.end method

.method public KO(Lcom/android/common/cameradevice/q;)V
    .registers 4

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xce

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 460
    return-void
.end method

.method public KP()V
    .registers 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 436
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 437
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 434
    return-void
.end method

.method public KQ()Landroid/hardware/Camera;
    .registers 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Nc:Lcom/android/common/cameradevice/e;

    invoke-interface {v0}, Lcom/android/common/cameradevice/e;->Jq()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public KR()V
    .registers 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 414
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 415
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 412
    return-void
.end method

.method public KS()V
    .registers 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 430
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 431
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 428
    return-void
.end method

.method public KT(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 447
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 448
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 445
    return-void
.end method

.method public KU(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xcd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 456
    return-void
.end method

.method public KV(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 471
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 472
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 469
    return-void
.end method

.method public KW([B)V
    .registers 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 477
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 478
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 475
    return-void
.end method

.method public KX()Lcom/android/common/cameradevice/p;
    .registers 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 578
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v1, v0}, Lcom/android/common/cameradevice/h;->Kv(Lcom/android/common/cameradevice/h;Landroid/os/Message;)V

    .line 580
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 581
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 582
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    iget-object v0, v0, Lcom/android/common/cameradevice/h;->Ng:Lcom/android/common/cameradevice/p;

    return-object v0
.end method

.method public KY()I
    .registers 2

    .prologue
    .line 384
    iget v0, p0, Lcom/android/common/cameradevice/j;->Nk:I

    return v0
.end method

.method public KZ(Landroid/hardware/Camera$AutoFocusCallback;)V
    .registers 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 483
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 484
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 481
    return-void
.end method

.method public Ky(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 418
    return-void
.end method

.method public Kz(Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 591
    return-void
.end method

.method public La()V
    .registers 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 399
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 400
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 401
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kr(Lcom/android/common/cameradevice/h;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 402
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kr(Lcom/android/common/cameradevice/h;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 397
    :cond_2b
    return-void
.end method

.method public Lb(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .registers 4

    .prologue
    .line 494
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anr()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 495
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 496
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 497
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 493
    :cond_27
    return-void
.end method

.method public Lc(Landroid/hardware/Camera$FaceDetectionListener;)V
    .registers 4

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 540
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 541
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 538
    return-void
.end method

.method public Ld(Z)V
    .registers 5

    .prologue
    .line 605
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-nez v0, :cond_8

    .line 606
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agf:Z

    .line 605
    if-eqz v0, :cond_2d

    .line 607
    :cond_8
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 608
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 610
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 604
    :cond_2d
    return-void
.end method

.method public Le(Lcom/android/common/cameradevice/p;)V
    .registers 4

    .prologue
    const/16 v1, 0xcf

    .line 572
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 571
    return-void
.end method

.method public Lf()V
    .registers 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 546
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 547
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 544
    return-void
.end method

.method public Lg()V
    .registers 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 552
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 553
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 550
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->close()V

    .line 393
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Kp(Lcom/android/common/cameradevice/h;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 394
    iget-object v0, p0, Lcom/android/common/cameradevice/j;->Nl:Lcom/android/common/cameradevice/h;

    invoke-static {v0}, Lcom/android/common/cameradevice/h;->Ks(Lcom/android/common/cameradevice/h;)Lcom/android/common/cameradevice/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/f;->Kd()V

    .line 391
    return-void
.end method
