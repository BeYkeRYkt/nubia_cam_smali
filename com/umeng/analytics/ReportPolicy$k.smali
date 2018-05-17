.class public Lcom/umeng/analytics/ReportPolicy$k;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "SourceFile"


# instance fields
.field private final a:J

.field private b:Lu/aly/aA;


# direct methods
.method public constructor <init>(Lu/aly/aA;)V
    .registers 4

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    const-wide/32 v0, 0xa4cb80

    .line 233
    iput-wide v0, p0, Lcom/umeng/analytics/ReportPolicy$k;->a:J

    .line 237
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$k;->b:Lu/aly/aA;

    .line 238
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$k;->b:Lu/aly/aA;

    iget-wide v6, v0, Lu/aly/aA;->c:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xa4cb80

    cmp-long v0, v4, v6

    if-gez v0, :cond_16

    move v0, v1

    :goto_13
    if-nez v0, :cond_18

    .line 242
    return v1

    :cond_16
    move v0, v2

    .line 241
    goto :goto_13

    .line 245
    :cond_18
    return v2
.end method
