.class public Lcom/umeng/analytics/ReportPolicy$e;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:J


# instance fields
.field private c:J

.field private d:Lu/aly/aA;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-wide/32 v0, 0x15f90

    .line 102
    sput-wide v0, Lcom/umeng/analytics/ReportPolicy$e;->a:J

    const-wide/32 v0, 0x5265c00

    .line 103
    sput-wide v0, Lcom/umeng/analytics/ReportPolicy$e;->b:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lu/aly/aA;J)V
    .registers 4

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$e;->d:Lu/aly/aA;

    .line 110
    invoke-virtual {p0, p2, p3}, Lcom/umeng/analytics/ReportPolicy$e;->a(J)V

    .line 111
    return-void
.end method

.method public static a(I)Z
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    int-to-long v4, p0

    sget-wide v6, Lcom/umeng/analytics/ReportPolicy$e;->a:J

    cmp-long v0, v4, v6

    if-ltz v0, :cond_d

    move v0, v1

    :goto_a
    if-nez v0, :cond_f

    .line 135
    return v2

    :cond_d
    move v0, v2

    .line 134
    goto :goto_a

    .line 137
    :cond_f
    return v1
.end method


# virtual methods
.method public a(J)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    sget-wide v2, Lcom/umeng/analytics/ReportPolicy$e;->a:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_16

    move v2, v0

    :goto_9
    if-nez v2, :cond_1a

    sget-wide v2, Lcom/umeng/analytics/ReportPolicy$e;->b:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_18

    :goto_11
    if-nez v0, :cond_1a

    .line 123
    iput-wide p1, p0, Lcom/umeng/analytics/ReportPolicy$e;->c:J

    .line 127
    :goto_15
    return-void

    :cond_16
    move v2, v1

    .line 122
    goto :goto_9

    :cond_18
    move v0, v1

    goto :goto_11

    .line 125
    :cond_1a
    sget-wide v0, Lcom/umeng/analytics/ReportPolicy$e;->a:J

    iput-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$e;->c:J

    goto :goto_15
.end method

.method public a(Z)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$e;->d:Lu/aly/aA;

    iget-wide v6, v0, Lu/aly/aA;->c:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/umeng/analytics/ReportPolicy$e;->c:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_15

    move v0, v1

    :goto_12
    if-nez v0, :cond_17

    .line 115
    return v1

    :cond_15
    move v0, v2

    .line 114
    goto :goto_12

    .line 118
    :cond_17
    return v2
.end method

.method public b()J
    .registers 3

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$e;->c:J

    return-wide v0
.end method
