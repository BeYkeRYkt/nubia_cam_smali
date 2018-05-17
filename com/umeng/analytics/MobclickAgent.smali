.class public Lcom/umeng/analytics/MobclickAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "input map is null"

.field private static final b:Lcom/umeng/analytics/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/umeng/analytics/d;

    invoke-direct {v0}, Lcom/umeng/analytics/d;-><init>()V

    sput-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flush(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 234
    return-void
.end method

.method public static getAgent()Lcom/umeng/analytics/d;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    return-object v0
.end method

.method public static getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    const-string/jumbo v0, ""

    .line 558
    return-object v0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 246
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 247
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 10

    .prologue
    .line 261
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 262
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 297
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 302
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 303
    return-void

    :cond_12
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "label is null or empty"

    .line 298
    invoke-static {v0, v1}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .prologue
    .line 278
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 283
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 284
    return-void

    :cond_12
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "label is null or empty"

    .line 279
    invoke-static {v0, v1}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .registers 9

    .prologue
    .line 316
    if-eqz p2, :cond_11

    .line 320
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    .line 321
    return-void

    :cond_11
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "input map is null"

    .line 317
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 426
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void
.end method

.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 454
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 12

    .prologue
    const/4 v6, 0x1

    const-wide/16 v0, 0x0

    .line 336
    cmp-long v0, p2, v0

    if-lez v0, :cond_14

    move v0, v6

    :goto_8
    if-nez v0, :cond_16

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "duration is not valid in onEventDuration"

    .line 337
    invoke-static {v0, v1}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void

    .line 336
    :cond_14
    const/4 v0, 0x0

    goto :goto_8

    .line 340
    :cond_16
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 341
    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 357
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-wide/16 v2, 0x0

    .line 361
    cmp-long v1, p3, v2

    if-lez v1, :cond_f

    move v0, v6

    :cond_f
    if-nez v0, :cond_25

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "duration is not valid in onEventDuration"

    .line 362
    invoke-static {v0, v1}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void

    :cond_1b
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "label is null or empty"

    .line 358
    invoke-static {v0, v1}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void

    .line 365
    :cond_25
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 366
    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .registers 12

    .prologue
    const-wide/16 v0, 0x0

    .line 382
    cmp-long v0, p3, v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_15

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "duration is not valid in onEventDuration"

    .line 383
    invoke-static {v0, v1}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void

    .line 382
    :cond_13
    const/4 v0, 0x0

    goto :goto_7

    .line 386
    :cond_15
    if-eqz p2, :cond_25

    .line 390
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    .line 391
    return-void

    :cond_25
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "input map is null"

    .line 387
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 439
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/umeng/analytics/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 469
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public static onEventValue(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;I)V
    .registers 10

    .prologue
    .line 407
    if-eqz p2, :cond_1b

    .line 410
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    :goto_7
    const-string/jumbo v0, "__ct__"

    .line 412
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    .line 414
    return-void

    .line 408
    :cond_1b
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_7
.end method

.method public static onKVEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 487
    if-eqz p2, :cond_d

    .line 491
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0, p1, v1, p3}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 492
    return-void

    :cond_d
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "input map is null"

    .line 488
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public static onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 507
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/d;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 602
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->d(Landroid/content/Context;)V

    .line 603
    return-void
.end method

