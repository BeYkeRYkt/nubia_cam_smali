.class public Lcom/loc/bQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/location/c;


# static fields
.field public static bit:Z


# instance fields
.field private bhW:I

.field private bhX:Z

.field private bhY:Landroid/content/Context;

.field bhZ:Lcom/amap/api/location/d;

.field biA:Ljava/util/concurrent/Callable;

.field private biB:Landroid/content/ServiceConnection;

.field private biC:Ljava/util/LinkedList;

.field private biD:Ljava/util/LinkedList;

.field private biE:I

.field private biF:Lcom/amap/api/location/AMapLocation;

.field biG:Z

.field biH:Z

.field private biI:Lorg/json/JSONObject;

.field public bia:Lcom/loc/K;

.field bib:Lcom/loc/Z;

.field private bic:Z

.field private bid:Z

.field bie:Ljava/util/ArrayList;

.field bif:Lcom/loc/bS;

.field big:Z

.field private bih:J

.field private bii:J

.field private bij:J

.field public bik:Z

.field bil:Lcom/loc/C;

.field bim:Landroid/os/Messenger;

.field bin:Landroid/os/Messenger;

.field bio:Landroid/content/Intent;

.field bip:Z

.field biq:Lcom/amap/api/location/AMapLocation;

.field bir:J

.field bis:J

.field biu:Ljava/util/concurrent/ScheduledExecutorService;

.field biv:Lcom/loc/aD;

.field biw:Lcom/loc/g;

.field bix:Ljava/util/concurrent/ScheduledFuture;

.field biy:Ljava/util/concurrent/ScheduledFuture;

.field biz:Ljava/util/concurrent/Future;

.field l:I

.field n:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/loc/bQ;->bit:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/loc/bQ;->bhW:I

    iput-boolean v2, p0, Lcom/loc/bQ;->bhX:Z

    iput-object v1, p0, Lcom/loc/bQ;->bib:Lcom/loc/Z;

    iput-boolean v2, p0, Lcom/loc/bQ;->bic:Z

    iput-boolean v3, p0, Lcom/loc/bQ;->bid:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bQ;->bie:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/loc/bQ;->big:Z

    iput-wide v4, p0, Lcom/loc/bQ;->bih:J

    iput-wide v4, p0, Lcom/loc/bQ;->bii:J

    iput-wide v4, p0, Lcom/loc/bQ;->bij:J

    iput-boolean v3, p0, Lcom/loc/bQ;->bik:Z

    iput-object v1, p0, Lcom/loc/bQ;->bim:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/loc/bQ;->bin:Landroid/os/Messenger;

    iput-object v1, p0, Lcom/loc/bQ;->bio:Landroid/content/Intent;

    iput v2, p0, Lcom/loc/bQ;->l:I

    iput-boolean v2, p0, Lcom/loc/bQ;->bip:Z

    iput-wide v4, p0, Lcom/loc/bQ;->n:J

    iput-object v1, p0, Lcom/loc/bQ;->biq:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/loc/bQ;->bir:J

    iput-wide v4, p0, Lcom/loc/bQ;->bis:J

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bQ;->biu:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, p0, Lcom/loc/bQ;->biv:Lcom/loc/aD;

    iput-object v1, p0, Lcom/loc/bQ;->biw:Lcom/loc/g;

    iput-object v1, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    iput-object v1, p0, Lcom/loc/bQ;->biy:Ljava/util/concurrent/ScheduledFuture;

    iput-object v1, p0, Lcom/loc/bQ;->biz:Ljava/util/concurrent/Future;

    new-instance v0, Lcom/loc/aU;

    invoke-direct {v0, p0}, Lcom/loc/aU;-><init>(Lcom/loc/bQ;)V

    iput-object v0, p0, Lcom/loc/bQ;->biA:Ljava/util/concurrent/Callable;

    new-instance v0, Lcom/loc/bm;

    invoke-direct {v0, p0}, Lcom/loc/bm;-><init>(Lcom/loc/bQ;)V

    iput-object v0, p0, Lcom/loc/bQ;->biB:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/loc/bQ;->biC:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/loc/bQ;->biD:Ljava/util/LinkedList;

    iput v2, p0, Lcom/loc/bQ;->biE:I

    iput-object v1, p0, Lcom/loc/bQ;->biF:Lcom/amap/api/location/AMapLocation;

    iput-boolean v2, p0, Lcom/loc/bQ;->biG:Z

    iput-boolean v2, p0, Lcom/loc/bQ;->biH:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/bQ;->bio:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/loc/bQ;->c()V

    new-instance v0, Lcom/loc/aD;

    invoke-direct {v0, p0}, Lcom/loc/aD;-><init>(Lcom/loc/bQ;)V

    iput-object v0, p0, Lcom/loc/bQ;->biv:Lcom/loc/aD;

    new-instance v0, Lcom/loc/g;

    invoke-direct {v0, p0}, Lcom/loc/g;-><init>(Lcom/loc/bQ;)V

    iput-object v0, p0, Lcom/loc/bQ;->biw:Lcom/loc/g;

    return-void
