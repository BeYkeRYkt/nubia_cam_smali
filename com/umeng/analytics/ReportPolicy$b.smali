.class public Lcom/umeng/analytics/ReportPolicy$b;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "SourceFile"


# instance fields
.field private a:Lu/aly/cE;

.field private b:Lu/aly/aA;


# direct methods
.method public constructor <init>(Lu/aly/aA;Lu/aly/cE;)V
    .registers 3

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$b;->b:Lu/aly/aA;

    .line 176
    iput-object p2, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:Lu/aly/cE;

    .line 177
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:Lu/aly/cE;

    invoke-virtual {v0}, Lu/aly/cE;->c()Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 181
    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$b;->a:Lu/aly/cE;

    invoke-virtual {v0}, Lu/aly/cE;->a()J

    move-result-wide v6

    .line 183
    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$b;->b:Lu/aly/aA;

    iget-wide v8, v0, Lu/aly/aA;->c:J

    sub-long/2addr v4, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_19

    move v0, v1

    :goto_16
    if-nez v0, :cond_1b

    .line 184
    return v1

    :cond_19
    move v0, v2

    .line 183
    goto :goto_16

    .line 187
    :cond_1b
    return v2
.end method
