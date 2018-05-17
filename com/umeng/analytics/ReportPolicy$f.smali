.class public Lcom/umeng/analytics/ReportPolicy$f;
.super Lcom/umeng/analytics/ReportPolicy$i;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Lu/aly/bZ;


# direct methods
.method public constructor <init>(Lu/aly/bZ;I)V
    .registers 3

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/umeng/analytics/ReportPolicy$i;-><init>()V

    .line 223
    iput p2, p0, Lcom/umeng/analytics/ReportPolicy$f;->a:I

    .line 224
    iput-object p1, p0, Lcom/umeng/analytics/ReportPolicy$f;->b:Lu/aly/bZ;

    .line 225
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .registers 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/umeng/analytics/ReportPolicy$f;->b:Lu/aly/bZ;

    invoke-virtual {v0}, Lu/aly/bZ;->b()I

    move-result v0

    iget v1, p0, Lcom/umeng/analytics/ReportPolicy$f;->a:I

    if-gt v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method