.end method

.method private a(I)V
    .registers 8

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "wifiactivescan"

    iget-object v3, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v3}, Lcom/amap/api/location/d;->bve()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isNeedAddress"

    iget-object v3, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v3}, Lcom/amap/api/location/d;->bvc()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isKillProcess"

    iget-object v3, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v3}, Lcom/amap/api/location/d;->bvh()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "isOffset"

    iget-object v3, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v3}, Lcom/amap/api/location/d;->bvk()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "httptimeout"

    iget-object v3, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v3}, Lcom/amap/api/location/d;->bvj()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v2, "isLocationCacheEnable"

    iget-object v3, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v3}, Lcom/amap/api/location/d;->bvl()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/loc/bQ;->bin:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/bQ;->bim:Landroid/os/Messenger;

    if-nez v1, :cond_5f

    :goto_5e
    return-void

    :cond_5f
    iget-object v1, p0, Lcom/loc/bQ;->bim:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_64} :catch_65

    goto :goto_5e

    :catch_65
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "sendLocMessage"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e
.end method

.method private a(J)V
    .registers 10

    :try_start_0
    iget-object v0, p0, Lcom/loc/bQ;->biy:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_18

    :cond_4
    iget-object v0, p0, Lcom/loc/bQ;->biu:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/loc/bQ;->biv:Lcom/loc/aD;

    iget-object v2, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v2}, Lcom/amap/api/location/d;->buZ()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, p1

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bQ;->biy:Ljava/util/concurrent/ScheduledFuture;

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/loc/bQ;->biy:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_21

    move-result v0

    if-nez v0, :cond_4

    goto :goto_17

    :catch_21
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "startNetLocationTask"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method private a()Z
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_2
    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_4} :catch_30
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_4} :catch_8b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_4} :catch_9b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4} :catch_ab
    .catchall {:try_start_2 .. :try_end_4} :catchall_4a

    if-nez v0, :cond_11

    :cond_6
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_81

    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/loc/bQ;->bim:Landroid/os/Messenger;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_c} :catch_3f

    if-eqz v0, :cond_50

    move v0, v1

    :goto_f
    move v2, v0

    :goto_10
    return v2

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v4, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/ScheduledFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/loc/bQ;->bim:Landroid/os/Messenger;
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_2f} :catch_30
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_11 .. :try_end_2f} :catch_8b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_2f} :catch_9b
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_2f} :catch_ab
    .catchall {:try_start_11 .. :try_end_2f} :catchall_4a

    goto :goto_6

    :catch_30
    move-exception v0

    :try_start_31
    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3e} :catch_3f

    goto :goto_a

    :catch_3f
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v3, "checkAPSManager"

    invoke-static {v0, v1, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :catchall_4a
    move-exception v0

    :try_start_4b
    iget-object v1, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_bb

    :goto_4f
    throw v0

    :cond_50
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    const-string/jumbo v4, "\u8bf7\u68c0\u67e5\u914d\u7f6e\u6587\u4ef6\u662f\u5426\u914d\u7f6e\u670d\u52a1"

    invoke-virtual {v3, v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V

    const-string/jumbo v4, "location"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    if-nez v1, :cond_7b

    :goto_79
    move v0, v2

    goto :goto_f

    :cond_7b
    iget-object v1, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    invoke-virtual {v1, v0}, Lcom/loc/K;->sendMessage(Landroid/os/Message;)Z

    goto :goto_79

    :cond_81
    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_a

    :catch_8b
    move-exception v0

    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_a

    :catch_9b
    move-exception v0

    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_a

    :catch_ab
    move-exception v0

    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    goto/16 :goto_a

    :cond_bb
    iget-object v1, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_c4} :catch_3f

    goto :goto_4f
.end method

.method private b()V
    .registers 6

    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_13

    :cond_4
    iget-object v0, p0, Lcom/loc/bQ;->biu:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/loc/bQ;->biA:Ljava/util/concurrent/Callable;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_12
.end method

.method private bCC(Landroid/content/Intent;)V
    .registers 5

    if-eqz p1, :cond_2d

    :goto_2
    :try_start_2
    const-string/jumbo v0, "apiKey"

    invoke-static {}, Lcom/amap/api/location/d;->buX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/M;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "packageName"

    iget-object v2, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sha1AndPackage"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bQ;->biB:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :goto_2c
    return-void

    :cond_2d
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    const-class v1, Lcom/amap/api/location/APSService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_36} :catch_37

    goto :goto_2

    :catch_37
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "startServiceImpl"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method

