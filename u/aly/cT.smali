.class public Lu/aly/cT;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private bAc:Lu/aly/do;

.field private bAd:Landroid/content/Context;

.field private bAe:Lu/aly/db;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x80

    .line 22
    iput v1, p0, Lu/aly/cT;->a:I

    const/16 v1, 0x100

    .line 23
    iput v1, p0, Lu/aly/cT;->b:I

    .line 31
    if-eqz p1, :cond_2f

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lu/aly/cT;->bAd:Landroid/content/Context;

    .line 35
    new-instance v1, Lu/aly/do;

    iget-object v2, p0, Lu/aly/cT;->bAd:Landroid/content/Context;

    invoke-direct {v1, v2}, Lu/aly/do;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lu/aly/cT;->bAc:Lu/aly/do;

    .line 36
    iget-object v1, p0, Lu/aly/cT;->bAc:Lu/aly/do;

    sget-boolean v2, Lcom/umeng/analytics/AnalyticsConfig;->ENABLE_MEMORY_BUFFER:Z

    if-eqz v2, :cond_38

    :goto_23
    invoke-virtual {v1, v0}, Lu/aly/do;->a(Z)V

    .line 37
    iget-object v0, p0, Lu/aly/cT;->bAd:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/db;->a(Landroid/content/Context;)Lu/aly/db;

    move-result-object v0

    iput-object v0, p0, Lu/aly/cT;->bAe:Lu/aly/db;

    .line 38
    return-void

    .line 32
    :cond_2f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Context is null, can\'t track event"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    const/4 v0, 0x1

    .line 36
    goto :goto_23
.end method

.method private a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 128
    if-nez p1, :cond_d

    :cond_3
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "Event id is empty or too long in tracking Event"

    .line 136
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return v2

    .line 129
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 131
    if-lez v0, :cond_3

    const/16 v1, 0x80

    if-gt v0, v1, :cond_3

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 142
    if-eqz p1, :cond_1b

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1c

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "Event label or value is empty or too long in tracking Event"

    .line 147
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_1b
    return v2

    .line 145
    :cond_1c
    return v2
.end method

.method private bZk(Ljava/util/Map;)Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 152
    if-nez p1, :cond_d

    :cond_3
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "map is null or empty in onEvent"

    .line 153
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return v3

    .line 152
    :cond_d
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_23

    .line 171
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lu/aly/cT;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 162
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/cT;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 167
    return v3

    .line 159
    :cond_52
    return v3

    .line 163
    :cond_53
    return v3
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1}, Lu/aly/cT;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 84
    :cond_7
    return-void

    .line 83
    :cond_8
    invoke-direct {p0, p2}, Lu/aly/cT;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    iget-object v0, p0, Lu/aly/cT;->bAc:Lu/aly/do;

    invoke-static {p1, p2, v2}, Lu/aly/af;->bTP(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v2}, Lu/aly/af;->bTO(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lu/aly/ae;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu/aly/do;->caU(Ljava/lang/String;Lu/aly/ae;)V

    .line 87
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 90
    invoke-direct {p0, p1}, Lu/aly/cT;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 91
    :cond_8
    return-void

    .line 90
    :cond_9
    invoke-direct {p0, p2}, Lu/aly/cT;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 94
    iget-object v0, p0, Lu/aly/cT;->bAc:Lu/aly/do;

    invoke-static {p1, p2, v1}, Lu/aly/af;->bTP(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/do;->b(Ljava/lang/String;)Lu/aly/ae;

    move-result-object v0

    .line 96
    if-nez v0, :cond_1c

    .line 100
    :goto_1b
    return-void

    .line 97
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, v0, Lu/aly/ae;->a:J

    sub-long v0, v2, v0

    long-to-int v0, v0

    .line 98
    int-to-long v4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lu/aly/cT;->bZh(Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_1b
.end method

.method public bZg(Ljava/lang/String;Ljava/util/Map;J)V
    .registers 12

    .prologue
    .line 44
    :try_start_0
    invoke-direct {p0, p1}, Lu/aly/cT;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 48
    invoke-direct {p0, p2}, Lu/aly/cT;->bZk(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 52
    iget-object v0, p0, Lu/aly/cT;->bAe:Lu/aly/db;

    new-instance v1, Lu/aly/af;

    const/4 v6, -0x1

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lu/aly/af;-><init>(Ljava/lang/String;Ljava/util/Map;JI)V

    invoke-virtual {v0, v1}, Lu/aly/db;->bRH(Lu/aly/P;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1d

    .line 56
    :goto_1a
    return-void

    .line 45
    :cond_1b
    return-void

    .line 49
    :cond_1c
    return-void

    .line 55
    :catch_1d
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Exception occurred in Mobclick.onEvent(). "

    .line 54
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1a
.end method

.method public bZh(Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 13

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lu/aly/cT;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 61
    :cond_6
    return-void

    .line 60
    :cond_7
    invoke-direct {p0, p2}, Lu/aly/cT;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 65
    if-eqz p2, :cond_25

    :goto_14
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lu/aly/cT;->bAe:Lu/aly/db;

    new-instance v1, Lu/aly/af;

    move-object v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lu/aly/af;-><init>(Ljava/lang/String;Ljava/util/Map;JI)V

    invoke-virtual {v0, v1}, Lu/aly/db;->bRH(Lu/aly/P;)V

    .line 68
    return-void

    :cond_25
    const-string/jumbo p2, ""

    goto :goto_14
.end method

.method public bZi(Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    .prologue
    .line 72
    :try_start_0
    invoke-direct {p0, p1}, Lu/aly/cT;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 76
    iget-object v0, p0, Lu/aly/cT;->bAe:Lu/aly/db;

    new-instance v1, Lu/aly/ah;

    invoke-direct {v1, p1, p2}, Lu/aly/ah;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lu/aly/db;->bRH(Lu/aly/P;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    .line 80
    :goto_10
    return-void

    .line 73
    :cond_11
    return-void

    .line 79
    :catch_12
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Exception occurred in Mobclick.onEvent(). "

    .line 78
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_10
.end method

.method public bZj(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lu/aly/cT;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 107
    invoke-direct {p0, p2}, Lu/aly/cT;->bZk(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 111
    iget-object v0, p0, Lu/aly/cT;->bAc:Lu/aly/do;

    invoke-static {p1, p3, p2}, Lu/aly/af;->bTP(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p3, p2}, Lu/aly/af;->bTO(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lu/aly/ae;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu/aly/do;->caU(Ljava/lang/String;Lu/aly/ae;)V

    .line 112
    return-void

    .line 104
    :cond_1a
    return-void

    .line 108
    :cond_1b
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1}, Lu/aly/cT;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 119
    iget-object v0, p0, Lu/aly/cT;->bAc:Lu/aly/do;

    invoke-static {p1, p2, v1}, Lu/aly/af;->bTP(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/do;->b(Ljava/lang/String;)Lu/aly/ae;

    move-result-object v0

    .line 121
    if-nez v0, :cond_15

    .line 125
    :goto_13
    return-void

    .line 116
    :cond_14
    return-void

    .line 122
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lu/aly/ae;->a:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    .line 123
    iget-object v0, v0, Lu/aly/ae;->d:Ljava/util/Map;

    int-to-long v2, v1

    invoke-virtual {p0, p1, v0, v2, v3}, Lu/aly/cT;->bZg(Ljava/lang/String;Ljava/util/Map;J)V

    goto :goto_13
.end method
