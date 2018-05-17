.class Lcom/loc/v;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic bdP:Lcom/loc/cd;


# direct methods
.method private constructor <init>(Lcom/loc/cd;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/cd;Lcom/loc/az;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/loc/v;-><init>(Lcom/loc/cd;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    return-void

    :cond_4
    if-eqz p2, :cond_3

    :try_start_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {v2}, Lcom/loc/cd;->bFj(Lcom/loc/cd;)Lcom/loc/r;

    move-result-object v2

    const-string/jumbo v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string/jumbo v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    const-string/jumbo v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f2

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f9

    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string/jumbo v0, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_52} :catch_71

    move-result v0

    if-nez v0, :cond_10d

    :cond_55
    :goto_55
    :pswitch_55
    return-void

    :cond_56
    return-void

    :cond_57
    if-eqz v2, :cond_7c

    :try_start_59
    invoke-virtual {v2}, Lcom/loc/r;->a()Ljava/util/List;
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5c} :catch_7d
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5c} :catch_71

    move-result-object v0

    :goto_5d
    if-nez v0, :cond_88

    :goto_5f
    :try_start_5f
    iget-object v0, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFl(Lcom/loc/cd;)Lcom/loc/af;

    move-result-object v0

    if-nez v0, :cond_a4

    :goto_67
    iget-object v0, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/loc/cd;->bFm(Lcom/loc/cd;J)J
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_70} :catch_71

    goto :goto_55

    :catch_71
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "onReceive"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_7c
    return-void

    :catch_7d
    move-exception v1

    :try_start_7e
    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "onReceive part1"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    :cond_88
    iget-object v1, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    iget-object v1, v1, Lcom/loc/cd;->bkr:Ljava/lang/Object;

    monitor-enter v1
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_8d} :catch_71

    :try_start_8d
    iget-object v2, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {v2}, Lcom/loc/cd;->bFk(Lcom/loc/cd;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {v2}, Lcom/loc/cd;->bFk(Lcom/loc/cd;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    goto :goto_5f

    :catchall_a1
    move-exception v0

    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_8d .. :try_end_a3} :catchall_a1

    :try_start_a3
    throw v0

    :cond_a4
    iget-object v0, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFl(Lcom/loc/cd;)Lcom/loc/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/af;->a()V

    goto :goto_67

    :cond_ae
    iget-object v0, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFj(Lcom/loc/cd;)Lcom/loc/r;
    :try_end_b3
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_b3} :catch_71

    move-result-object v0

    if-eqz v0, :cond_cd

    const/4 v0, 0x4

    :try_start_b7
    invoke-virtual {v2}, Lcom/loc/r;->c()I
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_ba} :catch_ce
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_ba} :catch_71

    move-result v0

    :goto_bb
    :try_start_bb
    iget-object v1, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {v1}, Lcom/loc/cd;->bFk(Lcom/loc/cd;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_d9

    :goto_c3
    packed-switch v0, :pswitch_data_11e

    goto :goto_55

    :pswitch_c7
    iget-object v0, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFo(Lcom/loc/cd;)V

    goto :goto_55

    :cond_cd
    return-void

    :catch_ce
    move-exception v1

    const-string/jumbo v2, "APS"

    const-string/jumbo v3, "onReceive part"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bb

    :cond_d9
    iget-object v1, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/cd;->bFn(Lcom/loc/cd;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_c3

    :pswitch_e4
    iget-object v0, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFo(Lcom/loc/cd;)V

    goto/16 :goto_55

    :pswitch_eb
    iget-object v0, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFo(Lcom/loc/cd;)V

    goto/16 :goto_55

    :cond_f2
    iget-object v0, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/cd;->j:Z

    goto/16 :goto_55

    :cond_f9
    iget-object v0, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/loc/cd;->j:Z

    iget-object v0, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFl(Lcom/loc/cd;)Lcom/loc/af;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFp(Lcom/loc/cd;)V

    goto/16 :goto_55

    :cond_10d
    iget-object v0, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFq(Lcom/loc/cd;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/loc/v;->bdP:Lcom/loc/cd;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/loc/cd;->bFr(Lcom/loc/cd;ZI)V
    :try_end_11c
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_11c} :catch_71

    goto/16 :goto_55

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_c7
        :pswitch_e4
        :pswitch_55
        :pswitch_55
        :pswitch_eb
    .end packed-switch
.end method