.method private bCD(Lcom/amap/api/location/AMapLocation;)V
    .registers 5

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->buw()I

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/bQ;->biq:Lcom/amap/api/location/AMapLocation;

    invoke-direct {p0, v2, p1}, Lcom/loc/bQ;->bCG(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    invoke-direct {p0, v2}, Lcom/loc/bQ;->bCK(Lcom/amap/api/location/AMapLocation;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_17} :catch_18

    goto :goto_6

    :catch_18
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "handleMessage"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private bCE(Lcom/amap/api/location/AMapLocation;)V
    .registers 4

    :try_start_0
    const-string/jumbo v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_d
    iget-object v0, p0, Lcom/loc/bQ;->bie:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    :goto_19
    return-void

    :cond_1a
    invoke-direct {p0}, Lcom/loc/bQ;->j()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_19

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/a;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_27} :catch_2d

    :try_start_27
    invoke-interface {v0, p1}, Lcom/amap/api/location/a;->ank(Lcom/amap/api/location/AMapLocation;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2d

    goto :goto_13

    :catch_2b
    move-exception v0

    goto :goto_13

    :catch_2d
    move-exception v0

    goto :goto_19
.end method

.method private bCF(Lcom/amap/api/location/AMapLocation;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/bQ;->bif:Lcom/loc/bS;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_20

    if-nez v0, :cond_f

    :goto_4
    if-nez p1, :cond_2b

    :cond_6
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->bvb()Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_46
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_20

    move-result v0

    if-nez v0, :cond_55

    :goto_e
    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/loc/bQ;->bif:Lcom/loc/bS;

    invoke-virtual {v0, p1}, Lcom/loc/bS;->bDI(Lcom/amap/api/location/AMapLocation;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_15
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_20

    goto :goto_4

    :catch_15
    move-exception v0

    :try_start_16
    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "handlerLocation part1"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1f} :catch_20

    goto :goto_4

    :catch_20
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "handlerLocation part3"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_2b
    :try_start_2b
    iget-boolean v0, p0, Lcom/loc/bQ;->bid:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->buw()I

    move-result v0

    if-eqz v0, :cond_51

    :goto_35
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bQ;->bir:J

    iput-object p1, p0, Lcom/loc/bQ;->biq:Lcom/amap/api/location/AMapLocation;

    invoke-direct {p0, p1}, Lcom/loc/bQ;->bCE(Lcom/amap/api/location/AMapLocation;)V

    iget-object v0, p0, Lcom/loc/bQ;->bil:Lcom/loc/C;

    invoke-virtual {v0, p1}, Lcom/loc/C;->bws(Lcom/amap/api/location/AMapLocation;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_45} :catch_46
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_45} :catch_20

    goto :goto_6

    :catch_46
    move-exception v0

    :try_start_47
    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "handlerLocation part2"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_50} :catch_20

    goto :goto_e

    :cond_51
    :try_start_51
    invoke-direct {p0, p1}, Lcom/loc/bQ;->bCD(Lcom/amap/api/location/AMapLocation;)V

    goto :goto_35

    :cond_55
    invoke-virtual {p0}, Lcom/loc/bQ;->buW()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_58} :catch_46
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_58} :catch_20

    goto :goto_e
.end method

