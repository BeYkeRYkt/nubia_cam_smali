.class public Lu/aly/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private bzo:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private j:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput v0, p0, Lu/aly/cm;->a:I

    .line 265
    iput v0, p0, Lu/aly/cm;->b:I

    .line 266
    iput v0, p0, Lu/aly/cm;->c:I

    .line 267
    iput v0, p0, Lu/aly/cm;->d:I

    .line 268
    iput v0, p0, Lu/aly/cm;->e:I

    .line 269
    iput-object v1, p0, Lu/aly/cm;->f:Ljava/lang/String;

    .line 270
    iput v0, p0, Lu/aly/cm;->g:I

    .line 271
    iput-object v1, p0, Lu/aly/cm;->h:Ljava/lang/String;

    .line 272
    iput v0, p0, Lu/aly/cm;->bzo:I

    .line 273
    iput v0, p0, Lu/aly/cm;->j:I

    .line 276
    return-void
.end method

.method private bYJ(Lu/aly/bc;Ljava/lang/String;)I
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 429
    if-nez p1, :cond_4

    .line 430
    :cond_3
    return v2

    .line 429
    :cond_4
    invoke-virtual {p1}, Lu/aly/bc;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 433
    invoke-virtual {p1}, Lu/aly/bc;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bd;

    .line 435
    if-nez v0, :cond_17

    .line 436
    :cond_16
    return v2

    .line 435
    :cond_17
    invoke-virtual {v0}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 440
    :try_start_21
    invoke-virtual {v0}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2c} :catch_2e

    move-result v0

    return v0

    :catch_2e
    move-exception v0

    .line 444
    return v2
.end method