.method public static onPageEnd(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 131
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "pageName is null or empty"

    .line 134
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_f
    return-void

    .line 132
    :cond_10
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->b(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static onPageStart(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "pageName is null or empty"

    .line 121
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_f
    return-void

    .line 119
    :cond_10
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->a(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static onPause(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 153
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->b(Landroid/content/Context;)V

    .line 154
    return-void
.end method

.method public static onProfileSignIn(Ljava/lang/String;)V
    .registers 2

    .prologue
    const-string/jumbo v0, "_adhoc"

    .line 614
    invoke-static {v0, p0}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignIn(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public static onProfileSignIn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 629
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 632
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_2c

    .line 637
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 639
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_3f

    .line 643
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :goto_21
    return-void

    :cond_22
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "uid is null"

    .line 630
    invoke-static {v0, v1}, Lu/aly/O;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void

    :cond_2c
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "uid is Illegal(length bigger then  legitimate length)."

    .line 633
    invoke-static {v0, v1}, Lu/aly/O;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    return-void

    .line 638
    :cond_36
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    const-string/jumbo v1, "_adhoc"

    invoke-virtual {v0, v1, p1}, Lcom/umeng/analytics/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_3f
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "provider is Illegal(length bigger then  legitimate length)."

    .line 640
    invoke-static {v0, v1}, Lu/aly/O;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    return-void
.end method

.method public static onProfileSignOff()V
    .registers 1

    .prologue
    .line 653
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0}, Lcom/umeng/analytics/d;->b()V

    .line 654
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 163
    if-eqz p0, :cond_8

    .line 168
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;)V

    .line 169
    return-void

    :cond_8
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "unexpected null context in onResume"

    .line 164
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static onResume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 182
    if-eqz p0, :cond_e

    .line 187
    if-nez p1, :cond_18

    :cond_4
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "unexpected empty appkey in onResume"

    .line 188
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void

    :cond_e
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "unexpected null context in onResume"

    .line 183
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void

    .line 187
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 192
    invoke-static {p0, p1}, Lcom/umeng/analytics/AnalyticsConfig;->setAppkey(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    invoke-static {p2}, Lcom/umeng/analytics/AnalyticsConfig;->setChannel(Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;)V

    .line 196
    return-void
.end method

.method public static varargs onSocialEvent(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .registers 5

    .prologue
    .line 524
    if-eqz p0, :cond_b

    const-string/jumbo v0, "3"

    .line 528
    sput-object v0, Lcom/umeng/analytics/social/e;->e:Ljava/lang/String;

    .line 529
    invoke-static {p0, p1, p2}, Lcom/umeng/analytics/social/UMSocialService;->share(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V

    .line 530
    return-void

    :cond_b
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "context is null in onShareEvent"

    .line 525
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public static varargs onSocialEvent(Landroid/content/Context;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .registers 4

    .prologue
    .line 541
    if-eqz p0, :cond_b

    const-string/jumbo v0, "3"

    .line 545
    sput-object v0, Lcom/umeng/analytics/social/e;->e:Ljava/lang/String;

    .line 546
    invoke-static {p0, p1}, Lcom/umeng/analytics/social/UMSocialService;->share(Landroid/content/Context;[Lcom/umeng/analytics/social/UMPlatformData;)V

    .line 547
    return-void

    :cond_b
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "context is null in onShareEvent"

    .line 542
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public static openActivityDurationTrack(Z)V
    .registers 1

    .prologue
    .line 109
    sput-boolean p0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    .line 110
    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 209
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 221
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 222
    return-void
.end method

.method public static setAutoLocation(Z)V
    .registers 1

    .prologue
    .line 40
    return-void
.end method

.method public static setCatchUncaughtExceptions(Z)V
    .registers 1

    .prologue
    .line 46
    sput-boolean p0, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 47
    return-void
.end method

.method public static setDebugMode(Z)V
    .registers 1

    .prologue
    .line 145
    sput-boolean p0, Lu/aly/O;->a:Z

    .line 146
    sput-boolean p0, Lcom/umeng/analytics/social/e;->v:Z

    .line 147
    return-void
.end method

.method public static setEnableEventBuffer(Z)V
    .registers 1

    .prologue
    .line 71
    sput-boolean p0, Lcom/umeng/analytics/AnalyticsConfig;->ENABLE_MEMORY_BUFFER:Z

    .line 72
    return-void
.end method

.method public static setOnlineConfigureListener(Ljava/lang/Object;)V
    .registers 1

    .prologue
    .line 81
    return-void
.end method

.method public static setOpenGLContext(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4

    .prologue
    .line 94
    if-nez p0, :cond_3

    .line 101
    :cond_2
    :goto_2
    return-void

    .line 95
    :cond_3
    invoke-static {p0}, Lu/aly/e;->bQt(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;

    move-result-object v0

    .line 96
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 97
    aget-object v1, v0, v1

    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    const/4 v1, 0x1

    .line 98
    aget-object v0, v0, v1

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    goto :goto_2
.end method

.method public static setSessionContinueMillis(J)V
    .registers 2

    .prologue
    .line 61
    sput-wide p0, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    .line 62
    return-void
.end method

.method public static setUserID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/analytics/Gender;I)V
    .registers 5

    .prologue
    .line 592
    return-void
.end method

.method public static setWrapper(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 50
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static updateOnlineConfig(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 577
    return-void
.end method

.method public static updateOnlineConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 568
    return-void
.end method