.method private bCG(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .registers 16

    const/4 v12, 0x3

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/loc/bQ;->biF:Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v4

    if-nez p1, :cond_12

    :cond_d
    iput-wide v10, p0, Lcom/loc/bQ;->bis:J

    iput v2, p0, Lcom/loc/bQ;->biE:I

    return-object p2

    :cond_12
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->but()I

    move-result v0

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/loc/bQ;->bhW:I

    if-le v0, v12, :cond_d

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->but()I

    move-result v0

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/loc/bQ;->biD:Ljava/util/LinkedList;

    if-nez v0, :cond_a9

    :cond_26
    :goto_26
    iput-wide v10, p0, Lcom/loc/bQ;->bis:J

    iput v2, p0, Lcom/loc/bQ;->biE:I

    return-object p2

    :cond_2b
    iget-wide v6, p0, Lcom/loc/bQ;->bir:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1388

    cmp-long v0, v6, v8

    if-ltz v0, :cond_a1

    move v0, v1

    :goto_36
    if-nez v0, :cond_a5

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v3

    add-float/2addr v0, v3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    long-to-float v3, v6

    mul-float/2addr v0, v3

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v6

    add-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v3, v6

    const/4 v6, 0x4

    new-array v6, v6, [D

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v6, v2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v6, v1

    const/4 v7, 0x2

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v6, v12

    invoke-static {v6}, Lcom/loc/X;->bxg([D)F

    move-result v6

    add-float/2addr v0, v3

    const v3, 0x453b8000    # 3000.0f

    add-float/2addr v0, v3

    cmpl-float v0, v6, v0

    if-lez v0, :cond_26

    iget-wide v6, p0, Lcom/loc/bQ;->bis:J

    cmp-long v0, v6, v10

    if-nez v0, :cond_90

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/loc/bQ;->bis:J

    :cond_90
    iget-wide v6, p0, Lcom/loc/bQ;->bis:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-ltz v0, :cond_a3

    move v0, v1

    :goto_9a
    if-nez v0, :cond_26

    iput-boolean v1, p0, Lcom/loc/bQ;->bhX:Z

    iput v1, p0, Lcom/loc/bQ;->biE:I

    return-object p1

    :cond_a1
    move v0, v2

    goto :goto_36

    :cond_a3
    move v0, v2

    goto :goto_9a

    :cond_a5
    iput v2, p0, Lcom/loc/bQ;->bhW:I

    goto/16 :goto_26

    :cond_a9
    iget-object v0, p0, Lcom/loc/bQ;->biD:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/loc/bQ;->biC:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_26
.end method

.method private bCH(Lcom/amap/api/location/AMapLocation;I)Lcom/loc/ca;
    .registers 4

    new-instance v0, Lcom/loc/ca;

    invoke-direct {v0, p0, p1, p2}, Lcom/loc/ca;-><init>(Lcom/loc/bQ;Lcom/amap/api/location/AMapLocation;I)V

    return-object v0
.end method

.method private bCI(Lcom/loc/cd;)V
    .registers 6

    :try_start_0
    const-string/jumbo v0, ""

    const-string/jumbo v0, ""

    iget-object v0, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/M;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e3

    :goto_12
    move-object v1, v0

    invoke-static {}, Lcom/amap/api/location/d;->buX()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e8

    iget-object v0, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/M;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f8

    :goto_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "api_serverSDK_130905##S128DF1572465B890OE3F7A13167KLEI##"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/loc/cd;->a(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4b} :catch_ed

    :try_start_4b
    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v1, "netloc"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v1, "gpsstatus"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v1, "nbssid"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v1, "wait1stwifi"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v1, "autoup"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v1, "upcolmobile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v1, "enablegetreq"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v1, "reversegeo"

    iget-object v2, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v2}, Lcom/amap/api/location/d;->bvc()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v1, "isOffset"

    iget-object v2, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v2}, Lcom/amap/api/location/d;->bvk()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v2, "wifiactivescan"

    iget-object v0, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->bve()Z

    move-result v0

    if-nez v0, :cond_fd

    const-string/jumbo v0, "0"

    :goto_c0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v1, "httptimeout"

    iget-object v2, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v2}, Lcom/amap/api/location/d;->bvj()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v1, "isLocationCacheEnable"

    iget-object v2, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v2}, Lcom/amap/api/location/d;->bvl()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_df} :catch_101
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_df} :catch_ed

    :goto_df
    const/4 v0, 0x1

    :try_start_e0
    iput-boolean v0, p0, Lcom/loc/bQ;->biH:Z

    :goto_e2
    return-void

    :cond_e3
    const-string/jumbo v0, "null"

    goto/16 :goto_12

    :cond_e8
    invoke-static {v0}, Lcom/loc/ae;->a(Ljava/lang/String;)V
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_eb} :catch_ed

    goto/16 :goto_23

    :catch_ed
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "initAPSBase 2"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e2

    :cond_f8
    :try_start_f8
    const-string/jumbo v0, "null"
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_f8 .. :try_end_fb} :catch_ed

    goto/16 :goto_29

    :cond_fd
    :try_start_fd
    const-string/jumbo v0, "1"
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_fd .. :try_end_100} :catch_101
    .catch Ljava/lang/Throwable; {:try_start_fd .. :try_end_100} :catch_ed

    goto :goto_c0

    :catch_101
    move-exception v0

    :try_start_102
    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "initAPSBase "

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_102 .. :try_end_10b} :catch_ed

    goto :goto_df
.end method

.method private bCJ(Lcom/loc/cd;ZZ)V
    .registers 7

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/bQ;->biH:Z

    if-eqz v0, :cond_13

    :goto_4
    if-eqz p2, :cond_22

    :goto_6
    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/loc/cd;->bEs(Lorg/json/JSONObject;)V

    if-nez p2, :cond_47

    iget-object v0, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    invoke-virtual {p1, v0, p3}, Lcom/loc/cd;->bEr(Landroid/content/Context;Z)Z

    :goto_12
    return-void

    :cond_13
    invoke-direct {p0, p1}, Lcom/loc/bQ;->bCI(Lcom/loc/cd;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_4

    :catch_17
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "initAPS part3"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v1, "key"

    iget-object v2, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    invoke-static {v2}, Lcom/loc/M;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/loc/bQ;->biI:Lorg/json/JSONObject;

    const-string/jumbo v1, "User-Agent"

    const-string/jumbo v2, "AMAP_Location_SDK_Android 2.5.1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_3b} :catch_17

    goto :goto_6

    :catch_3c
    move-exception v0

    :try_start_3d
    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "initAPS part2"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_47
    iget-object v0, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/loc/cd;->a(Landroid/content/Context;)Z
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_4c} :catch_17

    goto :goto_12
