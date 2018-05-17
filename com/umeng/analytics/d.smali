.class public Lcom/umeng/analytics/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/o;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/umeng/analytics/c;

.field private c:Lu/aly/dF;

.field private d:Lu/aly/aL;

.field private e:Lu/aly/dg;

.field private f:Lu/aly/cT;

.field private g:Lu/aly/db;

.field private h:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 31
    new-instance v0, Lu/aly/dF;

    invoke-direct {v0}, Lu/aly/dF;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->c:Lu/aly/dF;

    .line 32
    new-instance v0, Lu/aly/aL;

    invoke-direct {v0}, Lu/aly/aL;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/aL;

    .line 33
    new-instance v0, Lu/aly/dg;

    invoke-direct {v0}, Lu/aly/dg;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/dg;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    .line 40
    iget-object v0, p0, Lcom/umeng/analytics/d;->c:Lu/aly/dF;

    invoke-virtual {v0, p0}, Lu/aly/dF;->cbR(Lu/aly/o;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/d;)Lu/aly/cT;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/cT;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/umeng/analytics/d;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-eqz v0, :cond_5

    .line 51
    :goto_4
    return-void

    .line 45
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    .line 46
    new-instance v0, Lu/aly/cT;

    iget-object v1, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/cT;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/cT;

    .line 47
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/db;->a(Landroid/content/Context;)Lu/aly/db;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/db;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    goto :goto_4
.end method

