.class Lcom/android/common/q;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic ain:Lcom/android/common/n;


# direct methods
.method private constructor <init>(Lcom/android/common/n;)V
    .registers 2

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/n;Lcom/android/common/q;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/q;-><init>(Lcom/android/common/n;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .prologue
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ec

    .line 285
    :cond_8
    :goto_8
    return-void

    .line 289
    :pswitch_9
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->arh(Lcom/android/common/n;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 290
    const-string/jumbo v0, "Intervalometer"

    const-string/jumbo v1, "when interval is not on, not call interval start"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void

    .line 293
    :cond_1b
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->ari(Lcom/android/common/n;)Lcom/android/common/o;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 294
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->ari(Lcom/android/common/n;)Lcom/android/common/o;

    move-result-object v0

    invoke-interface {v0, v8, v9}, Lcom/android/common/o;->akf(J)V

    goto :goto_8

    .line 305
    :pswitch_2d
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->arh(Lcom/android/common/n;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 306
    const-string/jumbo v0, "Intervalometer"

    const-string/jumbo v1, "when interval is not on, not call interval run"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return-void

    .line 309
    :cond_3f
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/android/common/n;->arl()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/common/n;->arm(Lcom/android/common/n;J)J

    .line 310
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->ari(Lcom/android/common/n;)Lcom/android/common/o;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 311
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->ari(Lcom/android/common/n;)Lcom/android/common/o;

    move-result-object v1

    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->arp(Lcom/android/common/n;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->ark(Lcom/android/common/n;)J

    move-result-wide v4

    .line 312
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->arj(Lcom/android/common/n;)I

    move-result v6

    .line 311
    invoke-interface/range {v1 .. v6}, Lcom/android/common/o;->akg(JJI)V

    .line 313
    :cond_70
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->aro(Lcom/android/common/n;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 314
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->arq(Lcom/android/common/n;)V

    goto :goto_8

    .line 315
    :cond_7e
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->arg(Lcom/android/common/n;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_95

    .line 316
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->arf(Lcom/android/common/n;)Lcom/android/common/q;

    move-result-object v0

    .line 317
    const-wide/16 v2, 0x3e8

    .line 316
    invoke-virtual {v0, v7, v2, v3}, Lcom/android/common/q;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    .line 318
    :cond_95
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->arg(Lcom/android/common/n;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-nez v0, :cond_8

    .line 319
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->arf(Lcom/android/common/n;)Lcom/android/common/q;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/common/q;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 324
    :pswitch_aa
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->arh(Lcom/android/common/n;)Z

    move-result v0

    if-nez v0, :cond_bc

    .line 325
    const-string/jumbo v0, "Intervalometer"

    const-string/jumbo v1, "when interval is not on, not call interval finish"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void

    .line 328
    :cond_bc
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->ari(Lcom/android/common/n;)Lcom/android/common/o;

    move-result-object v0

    if-eqz v0, :cond_cd

    .line 329
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->ari(Lcom/android/common/n;)Lcom/android/common/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/o;->onFinish()V

    .line 330
    :cond_cd
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0, v8, v9}, Lcom/android/common/n;->arn(Lcom/android/common/n;J)J

    .line 331
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->arg(Lcom/android/common/n;)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_e0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v7, :cond_8

    .line 332
    :cond_e0
    iget-object v0, p0, Lcom/android/common/q;->ain:Lcom/android/common/n;

    invoke-static {v0}, Lcom/android/common/n;->arf(Lcom/android/common/n;)Lcom/android/common/q;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/common/q;->sendEmptyMessage(I)Z

    goto/16 :goto_8

    .line 286
    nop

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_9
        :pswitch_2d
        :pswitch_aa
    .end packed-switch
.end method
