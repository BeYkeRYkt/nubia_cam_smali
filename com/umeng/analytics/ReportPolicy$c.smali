.class public Lcom/umeng/analytics/ReportPolicy$c;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    const-wide/16 v0, 0x0

    .line 198
    iput-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$c;->b:J

    .line 201
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$c;->a:J

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$c;->b:J

    .line 203
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/umeng/analytics/ReportPolicy$c;->b:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/umeng/analytics/ReportPolicy$c;->a:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_13

    move v2, v0

    :goto_10
    if-nez v2, :cond_15

    :goto_12
    return v0

    :cond_13
    move v2, v1

    goto :goto_10

    :cond_15
    move v0, v1

    goto :goto_12
.end method

.method public a(Z)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/umeng/analytics/ReportPolicy$c;->b:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/umeng/analytics/ReportPolicy$c;->a:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_13

    move v0, v1

    :goto_10
    if-nez v0, :cond_15

    .line 207
    return v1

    :cond_13
    move v0, v2

    .line 206
    goto :goto_10

    .line 210
    :cond_15
    return v2
.end method