.method private f(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/dg;

    invoke-virtual {v0, p1}, Lu/aly/dg;->c(Landroid/content/Context;)V

    .line 185
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    if-nez v0, :cond_a

    .line 187
    :goto_9
    return-void

    .line 186
    :cond_a
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    invoke-interface {v0}, Lcom/umeng/analytics/c;->a()V

    goto :goto_9
.end method

.method private g(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/dg;

    invoke-virtual {v0, p1}, Lu/aly/dg;->d(Landroid/content/Context;)V

    .line 191
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/aL;

    invoke-virtual {v0, p1}, Lu/aly/aL;->a(Landroid/content/Context;)V

    .line 193
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    if-nez v0, :cond_14

    .line 195
    :goto_e
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/db;

    invoke-virtual {v0}, Lu/aly/db;->b()V

    .line 196
    return-void

    .line 194
    :cond_14
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    invoke-interface {v0}, Lcom/umeng/analytics/c;->b()V

    goto :goto_e
.end method


# virtual methods
.method public a()Lu/aly/dg;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/umeng/analytics/d;->e:Lu/aly/dg;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 78
    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->mVerticalType:I

    .line 79
    return-void
.end method

.method a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 87
    if-eqz p1, :cond_13

    .line 92
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_1d

    .line 97
    :goto_6
    :try_start_6
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-eqz v0, :cond_2b

    .line 100
    :goto_a
    new-instance v0, Lcom/umeng/analytics/d$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$1;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_2f

    .line 109
    :goto_12
    return-void

    :cond_13
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "unexpected null context in onResume"

    .line 88
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void

    .line 93
    :cond_1d
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/aL;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/aL;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 98
    :cond_2b
    :try_start_2b
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_a

    .line 108
    :catch_2f
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Exception occurred in Mobclick.onResume(). "

    .line 107
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_12
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 150
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 154
    if-eqz p1, :cond_1d

    .line 160
    :try_start_8
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-eqz v0, :cond_27

    .line 162
    :goto_c
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/db;

    new-instance v1, Lu/aly/ag;

    invoke-direct {v1, p2}, Lu/aly/ag;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lu/aly/ag;->a(Z)Lu/aly/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/db;->bRH(Lu/aly/P;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_2b

    .line 166
    :goto_1b
    return-void

    .line 151
    :cond_1c
    return-void

    :cond_1d
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "unexpected null context in reportError"

    .line 155
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void

    .line 161
    :cond_27
    :try_start_27
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_c

    .line 165
    :catch_2b
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, ""

    .line 164
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1b
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 230
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-eqz v0, :cond_d

    .line 232
    :goto_4
    new-instance v0, Lcom/umeng/analytics/d$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/umeng/analytics/d$3;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V

    .line 240
    :goto_c
    return-void

    .line 231
    :cond_d
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_4

    .line 239
    :catch_11
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, ""

    .line 238
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 15

    .prologue
    .line 210
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-eqz v0, :cond_e

    .line 212
    :goto_4
    iget-object v1, p0, Lcom/umeng/analytics/d;->f:Lu/aly/cT;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lu/aly/cT;->bZh(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 216
    :goto_d
    return-void

    .line 211
    :cond_e
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_4

    .line 215
    :catch_12
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, ""

    .line 214
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_d
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 7

    .prologue
    .line 141
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-eqz v0, :cond_a

    .line 143
    :goto_4
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/cT;

    invoke-virtual {v0, p2, p3}, Lu/aly/cT;->bZi(Ljava/lang/String;Ljava/util/Map;)V

    .line 147
    :goto_9
    return-void

    .line 142
    :cond_a
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_4

    .line 146
    :catch_e
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, ""

    .line 145
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_9
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 256
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-eqz v0, :cond_d

    .line 258
    :goto_4
    new-instance v0, Lcom/umeng/analytics/d$5;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/umeng/analytics/d$5;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V

    .line 266
    :goto_c
    return-void

    .line 257
    :cond_d
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_4

    .line 265
    :catch_11
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, ""

    .line 264
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .registers 10

    .prologue
    .line 220
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-eqz v0, :cond_a

    .line 222
    :goto_4
    iget-object v0, p0, Lcom/umeng/analytics/d;->f:Lu/aly/cT;

    invoke-virtual {v0, p2, p3, p4, p5}, Lu/aly/cT;->bZg(Ljava/lang/String;Ljava/util/Map;J)V

    .line 226
    :goto_9
    return-void

    .line 221
    :cond_a
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_4

    .line 225
    :catch_e
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, ""

    .line 224
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_9
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 169
    if-nez p1, :cond_3

    .line 170
    :cond_2
    return-void

    .line 169
    :cond_3
    if-eqz p2, :cond_2

    .line 174
    :try_start_5
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-eqz v0, :cond_19

    .line 176
    :goto_9
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/db;

    new-instance v1, Lu/aly/ag;

    invoke-direct {v1, p2}, Lu/aly/ag;-><init>(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lu/aly/ag;->a(Z)Lu/aly/ag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/db;->bRH(Lu/aly/P;)V

    .line 180
    :goto_18
    return-void

    .line 175
    :cond_19
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1d

    goto :goto_9

    .line 179
    :catch_1d
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, ""

    .line 178
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_18
.end method

.method public a(Lcom/umeng/analytics/c;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/umeng/analytics/d;->b:Lcom/umeng/analytics/c;

    .line 75
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 54
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_5

    .line 61
    :goto_4
    return-void

    .line 56
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/aL;

    invoke-virtual {v0, p1}, Lu/aly/aL;->a(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 59
    :catch_b
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 82
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    .line 83
    sput-object p2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/aL;

    invoke-virtual {v0}, Lu/aly/aL;->a()V

    .line 296
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 304
    :goto_9
    invoke-static {}, Lcom/umeng/analytics/f;->a()V

    .line 308
    :goto_c
    return-void

    .line 297
    :cond_d
    if-nez p1, :cond_2d

    .line 300
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 301
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_9

    .line 307
    :catch_22
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Exception in onAppCrash"

    .line 306
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c

    .line 297
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/db;

    if-eqz v0, :cond_f

    .line 298
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/db;

    new-instance v1, Lu/aly/ag;

    invoke-direct {v1, p1}, Lu/aly/ag;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lu/aly/db;->bRG(Lu/aly/P;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3b} :catch_22

    goto :goto_f
.end method

.method b()V
    .registers 4

    .prologue
    .line 334
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$8;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d$8;-><init>(Lcom/umeng/analytics/d;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 355
    :goto_8
    return-void

    .line 354
    :catch_9
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, " Excepthon  in  onProfileSignOff"

    .line 353
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8
.end method

.method b(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 112
    if-eqz p1, :cond_13

    .line 117
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_1d

    .line 122
    :goto_6
    :try_start_6
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-eqz v0, :cond_2b

    .line 125
    :goto_a
    new-instance v0, Lcom/umeng/analytics/d$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d$2;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_2f

    .line 133
    :goto_12
    return-void

    :cond_13
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "unexpected null context in onPause"

    .line 113
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 118
    :cond_1d
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/aL;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/aL;->b(Ljava/lang/String;)V

    goto :goto_6

    .line 123
    :cond_2b
    :try_start_2b
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_a

    .line 132
    :catch_2f
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Exception occurred in Mobclick.onRause(). "

    .line 131
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_12
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 244
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/umeng/analytics/d$4;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 252
    :goto_8
    return-void

    .line 251
    :catch_9
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, ""

    .line 250
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8
.end method

.method b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 64
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_5

    .line 71
    :goto_4
    return-void

    .line 66
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/aL;

    invoke-virtual {v0, p1}, Lu/aly/aL;->b(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 69
    :catch_b
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 312
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/analytics/d$7;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 330
    :goto_8
    return-void

    .line 329
    :catch_9
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, " Excepthon  in  onProfileSignIn"

    .line 328
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8
.end method

.method c(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 200
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->h:Z

    if-eqz v0, :cond_a

    .line 202
    :goto_4
    iget-object v0, p0, Lcom/umeng/analytics/d;->g:Lu/aly/db;

    invoke-virtual {v0}, Lu/aly/db;->a()V

    .line 206
    :goto_9
    return-void

    .line 201
    :cond_a
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->e(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_4

    .line 205
    :catch_e
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, ""

    .line 204
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_9
.end method

.method c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 270
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/d$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/umeng/analytics/d$6;-><init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 278
    :goto_8
    return-void

    .line 277
    :catch_9
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, ""

    .line 276
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8
.end method

.method d(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lu/aly/aL;

    invoke-virtual {v0}, Lu/aly/aL;->a()V

    .line 283
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)V

    .line 284
    invoke-static {p1}, Lu/aly/cr;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    invoke-static {}, Lcom/umeng/analytics/f;->a()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 290
    :goto_16
    return-void

    .line 289
    :catch_17
    move-exception v0

    .line 288
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method
