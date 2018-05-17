.class Lcom/loc/ci;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field bkF:Lcom/loc/cv;

.field private bkG:Z

.field final synthetic bkH:Lcom/loc/cv;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/loc/cv;Lcom/loc/cv;)V
    .registers 5

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ci;->bkF:Lcom/loc/cv;

    iput-boolean v1, p0, Lcom/loc/ci;->bkG:Z

    iput-boolean v1, p0, Lcom/loc/ci;->d:Z

    iput-object p2, p0, Lcom/loc/ci;->bkF:Lcom/loc/cv;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_3
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_220

    :goto_8
    :pswitch_8
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v1, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    monitor-enter v1
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_29

    :try_start_11
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/loc/cv;->bGn(Lcom/loc/cv;Z)Z

    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v2, v0, Lcom/loc/cv;->bkR:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/loc/ci;->bkF:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto :goto_8

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_26

    :try_start_28
    throw v0
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_29} :catch_29

    :catch_29
    move-exception v0

    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "handleMessage STARTCOLL"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_34
    :try_start_34
    iget-object v2, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v2, v2, Lcom/loc/cv;->bll:Ljava/lang/Object;

    monitor-enter v2
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_39} :catch_b9
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_39} :catch_29

    :try_start_39
    iget-object v3, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/loc/cv;->bGn(Lcom/loc/cv;Z)Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v6

    const-string/jumbo v5, "isNeedAddress"

    const/4 v8, 0x1

    invoke-virtual {v3, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v8, "isOffset"

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string/jumbo v9, "isLocationCacheEnable"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iget-boolean v10, p0, Lcom/loc/ci;->bkG:Z

    if-eq v5, v10, :cond_c5

    :cond_65
    iget-object v10, p0, Lcom/loc/ci;->bkF:Lcom/loc/cv;

    const-wide/16 v12, 0x0

    iput-wide v12, v10, Lcom/loc/cv;->n:J

    :goto_6b
    iput-boolean v5, p0, Lcom/loc/ci;->bkG:Z

    iput-boolean v8, p0, Lcom/loc/ci;->d:Z

    iget-object v10, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v10, v10, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v10, :cond_ca

    :cond_75
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bkY:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    :goto_7f
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/cv;->k:Z

    iget-object v0, p0, Lcom/loc/ci;->bkF:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_8b
    const-string/jumbo v0, "wifiactivescan"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    const-string/jumbo v4, "isKillProcess"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/loc/cv;->b:Z

    const-string/jumbo v1, "httptimeout"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v1, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v1, v1, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    if-nez v1, :cond_109

    :goto_aa
    iget-object v0, p0, Lcom/loc/ci;->bkF:Lcom/loc/cv;

    iget-object v1, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v1, v1, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/loc/cv;->bGo(Lcom/loc/cv;Lorg/json/JSONObject;)V

    monitor-exit v2

    goto/16 :goto_8

    :catchall_b6
    move-exception v0

    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_39 .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v0
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_b9} :catch_b9
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_b9} :catch_29

    :catch_b9
    move-exception v0

    :try_start_ba
    const-string/jumbo v1, "APSServiceCore"

    const-string/jumbo v2, "handleMessage LOCATION"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c3
    .catch Ljava/lang/Throwable; {:try_start_ba .. :try_end_c3} :catch_29

    goto/16 :goto_8

    :cond_c5
    :try_start_c5
    iget-boolean v10, p0, Lcom/loc/ci;->d:Z

    if-ne v8, v10, :cond_65

    goto :goto_6b

    :cond_ca
    iget-object v10, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v10, v10, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v10}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHv()I

    move-result v10

    if-nez v10, :cond_75

    iget-object v10, p0, Lcom/loc/ci;->bkF:Lcom/loc/cv;

    iget-wide v10, v10, Lcom/loc/cv;->n:J

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x320

    cmp-long v6, v6, v10

    if-ltz v6, :cond_fe

    :goto_df
    if-nez v0, :cond_75

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "location"

    iget-object v7, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v7, v7, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v4, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    goto :goto_8b

    :cond_fe
    move v0, v1

    goto :goto_df

    :cond_100
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bkY:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7f

    :cond_109
    iget-object v1, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v1, v1, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v3, "reversegeo"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v1, v1, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v3, "isOffset"

    invoke-virtual {v1, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v1, v1, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v3, "wifiactivescan"

    if-nez v0, :cond_142

    const-string/jumbo v0, "0"

    :goto_129
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "httptimeout"

    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->blq:Lorg/json/JSONObject;

    const-string/jumbo v1, "isLocationCacheEnable"

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_aa

    :cond_142
    const-string/jumbo v0, "1"
    :try_end_145
    .catchall {:try_start_c5 .. :try_end_145} :catchall_b6

    goto :goto_129

    :pswitch_146
    :try_start_146
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    invoke-virtual {v0}, Lcom/loc/cv;->b()V

    goto/16 :goto_8

    :pswitch_14d
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    invoke-virtual {v0}, Lcom/loc/cv;->c()V

    goto/16 :goto_8

    :pswitch_154
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v1, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    monitor-enter v1
    :try_end_159
    .catch Ljava/lang/Throwable; {:try_start_146 .. :try_end_159} :catch_29

    :try_start_159
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGp(Lcom/loc/cv;)I

    move-result v0

    invoke-static {}, Lcom/loc/bR;->b()I

    move-result v2

    if-lt v0, v2, :cond_182

    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/loc/cv;->bGq(Lcom/loc/cv;Z)Z

    :goto_16b
    iget-object v0, p0, Lcom/loc/ci;->bkF:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bkW:Lcom/loc/ci;

    const/4 v2, 0x4

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Lcom/loc/ci;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1

    goto/16 :goto_8

    :catchall_17f
    move-exception v0

    monitor-exit v1
    :try_end_181
    .catchall {:try_start_159 .. :try_end_181} :catchall_17f

    :try_start_181
    throw v0
    :try_end_182
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_182} :catch_29

    :cond_182
    :try_start_182
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/loc/cv;->bGq(Lcom/loc/cv;Z)Z

    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    invoke-static {v0}, Lcom/loc/cv;->bGr(Lcom/loc/cv;)I
    :try_end_18d
    .catchall {:try_start_182 .. :try_end_18d} :catchall_17f

    goto :goto_16b

    :pswitch_18e
    :try_start_18e
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v1, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    monitor-enter v1
    :try_end_193
    .catch Ljava/lang/Throwable; {:try_start_18e .. :try_end_193} :catch_29

    :try_start_193
    invoke-static {}, Lcom/loc/bR;->e()Z

    move-result v0

    if-nez v0, :cond_1bf

    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/X;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    :goto_1a3
    iget-object v0, p0, Lcom/loc/ci;->bkF:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bkW:Lcom/loc/ci;

    const/4 v2, 0x5

    invoke-static {}, Lcom/loc/bR;->d()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lcom/loc/ci;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1

    goto/16 :goto_8

    :catchall_1bc
    move-exception v0

    monitor-exit v1
    :try_end_1be
    .catchall {:try_start_193 .. :try_end_1be} :catchall_1bc

    :try_start_1be
    throw v0
    :try_end_1bf
    .catch Ljava/lang/Throwable; {:try_start_1be .. :try_end_1bf} :catch_29

    :cond_1bf
    :try_start_1bf
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/loc/cv;->bGs(Lcom/loc/cv;Z)Z

    goto :goto_1a3

    :cond_1c6
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/loc/cv;->bGs(Lcom/loc/cv;Z)Z
    :try_end_1cc
    .catchall {:try_start_1bf .. :try_end_1cc} :catchall_1bc

    goto :goto_1a3

    :pswitch_1cd
    :try_start_1cd
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v1, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1d2
    .catch Ljava/lang/Throwable; {:try_start_1cd .. :try_end_1d2} :catch_29

    :try_start_1d2
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    if-nez v0, :cond_1de

    :goto_1d8
    monitor-exit v1

    goto/16 :goto_8

    :catchall_1db
    move-exception v0

    monitor-exit v1
    :try_end_1dd
    .catchall {:try_start_1d2 .. :try_end_1dd} :catchall_1db

    :try_start_1dd
    throw v0
    :try_end_1de
    .catch Ljava/lang/Throwable; {:try_start_1dd .. :try_end_1de} :catch_29

    :cond_1de
    :try_start_1de
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHw()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1fd

    :cond_1e9
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/loc/cv;->bGt(Lcom/loc/cv;Z)Z

    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/loc/cv;->bGu(Lcom/loc/cv;Z)Z

    iget-object v0, p0, Lcom/loc/ci;->bkF:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_1d8

    :cond_1fd
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->blm:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHw()I
    :try_end_204
    .catchall {:try_start_1de .. :try_end_204} :catchall_1db

    move-result v0

    if-eq v0, v3, :cond_1e9

    goto :goto_1d8

    :pswitch_208
    :try_start_208
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    iget-object v1, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    monitor-enter v1
    :try_end_20d
    .catch Ljava/lang/Throwable; {:try_start_208 .. :try_end_20d} :catch_29

    :try_start_20d
    iget-object v0, p0, Lcom/loc/ci;->bkH:Lcom/loc/cv;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/loc/cv;->bGv(Lcom/loc/cv;Z)Z

    iget-object v0, p0, Lcom/loc/ci;->bkF:Lcom/loc/cv;

    iget-object v0, v0, Lcom/loc/cv;->bll:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    goto/16 :goto_8

    :catchall_21d
    move-exception v0

    monitor-exit v1
    :try_end_21f
    .catchall {:try_start_20d .. :try_end_21f} :catchall_21d

    :try_start_21f
    throw v0
    :try_end_220
    .catch Ljava/lang/Throwable; {:try_start_21f .. :try_end_220} :catch_29

    :pswitch_data_220
    .packed-switch 0x0
        :pswitch_c
        :pswitch_34
        :pswitch_146
        :pswitch_14d
        :pswitch_154
        :pswitch_18e
        :pswitch_8
        :pswitch_208
        :pswitch_1cd
    .end packed-switch
.end method
