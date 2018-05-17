.class public Lu/aly/bN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/A;


# static fields
.field private static byw:Lu/aly/bN;


# instance fields
.field private final a:J

.field private final b:J

.field private bys:Lcom/umeng/analytics/h;

.field private byt:Lu/aly/aA;

.field private byu:I

.field private byv:Landroid/content/Context;

.field private final c:I

.field private final d:I

.field private g:J

.field private i:J

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lu/aly/bN;->byw:Lu/aly/bN;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;Lu/aly/aA;)V
    .registers 11

    .prologue
    const-wide/32 v6, 0x4d3f6400

    const-wide/16 v4, 0x0

    const/16 v2, 0x2710

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide v6, p0, Lu/aly/bN;->a:J

    const-wide/32 v0, 0x7b98a00

    .line 16
    iput-wide v0, p0, Lu/aly/bN;->b:J

    const v0, 0x1b7740

    .line 17
    iput v0, p0, Lu/aly/bN;->c:I

    .line 18
    iput v2, p0, Lu/aly/bN;->d:I

    .line 23
    iput-wide v6, p0, Lu/aly/bN;->g:J

    .line 24
    iput v2, p0, Lu/aly/bN;->byu:I

    .line 26
    iput-wide v4, p0, Lu/aly/bN;->i:J

    .line 27
    iput-wide v4, p0, Lu/aly/bN;->j:J

    .line 41
    iput-object p1, p0, Lu/aly/bN;->byv:Landroid/content/Context;

    .line 42
    invoke-static {p1}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bN;->bys:Lcom/umeng/analytics/h;

    .line 43
    iput-object p2, p0, Lu/aly/bN;->byt:Lu/aly/aA;

    .line 44
    return-void
.end method

.method public static declared-synchronized bXG(Landroid/content/Context;Lu/aly/aA;)Lu/aly/bN;
    .registers 5

    .prologue
    const-class v1, Lu/aly/bN;

    monitor-enter v1

    .line 33
    :try_start_3
    sget-object v0, Lu/aly/bN;->byw:Lu/aly/bN;

    if-eqz v0, :cond_b

    .line 37
    :goto_7
    sget-object v0, Lu/aly/bN;->byw:Lu/aly/bN;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_20

    monitor-exit v1

    return-object v0

    .line 34
    :cond_b
    :try_start_b
    new-instance v0, Lu/aly/bN;

    invoke-direct {v0, p0, p1}, Lu/aly/bN;-><init>(Landroid/content/Context;Lu/aly/aA;)V

    sput-object v0, Lu/aly/bN;->byw:Lu/aly/bN;

    .line 35
    sget-object v0, Lu/aly/bN;->byw:Lu/aly/bN;

    invoke-static {p0}, Lu/aly/z;->a(Landroid/content/Context;)Lu/aly/z;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/z;->b()Lu/aly/cm;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/aly/bN;->bSq(Lu/aly/cm;)V
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_20

    goto :goto_7

    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lu/aly/bN;->bys:Lcom/umeng/analytics/h;

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->g()Z

    move-result v0

    if-nez v0, :cond_38

    .line 56
    iget-object v0, p0, Lu/aly/bN;->byt:Lu/aly/aA;

    invoke-virtual {v0}, Lu/aly/aA;->f()Z

    move-result v0

    if-nez v0, :cond_39

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lu/aly/bN;->byt:Lu/aly/aA;

    invoke-virtual {v0}, Lu/aly/aA;->bUB()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 61
    iget-wide v6, p0, Lu/aly/bN;->g:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_3a

    move v0, v1

    :goto_24
    if-nez v0, :cond_3c

    .line 62
    iget-object v0, p0, Lu/aly/bN;->byv:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ce;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget v2, p0, Lu/aly/bN;->byu:I

    invoke-static {v2, v0}, Lcom/umeng/analytics/b;->a(ILjava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lu/aly/bN;->i:J

    .line 64
    iput-wide v4, p0, Lu/aly/bN;->j:J

    .line 65
    return v1

    .line 53
    :cond_38
    return v2

    .line 57
    :cond_39
    return v2

    :cond_3a
    move v0, v2

    .line 61
    goto :goto_24

    :cond_3c
    const-wide/32 v6, 0x7b98a00

    .line 66
    cmp-long v0, v4, v6

    if-gtz v0, :cond_4d

    move v0, v1

    :goto_44
    if-nez v0, :cond_4f

    const-wide/16 v2, 0x0

    .line 67
    iput-wide v2, p0, Lu/aly/bN;->i:J

    .line 68
    iput-wide v4, p0, Lu/aly/bN;->j:J

    .line 69
    return v1

    :cond_4d
    move v0, v2

    .line 66
    goto :goto_44

    .line 72
    :cond_4f
    return v2
.end method

.method public b()J
    .registers 3

    .prologue
    .line 76
    iget-wide v0, p0, Lu/aly/bN;->i:J

    return-wide v0
.end method

.method public bSq(Lu/aly/cm;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const-wide/32 v0, 0x4d3f6400

    .line 88
    invoke-virtual {p1, v0, v1}, Lu/aly/cm;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/bN;->g:J

    .line 90
    invoke-virtual {p1, v2}, Lu/aly/cm;->bYF(I)I

    move-result v0

    .line 91
    if-eqz v0, :cond_13

    .line 98
    iput v0, p0, Lu/aly/bN;->byu:I

    .line 100
    :goto_12
    return-void

    .line 92
    :cond_13
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    if-gtz v0, :cond_1c

    :cond_17
    const/16 v0, 0x2710

    .line 93
    iput v0, p0, Lu/aly/bN;->byu:I

    goto :goto_12

    .line 92
    :cond_1c
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    const v1, 0x1b7740

    if-gt v0, v1, :cond_17

    .line 95
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    iput v0, p0, Lu/aly/bN;->byu:I

    goto :goto_12
.end method
