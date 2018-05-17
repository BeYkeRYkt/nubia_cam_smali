.class public Lu/aly/cE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/A;


# static fields
.field private static bzB:Lu/aly/cE;


# instance fields
.field private bzA:I

.field private final i:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lu/aly/cE;->bzB:Lu/aly/cE;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lu/aly/cE;->bzA:I

    const-wide/32 v0, 0xea60

    .line 39
    iput-wide v0, p0, Lu/aly/cE;->i:J

    .line 53
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/cE;
    .registers 4

    .prologue
    const-class v1, Lu/aly/cE;

    monitor-enter v1

    .line 44
    :try_start_3
    sget-object v0, Lu/aly/cE;->bzB:Lu/aly/cE;

    if-eqz v0, :cond_b

    .line 49
    :goto_7
    sget-object v0, Lu/aly/cE;->bzB:Lu/aly/cE;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_25

    monitor-exit v1

    return-object v0

    .line 45
    :cond_b
    :try_start_b
    new-instance v0, Lu/aly/cE;

    invoke-direct {v0}, Lu/aly/cE;-><init>()V

    sput-object v0, Lu/aly/cE;->bzB:Lu/aly/cE;

    .line 46
    invoke-static {p0}, Lu/aly/z;->a(Landroid/content/Context;)Lu/aly/z;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/z;->b()Lu/aly/cm;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lu/aly/cm;->a(I)I

    move-result v0

    .line 47
    sget-object v2, Lu/aly/cE;->bzB:Lu/aly/cE;

    invoke-virtual {v2, v0}, Lu/aly/cE;->a(I)V
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_25

    goto :goto_7

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 84
    iget v0, p0, Lu/aly/cE;->bzA:I

    packed-switch v0, :pswitch_data_14

    :pswitch_5
    const-wide/16 v0, 0x0

    .line 93
    return-wide v0

    :pswitch_8
    const-wide/32 v0, 0xdbba00

    .line 86
    return-wide v0

    :pswitch_c
    const-wide/32 v0, 0x1b77400

    .line 88
    return-wide v0

    :pswitch_10
    const-wide/32 v0, 0x5265c00

    .line 90
    return-wide v0

    .line 84
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 102
    if-gez p1, :cond_3

    .line 105
    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x3

    .line 102
    if-gt p1, v0, :cond_2

    .line 103
    iput p1, p0, Lu/aly/cE;->bzA:I

    goto :goto_2
.end method

.method public b(Landroid/content/Context;)Lu/aly/bn;
    .registers 8

    .prologue
    const-wide/32 v4, 0xea60

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    new-instance v2, Lu/aly/bn;

    invoke-direct {v2}, Lu/aly/bn;-><init>()V

    .line 75
    invoke-static {p1}, Lu/aly/dg;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu/aly/bn;->a(Ljava/lang/String;)Lu/aly/bn;

    .line 76
    invoke-virtual {v2, v0, v1}, Lu/aly/bn;->a(J)Lu/aly/bn;

    .line 77
    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lu/aly/bn;->bRL(J)Lu/aly/bn;

    .line 78
    invoke-virtual {v2, v4, v5}, Lu/aly/bn;->bRN(J)Lu/aly/bn;

    .line 80
    return-object v2
.end method

.method public bSq(Lu/aly/cm;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, v0}, Lu/aly/cm;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lu/aly/cE;->a(I)V

    .line 114
    return-void
.end method

.method public bYU(Landroid/content/Context;Lu/aly/bp;)Lu/aly/bp;
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 56
    if-eqz p2, :cond_13

    .line 59
    iget v0, p0, Lu/aly/cE;->bzA:I

    if-eq v0, v2, :cond_14

    .line 61
    iget v0, p0, Lu/aly/cE;->bzA:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 64
    iget v0, p0, Lu/aly/cE;->bzA:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    .line 69
    :goto_12
    return-object p2

    .line 57
    :cond_13
    return-object v3

    .line 60
    :cond_14
    invoke-virtual {p2, v3}, Lu/aly/bp;->a(Ljava/util/List;)Lu/aly/bp;

    goto :goto_12

    .line 62
    :cond_18
    new-array v0, v2, [Lu/aly/bn;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lu/aly/cE;->b(Landroid/content/Context;)Lu/aly/bn;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lu/aly/bp;->bWI(Ljava/util/List;)Lu/aly/bp;

    .line 63
    invoke-virtual {p2, v3}, Lu/aly/bp;->a(Ljava/util/List;)Lu/aly/bp;

    goto :goto_12

    .line 65
    :cond_2c
    invoke-virtual {p2, v3}, Lu/aly/bp;->bWI(Ljava/util/List;)Lu/aly/bp;

    .line 66
    invoke-virtual {p2, v3}, Lu/aly/bp;->a(Ljava/util/List;)Lu/aly/bp;

    goto :goto_12
.end method

.method public c()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 108
    iget v1, p0, Lu/aly/cE;->bzA:I

    if-nez v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method
