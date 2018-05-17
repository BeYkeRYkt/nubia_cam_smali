.class public Lu/aly/bR;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private byA:Lu/aly/aY;

.field private byB:Lu/aly/bp;

.field private byC:Z

.field private byx:Lu/aly/cP;

.field private byy:Landroid/content/Context;

.field private byz:Lu/aly/aA;

.field private e:Lu/aly/z;

.field private final f:I

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu/aly/aA;)V
    .registers 5

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lu/aly/bR;->f:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/bR;->k:Z

    .line 53
    invoke-static {p1}, Lu/aly/cP;->a(Landroid/content/Context;)Lu/aly/cP;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bR;->byx:Lu/aly/cP;

    .line 54
    invoke-static {p1}, Lu/aly/z;->a(Landroid/content/Context;)Lu/aly/z;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bR;->e:Lu/aly/z;

    .line 56
    iput-object p1, p0, Lu/aly/bR;->byy:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lu/aly/bR;->byz:Lu/aly/aA;

    .line 58
    new-instance v0, Lu/aly/aY;

    invoke-direct {v0, p1}, Lu/aly/aY;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/bR;->byA:Lu/aly/aY;

    .line 59
    iget-object v0, p0, Lu/aly/bR;->byA:Lu/aly/aY;

    iget-object v1, p0, Lu/aly/bR;->byz:Lu/aly/aA;

    invoke-virtual {v0, v1}, Lu/aly/aY;->bVS(Lu/aly/Y;)V

    .line 60
    return-void
.end method

