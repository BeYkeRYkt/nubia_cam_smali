.class public Lu/aly/bZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;

.field private byR:Lu/aly/ao;

.field private byS:Lu/aly/aq;

.field private byT:Lu/aly/at;

.field private byU:Lu/aly/bh;

.field private byV:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bZ;->a:Ljava/util/List;

    .line 34
    iput-object v1, p0, Lu/aly/bZ;->byR:Lu/aly/ao;

    .line 35
    iput-object v1, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    .line 36
    iput-object v1, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    .line 37
    iput-object v1, p0, Lu/aly/bZ;->byU:Lu/aly/bh;

    .line 39
    iput-object v1, p0, Lu/aly/bZ;->byV:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lu/aly/bZ;->byV:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 178
    :try_start_0
    iget-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/aq;->a(Ljava/lang/String;)Lu/aly/aq;

    .line 179
    iget-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/aq;->bUX(Ljava/lang/String;)Lu/aly/aq;

    .line 181
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-nez v0, :cond_55

    .line 186
    :cond_16
    :goto_16
    iget-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    invoke-static {p1}, Lu/aly/e;->bQG(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/aq;->bUQ(Ljava/lang/String;)Lu/aly/aq;

    .line 187
    iget-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    sget-object v1, Lu/aly/bm;->buj:Lu/aly/bm;

    invoke-virtual {v0, v1}, Lu/aly/aq;->bUT(Lu/aly/bm;)Lu/aly/aq;

    .line 188
    iget-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    const-string/jumbo v1, "5.6.1"

    invoke-virtual {v0, v1}, Lu/aly/aq;->bUV(Ljava/lang/String;)Lu/aly/aq;

    .line 189
    iget-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    invoke-static {p1}, Lu/aly/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/aq;->b(Ljava/lang/String;)Lu/aly/aq;

    .line 190
    iget-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    invoke-static {p1}, Lu/aly/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lu/aly/aq;->a(I)Lu/aly/aq;

    .line 192
    iget-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    sget v1, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    invoke-virtual {v0, v1}, Lu/aly/aq;->bVf(I)Lu/aly/aq;

    .line 193
    iget-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/aq;->bUV(Ljava/lang/String;)Lu/aly/aq;

    .line 197
    :goto_54
    return-void

    .line 181
    :cond_55
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 182
    iget-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/aq;->bUZ(Ljava/lang/String;)Lu/aly/aq;

    .line 183
    iget-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/aq;->bVc(Ljava/lang/String;)Lu/aly/aq;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_67} :catch_68

    goto :goto_16

    .line 196
    :catch_68
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54
.end method

.method private b(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    invoke-static {}, Lu/aly/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/at;->bZR(Ljava/lang/String;)Lu/aly/at;

    .line 202
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    invoke-static {p1}, Lu/aly/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/at;->a(Ljava/lang/String;)Lu/aly/at;

    .line 203
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    invoke-static {p1}, Lu/aly/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/at;->b(Ljava/lang/String;)Lu/aly/at;

    .line 204
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    invoke-static {p1}, Lu/aly/e;->bQB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/at;->bZK(Ljava/lang/String;)Lu/aly/at;

    .line 205
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->bZO(Ljava/lang/String;)Lu/aly/at;

    .line 206
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    const-string/jumbo v1, "Android"

    invoke-virtual {v0, v1}, Lu/aly/at;->bZU(Ljava/lang/String;)Lu/aly/at;

    .line 207
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->bZX(Ljava/lang/String;)Lu/aly/at;

    .line 209
    invoke-static {p1}, Lu/aly/e;->bQC(Landroid/content/Context;)[I

    move-result-object v0

    .line 211
    if-nez v0, :cond_6f

    .line 215
    :goto_40
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    if-nez v0, :cond_85

    .line 219
    :cond_44
    :goto_44
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->cah(Ljava/lang/String;)Lu/aly/at;

    .line 220
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->cak(Ljava/lang/String;)Lu/aly/at;

    .line 221
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-virtual {v0, v2, v3}, Lu/aly/at;->a(J)Lu/aly/at;

    .line 222
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->cap(Ljava/lang/String;)Lu/aly/at;

    .line 223
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->cas(Ljava/lang/String;)Lu/aly/at;

    .line 224
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/at;->cau(Ljava/lang/String;)Lu/aly/at;

    .line 228
    :goto_6e
    return-void

    .line 212
    :cond_6f
    iget-object v1, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    new-instance v2, Lu/aly/bk;

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v0, v0, v4

    invoke-direct {v2, v3, v0}, Lu/aly/bk;-><init>(II)V

    invoke-virtual {v1, v2}, Lu/aly/at;->caa(Lu/aly/bk;)Lu/aly/at;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7f} :catch_80

    goto :goto_40

    .line 227
    :catch_80
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6e

    .line 215
    :cond_85
    :try_start_85
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_87} :catch_80

    if-nez v0, :cond_44

    goto :goto_44
.end method