.method private bYK(Lu/aly/bc;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 448
    if-nez p1, :cond_4

    .line 449
    :cond_3
    return-object v2

    .line 448
    :cond_4
    invoke-virtual {p1}, Lu/aly/bc;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    invoke-virtual {p1}, Lu/aly/bc;->d()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bd;

    .line 454
    if-nez v0, :cond_17

    .line 455
    :cond_16
    return-object v2

    .line 454
    :cond_17
    invoke-virtual {v0}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 458
    invoke-virtual {v0}, Lu/aly/bd;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .registers 4

    .prologue
    .line 306
    iget v0, p0, Lu/aly/cm;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    .line 310
    iget v0, p0, Lu/aly/cm;->a:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_c

    .line 311
    :cond_a
    return p1

    .line 307
    :cond_b
    return p1

    .line 310
    :cond_c
    iget v0, p0, Lu/aly/cm;->a:I

    if-ltz v0, :cond_a

    .line 314
    iget v0, p0, Lu/aly/cm;->a:I

    return v0
.end method

.method public a(J)J
    .registers 8

    .prologue
    .line 417
    iget v0, p0, Lu/aly/cm;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 421
    iget v0, p0, Lu/aly/cm;->j:I

    const/16 v1, 0x30

    if-lt v0, v1, :cond_14

    .line 425
    iget v0, p0, Lu/aly/cm;->j:I

    int-to-long v0, v0

    const-wide/32 v2, 0x36ee80

    mul-long/2addr v0, v2

    return-wide v0

    .line 418
    :cond_13
    return-wide p1

    .line 422
    :cond_14
    return-wide p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 377
    iget-object v0, p0, Lu/aly/cm;->f:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 378
    :cond_4
    return-object p1

    .line 377
    :cond_5
    iget-object v0, p0, Lu/aly/cm;->f:Ljava/lang/String;

    invoke-static {v0}, Lu/aly/E;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    iget-object v0, p0, Lu/aly/cm;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 399
    iget v0, p0, Lu/aly/cm;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 403
    iget-object v0, p0, Lu/aly/cm;->h:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 407
    iget v1, p0, Lu/aly/cm;->bzo:I

    if-eq v1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    return v0
.end method

.method public bYE(Lu/aly/bc;)V
    .registers 3

    .prologue
    .line 283
    if-eqz p1, :cond_5d

    const-string/jumbo v0, "defcon"

    .line 287
    invoke-direct {p0, p1, v0}, Lu/aly/cm;->bYJ(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/cm;->a:I

    const-string/jumbo v0, "latent"

    .line 288
    invoke-direct {p0, p1, v0}, Lu/aly/cm;->bYJ(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/cm;->b:I

    const-string/jumbo v0, "codex"

    .line 289
    invoke-direct {p0, p1, v0}, Lu/aly/cm;->bYJ(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/cm;->c:I

    const-string/jumbo v0, "report_policy"

    .line 290
    invoke-direct {p0, p1, v0}, Lu/aly/cm;->bYJ(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/cm;->d:I

    const-string/jumbo v0, "report_interval"

    .line 291
    invoke-direct {p0, p1, v0}, Lu/aly/cm;->bYJ(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/cm;->e:I

    const-string/jumbo v0, "client_test"

    .line 292
    invoke-direct {p0, p1, v0}, Lu/aly/cm;->bYK(Lu/aly/bc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/cm;->f:Ljava/lang/String;

    const-string/jumbo v0, "test_report_interval"

    .line 293
    invoke-direct {p0, p1, v0}, Lu/aly/cm;->bYJ(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/cm;->g:I

    const-string/jumbo v0, "umid"

    .line 294
    invoke-direct {p0, p1, v0}, Lu/aly/cm;->bYK(Lu/aly/bc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/cm;->h:Ljava/lang/String;

    const-string/jumbo v0, "integrated_test"

    .line 295
    invoke-direct {p0, p1, v0}, Lu/aly/cm;->bYJ(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/cm;->bzo:I

    const-string/jumbo v0, "latent_hours"

    .line 296
    invoke-direct {p0, p1, v0}, Lu/aly/cm;->bYJ(Lu/aly/bc;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lu/aly/cm;->j:I

    .line 297
    return-void

    .line 284
    :cond_5d
    return-void
.end method

.method public bYF(I)I
    .registers 4

    .prologue
    .line 325
    iget v0, p0, Lu/aly/cm;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 329
    iget v0, p0, Lu/aly/cm;->b:I

    if-gez v0, :cond_b

    .line 330
    :cond_9
    return p1

    .line 326
    :cond_a
    return p1

    .line 329
    :cond_b
    iget v0, p0, Lu/aly/cm;->b:I

    const/16 v1, 0x708

    if-gt v0, v1, :cond_9

    .line 333
    iget v0, p0, Lu/aly/cm;->b:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public bYG(I)I
    .registers 4

    .prologue
    .line 343
    iget v0, p0, Lu/aly/cm;->c:I

    if-nez v0, :cond_7

    .line 344
    :cond_4
    iget v0, p0, Lu/aly/cm;->c:I

    return v0

    .line 343
    :cond_7
    iget v0, p0, Lu/aly/cm;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lu/aly/cm;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 347
    return p1
.end method

.method public bYH(II)[I
    .registers 9

    .prologue
    const/16 v5, 0x5a

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 359
    iget v0, p0, Lu/aly/cm;->d:I

    if-ne v0, v1, :cond_11

    .line 360
    :cond_a
    new-array v0, v4, [I

    aput p1, v0, v2

    aput p2, v0, v3

    return-object v0

    .line 359
    :cond_11
    iget v0, p0, Lu/aly/cm;->d:I

    invoke-static {v0}, Lcom/umeng/analytics/ReportPolicy;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 363
    iget v0, p0, Lu/aly/cm;->e:I

    if-ne v0, v1, :cond_2c

    .line 364
    :cond_1d
    iput v5, p0, Lu/aly/cm;->e:I

    .line 367
    :goto_1f
    new-array v0, v4, [I

    iget v1, p0, Lu/aly/cm;->d:I

    aput v1, v0, v2

    iget v1, p0, Lu/aly/cm;->e:I

    mul-int/lit16 v1, v1, 0x3e8

    aput v1, v0, v3

    return-object v0

    .line 363
    :cond_2c
    iget v0, p0, Lu/aly/cm;->e:I

    if-lt v0, v5, :cond_1d

    iget v0, p0, Lu/aly/cm;->e:I

    const v1, 0x15180

    if-gt v0, v1, :cond_1d

    goto :goto_1f
.end method

.method public bYI(I)I
    .registers 4

    .prologue
    .line 391
    iget v0, p0, Lu/aly/cm;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 392
    :cond_5
    return p1

    .line 391
    :cond_6
    iget v0, p0, Lu/aly/cm;->g:I

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_5

    iget v0, p0, Lu/aly/cm;->g:I

    const v1, 0x15180

    if-gt v0, v1, :cond_5

    .line 395
    iget v0, p0, Lu/aly/cm;->g:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method
