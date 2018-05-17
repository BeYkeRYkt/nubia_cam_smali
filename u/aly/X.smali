.class public final Lu/aly/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/v;
.implements Lu/aly/A;


# instance fields
.field private final a:J

.field private final b:I

.field private bvW:Lu/aly/bZ;

.field private bvX:Lcom/umeng/analytics/h;

.field private bvY:Lu/aly/aA;

.field private bvZ:Lu/aly/cE;

.field private bwa:Lu/aly/E;

.field private bwb:Lu/aly/bN;

.field private bwc:Lu/aly/bE;

.field private bwd:Lu/aly/cm;

.field private bwe:J

.field private bwf:I

.field private bwg:I

.field private bwh:Landroid/content/Context;

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x1b77400

    .line 40
    iput-wide v0, p0, Lu/aly/X;->a:J

    const/16 v0, 0x1388

    .line 41
    iput v0, p0, Lu/aly/X;->b:I

    .line 42
    iput-object v2, p0, Lu/aly/X;->bvW:Lu/aly/bZ;

    .line 43
    iput-object v2, p0, Lu/aly/X;->bvX:Lcom/umeng/analytics/h;

    .line 44
    iput-object v2, p0, Lu/aly/X;->bvY:Lu/aly/aA;

    .line 45
    iput-object v2, p0, Lu/aly/X;->bvZ:Lu/aly/cE;

    .line 46
    iput-object v2, p0, Lu/aly/X;->bwa:Lu/aly/E;

    .line 47
    iput-object v2, p0, Lu/aly/X;->bwb:Lu/aly/bN;

    .line 48
    iput-object v2, p0, Lu/aly/X;->bwc:Lu/aly/bE;

    .line 49
    iput-object v2, p0, Lu/aly/X;->bwd:Lu/aly/cm;

    const/16 v0, 0xa

    .line 51
    iput v0, p0, Lu/aly/X;->k:I

    .line 53
    iput-wide v6, p0, Lu/aly/X;->bwe:J

    .line 54
    iput v4, p0, Lu/aly/X;->bwf:I

    .line 55
    iput v4, p0, Lu/aly/X;->bwg:I

    .line 60
    iput-object p1, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    .line 62
    new-instance v0, Lu/aly/bZ;

    invoke-direct {v0, p1}, Lu/aly/bZ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/X;->bvW:Lu/aly/bZ;

    .line 63
    new-instance v0, Lu/aly/aA;

    invoke-direct {v0, p1}, Lu/aly/aA;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/X;->bvY:Lu/aly/aA;

    .line 65
    invoke-static {p1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    iput-object v0, p0, Lu/aly/X;->bvX:Lcom/umeng/analytics/h;

    .line 66
    invoke-static {p1}, Lu/aly/z;->a(Landroid/content/Context;)Lu/aly/z;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/z;->b()Lu/aly/cm;

    move-result-object v0

    iput-object v0, p0, Lu/aly/X;->bwd:Lu/aly/cm;

    .line 68
    new-instance v0, Lu/aly/bE;

    invoke-direct {v0, p0}, Lu/aly/bE;-><init>(Lu/aly/X;)V

    iput-object v0, p0, Lu/aly/X;->bwc:Lu/aly/bE;

    .line 70
    iget-object v0, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/E;->a(Landroid/content/Context;)Lu/aly/E;

    move-result-object v0

    iput-object v0, p0, Lu/aly/X;->bwa:Lu/aly/E;

    .line 71
    iget-object v0, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cE;->a(Landroid/content/Context;)Lu/aly/cE;

    move-result-object v0

    iput-object v0, p0, Lu/aly/X;->bvZ:Lu/aly/cE;

    .line 72
    iget-object v0, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    iget-object v1, p0, Lu/aly/X;->bvY:Lu/aly/aA;

    invoke-static {v0, v1}, Lu/aly/bN;->bXG(Landroid/content/Context;Lu/aly/aA;)Lu/aly/bN;

    move-result-object v0

    iput-object v0, p0, Lu/aly/X;->bwb:Lu/aly/bN;

    .line 75
    iget-object v0, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "thtstart"

    .line 76
    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lu/aly/X;->bwe:J

    const-string/jumbo v1, "gkvc"

    .line 77
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/X;->bwf:I

    const-string/jumbo v1, "ekvc"

    .line 78
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/X;->bwg:I

    .line 79
    return-void
.end method

.method private a([B)Lu/aly/bp;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 241
    if-eqz p1, :cond_11

    .line 246
    :try_start_3
    new-instance v0, Lu/aly/bp;

    invoke-direct {v0}, Lu/aly/bp;-><init>()V

    .line 247
    new-instance v1, Lu/aly/bT;

    invoke-direct {v1}, Lu/aly/bT;-><init>()V

    invoke-virtual {v1, v0, p1}, Lu/aly/bT;->bXR(Lu/aly/cj;[B)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_12

    .line 248
    return-object v0

    .line 242
    :cond_11
    return-object v2

    .line 248
    :catch_12
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    return-object v2
.end method

.method private a(I)V
    .registers 6

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/X;->bvY:Lu/aly/aA;

    invoke-virtual {v2}, Lu/aly/aA;->bUB()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x2

    .line 152
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v1}, Lu/aly/X;->bTT([I)Lu/aly/bp;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/X;->bTS(Lu/aly/bp;)V

    .line 153
    new-instance v0, Lu/aly/j;

    invoke-direct {v0, p0}, Lu/aly/j;-><init>(Lu/aly/X;)V

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;J)V

    .line 161
    return-void
.end method

.method private a(Z)V
    .registers 8

    .prologue
    .line 138
    iget-object v0, p0, Lu/aly/X;->bvY:Lu/aly/aA;

    invoke-virtual {v0}, Lu/aly/aA;->f()Z

    move-result v0

    .line 139
    if-nez v0, :cond_14

    .line 143
    :goto_8
    invoke-direct {p0, p1}, Lu/aly/X;->bTV(Z)Z

    move-result v1

    if-nez v1, :cond_25

    .line 145
    if-eqz v0, :cond_29

    .line 146
    :cond_10
    invoke-virtual {p0}, Lu/aly/X;->b()V

    .line 148
    :goto_13
    return-void

    .line 140
    :cond_14
    iget-object v1, p0, Lu/aly/X;->bvW:Lu/aly/bZ;

    new-instance v2, Lu/aly/ao;

    iget-object v3, p0, Lu/aly/X;->bvY:Lu/aly/aA;

    invoke-virtual {v3}, Lu/aly/aA;->n()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lu/aly/ao;-><init>(J)V

    invoke-virtual {v1, v2}, Lu/aly/bZ;->bXY(Lu/aly/ao;)V

    goto :goto_8

    .line 144
    :cond_25
    invoke-direct {p0}, Lu/aly/X;->e()V

    goto :goto_13

    .line 145
    :cond_29
    invoke-direct {p0}, Lu/aly/X;->d()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_13
.end method

.method private bTS(Lu/aly/bp;)V
    .registers 6

    .prologue
    .line 164
    if-nez p1, :cond_3

    .line 186
    :goto_2
    return-void

    .line 166
    :cond_3
    iget-object v0, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cP;->a(Landroid/content/Context;)Lu/aly/cP;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lu/aly/cP;->a()V

    .line 168
    invoke-virtual {v1}, Lu/aly/cP;->b()Lu/aly/bb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bp;->bWO(Lu/aly/bb;)Lu/aly/bp;

    .line 169
    invoke-direct {p0, p1}, Lu/aly/X;->bTX(Lu/aly/bp;)Lu/aly/bp;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/X;->bTU(Lu/aly/bp;)[B

    move-result-object v0

    .line 171
    if-eqz v0, :cond_43

    .line 175
    invoke-direct {p0}, Lu/aly/X;->f()Z

    move-result v2

    if-nez v2, :cond_44

    .line 178
    iget-object v2, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    iget-object v3, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/ce;->bYf(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/ce;

    move-result-object v0

    .line 180
    :goto_2f
    invoke-virtual {v0}, Lu/aly/ce;->c()[B

    move-result-object v0

    .line 181
    iget-object v2, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v2

    .line 182
    invoke-virtual {v2}, Lcom/umeng/analytics/h;->f()V

    .line 183
    invoke-virtual {v2, v0}, Lcom/umeng/analytics/h;->b([B)V

    .line 184
    invoke-virtual {v1}, Lu/aly/cP;->d()V

    goto :goto_2

    .line 172
    :cond_43
    return-void

    .line 176
    :cond_44
    iget-object v2, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    iget-object v3, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/ce;->bYg(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/ce;

    move-result-object v0

    goto :goto_2f
.end method

.method private bTU(Lu/aly/bp;)[B
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 257
    if-eqz p1, :cond_17

    .line 261
    :try_start_3
    new-instance v0, Lu/aly/bH;

    invoke-direct {v0}, Lu/aly/bH;-><init>()V

    invoke-virtual {v0, p1}, Lu/aly/bH;->bWn(Lu/aly/cj;)[B

    move-result-object v0

    const-string/jumbo v1, "MobclickAgent"

    .line 262
    invoke-virtual {p1}, Lu/aly/bp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lu/aly/O;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_18

    .line 265
    return-object v0

    .line 258
    :cond_17
    return-object v3

    .line 265
    :catch_18
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Fail to serialize log ..."

    .line 267
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 270
    return-object v3
.end method

.method private bTV(Z)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/e;->bQw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 279
    iget-object v0, p0, Lu/aly/X;->bvY:Lu/aly/aA;

    invoke-virtual {v0}, Lu/aly/aA;->f()Z

    move-result v0

    if-nez v0, :cond_26

    .line 283
    iget-object v0, p0, Lu/aly/X;->bwc:Lu/aly/bE;

    invoke-virtual {v0, p1}, Lu/aly/bE;->bWk(Z)Lcom/umeng/analytics/ReportPolicy$i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/ReportPolicy$i;->a(Z)Z

    move-result v0

    return v0

    :cond_1c
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "network is unavailable"

    .line 275
    invoke-static {v0, v1}, Lu/aly/O;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return v2

    .line 280
    :cond_26
    const/4 v0, 0x1

    return v0
.end method

.method private bTW(Lu/aly/bp;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 334
    if-eqz p1, :cond_a

    .line 339
    invoke-virtual {p1}, Lu/aly/bp;->c()Lu/aly/ar;

    move-result-object v0

    if-nez v0, :cond_14

    .line 343
    :cond_9
    return v2

    :cond_a
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "No data to report"

    .line 335
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return v2

    .line 339
    :cond_14
    invoke-virtual {p1}, Lu/aly/bp;->f()Lu/aly/aq;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lu/aly/bp;->j()Lu/aly/at;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 340
    invoke-virtual {p1}, Lu/aly/bp;->m()Lu/aly/bh;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method private bTX(Lu/aly/bp;)Lu/aly/bp;
    .registers 16

    .prologue
    const/16 v4, 0x1388

    const/4 v1, 0x0

    .line 350
    invoke-virtual {p1}, Lu/aly/bp;->bWD()Ljava/util/List;

    move-result-object v6

    .line 352
    if-nez v6, :cond_31

    :cond_9
    move v0, v1

    move v2, v1

    .line 359
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 360
    iget-wide v10, p0, Lu/aly/X;->bwe:J

    sub-long v10, v8, v10

    const-wide/32 v12, 0x1b77400

    cmp-long v3, v10, v12

    if-gtz v3, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    if-nez v1, :cond_60

    .line 361
    add-int/lit16 v1, v2, -0x1388

    .line 362
    add-int/lit16 v3, v0, -0x1388

    .line 364
    if-lez v1, :cond_59

    .line 365
    :cond_23
    invoke-direct {p0, v1, v3, v6}, Lu/aly/X;->bTY(IILjava/util/List;)V

    .line 368
    :goto_26
    if-gtz v1, :cond_5c

    :goto_28
    iput v2, p0, Lu/aly/X;->bwf:I

    .line 369
    if-gtz v3, :cond_5e

    :goto_2c
    iput v0, p0, Lu/aly/X;->bwg:I

    .line 370
    iput-wide v8, p0, Lu/aly/X;->bwe:J

    .line 383
    :goto_30
    return-object p1

    .line 352
    :cond_31
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9

    move v5, v1

    move v2, v1

    move v3, v1

    .line 353
    :goto_3a
    if-lt v5, v7, :cond_3f

    move v0, v2

    move v2, v3

    goto :goto_b

    .line 354
    :cond_3f
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->bXr()I

    move-result v0

    add-int/2addr v3, v0

    .line 355
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->l()I

    move-result v0

    add-int/2addr v2, v0

    .line 353
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3a

    .line 364
    :cond_59
    if-gtz v3, :cond_23

    goto :goto_26

    :cond_5c
    move v2, v4

    .line 368
    goto :goto_28

    :cond_5e
    move v0, v4

    .line 369
    goto :goto_2c

    .line 372
    :cond_60
    iget v1, p0, Lu/aly/X;->bwf:I

    if-gt v1, v4, :cond_87

    iget v1, p0, Lu/aly/X;->bwf:I

    add-int/2addr v1, v2

    add-int/lit16 v1, v1, -0x1388

    .line 373
    :goto_69
    iget v3, p0, Lu/aly/X;->bwg:I

    if-gt v3, v4, :cond_89

    iget v3, p0, Lu/aly/X;->bwg:I

    add-int/2addr v3, v0

    add-int/lit16 v3, v3, -0x1388

    .line 375
    :goto_72
    if-lez v1, :cond_8b

    .line 376
    :cond_74
    invoke-direct {p0, v1, v3, v6}, Lu/aly/X;->bTY(IILjava/util/List;)V

    .line 379
    :goto_77
    if-gtz v1, :cond_8e

    iget v1, p0, Lu/aly/X;->bwf:I

    add-int/2addr v1, v2

    :goto_7c
    iput v1, p0, Lu/aly/X;->bwf:I

    .line 380
    if-gtz v3, :cond_84

    iget v1, p0, Lu/aly/X;->bwg:I

    add-int v4, v1, v0

    :cond_84
    iput v4, p0, Lu/aly/X;->bwg:I

    goto :goto_30

    :cond_87
    move v1, v2

    .line 372
    goto :goto_69

    :cond_89
    move v3, v0

    .line 373
    goto :goto_72

    .line 375
    :cond_8b
    if-gtz v3, :cond_74

    goto :goto_77

    :cond_8e
    move v1, v4

    .line 379
    goto :goto_7c
.end method

.method private bTY(IILjava/util/List;)V
    .registers 8

    .prologue
    .line 387
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 388
    if-gtz p1, :cond_9

    .line 404
    :cond_6
    if-gtz p2, :cond_3c

    .line 419
    :cond_8
    return-void

    .line 389
    :cond_9
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_c
    if-ltz v1, :cond_6

    .line 390
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->bXt()Ljava/util/List;

    move-result-object v3

    .line 391
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_2a

    .line 398
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 399
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 389
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_c

    .line 392
    :cond_2a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, v0, p1

    .line 393
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    :goto_34
    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_6

    .line 394
    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_34

    .line 405
    :cond_3c
    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_3f
    if-ltz v1, :cond_8

    .line 406
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->n()Ljava/util/List;

    move-result-object v2

    .line 407
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p2, :cond_5d

    .line 414
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p2, v0

    .line 415
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 405
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3f

    .line 408
    :cond_5d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int v1, v0, p2

    .line 409
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_67
    add-int/lit8 v0, v0, -0x1

    if-lt v0, v1, :cond_8

    .line 410
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_67
.end method

.method private bTZ(I)V
    .registers 2

    .prologue
    .line 438
    invoke-direct {p0, p1}, Lu/aly/X;->a(I)V

    .line 439
    return-void
.end method

.method static synthetic bUa(Lu/aly/X;)Lu/aly/cm;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lu/aly/X;->bwd:Lu/aly/cm;

    return-object v0
.end method

.method static synthetic bUb(Lu/aly/X;)Lu/aly/cE;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lu/aly/X;->bvZ:Lu/aly/cE;

    return-object v0
.end method

.method static synthetic bUc(Lu/aly/X;)Lu/aly/aA;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lu/aly/X;->bvY:Lu/aly/aA;

    return-object v0
.end method

.method static synthetic bUd(Lu/aly/X;)Lu/aly/bN;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lu/aly/X;->bwb:Lu/aly/bN;

    return-object v0
.end method

.method static synthetic bUe(Lu/aly/X;I)V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lu/aly/X;->bTZ(I)V

    return-void
.end method

.method static synthetic bUf(Lu/aly/X;)Lu/aly/E;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lu/aly/X;->bwa:Lu/aly/E;

    return-object v0
.end method

.method static synthetic bUg(Lu/aly/X;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    return-object v0
.end method

.method private d()Z
    .registers 3

    .prologue
    .line 287
    iget-object v0, p0, Lu/aly/X;->bvW:Lu/aly/bZ;

    invoke-virtual {v0}, Lu/aly/bZ;->b()I

    move-result v0

    iget v1, p0, Lu/aly/X;->k:I

    if-gt v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private e()V
    .registers 5

    .prologue
    .line 292
    :try_start_0
    iget-object v0, p0, Lu/aly/X;->bvX:Lcom/umeng/analytics/h;

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->g()Z

    move-result v0

    if-nez v0, :cond_3b

    const/4 v0, 0x0

    .line 300
    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/X;->bTT([I)Lu/aly/bp;

    move-result-object v0

    .line 302
    invoke-direct {p0, v0}, Lu/aly/X;->bTW(Lu/aly/bp;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 307
    new-instance v1, Lu/aly/bR;

    iget-object v2, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    iget-object v3, p0, Lu/aly/X;->bvY:Lu/aly/aA;

    invoke-direct {v1, v2, v3}, Lu/aly/bR;-><init>(Landroid/content/Context;Lu/aly/aA;)V

    .line 308
    invoke-virtual {v1, p0}, Lu/aly/bR;->bXJ(Lu/aly/A;)V

    .line 309
    iget-object v2, p0, Lu/aly/X;->bvZ:Lu/aly/cE;

    invoke-virtual {v2}, Lu/aly/cE;->c()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 312
    :goto_29
    invoke-direct {p0, v0}, Lu/aly/X;->bTX(Lu/aly/bp;)Lu/aly/bp;

    move-result-object v0

    invoke-virtual {v1, v0}, Lu/aly/bR;->bXH(Lu/aly/bp;)V

    .line 313
    invoke-direct {p0}, Lu/aly/X;->f()Z

    move-result v0

    invoke-virtual {v1, v0}, Lu/aly/bR;->a(Z)V

    .line 314
    invoke-virtual {v1}, Lu/aly/bR;->a()V

    .line 325
    :cond_3a
    :goto_3a
    return-void

    .line 293
    :cond_3b
    new-instance v0, Lu/aly/bR;

    iget-object v1, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    iget-object v2, p0, Lu/aly/X;->bvY:Lu/aly/aA;

    invoke-direct {v0, v1, v2}, Lu/aly/bR;-><init>(Landroid/content/Context;Lu/aly/aA;)V

    .line 294
    invoke-virtual {v0, p0}, Lu/aly/bR;->bXJ(Lu/aly/A;)V

    .line 295
    iget-object v1, p0, Lu/aly/X;->bvZ:Lu/aly/cE;

    invoke-virtual {v1}, Lu/aly/cE;->c()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 298
    :goto_4f
    invoke-virtual {v0}, Lu/aly/bR;->a()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_3a

    .line 324
    :catch_53
    move-exception v0

    .line 317
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-nez v1, :cond_58

    .line 321
    :cond_58
    if-eqz v0, :cond_3a

    .line 322
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3a

    .line 296
    :cond_5e
    const/4 v1, 0x1

    :try_start_5f
    invoke-virtual {v0, v1}, Lu/aly/bR;->bXI(Z)V

    goto :goto_4f

    :cond_63
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, " not legitimate!"

    .line 303
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void

    .line 310
    :cond_6d
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lu/aly/bR;->bXI(Z)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_71} :catch_53

    goto :goto_29
.end method

.method private f()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 422
    iget-object v0, p0, Lu/aly/X;->bwd:Lu/aly/cm;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lu/aly/cm;->bYG(I)I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 430
    return v2

    .line 424
    :pswitch_c
    const/4 v0, 0x1

    return v0

    .line 426
    :pswitch_e
    return v2

    .line 428
    :pswitch_f
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    return v0

    .line 422
    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/e;->bQw(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "network is unavailable"

    .line 86
    invoke-static {v0, v1}, Lu/aly/O;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_11
    return-void

    .line 84
    :cond_12
    invoke-direct {p0}, Lu/aly/X;->e()V

    goto :goto_11
.end method

.method public b()V
    .registers 5

    .prologue
    .line 110
    iget-object v0, p0, Lu/aly/X;->bvW:Lu/aly/bZ;

    invoke-virtual {v0}, Lu/aly/bZ;->b()I

    move-result v0

    if-gtz v0, :cond_31

    .line 127
    :cond_8
    :goto_8
    iget-object v0, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "thtstart"

    iget-wide v2, p0, Lu/aly/X;->bwe:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "gkvc"

    iget v2, p0, Lu/aly/X;->bwf:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ekvc"

    iget v2, p0, Lu/aly/X;->bwg:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    return-void

    :cond_31
    const/4 v0, 0x0

    .line 112
    :try_start_32
    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/X;->bTT([I)Lu/aly/bp;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/X;->bTU(Lu/aly/bp;)[B

    move-result-object v0

    .line 113
    if-eqz v0, :cond_8

    .line 114
    iget-object v1, p0, Lu/aly/X;->bvX:Lcom/umeng/analytics/h;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/h;->a([B)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_43} :catch_44

    goto :goto_8

    .line 124
    :catch_44
    move-exception v0

    .line 117
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-nez v1, :cond_4f

    .line 121
    :goto_49
    if-eqz v0, :cond_8

    .line 122
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 118
    :cond_4f
    iget-object v1, p0, Lu/aly/X;->bvX:Lcom/umeng/analytics/h;

    invoke-virtual {v1}, Lcom/umeng/analytics/h;->f()V

    goto :goto_49
.end method

.method public bRG(Lu/aly/P;)V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lu/aly/X;->bvW:Lu/aly/bZ;

    invoke-virtual {v0, p1}, Lu/aly/bZ;->bXW(Lu/aly/P;)V

    .line 107
    return-void
.end method

.method public bRH(Lu/aly/P;)V
    .registers 3

    .prologue
    .line 95
    if-nez p1, :cond_8

    .line 99
    :goto_2
    instance-of v0, p1, Lu/aly/bn;

    invoke-direct {p0, v0}, Lu/aly/X;->a(Z)V

    .line 100
    return-void

    .line 96
    :cond_8
    iget-object v0, p0, Lu/aly/X;->bvW:Lu/aly/bZ;

    invoke-virtual {v0, p1}, Lu/aly/bZ;->bXW(Lu/aly/P;)V

    goto :goto_2
.end method

.method public bSq(Lu/aly/cm;)V
    .registers 3

    .prologue
    .line 442
    iget-object v0, p0, Lu/aly/X;->bwa:Lu/aly/E;

    invoke-virtual {v0, p1}, Lu/aly/E;->bSq(Lu/aly/cm;)V

    .line 443
    iget-object v0, p0, Lu/aly/X;->bvZ:Lu/aly/cE;

    invoke-virtual {v0, p1}, Lu/aly/cE;->bSq(Lu/aly/cm;)V

    .line 444
    iget-object v0, p0, Lu/aly/X;->bwb:Lu/aly/bN;

    invoke-virtual {v0, p1}, Lu/aly/bN;->bSq(Lu/aly/cm;)V

    .line 445
    iget-object v0, p0, Lu/aly/X;->bwc:Lu/aly/bE;

    invoke-virtual {v0, p1}, Lu/aly/bE;->bWm(Lu/aly/cm;)V

    .line 446
    return-void
.end method

.method protected varargs bTT([I)Lu/aly/bp;
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 190
    :try_start_3
    iget-object v0, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 197
    iget-object v0, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->e()[B

    move-result-object v0

    .line 198
    if-eqz v0, :cond_42

    invoke-direct {p0, v0}, Lu/aly/X;->a([B)Lu/aly/bp;

    move-result-object v0

    .line 201
    :goto_1f
    if-eqz v0, :cond_44

    .line 205
    :cond_21
    if-eqz v0, :cond_4d

    move-object v4, v0

    .line 208
    :goto_24
    iget-object v0, p0, Lu/aly/X;->bvW:Lu/aly/bZ;

    invoke-virtual {v0, v4}, Lu/aly/bZ;->bXX(Lu/aly/bp;)V

    .line 210
    sget-boolean v0, Lu/aly/O;->a:Z

    if-nez v0, :cond_54

    .line 223
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lu/aly/X;->bvZ:Lu/aly/cE;

    iget-object v2, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-virtual {v0, v2, v4}, Lu/aly/cE;->bYU(Landroid/content/Context;Lu/aly/bp;)Lu/aly/bp;

    move-result-object v0

    .line 225
    if-nez p1, :cond_99

    .line 231
    :cond_37
    :goto_37
    return-object v0

    :cond_38
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v2, "Appkey is missing ,Please check AndroidManifest.xml"

    .line 191
    invoke-static {v0, v2}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-object v1

    :cond_42
    move-object v0, v1

    .line 198
    goto :goto_1f

    .line 201
    :cond_44
    iget-object v4, p0, Lu/aly/X;->bvW:Lu/aly/bZ;

    invoke-virtual {v4}, Lu/aly/bZ;->b()I

    move-result v4

    if-nez v4, :cond_21

    .line 202
    return-object v1

    .line 206
    :cond_4d
    new-instance v0, Lu/aly/bp;

    invoke-direct {v0}, Lu/aly/bp;-><init>()V

    move-object v4, v0

    goto :goto_24

    .line 210
    :cond_54
    invoke-virtual {v4}, Lu/aly/bp;->bWJ()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 212
    invoke-virtual {v4}, Lu/aly/bp;->bWH()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_88

    .line 218
    if-nez v2, :cond_2d

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v2, "missing Activities or PageViews"

    .line 219
    invoke-static {v0, v2}, Lu/aly/O;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_73} :catch_74

    goto :goto_2d

    .line 231
    :catch_74
    move-exception v0

    const-string/jumbo v2, "MobclickAgent"

    const-string/jumbo v3, "Fail to construct message ..."

    .line 233
    invoke-static {v2, v3, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 234
    iget-object v0, p0, Lu/aly/X;->bwh:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->f()V

    .line 237
    return-object v1

    .line 212
    :cond_88
    :try_start_88
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bn;

    .line 213
    invoke-virtual {v0}, Lu/aly/bn;->bRQ()I

    move-result v0

    if-gtz v0, :cond_97

    move v0, v2

    :goto_95
    move v2, v0

    .line 216
    goto :goto_62

    :cond_97
    move v0, v3

    .line 214
    goto :goto_95

    .line 225
    :cond_99
    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_37

    .line 226
    new-instance v2, Lu/aly/as;

    invoke-direct {v2}, Lu/aly/as;-><init>()V

    .line 227
    new-instance v3, Lu/aly/bf;

    const/4 v4, 0x0

    aget v4, p1, v4

    div-int/lit16 v4, v4, 0x3e8

    const/4 v5, 0x1

    aget v5, p1, v5

    int-to-long v6, v5

    invoke-direct {v3, v4, v6, v7}, Lu/aly/bf;-><init>(IJ)V

    invoke-virtual {v2, v3}, Lu/aly/as;->bWo(Lu/aly/bf;)Lu/aly/as;

    .line 228
    invoke-virtual {v0, v2}, Lu/aly/bp;->bWU(Lu/aly/as;)Lu/aly/bp;
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_b6} :catch_74

    goto :goto_37
.end method

.method public c()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 132
    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/X;->bTT([I)Lu/aly/bp;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/X;->bTS(Lu/aly/bp;)V

    .line 133
    return-void
.end method
