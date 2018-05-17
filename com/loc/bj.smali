.class public Lcom/loc/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bhj:Lcom/loc/bj;


# instance fields
.field private bhk:Ljava/util/Hashtable;

.field private c:J

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/bj;->bhj:Lcom/loc/bj;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/loc/bj;->bhk:Ljava/util/Hashtable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bj;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bj;->d:Z

    return-void
.end method

.method public static declared-synchronized a()Lcom/loc/bj;
    .registers 2

    const-class v1, Lcom/loc/bj;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/loc/bj;->bhj:Lcom/loc/bj;

    if-eqz v0, :cond_b

    :goto_7
    sget-object v0, Lcom/loc/bj;->bhj:Lcom/loc/bj;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Lcom/loc/bj;

    invoke-direct {v0}, Lcom/loc/bj;-><init>()V

    sput-object v0, Lcom/loc/bj;->bhj:Lcom/loc/bj;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_7

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized bAR(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/loc/bc;
    .registers 21

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bj;->bhk:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_107

    move-result v2

    if-eqz v2, :cond_e

    :cond_b
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    :cond_e
    :try_start_e
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bj;->bhk:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v5, 0x0

    new-instance v11, Ljava/util/Hashtable;

    invoke-direct {v11}, Ljava/util/Hashtable;-><init>()V

    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/bj;->bhk:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v10, v3

    :goto_43
    if-gez v10, :cond_54

    move-object v3, v5

    :cond_46
    :goto_46
    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v12}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V
    :try_end_4f
    .catchall {:try_start_e .. :try_end_4f} :catchall_107

    monitor-exit p0

    return-object v3

    :cond_51
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    :cond_54
    :try_start_54
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/loc/bc;

    invoke-virtual {v3}, Lcom/loc/bc;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e4

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/loc/bc;->b()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/loc/bj;->bAS(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-nez v6, :cond_e9

    :cond_73
    move v9, v4

    invoke-virtual {v3}, Lcom/loc/bc;->b()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/loc/bj;->bAT(Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Lcom/loc/bj;->bAT(Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V

    invoke-virtual {v11}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_91
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_fa

    invoke-virtual {v12}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_10a

    invoke-virtual {v13}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v4

    new-array v15, v4, [D

    invoke-interface {v14}, Ljava/util/Set;->size()I

    move-result v4

    new-array v0, v4, [D

    move-object/from16 v16, v0

    const/4 v4, 0x0

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move v8, v4

    :goto_bd
    if-nez v17, :cond_117

    :cond_bf
    invoke-interface {v14}, Ljava/util/Set;->clear()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/loc/bj;->bAU([D[D)[D

    move-result-object v4

    const/4 v6, 0x0

    aget-wide v6, v4, v6

    const-wide v14, 0x3fe99999a0000000L    # 0.800000011920929

    cmpl-double v6, v6, v14

    if-gez v6, :cond_46

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    const-wide v14, 0x3fe3c6a7ef9db22dL    # 0.618

    cmpl-double v6, v6, v14

    if-gez v6, :cond_46

    if-nez v9, :cond_141

    :cond_e4
    add-int/lit8 v3, v10, -0x1

    move v10, v3

    goto/16 :goto_43

    :cond_e9
    const/4 v4, 0x1

    invoke-virtual {v3}, Lcom/loc/bc;->b()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Lcom/loc/bj;->bAV(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-eqz v6, :cond_73

    goto/16 :goto_46

    :cond_fa
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v13, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_106
    .catchall {:try_start_54 .. :try_end_106} :catchall_107

    goto :goto_91

    :catchall_107
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_10a
    :try_start_10a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v7, ""

    invoke-virtual {v13, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9f

    :cond_117
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bf

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13b

    const-wide/16 v6, 0x0

    :goto_12b
    aput-wide v6, v15, v8

    invoke-virtual {v12, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13e

    const-wide/16 v6, 0x0

    :goto_135
    aput-wide v6, v16, v8

    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_bd

    :cond_13b
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_12b

    :cond_13e
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_135

    :cond_141
    const/4 v6, 0x0

    aget-wide v6, v4, v6
    :try_end_144
    .catchall {:try_start_10a .. :try_end_144} :catchall_107

    const-wide v8, 0x3fe3c6a7ef9db22dL    # 0.618

    cmpl-double v4, v6, v8

    if-ltz v4, :cond_e4

    goto/16 :goto_46
.end method

.method private bAS(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    return v3

    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, ",access"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    return v3

    :cond_18
    const-string/jumbo v0, ",access"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_17

    const-string/jumbo v0, ",access"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    aget-object v0, v0, v3

    :goto_36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6b

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",access"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_59
    aget-object v1, v0, v3

    aget-object v0, v0, v3

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :cond_6b
    return v3
.end method

.method private bAT(Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 8

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p2}, Ljava/util/Hashtable;->clear()V

    const-string/jumbo v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_12
    if-lt v0, v2, :cond_16

    return-void

    :cond_15
    return-void

    :cond_16
    aget-object v3, v1, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21

    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_21
    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    const-string/jumbo v4, ""

    invoke-virtual {p2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e
.end method

.method private bAU([D[D)[D
    .registers 17

    const/4 v0, 0x3

    new-array v3, v0, [D

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_c
    array-length v10, p1

    if-lt v0, v10, :cond_31

    const/4 v0, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    div-double v4, v8, v4

    aput-wide v4, v3, v0

    const/4 v0, 0x1

    int-to-double v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    int-to-double v6, v2

    div-double/2addr v4, v6

    aput-wide v4, v3, v0

    const/4 v0, 0x2

    int-to-double v4, v1

    aput-wide v4, v3, v0

    const/4 v0, 0x0

    :goto_2b
    array-length v1, v3

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_5a

    return-object v3

    :cond_31
    aget-wide v10, p1, v0

    aget-wide v12, p1, v0

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    aget-wide v10, p2, v0

    aget-wide v12, p2, v0

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    aget-wide v10, p1, v0

    aget-wide v12, p2, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    aget-wide v10, p2, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_57

    add-int/lit8 v2, v2, 0x1

    aget-wide v10, p1, v0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_57

    add-int/lit8 v1, v1, 0x1

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_5a
    aget-wide v4, v3, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v4, v6

    if-lez v1, :cond_66

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v0

    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 5

    iget-boolean v0, p0, Lcom/loc/bj;->d:Z

    if-nez v0, :cond_12

    invoke-static {}, Lcom/loc/X;->b()J

    :try_start_7
    invoke-static {}, Lcom/loc/bI;->a()Lcom/loc/bI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/loc/bI;->a(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_13

    :goto_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bj;->d:Z

    return-void

    :cond_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "Cache"

    const-string/jumbo v2, "loadDB"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method public b()Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/loc/bj;->c:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/loc/bj;->c:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v4, p0, Lcom/loc/bj;->bhk:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    const/16 v5, 0x168

    if-gt v4, v5, :cond_26

    const-wide/32 v4, 0x2255100

    cmp-long v2, v2, v4

    if-gtz v2, :cond_28

    move v2, v1

    :goto_24
    if-nez v2, :cond_11

    :cond_26
    move v0, v1

    goto :goto_11

    :cond_28
    move v2, v0

    goto :goto_24
.end method

.method public declared-synchronized bAO(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V
    .registers 12

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0, p1, p3}, Lcom/loc/bj;->bAQ(Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHU()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mem"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHU()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_97

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHW()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    invoke-virtual {p0}, Lcom/loc/bj;->b()Z

    move-result v1

    if-nez v1, :cond_9b

    :goto_35
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIH()Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "offpct"

    invoke-static {v1, v2}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a2

    :goto_42
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    const-string/jumbo v0, "cgi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_124

    :cond_54
    :goto_54
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/loc/bj;->bAP(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v1

    if-nez v1, :cond_13f

    :cond_5f
    invoke-static {}, Lcom/loc/X;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/loc/bj;->c:J

    new-instance v1, Lcom/loc/bc;

    invoke-direct {v1, p0}, Lcom/loc/bc;-><init>(Lcom/loc/bj;)V

    invoke-virtual {v1, p3}, Lcom/loc/bc;->bAH(Lcom/autonavi/aps/amapapi/model/AmapLoc;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_150

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_77
    invoke-virtual {v1, v0}, Lcom/loc/bc;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/bj;->bhk:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_153

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/loc/bj;->bhk:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catchall {:try_start_2 .. :try_end_8f} :catchall_9f

    :goto_8f
    if-nez p5, :cond_160

    :goto_91
    monitor-exit p0

    return-void

    :cond_93
    monitor-exit p0

    return-void

    :cond_95
    monitor-exit p0

    return-void

    :cond_97
    monitor-exit p0

    return-void

    :cond_99
    monitor-exit p0

    return-void

    :cond_9b
    :try_start_9b
    invoke-virtual {p0}, Lcom/loc/bj;->c()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_9f

    goto :goto_35

    :catchall_9f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_a2
    :try_start_a2
    const-string/jumbo v2, "offpct"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p3, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bII(Lorg/json/JSONObject;)V

    goto :goto_42

    :cond_ac
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_103

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_118

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_c9
    if-lt v1, v3, :cond_105

    const/16 v1, 0x8

    if-ge v0, v1, :cond_116

    :cond_cf
    const-string/jumbo v0, "cgiwifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string/jumbo v0, "cgiwifi"

    const-string/jumbo v1, "cgi"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIF()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loc/bj;->bAO(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V
    :try_end_101
    .catchall {:try_start_a2 .. :try_end_101} :catchall_9f

    goto/16 :goto_54

    :cond_103
    monitor-exit p0

    return-void

    :cond_105
    :try_start_105
    aget-object v4, v2, v1

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_10d
    .catchall {:try_start_105 .. :try_end_10d} :catchall_9f

    move-result v4

    if-nez v4, :cond_113

    :goto_110
    add-int/lit8 v1, v1, 0x1

    goto :goto_c9

    :cond_113
    add-int/lit8 v0, v0, 0x1

    goto :goto_110

    :cond_116
    monitor-exit p0

    return-void

    :cond_118
    :try_start_118
    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getAccuracy()F
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_9f

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_cf

    monitor-exit p0

    return-void

    :cond_124
    :try_start_124
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13d

    invoke-virtual {p3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHW()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_138
    .catchall {:try_start_124 .. :try_end_138} :catchall_9f

    move-result v0

    if-eqz v0, :cond_54

    monitor-exit p0

    return-void

    :cond_13d
    monitor-exit p0

    return-void

    :cond_13f
    :try_start_13f
    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIJ()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIK(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_14b
    .catchall {:try_start_13f .. :try_end_14b} :catchall_9f

    move-result v0

    if-eqz v0, :cond_5f

    monitor-exit p0

    return-void

    :cond_150
    const/4 v0, 0x0

    goto/16 :goto_77

    :cond_153
    :try_start_153
    iget-object v0, p0, Lcom/loc/bj;->bhk:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_15e
    .catchall {:try_start_153 .. :try_end_15e} :catchall_9f

    goto/16 :goto_8f

    :cond_160
    :try_start_160
    invoke-static {}, Lcom/loc/bI;->a()Lcom/loc/bI;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2, p4}, Lcom/loc/bI;->bCr(Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;Ljava/lang/StringBuilder;Landroid/content/Context;)V
    :try_end_167
    .catch Ljava/lang/Throwable; {:try_start_160 .. :try_end_167} :catch_169
    .catchall {:try_start_160 .. :try_end_167} :catchall_9f

    goto/16 :goto_91

    :catch_169
    move-exception v0

    :try_start_16a
    const-string/jumbo v1, "Cache"

    const-string/jumbo v2, "add"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_173
    .catchall {:try_start_16a .. :try_end_173} :catchall_9f

    goto/16 :goto_91
.end method

.method public declared-synchronized bAP(Ljava/lang/String;Ljava/lang/StringBuilder;Z)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 14

    const/4 v2, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    const-string/jumbo v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_c4

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    monitor-exit p0

    return-object v2

    :cond_e
    if-eqz p3, :cond_c

    :try_start_10
    invoke-static {}, Lcom/loc/bR;->bDB()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/loc/bj;->b()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/loc/bj;->bhk:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4c

    const-string/jumbo v0, "found#\u2297"

    const-string/jumbo v0, "cgiwifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string/jumbo v0, "cgi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3f
    .catchall {:try_start_10 .. :try_end_3f} :catchall_c4

    move-result v0

    if-nez v0, :cond_62

    move-object v0, v2

    :cond_43
    :goto_43
    if-nez v0, :cond_81

    :cond_45
    monitor-exit p0

    return-object v2

    :cond_47
    :try_start_47
    invoke-virtual {p0}, Lcom/loc/bj;->c()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_c4

    monitor-exit p0

    return-object v2

    :cond_4c
    monitor-exit p0

    return-object v2

    :cond_4e
    :try_start_4e
    invoke-direct {p0, p2, p1}, Lcom/loc/bj;->bAR(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/loc/bc;

    move-result-object v0

    if-eqz v0, :cond_43

    const-string/jumbo v3, "found#cgiwifi"

    goto :goto_43

    :cond_58
    invoke-direct {p0, p2, p1}, Lcom/loc/bj;->bAR(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/loc/bc;

    move-result-object v0

    if-eqz v0, :cond_43

    const-string/jumbo v3, "found#wifi"

    goto :goto_43

    :cond_62
    iget-object v0, p0, Lcom/loc/bj;->bhk:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    move-object v0, v2

    :goto_6b
    if-eqz v0, :cond_43

    const-string/jumbo v3, "found#cgi"

    goto :goto_43

    :cond_71
    iget-object v0, p0, Lcom/loc/bj;->bhk:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bc;

    goto :goto_6b

    :cond_81
    invoke-virtual {v0}, Lcom/loc/bc;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual {v0}, Lcom/loc/bc;->a()Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v3

    invoke-static {}, Lcom/loc/bR;->bDC()J

    move-result-wide v4

    const-string/jumbo v0, "mem"

    invoke-virtual {v3, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHV(Ljava/lang/String;)V

    sget-object v0, Lcom/loc/bx;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b9

    :goto_a1
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_45

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHS()J
    :try_end_ae
    .catchall {:try_start_4e .. :try_end_ae} :catchall_c4

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-ltz v0, :cond_c7

    const/4 v0, 0x1

    :goto_b5
    if-nez v0, :cond_45

    monitor-exit p0

    return-object v3

    :cond_b9
    :try_start_b9
    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIC()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/bx;->f:Ljava/lang/String;
    :try_end_c3
    .catchall {:try_start_b9 .. :try_end_c3} :catchall_c4

    goto :goto_a1

    :catchall_c4
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c7
    move v0, v1

    goto :goto_b5
.end method

.method public bAQ(Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    return v1

    :cond_8
    invoke-static {p2}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    const-string/jumbo v2, "network"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    :goto_21
    return v0

    :cond_22
    return v1

    :cond_23
    move v0, v1

    goto :goto_21
.end method

.method public bAV(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .registers 11

    const/4 v1, 0x0

    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_e
    array-length v3, v2

    if-lt v0, v3, :cond_37

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1f
    array-length v6, v5

    if-lt v0, v6, :cond_56

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v2, v3, 0x2

    int-to-double v2, v2

    int-to-double v4, v0

    const-wide v6, 0x3fe3c6a7ef9db22dL    # 0.618

    mul-double/2addr v4, v6

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_36

    const/4 v1, 0x1

    :cond_36
    return v1

    :cond_37
    aget-object v3, v2, v0

    const-string/jumbo v5, ",nb"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4a

    :cond_42
    aget-object v3, v2, v0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_4a
    aget-object v3, v2, v0

    const-string/jumbo v5, ",access"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    goto :goto_47

    :cond_56
    aget-object v6, v5, v0

    const-string/jumbo v7, ",nb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6e

    :cond_61
    add-int/lit8 v2, v2, 0x1

    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7a

    :goto_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_6e
    aget-object v6, v5, v0

    const-string/jumbo v7, ",access"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_61

    goto :goto_6b

    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b
.end method

.method public c()V
    .registers 4

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bj;->c:J

    iget-object v0, p0, Lcom/loc/bj;->bhk:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_d
    iput-boolean v2, p0, Lcom/loc/bj;->d:Z

    return-void

    :cond_10
    iget-object v0, p0, Lcom/loc/bj;->bhk:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_d
.end method