.end method

.method private bCK(Lcom/amap/api/location/AMapLocation;)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/loc/bQ;->biE:I

    invoke-direct {p0, p1, v0}, Lcom/loc/bQ;->bCH(Lcom/amap/api/location/AMapLocation;I)Lcom/loc/ca;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bQ;->biF:Lcom/amap/api/location/AMapLocation;

    iget v2, p0, Lcom/loc/bQ;->biE:I

    invoke-direct {p0, v1, v2}, Lcom/loc/bQ;->bCH(Lcom/amap/api/location/AMapLocation;I)Lcom/loc/ca;

    move-result-object v1

    iget-boolean v2, p0, Lcom/loc/bQ;->bhX:Z

    if-eqz v2, :cond_2e

    iget v2, p0, Lcom/loc/bQ;->biE:I

    if-eqz v2, :cond_43

    iget-object v0, p0, Lcom/loc/bQ;->biD:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1c
    iget-object v0, p0, Lcom/loc/bQ;->biC:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/loc/bQ;->biD:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_49

    :goto_2d
    return-void

    :cond_2e
    iget-object v1, p0, Lcom/loc/bQ;->biC:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_3d

    :goto_37
    iget-object v1, p0, Lcom/loc/bQ;->biC:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3d
    iget-object v1, p0, Lcom/loc/bQ;->biC:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_37

    :cond_43
    iget-object v1, p0, Lcom/loc/bQ;->biD:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_49
    iget-object v0, p0, Lcom/loc/bQ;->biC:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/loc/bQ;->biD:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/loc/bQ;->biC:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bx;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bQ;->biC:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/loc/bQ;->biD:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iput-boolean v3, p0, Lcom/loc/bQ;->bhX:Z

    goto :goto_2d

    :cond_7e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ca;

    invoke-virtual {v0}, Lcom/loc/ca;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5b
.end method

.method private bCL(Lcom/amap/api/location/a;)V
    .registers 4

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/loc/bQ;->bie:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    :goto_6
    iget-object v0, p0, Lcom/loc/bQ;->bie:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    :goto_e
    return-void

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/bQ;->bie:Ljava/util/ArrayList;

    goto :goto_6

    :cond_20
    iget-object v0, p0, Lcom/loc/bQ;->bie:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method private bCM()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bQ;->h()V

    invoke-direct {p0}, Lcom/loc/bQ;->i()V

    iget-object v0, p0, Lcom/loc/bQ;->biC:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/loc/bQ;->biD:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bQ;->bip:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bQ;->bid:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bQ;->n:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/bQ;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bQ;->biq:Lcom/amap/api/location/AMapLocation;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bQ;->bir:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bQ;->bhX:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/bQ;->biE:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/bQ;->bhW:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bQ;->biF:Lcom/amap/api/location/AMapLocation;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method private bCN(Lcom/amap/api/fence/Fence;)V
    .registers 4

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/loc/bQ;->bif:Lcom/loc/bS;

    if-nez v0, :cond_8

    :goto_6
    return-void

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/loc/bQ;->bif:Lcom/loc/bS;

    iget-object v1, p1, Lcom/amap/api/fence/Fence;->bda:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Lcom/loc/bS;->bDE(Lcom/amap/api/fence/Fence;Landroid/app/PendingIntent;)Z

    goto :goto_6
.end method

.method private bCO(Lcom/amap/api/fence/Fence;)V
    .registers 5

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/loc/bQ;->bif:Lcom/loc/bS;

    if-nez v0, :cond_8

    :goto_6
    return-void

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/loc/bQ;->bif:Lcom/loc/bS;

    iget-object v1, p1, Lcom/amap/api/fence/Fence;->bda:Landroid/app/PendingIntent;

    iget-object v2, p1, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/loc/bS;->bDG(Landroid/app/PendingIntent;Ljava/lang/String;)Z

    goto :goto_6
.end method

