.class public Lcom/loc/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bds:Lcom/loc/p;


# instance fields
.field private bdt:Ljava/util/Hashtable;

.field private bdu:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/p;->bds:Lcom/loc/p;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/loc/p;->bdt:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/p;->bdu:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/loc/p;
    .registers 2

    const-class v1, Lcom/loc/p;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/loc/p;->bds:Lcom/loc/p;

    if-eqz v0, :cond_b

    :goto_7
    sget-object v0, Lcom/loc/p;->bds:Lcom/loc/p;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Lcom/loc/p;

    invoke-direct {v0}, Lcom/loc/p;-><init>()V

    sput-object v0, Lcom/loc/p;->bds:Lcom/loc/p;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_7

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/loc/p;->bdt:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/loc/p;->bdt:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_8
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5

    sget-boolean v0, Lcom/loc/cu;->a:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/loc/p;->bdu:Z

    if-nez v0, :cond_17

    invoke-static {}, Lcom/loc/X;->b()J

    :try_start_b
    invoke-static {}, Lcom/loc/bI;->a()Lcom/loc/bI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/bI;->b(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_12} :catch_18

    :goto_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/p;->bdu:Z

    return-void

    :cond_16
    return-void

    :cond_17
    return-void

    :catch_18
    move-exception v0

    const-string/jumbo v1, "HeatMap"

    const-string/jumbo v2, "loadDB"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public declared-synchronized b()Ljava/util/ArrayList;
    .registers 11

    monitor-enter p0

    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/loc/p;->bdt:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v7, p0, Lcom/loc/p;->bdt:Ljava/util/Hashtable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1d
    :goto_1d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Lcom/loc/T;

    invoke-direct {v0, p0}, Lcom/loc/T;-><init>(Lcom/loc/p;)V

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_6b

    monitor-exit p0

    return-object v6

    :cond_30
    monitor-exit p0

    return-object v6

    :cond_32
    :try_start_32
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_6b

    :try_start_38
    invoke-virtual {v7, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "num"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v0, 0x78

    if-lt v4, v0, :cond_1d

    new-instance v0, Lcom/loc/au;

    invoke-direct/range {v0 .. v5}, Lcom/loc/au;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_5f} :catch_60
    .catchall {:try_start_38 .. :try_end_5f} :catchall_6b

    goto :goto_1d

    :catch_60
    move-exception v0

    :try_start_61
    const-string/jumbo v1, "HeatMap"

    const-string/jumbo v2, "hot"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_6b

    goto :goto_1d

    :catchall_6b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bwd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZ)V
    .registers 15

    monitor-enter p0

    if-nez p1, :cond_5

    :cond_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/loc/cu;->a:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/loc/p;->bdt:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_48

    if-eqz v0, :cond_42

    :goto_19
    :try_start_19
    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/loc/p;->bdt:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    const-string/jumbo v1, "num"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_33} :catch_5a
    .catchall {:try_start_19 .. :try_end_33} :catchall_48

    :goto_33
    :try_start_33
    iget-object v1, p0, Lcom/loc/p;->bdt:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_48

    const/16 v0, 0x78

    if-ge p4, v0, :cond_65

    :cond_3c
    :goto_3c
    if-nez p7, :cond_77

    :goto_3e
    monitor-exit p0

    return-void

    :cond_40
    monitor-exit p0

    return-void

    :cond_42
    :try_start_42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_48

    goto :goto_19

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4b
    :try_start_4b
    const-string/jumbo v1, "num"

    const-string/jumbo v2, "num"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_59} :catch_5a
    .catchall {:try_start_4b .. :try_end_59} :catchall_48

    goto :goto_33

    :catch_5a
    move-exception v1

    :try_start_5b
    const-string/jumbo v2, "HeatMap"

    const-string/jumbo v3, "update1"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_65
    sget-boolean v0, Lcom/loc/bx;->bhC:Z

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/bx;->bhC:Z

    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "ded"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/loc/bA;->bCc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_76
    .catchall {:try_start_5b .. :try_end_76} :catchall_48

    goto :goto_3c

    :cond_77
    :try_start_77
    invoke-static {}, Lcom/loc/bI;->a()Lcom/loc/bI;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/loc/bI;->bCu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_82} :catch_83
    .catchall {:try_start_77 .. :try_end_82} :catchall_48

    goto :goto_3e

    :catch_83
    move-exception v0

    :try_start_84
    const-string/jumbo v1, "HeatMap"

    const-string/jumbo v2, "update"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_48

    goto :goto_3e
.end method

.method public declared-synchronized bwe(Landroid/content/Context;Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)V
    .registers 13

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {p3}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7a

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    monitor-exit p0

    return-void

    :cond_a
    if-eqz p1, :cond_8

    :try_start_c
    sget-boolean v0, Lcom/loc/cu;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/loc/p;->bdt:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_4c

    :cond_1a
    if-eqz v3, :cond_62

    :goto_1c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_7a

    :try_start_21
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "lat"

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHL()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v1, "lon"

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHI()D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v6

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/loc/p;->bwd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZ)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_4a} :catch_6f
    .catchall {:try_start_21 .. :try_end_4a} :catchall_7a

    :goto_4a
    monitor-exit p0

    return-void

    :cond_4c
    :try_start_4c
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHL()D

    move-result-wide v0

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHI()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/bB;->bCe(DD)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/loc/p;->bdt:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_5d
    .catchall {:try_start_4c .. :try_end_5d} :catchall_7a

    move-result v0

    if-nez v0, :cond_1a

    monitor-exit p0

    return-void

    :cond_62
    :try_start_62
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHL()D

    move-result-wide v0

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHI()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/loc/bB;->bCe(DD)Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    :catch_6f
    move-exception v0

    const-string/jumbo v1, "HeatMap"

    const-string/jumbo v2, "update"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_62 .. :try_end_79} :catchall_7a

    goto :goto_4a

    :catchall_7a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .registers 2

    invoke-static {}, Lcom/loc/p;->a()Lcom/loc/p;

    move-result-object v0

    invoke-direct {v0}, Lcom/loc/p;->d()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/p;->bdu:Z

    return-void
.end method
