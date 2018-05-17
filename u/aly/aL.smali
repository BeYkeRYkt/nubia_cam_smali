.class public Lu/aly/aL;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/Map;

.field private final bxc:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/aL;->b:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/aL;->bxc:Ljava/util/ArrayList;

    return-void
.end method

.method public static bVC(Landroid/content/SharedPreferences;)Ljava/util/List;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "activities"

    const-string/jumbo v2, ""

    .line 101
    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_1a
    const-string/jumbo v3, ";"

    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 109
    :goto_21
    array-length v3, v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_3f

    if-lt v0, v3, :cond_2c

    .line 121
    :goto_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_44

    .line 124
    return-object v5

    .line 104
    :cond_2b
    return-object v5

    .line 110
    :cond_2c
    :try_start_2c
    aget-object v3, v1, v0

    .line 112
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 115
    new-instance v4, Lu/aly/ai;

    invoke-direct {v4, v3}, Lu/aly/ai;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3c} :catch_3f

    .line 109
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 119
    :catch_3f
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24

    .line 122
    :cond_44
    return-object v2
.end method


# virtual methods
.method public a()V
    .registers 13

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    .line 55
    iget-object v6, p0, Lu/aly/aL;->b:Ljava/util/Map;

    monitor-enter v6

    .line 56
    :try_start_7
    iget-object v0, p0, Lu/aly/aL;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 62
    monitor-exit v6

    .line 63
    if-nez v4, :cond_50

    .line 66
    :goto_1a
    return-void

    .line 56
    :cond_1b
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v1, v8, v2

    if-gtz v1, :cond_48

    const/4 v1, 0x1

    :goto_30
    if-nez v1, :cond_4a

    .line 58
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-wide v10, v2

    move-object v2, v0

    move-wide v0, v10

    :goto_45
    move-object v4, v2

    move-wide v2, v0

    .line 61
    goto :goto_11

    :cond_48
    move v1, v5

    .line 57
    goto :goto_30

    :cond_4a
    move-wide v0, v2

    move-object v2, v4

    goto :goto_45

    .line 62
    :catchall_4d
    move-exception v0

    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_4d

    throw v0

    .line 64
    :cond_50
    invoke-virtual {p0, v4}, Lu/aly/aL;->b(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public a(Landroid/content/Context;)V
    .registers 12

    .prologue
    .line 69
    invoke-static {p1}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 72
    iget-object v2, p0, Lu/aly/aL;->bxc:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_14

    .line 96
    :goto_10
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    return-void

    :cond_14
    const-string/jumbo v2, "activities"

    const-string/jumbo v3, ""

    .line 73
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 81
    :goto_29
    iget-object v3, p0, Lu/aly/aL;->bxc:Ljava/util/ArrayList;

    monitor-enter v3

    .line 82
    :try_start_2c
    iget-object v0, p0, Lu/aly/aL;->bxc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_62

    .line 87
    iget-object v0, p0, Lu/aly/aL;->bxc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 88
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_8a

    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "activities"

    .line 92
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "activities"

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_10

    .line 77
    :cond_58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ";"

    .line 78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 82
    :cond_62
    :try_start_62
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bF;

    const-string/jumbo v5, "[\"%s\",%d]"

    const/4 v6, 0x2

    .line 83
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v0, Lu/aly/bF;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, v0, Lu/aly/bF;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ";"

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 88
    :catchall_8a
    move-exception v0

    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_62 .. :try_end_8c} :catchall_8a

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    :goto_6
    return-void

    .line 25
    :cond_7
    iget-object v1, p0, Lu/aly/aL;->b:Ljava/util/Map;

    monitor-enter v1

    .line 26
    :try_start_a
    iget-object v0, p0, Lu/aly/aL;->b:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    monitor-exit v1

    goto :goto_6

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 49
    :goto_7
    return-void

    .line 34
    :cond_8
    iget-object v1, p0, Lu/aly/aL;->b:Ljava/util/Map;

    monitor-enter v1

    .line 35
    :try_start_b
    iget-object v0, p0, Lu/aly/aL;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 36
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_32

    .line 38
    if-eqz v0, :cond_35

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    .line 45
    iget-object v2, p0, Lu/aly/aL;->bxc:Ljava/util/ArrayList;

    monitor-enter v2

    .line 46
    :try_start_23
    iget-object v3, p0, Lu/aly/aL;->bxc:Ljava/util/ArrayList;

    new-instance v4, Lu/aly/bF;

    invoke-direct {v4, p1, v0, v1}, Lu/aly/bF;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    monitor-exit v2

    goto :goto_7

    :catchall_2f
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_2f

    throw v0

    .line 36
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "please call \'onPageStart(%s)\' before onPageEnd"

    const/4 v2, 0x1

    .line 39
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 40
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lu/aly/O;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