.method private a([B)I
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 196
    new-instance v1, Lu/aly/bl;

    invoke-direct {v1}, Lu/aly/bl;-><init>()V

    .line 197
    new-instance v0, Lu/aly/bT;

    new-instance v2, Lu/aly/db$a;

    invoke-direct {v2}, Lu/aly/db$a;-><init>()V

    invoke-direct {v0, v2}, Lu/aly/bT;-><init>(Lu/aly/dk;)V

    .line 200
    :try_start_10
    invoke-virtual {v0, v1, p1}, Lu/aly/bT;->bXR(Lu/aly/cj;[B)V

    .line 202
    iget v0, v1, Lu/aly/bl;->a:I

    if-eq v0, v4, :cond_3b

    :goto_17
    const-string/jumbo v0, "MobclickAgent"

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send log:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lu/aly/bl;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_35} :catch_4a

    .line 212
    :goto_35
    iget v0, v1, Lu/aly/bl;->a:I

    if-eq v0, v4, :cond_4f

    const/4 v0, 0x3

    .line 215
    return v0

    .line 203
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lu/aly/bR;->e:Lu/aly/z;

    invoke-virtual {v1}, Lu/aly/bl;->j()Lu/aly/bc;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/aly/z;->bSn(Lu/aly/bc;)V

    .line 204
    iget-object v0, p0, Lu/aly/bR;->e:Lu/aly/z;

    invoke-virtual {v0}, Lu/aly/z;->d()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_49} :catch_4a

    goto :goto_17

    .line 210
    :catch_4a
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    :cond_4f
    const/4 v0, 0x2

    .line 213
    return v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lu/aly/bR;->byy:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->h()Lcom/umeng/analytics/h$a;

    move-result-object v0

    .line 88
    new-instance v1, Lu/aly/C;

    invoke-direct {v1, p0}, Lu/aly/C;-><init>(Lu/aly/bR;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h$a;->a(Lcom/umeng/analytics/h$b;)V

    .line 139
    return-void
.end method

.method private bXK(Lu/aly/bp;)[B
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 220
    if-eqz p1, :cond_11

    .line 224
    :try_start_3
    new-instance v0, Lu/aly/bH;

    invoke-direct {v0}, Lu/aly/bH;-><init>()V

    invoke-virtual {v0, p1}, Lu/aly/bH;->bWn(Lu/aly/cj;)[B

    move-result-object v0

    .line 225
    sget-boolean v1, Lu/aly/O;->a:Z

    if-nez v1, :cond_12

    .line 230
    :goto_10
    return-object v0

    .line 221
    :cond_11
    return-object v3

    :cond_12
    const-string/jumbo v1, "MobclickAgent"

    .line 226
    invoke-virtual {p1}, Lu/aly/bp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lu/aly/O;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1d

    goto :goto_10

    .line 230
    :catch_1d
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Fail to serialize log ..."

    .line 232
    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 235
    return-object v3
.end method

.method static synthetic bXL(Lu/aly/bR;)Lu/aly/aY;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lu/aly/bR;->byA:Lu/aly/aY;

    return-object v0
.end method

.method static synthetic bXM(Lu/aly/bR;[B)I
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lu/aly/bR;->a([B)I

    move-result v0

    return v0
.end method

.method static synthetic bXN(Lu/aly/bR;)Lu/aly/aA;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lu/aly/bR;->byz:Lu/aly/aA;

    return-object v0
.end method

.method static synthetic bXO(Lu/aly/bR;)Z
    .registers 2

    .prologue
    .line 25
    iget-boolean v0, p0, Lu/aly/bR;->byC:Z

    return v0
.end method

.method private c()V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lu/aly/bR;->byx:Lu/aly/cP;

    invoke-virtual {v0}, Lu/aly/cP;->a()V

    .line 143
    iget-object v0, p0, Lu/aly/bR;->byB:Lu/aly/bp;

    .line 144
    iget-object v1, p0, Lu/aly/bR;->byx:Lu/aly/cP;

    invoke-virtual {v1}, Lu/aly/cP;->b()Lu/aly/bb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/bp;->bWO(Lu/aly/bb;)Lu/aly/bp;

    .line 145
    invoke-direct {p0, v0}, Lu/aly/bR;->bXK(Lu/aly/bp;)[B

    move-result-object v0

    .line 147
    if-eqz v0, :cond_43

    .line 153
    iget-boolean v1, p0, Lu/aly/bR;->k:Z

    if-eqz v1, :cond_4d

    .line 156
    iget-object v1, p0, Lu/aly/bR;->byy:Landroid/content/Context;

    iget-object v2, p0, Lu/aly/bR;->byy:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/ce;->bYg(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/ce;

    move-result-object v0

    .line 159
    :goto_26
    invoke-virtual {v0}, Lu/aly/ce;->c()[B

    move-result-object v1

    .line 160
    iget-object v0, p0, Lu/aly/bR;->byy:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->f()V

    .line 166
    iget-object v0, p0, Lu/aly/bR;->byA:Lu/aly/aY;

    invoke-virtual {v0, v1}, Lu/aly/aY;->a([B)[B

    move-result-object v0

    .line 167
    if-eqz v0, :cond_5a

    .line 170
    invoke-direct {p0, v0}, Lu/aly/bR;->a([B)I

    move-result v0

    .line 173
    :goto_3f
    packed-switch v0, :pswitch_data_94

    .line 193
    :goto_42
    return-void

    :cond_43
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "message is null"

    .line 148
    invoke-static {v0, v1}, Lu/aly/O;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void

    .line 154
    :cond_4d
    iget-object v1, p0, Lu/aly/bR;->byy:Landroid/content/Context;

    iget-object v2, p0, Lu/aly/bR;->byy:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/ce;->bYf(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/ce;

    move-result-object v0

    goto :goto_26

    :cond_5a
    const/4 v0, 0x1

    .line 168
    goto :goto_3f

    .line 175
    :pswitch_5c
    iget-object v0, p0, Lu/aly/bR;->byz:Lu/aly/aA;

    invoke-virtual {v0}, Lu/aly/aA;->m()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 179
    :goto_64
    iget-object v0, p0, Lu/aly/bR;->byx:Lu/aly/cP;

    invoke-virtual {v0}, Lu/aly/cP;->d()V

    .line 180
    iget-object v0, p0, Lu/aly/bR;->byz:Lu/aly/aA;

    invoke-virtual {v0}, Lu/aly/aA;->k()V

    goto :goto_42

    .line 176
    :cond_6f
    iget-object v0, p0, Lu/aly/bR;->byz:Lu/aly/aA;

    invoke-virtual {v0}, Lu/aly/aA;->l()V

    goto :goto_64

    .line 183
    :pswitch_75
    iget-object v0, p0, Lu/aly/bR;->byz:Lu/aly/aA;

    invoke-virtual {v0}, Lu/aly/aA;->k()V

    goto :goto_42

    .line 186
    :pswitch_7b
    iget-boolean v0, p0, Lu/aly/bR;->byC:Z

    if-eqz v0, :cond_89

    :goto_7f
    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "connection error"

    .line 189
    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 187
    :cond_89
    iget-object v0, p0, Lu/aly/bR;->byy:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h;->b([B)V

    goto :goto_7f

    .line 173
    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_5c
        :pswitch_75
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lu/aly/bR;->byB:Lu/aly/bp;

    if-nez v0, :cond_8

    .line 82
    invoke-direct {p0}, Lu/aly/bR;->b()V

    .line 84
    :goto_7
    return-void

    .line 80
    :cond_8
    invoke-direct {p0}, Lu/aly/bR;->c()V

    goto :goto_7
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 67
    iput-boolean p1, p0, Lu/aly/bR;->k:Z

    .line 68
    return-void
.end method

.method public bXH(Lu/aly/bp;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lu/aly/bR;->byB:Lu/aly/bp;

    .line 64
    return-void
.end method

.method public bXI(Z)V
    .registers 2

    .prologue
    .line 71
    iput-boolean p1, p0, Lu/aly/bR;->byC:Z

    .line 72
    return-void
.end method

.method public bXJ(Lu/aly/A;)V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lu/aly/bR;->e:Lu/aly/z;

    invoke-virtual {v0, p1}, Lu/aly/z;->bSj(Lu/aly/A;)V

    .line 76
    return-void
.end method
