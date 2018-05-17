.class public Lcom/umeng/analytics/ReportPolicy$a;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "SourceFile"


# instance fields
.field private final a:J

.field private b:Lu/aly/aA;


# direct methods
.method public constructor <init>(Lu/aly/aA;)V
    .registers 4

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    const-wide/16 v0, 0x3a98

    .line 250
    iput-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$a;->a:J

    .line 254
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$a;->b:Lu/aly/aA;

    .line 255
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$a;->b:Lu/aly/aA;

    iget-wide v6, v0, Lu/aly/aA;->c:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3a98

    cmp-long v0, v4, v6

    if-gez v0, :cond_15

    move v0, v1

    :goto_12
    if-nez v0, :cond_17

    .line 259
    return v1

    :cond_15
    move v0, v2

    .line 258
    goto :goto_12

    .line 262
    :cond_17
    return v2
.end method