.method private c(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 232
    :try_start_0
    invoke-static {p1}, Lu/aly/e;->bQu(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Wi-Fi"

    const/4 v2, 0x0

    .line 234
    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    const-string/jumbo v1, "2G/3G"

    const/4 v2, 0x0

    .line 236
    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 239
    iget-object v1, p0, Lu/aly/bZ;->byU:Lu/aly/bh;

    sget-object v2, Lu/aly/an;->bxd:Lu/aly/an;

    invoke-virtual {v1, v2}, Lu/aly/bh;->bTn(Lu/aly/an;)Lu/aly/bh;

    :goto_23
    const-string/jumbo v1, ""

    const/4 v2, 0x1

    .line 242
    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 246
    :goto_2f
    iget-object v0, p0, Lu/aly/bZ;->byU:Lu/aly/bh;

    invoke-static {p1}, Lu/aly/e;->bQE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/bh;->bTg(Ljava/lang/String;)Lu/aly/bh;

    .line 248
    invoke-static {p1}, Lu/aly/e;->bQy(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lu/aly/bZ;->byU:Lu/aly/bh;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lu/aly/bh;->b(Ljava/lang/String;)Lu/aly/bh;

    .line 251
    iget-object v1, p0, Lu/aly/bZ;->byU:Lu/aly/bh;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lu/aly/bh;->a(Ljava/lang/String;)Lu/aly/bh;

    .line 252
    iget-object v0, p0, Lu/aly/bZ;->byU:Lu/aly/bh;

    invoke-static {p1}, Lu/aly/e;->bQx(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lu/aly/bh;->a(I)Lu/aly/bh;

    .line 256
    :goto_55
    return-void

    .line 235
    :cond_56
    iget-object v1, p0, Lu/aly/bZ;->byU:Lu/aly/bh;

    sget-object v2, Lu/aly/an;->bxf:Lu/aly/an;

    invoke-virtual {v1, v2}, Lu/aly/bh;->bTn(Lu/aly/an;)Lu/aly/bh;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5e

    goto :goto_23

    .line 255
    :catch_5e
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_55

    .line 237
    :cond_63
    :try_start_63
    iget-object v1, p0, Lu/aly/bZ;->byU:Lu/aly/bh;

    sget-object v2, Lu/aly/an;->bxe:Lu/aly/an;

    invoke-virtual {v1, v2}, Lu/aly/bh;->bTn(Lu/aly/an;)Lu/aly/bh;

    goto :goto_23

    .line 243
    :cond_6b
    iget-object v1, p0, Lu/aly/bZ;->byU:Lu/aly/bh;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lu/aly/bh;->bTq(Ljava/lang/String;)Lu/aly/bh;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_73} :catch_5e

    goto :goto_2f
.end method


# virtual methods
.method public declared-synchronized b()I
    .registers 3

    .prologue
    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lu/aly/bZ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 56
    iget-object v1, p0, Lu/aly/bZ;->byR:Lu/aly/ao;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-nez v1, :cond_d

    :goto_b
    monitor-exit p0

    .line 60
    return v0

    .line 57
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized bXW(Lu/aly/P;)V
    .registers 3

    .prologue
    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lu/aly/bZ;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 69
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bXX(Lu/aly/bp;)V
    .registers 5

    .prologue
    .line 72
    iget-object v0, p0, Lu/aly/bZ;->byV:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/dg;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_58

    .line 77
    monitor-enter p0

    .line 78
    :try_start_9
    iget-object v0, p0, Lu/aly/bZ;->byR:Lu/aly/ao;

    if-nez v0, :cond_59

    .line 88
    :cond_d
    :goto_d
    iget-object v0, p0, Lu/aly/bZ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_72

    .line 92
    iget-object v0, p0, Lu/aly/bZ;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_6f

    .line 96
    invoke-virtual {p0}, Lu/aly/bZ;->c()Lu/aly/aq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->bWs(Lu/aly/aq;)Lu/aly/bp;

    .line 97
    invoke-virtual {p0}, Lu/aly/bZ;->d()Lu/aly/at;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->bWu(Lu/aly/at;)Lu/aly/bp;

    .line 98
    invoke-virtual {p0}, Lu/aly/bZ;->e()Lu/aly/bh;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->bWw(Lu/aly/bh;)Lu/aly/bp;

    .line 99
    invoke-virtual {p0}, Lu/aly/bZ;->h()Lu/aly/ar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->bWr(Lu/aly/ar;)Lu/aly/bp;

    .line 100
    invoke-virtual {p0}, Lu/aly/bZ;->f()Lu/aly/bc;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->bWL(Lu/aly/bc;)Lu/aly/bp;

    .line 101
    invoke-virtual {p0}, Lu/aly/bZ;->g()Lu/aly/bb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->bWO(Lu/aly/bb;)Lu/aly/bp;

    .line 102
    invoke-virtual {p0}, Lu/aly/bZ;->j()Lu/aly/ap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->bWR(Lu/aly/ap;)Lu/aly/bp;

    .line 103
    invoke-virtual {p0}, Lu/aly/bZ;->i()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->bWX(Ljava/util/Map;)Lu/aly/bp;

    .line 104
    return-void

    .line 74
    :cond_58
    return-void

    .line 80
    :cond_59
    :try_start_59
    new-instance v0, Lu/aly/aA;

    iget-object v2, p0, Lu/aly/bZ;->byV:Landroid/content/Context;

    invoke-direct {v0, v2}, Lu/aly/aA;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v0}, Lu/aly/aA;->f()Z

    move-result v0

    .line 82
    if-eqz v0, :cond_d

    .line 83
    iget-object v0, p0, Lu/aly/bZ;->byR:Lu/aly/ao;

    invoke-virtual {p1, v0}, Lu/aly/bp;->bWy(Lu/aly/ao;)Lu/aly/bp;

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lu/aly/bZ;->byR:Lu/aly/ao;

    goto :goto_d

    .line 93
    :catchall_6f
    move-exception v0

    monitor-exit p0
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_6f

    throw v0

    .line 88
    :cond_72
    :try_start_72
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/P;

    .line 89
    invoke-interface {v0, p1, v1}, Lu/aly/P;->bTF(Lu/aly/bp;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_6f

    goto :goto_13
.end method

.method public declared-synchronized bXY(Lu/aly/ao;)V
    .registers 3

    .prologue
    monitor-enter p0

    .line 107
    :try_start_1
    iput-object p1, p0, Lu/aly/bZ;->byR:Lu/aly/ao;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 108
    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lu/aly/aq;
    .registers 2

    .prologue
    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    if-eqz v0, :cond_9

    .line 116
    :goto_5
    iget-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_16

    monitor-exit p0

    return-object v0

    .line 112
    :cond_9
    :try_start_9
    new-instance v0, Lu/aly/aq;

    invoke-direct {v0}, Lu/aly/aq;-><init>()V

    iput-object v0, p0, Lu/aly/bZ;->byS:Lu/aly/aq;

    .line 113
    iget-object v0, p0, Lu/aly/bZ;->byV:Landroid/content/Context;

    invoke-direct {p0, v0}, Lu/aly/bZ;->a(Landroid/content/Context;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_5

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lu/aly/at;
    .registers 2

    .prologue
    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    if-eqz v0, :cond_9

    .line 125
    :goto_5
    iget-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_16

    monitor-exit p0

    return-object v0

    .line 121
    :cond_9
    :try_start_9
    new-instance v0, Lu/aly/at;

    invoke-direct {v0}, Lu/aly/at;-><init>()V

    iput-object v0, p0, Lu/aly/bZ;->byT:Lu/aly/at;

    .line 122
    iget-object v0, p0, Lu/aly/bZ;->byV:Landroid/content/Context;

    invoke-direct {p0, v0}, Lu/aly/bZ;->b(Landroid/content/Context;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_5

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Lu/aly/bh;
    .registers 2

    .prologue
    monitor-enter p0

    .line 129
    :try_start_1
    iget-object v0, p0, Lu/aly/bZ;->byU:Lu/aly/bh;

    if-eqz v0, :cond_9

    .line 134
    :goto_5
    iget-object v0, p0, Lu/aly/bZ;->byU:Lu/aly/bh;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_16

    monitor-exit p0

    return-object v0

    .line 130
    :cond_9
    :try_start_9
    new-instance v0, Lu/aly/bh;

    invoke-direct {v0}, Lu/aly/bh;-><init>()V

    iput-object v0, p0, Lu/aly/bZ;->byU:Lu/aly/bh;

    .line 131
    iget-object v0, p0, Lu/aly/bZ;->byV:Landroid/content/Context;

    invoke-direct {p0, v0}, Lu/aly/bZ;->c(Landroid/content/Context;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_5

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Lu/aly/bc;
    .registers 2

    .prologue
    .line 139
    :try_start_0
    iget-object v0, p0, Lu/aly/bZ;->byV:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/z;->a(Landroid/content/Context;)Lu/aly/z;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/z;->a()Lu/aly/bc;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 142
    return-object v0
.end method

.method public g()Lu/aly/bb;
    .registers 2

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lu/aly/bZ;->byV:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cP;->a(Landroid/content/Context;)Lu/aly/cP;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/cP;->b()Lu/aly/bb;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    :catch_b
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 151
    return-object v0
.end method

.method public h()Lu/aly/ar;
    .registers 2

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Lu/aly/bZ;->byV:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/aA;->a(Landroid/content/Context;)Lu/aly/ar;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    :catch_7
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    new-instance v0, Lu/aly/ar;

    invoke-direct {v0}, Lu/aly/ar;-><init>()V

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lu/aly/bZ;->byV:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/E;->a(Landroid/content/Context;)Lu/aly/E;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/E;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public j()Lu/aly/ap;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    iget-object v0, p0, Lu/aly/bZ;->byV:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 170
    if-nez v0, :cond_c

    .line 173
    :cond_b
    return-object v4

    .line 170
    :cond_c
    aget-object v1, v0, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 171
    new-instance v1, Lu/aly/ap;

    aget-object v2, v0, v2

    aget-object v0, v0, v3

    invoke-direct {v1, v2, v0}, Lu/aly/ap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