.method private bCP(Landroid/app/PendingIntent;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/loc/bQ;->bif:Lcom/loc/bS;

    if-nez v0, :cond_8

    :goto_6
    return-void

    :cond_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/loc/bQ;->bif:Lcom/loc/bS;

    invoke-virtual {v0, p1}, Lcom/loc/bS;->bDF(Landroid/app/PendingIntent;)Z

    goto :goto_6
.end method

.method private bCQ(Lcom/amap/api/location/a;)V
    .registers 3

    iget-object v0, p0, Lcom/loc/bQ;->bie:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/loc/bQ;->bie:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/loc/bQ;->bie:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/bQ;->bie:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_1f
    invoke-virtual {p0}, Lcom/loc/bQ;->buW()V

    goto :goto_10
.end method

.method private bCR()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/loc/bQ;->bik:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bQ;->bic:Z

    invoke-virtual {p0}, Lcom/loc/bQ;->buW()V

    iget-object v0, p0, Lcom/loc/bQ;->bif:Lcom/loc/bS;

    if-nez v0, :cond_26

    :goto_e
    iget-object v0, p0, Lcom/loc/bQ;->biB:Landroid/content/ServiceConnection;

    if-nez v0, :cond_2c

    :goto_12
    iget-object v0, p0, Lcom/loc/bQ;->bie:Ljava/util/ArrayList;

    if-nez v0, :cond_34

    :goto_16
    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_3c

    :goto_1a
    iget-object v0, p0, Lcom/loc/bQ;->biu:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Lcom/loc/bQ;->biB:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    if-nez v0, :cond_44

    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/loc/bQ;->bif:Lcom/loc/bS;

    invoke-virtual {v0}, Lcom/loc/bS;->a()V

    goto :goto_e

    :cond_2c
    iget-object v0, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bQ;->biB:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_12

    :cond_34
    iget-object v0, p0, Lcom/loc/bQ;->bie:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/loc/bQ;->bie:Ljava/util/ArrayList;

    goto :goto_16

    :cond_3c
    iget-object v0, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v2, p0, Lcom/loc/bQ;->bix:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1a

    :cond_44
    iget-object v0, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    invoke-virtual {v0, v2}, Lcom/loc/K;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_25
.end method

.method static synthetic bCS(Lcom/loc/bQ;)Z
    .registers 2

    invoke-direct {p0}, Lcom/loc/bQ;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic bCT(Lcom/loc/bQ;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/bQ;->m()V

    return-void
.end method

.method static synthetic bCU(Lcom/loc/bQ;)Z
    .registers 2

    invoke-direct {p0}, Lcom/loc/bQ;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic bCV(Lcom/loc/bQ;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/loc/bQ;->bic:Z

    return p1
.end method

.method static synthetic bCW(Lcom/loc/bQ;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/bQ;->a(I)V

    return-void
.end method

.method static synthetic bCX(Lcom/loc/bQ;I)I
    .registers 2

    iput p1, p0, Lcom/loc/bQ;->bhW:I

    return p1
.end method

.method static synthetic bCY(Lcom/loc/bQ;Lcom/amap/api/location/AMapLocation;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/bQ;->bCF(Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method

.method static synthetic bCZ(Lcom/loc/bQ;)I
    .registers 3

    iget v0, p0, Lcom/loc/bQ;->bhW:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/loc/bQ;->bhW:I

    return v0
.end method

.method static synthetic bDa(Lcom/loc/bQ;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/bQ;->k()V

    return-void
.end method

.method static synthetic bDb(Lcom/loc/bQ;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/bQ;->bCC(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic bDc(Lcom/loc/bQ;Lcom/amap/api/location/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/bQ;->bCL(Lcom/amap/api/location/a;)V

    return-void
.end method

.method static synthetic bDd(Lcom/loc/bQ;Lcom/amap/api/location/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/bQ;->bCQ(Lcom/amap/api/location/a;)V

    return-void
.end method

.method static synthetic bDe(Lcom/loc/bQ;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/bQ;->n()V

    return-void
.end method

.method static synthetic bDf(Lcom/loc/bQ;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/bQ;->bCM()V

    return-void
.end method

.method static synthetic bDg(Lcom/loc/bQ;Lcom/amap/api/fence/Fence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/bQ;->bCN(Lcom/amap/api/fence/Fence;)V

    return-void
.end method

.method static synthetic bDh(Lcom/loc/bQ;Landroid/app/PendingIntent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/bQ;->bCP(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic bDi(Lcom/loc/bQ;Lcom/amap/api/fence/Fence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/bQ;->bCO(Lcom/amap/api/fence/Fence;)V

    return-void
.end method

.method static synthetic bDj(Lcom/loc/bQ;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/bQ;->bCR()V

    return-void
.end method

.method static synthetic bDk(Lcom/loc/bQ;)V
    .registers 1

    invoke-direct {p0}, Lcom/loc/bQ;->l()V

    return-void
.end method

.method private c()V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_39

    new-instance v0, Lcom/loc/K;

    invoke-direct {v0, p0}, Lcom/loc/K;-><init>(Lcom/loc/bQ;)V

    :goto_b
    iput-object v0, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    invoke-direct {p0}, Lcom/loc/bQ;->d()V

    invoke-direct {p0}, Lcom/loc/bQ;->b()V

    iget-object v0, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/C;->a(Landroid/content/Context;)Lcom/loc/C;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bQ;->bil:Lcom/loc/C;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/bQ;->bin:Landroid/os/Messenger;

    new-instance v0, Lcom/loc/Z;

    iget-object v1, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    invoke-direct {v0, v1, v2}, Lcom/loc/Z;-><init>(Landroid/content/Context;Lcom/loc/K;)V

    iput-object v0, p0, Lcom/loc/bQ;->bib:Lcom/loc/Z;

    :try_start_2f
    new-instance v0, Lcom/loc/bS;

    iget-object v1, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/bS;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/bQ;->bif:Lcom/loc/bS;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_38} :catch_45

    :goto_38
    return-void

    :cond_39
    new-instance v0, Lcom/loc/K;

    iget-object v1, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/loc/K;-><init>(Lcom/loc/bQ;Landroid/os/Looper;)V

    goto :goto_b

    :catch_45
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method private d()V
    .registers 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/bQ;->bio:Landroid/content/Intent;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    invoke-virtual {v1, v0}, Lcom/loc/K;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private e()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bQ;->h()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/loc/bQ;->a(J)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "batterySavingLocaiton"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method private f()V
    .registers 4

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/loc/bQ;->g()V

    iget-object v2, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v2}, Lcom/amap/api/location/d;->bvi()Z

    move-result v2

    if-nez v2, :cond_11

    :goto_d
    invoke-direct {p0, v0, v1}, Lcom/loc/bQ;->a(J)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_10} :catch_14

    :goto_10
    return-void

    :cond_11
    const-wide/16 v0, 0x7530

    goto :goto_d

    :catch_14
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "hightAccuracyLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private g()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v0}, Lcom/amap/api/location/d;->bvf()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->bcX:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_e
    iget-object v0, p0, Lcom/loc/bQ;->biz:Ljava/util/concurrent/Future;

    if-nez v0, :cond_2c

    :cond_12
    iget-object v0, p0, Lcom/loc/bQ;->biu:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/loc/bQ;->biw:Lcom/loc/g;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bQ;->biz:Ljava/util/concurrent/Future;

    :goto_1c
    return-void

    :cond_1d
    invoke-direct {p0}, Lcom/loc/bQ;->i()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_e

    :catch_21
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "deviceSensorsLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/loc/bQ;->biz:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_31} :catch_21

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1c
.end method

.method private h()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/bQ;->biz:Ljava/util/concurrent/Future;

    if-nez v0, :cond_a

    :goto_4
    iget-object v0, p0, Lcom/loc/bQ;->bib:Lcom/loc/Z;

    invoke-virtual {v0}, Lcom/loc/Z;->a()V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/loc/bQ;->biz:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bQ;->biz:Ljava/util/concurrent/Future;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_4

    :catch_14
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "stopGPSLocationTask"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private i()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/bQ;->biy:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/loc/bQ;->biy:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bQ;->biy:Ljava/util/concurrent/ScheduledFuture;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_4

    :catch_f
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "stopNetLocationTask"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private j()Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/loc/bQ;->n:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-gtz v0, :cond_13

    move v0, v1

    :goto_10
    if-nez v0, :cond_15

    return v1

    :cond_13
    move v0, v2

    goto :goto_10

    :cond_15
    return v2
.end method

.method private k()V
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_14

    move v1, v0

    :cond_14
    :goto_14
    if-nez v1, :cond_1c

    invoke-direct {p0}, Lcom/loc/bQ;->l()V

    :goto_19
    return-void

    :cond_1a
    move v0, v1

    goto :goto_14

    :cond_1c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/loc/bR;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v2, ""

    invoke-static {}, Lcom/loc/bR;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    :cond_37
    :goto_37
    invoke-static {}, Lcom/loc/bR;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/P;

    invoke-direct {v3, p0}, Lcom/loc/P;-><init>(Lcom/loc/bQ;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v0, :cond_72

    :goto_49
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_50} :catch_51

    goto :goto_19

    :catch_51
    move-exception v0

    invoke-direct {p0}, Lcom/loc/bQ;->l()V

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "showDialog"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_5f
    :try_start_5f
    invoke-static {}, Lcom/loc/bR;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-static {}, Lcom/loc/bR;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/loc/aE;

    invoke-direct {v3, p0}, Lcom/loc/aE;-><init>(Lcom/loc/bQ;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_37

    :cond_72
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_7b} :catch_51

    goto :goto_49
.end method

.method private l()V
    .registers 5

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.autonavi.minimap"

    invoke-static {}, Lcom/loc/bR;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/loc/bR;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "callAMap part1"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_34
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {}, Lcom/loc/bR;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/loc/bQ;->bhY:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_4e} :catch_4f

    goto :goto_29

    :catch_4f
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "callAMap part2"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method private m()V
    .registers 8

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v3, Lcom/loc/cd;

    invoke-direct {v3}, Lcom/loc/cd;-><init>()V

    iget-object v4, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v4}, Lcom/amap/api/location/d;->bvl()Z

    move-result v4

    if-nez v4, :cond_39

    :goto_10
    if-nez v0, :cond_4c

    :cond_12
    invoke-direct {p0, v3, v1, v1}, Lcom/loc/bQ;->bCJ(Lcom/loc/cd;ZZ)V

    const/4 v4, 0x0

    :try_start_16
    invoke-virtual {v3, v4}, Lcom/loc/cd;->bEY(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_53

    move-result-object v0

    move v1, v2

    :goto_1b
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "location"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v4, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput v2, v4, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    if-nez v2, :cond_5e

    :goto_33
    if-nez v1, :cond_64

    :cond_35
    :goto_35
    invoke-virtual {v3}, Lcom/loc/cd;->c()V

    return-void

    :cond_39
    invoke-direct {p0, v3, v2, v1}, Lcom/loc/bQ;->bCJ(Lcom/loc/cd;ZZ)V

    :try_start_3c
    invoke-virtual {v3}, Lcom/loc/cd;->h()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_41

    move-result-object v0

    goto :goto_10

    :catch_41
    move-exception v4

    const-string/jumbo v5, "AMapLocationManager"

    const-string/jumbo v6, "doAPSLocation:doFirstCacheLocate"

    invoke-static {v4, v5, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :cond_4c
    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_1b

    :catch_53
    move-exception v4

    const-string/jumbo v5, "AMapLocationManager"

    const-string/jumbo v6, "doAPSLocation:doFirstNetLocate"

    invoke-static {v4, v5, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_5e
    iget-object v2, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    invoke-virtual {v2, v4}, Lcom/loc/K;->sendMessage(Landroid/os/Message;)Z

    goto :goto_33

    :cond_64
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_66
    invoke-direct {p0, v3, v1, v2}, Lcom/loc/bQ;->bCJ(Lcom/loc/cd;ZZ)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/loc/cd;->bEY(Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_6d} :catch_83

    move-result-object v0

    :goto_6e
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHv()I

    move-result v1

    if-nez v1, :cond_35

    :try_start_74
    invoke-virtual {v3, v0}, Lcom/loc/cd;->bEZ(Lcom/autonavi/aps/amapapi/model/AmapLoc;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_35

    :catch_78
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "doAPSLocation:doFirstAddCache"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    :catch_83
    move-exception v1

    const-string/jumbo v2, "AMapLocationManager"

    const-string/jumbo v4, "doAPSLocation:doFirstNetLocate 2"

    invoke-static {v1, v2, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    if-eqz v0, :cond_19

    :goto_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bQ;->bid:Z

    sget-object v0, Lcom/loc/j;->a:[I

    iget-object v1, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    invoke-virtual {v1}, Lcom/amap/api/location/d;->bvf()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    :goto_18
    return-void

    :cond_19
    new-instance v0, Lcom/amap/api/location/d;

    invoke-direct {v0}, Lcom/amap/api/location/d;-><init>()V

    iput-object v0, p0, Lcom/loc/bQ;->bhZ:Lcom/amap/api/location/d;

    goto :goto_4

    :pswitch_21
    invoke-direct {p0}, Lcom/loc/bQ;->e()V

    goto :goto_18

    :pswitch_25
    invoke-direct {p0}, Lcom/loc/bQ;->g()V

    goto :goto_18

    :pswitch_29
    invoke-direct {p0}, Lcom/loc/bQ;->f()V

    goto :goto_18

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_21
        :pswitch_25
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public buU(Lcom/amap/api/location/a;)V
    .registers 5

    if-eqz p1, :cond_12

    :try_start_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    invoke-virtual {v1, v0}, Lcom/loc/K;->sendMessage(Landroid/os/Message;)Z

    :goto_11
    return-void

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1b} :catch_1b

    :catch_1b
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "setLocationListener"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public buV()V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    invoke-virtual {v1, v0}, Lcom/loc/K;->sendMessage(Landroid/os/Message;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public buW()V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    invoke-virtual {v1, v0}, Lcom/loc/K;->sendMessage(Landroid/os/Message;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onDestroy()V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3f3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/loc/bQ;->bia:Lcom/loc/K;

    invoke-virtual {v1, v0}, Lcom/loc/K;->sendMessage(Landroid/os/Message;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string/jumbo v1, "AMapLocationManager"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method
