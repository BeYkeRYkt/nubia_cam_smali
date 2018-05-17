.class public Lcom/loc/K;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field bee:Lcom/loc/bQ;


# direct methods
.method public constructor <init>(Lcom/loc/bQ;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    iput-object p1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    return-void
.end method

.method public constructor <init>(Lcom/loc/bQ;Landroid/os/Looper;)V
    .registers 4

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    iput-object p1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    if-eqz v0, :cond_f

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_1fa

    :cond_e
    :goto_e
    return-void

    :cond_f
    return-void

    :sswitch_10
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/loc/bQ;->bCX(Lcom/loc/bQ;I)I

    if-nez v0, :cond_2d

    :goto_1c
    iget-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    invoke-static {v0, v1}, Lcom/loc/bQ;->bCY(Lcom/loc/bQ;Lcom/amap/api/location/AMapLocation;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_21} :catch_22

    goto :goto_e

    :catch_22
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage LBS_LOCATIONSUCCESS"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2d
    :try_start_2d
    const-class v1, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-static {v0}, Lcom/loc/bx;->bBA(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    if-eqz v1, :cond_4c

    :goto_45
    const-string/jumbo v0, "lbs"

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V

    goto :goto_1c

    :cond_4c
    new-instance v1, Lcom/amap/api/location/AMapLocation;

    const-string/jumbo v0, ""

    invoke-direct {v1, v0}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/amap/api/location/AMapLocation;->bux(I)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_59} :catch_22

    goto :goto_45

    :sswitch_5a
    :try_start_5a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocation;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5e} :catch_1f7

    :try_start_5e
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->buw()I
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_8e

    move-result v1

    if-eqz v1, :cond_7b

    :goto_64
    :try_start_64
    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    iget-object v1, v1, Lcom/loc/bQ;->bim:Landroid/os/Messenger;

    if-nez v1, :cond_9d

    :goto_6a
    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    invoke-static {v1, v0}, Lcom/loc/bQ;->bCY(Lcom/loc/bQ;Lcom/amap/api/location/AMapLocation;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_6f} :catch_70

    goto :goto_e

    :catch_70
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "MHandler:handleMessage GPS_LOCATIONSUCCESS:NGPS"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_7b
    :try_start_7b
    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    invoke-static {v1}, Lcom/loc/bQ;->bCZ(Lcom/loc/bQ;)I

    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/loc/bQ;->n:J

    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/loc/bQ;->bip:Z
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_8d} :catch_8e

    goto :goto_64

    :catch_8e
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_92
    const-string/jumbo v2, "AMapLocationManager$MHandler"

    const-string/jumbo v3, "handleMessage GPS_LOCATIONSUCCESS"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_64

    :cond_9d
    :try_start_9d
    sget-boolean v1, Lcom/loc/bQ;->bit:Z

    if-eqz v1, :cond_a8

    :goto_a1
    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/loc/bQ;->bCW(Lcom/loc/bQ;I)V

    goto :goto_6a

    :cond_a8
    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/loc/bQ;->bCW(Lcom/loc/bQ;I)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/loc/bQ;->bit:Z
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_b1} :catch_70

    goto :goto_a1

    :sswitch_b2
    iget-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/bQ;->n:J

    iget-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    iput-boolean v4, v0, Lcom/loc/bQ;->bip:Z

    goto/16 :goto_e

    :sswitch_c0
    :try_start_c0
    iget-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    invoke-static {v0}, Lcom/loc/bQ;->bDa(Lcom/loc/bQ;)V
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_c5} :catch_c7

    goto/16 :goto_e

    :catch_c7
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage FASTSKY"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :sswitch_d3
    :try_start_d3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    iget-object v1, v1, Lcom/loc/bQ;->bim:Landroid/os/Messenger;

    if-nez v1, :cond_109

    iget-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    iget v1, v0, Lcom/loc/bQ;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/loc/bQ;->l:I

    iget-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    iget v0, v0, Lcom/loc/bQ;->l:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_e

    iget-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    iget-object v0, v0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    const/16 v1, 0x3f0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/K;->sendEmptyMessageDelayed(IJ)Z
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_fb} :catch_fd

    goto/16 :goto_e

    :catch_fd
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage START_SOCKET"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_109
    :try_start_109
    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    const/4 v2, 0x0

    iput v2, v1, Lcom/loc/bQ;->l:I

    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    iget-object v1, v1, Lcom/loc/bQ;->bim:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_115
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_115} :catch_fd

    goto/16 :goto_e

    :sswitch_117
    :try_start_117
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    iget-object v1, v1, Lcom/loc/bQ;->bim:Landroid/os/Messenger;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    iget-object v1, v1, Lcom/loc/bQ;->bim:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_12b
    .catch Ljava/lang/Throwable; {:try_start_117 .. :try_end_12b} :catch_12d

    goto/16 :goto_e

    :catch_12d
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage STOP_SOCKET"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :sswitch_139
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    invoke-static {v1, v0}, Lcom/loc/bQ;->bDb(Lcom/loc/bQ;Landroid/content/Intent;)V

    goto/16 :goto_e

    :sswitch_148
    :try_start_148
    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/a;

    invoke-static {v1, v0}, Lcom/loc/bQ;->bDc(Lcom/loc/bQ;Lcom/amap/api/location/a;)V
    :try_end_151
    .catch Ljava/lang/Throwable; {:try_start_148 .. :try_end_151} :catch_153

    goto/16 :goto_e

    :catch_153
    move-exception v0

    const-string/jumbo v1, "AMapLocationManage$MHandlerr"

    const-string/jumbo v2, "handleMessage SET_LISTENER"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :sswitch_15f
    :try_start_15f
    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/a;

    invoke-static {v1, v0}, Lcom/loc/bQ;->bDd(Lcom/loc/bQ;Lcom/amap/api/location/a;)V
    :try_end_168
    .catch Ljava/lang/Throwable; {:try_start_15f .. :try_end_168} :catch_16a

    goto/16 :goto_e

    :catch_16a
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage REMOVE_LISTENER"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :sswitch_176
    :try_start_176
    iget-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    invoke-static {v0}, Lcom/loc/bQ;->bDe(Lcom/loc/bQ;)V
    :try_end_17b
    .catch Ljava/lang/Throwable; {:try_start_176 .. :try_end_17b} :catch_17d

    goto/16 :goto_e

    :catch_17d
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage START_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :sswitch_189
    :try_start_189
    iget-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    invoke-static {v0}, Lcom/loc/bQ;->bDf(Lcom/loc/bQ;)V
    :try_end_18e
    .catch Ljava/lang/Throwable; {:try_start_189 .. :try_end_18e} :catch_190

    goto/16 :goto_e

    :catch_190
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage STOP_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :sswitch_19c
    :try_start_19c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/fence/Fence;

    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    invoke-static {v1, v0}, Lcom/loc/bQ;->bDg(Lcom/loc/bQ;Lcom/amap/api/fence/Fence;)V
    :try_end_1a5
    .catch Ljava/lang/Throwable; {:try_start_19c .. :try_end_1a5} :catch_1a7

    goto/16 :goto_e

    :catch_1a7
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage ADD_GEOFENCE"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :sswitch_1b3
    :try_start_1b3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    invoke-static {v1, v0}, Lcom/loc/bQ;->bDh(Lcom/loc/bQ;Landroid/app/PendingIntent;)V
    :try_end_1bc
    .catch Ljava/lang/Throwable; {:try_start_1b3 .. :try_end_1bc} :catch_1be

    goto/16 :goto_e

    :catch_1be
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage REMOVE_GEOFENCE"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :sswitch_1ca
    :try_start_1ca
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/fence/Fence;

    iget-object v1, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    invoke-static {v1, v0}, Lcom/loc/bQ;->bDi(Lcom/loc/bQ;Lcom/amap/api/fence/Fence;)V
    :try_end_1d3
    .catch Ljava/lang/Throwable; {:try_start_1ca .. :try_end_1d3} :catch_1d5

    goto/16 :goto_e

    :catch_1d5
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage REMOVE_GEOFENCE_ONE"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :sswitch_1e1
    :try_start_1e1
    iget-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;

    invoke-static {v0}, Lcom/loc/bQ;->bDj(Lcom/loc/bQ;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/K;->bee:Lcom/loc/bQ;
    :try_end_1e9
    .catch Ljava/lang/Throwable; {:try_start_1e1 .. :try_end_1e9} :catch_1eb

    goto/16 :goto_e

    :catch_1eb
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager$MHandler"

    const-string/jumbo v2, "handleMessage DESTROY"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    :catch_1f7
    move-exception v0

    goto/16 :goto_92

    :sswitch_data_1fa
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_5a
        0x5 -> :sswitch_b2
        0x64 -> :sswitch_c0
        0x67 -> :sswitch_139
        0x3ea -> :sswitch_148
        0x3eb -> :sswitch_176
        0x3ec -> :sswitch_189
        0x3ed -> :sswitch_15f
        0x3ee -> :sswitch_19c
        0x3ef -> :sswitch_1b3
        0x3f0 -> :sswitch_d3
        0x3f1 -> :sswitch_117
        0x3f2 -> :sswitch_1ca
        0x3f3 -> :sswitch_1e1
    .end sparse-switch
.end method
