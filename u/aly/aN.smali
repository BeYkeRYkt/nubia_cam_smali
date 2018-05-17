.class public Lu/aly/aN;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bVD(BI)Z
    .registers 3

    .prologue
    .line 90
    invoke-static {p0, p1}, Lu/aly/aN;->bVE(II)Z

    move-result v0

    return v0
.end method

.method public static final bVE(II)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 98
    shl-int v2, v1, p1

    and-int/2addr v2, p0

    if-nez v2, :cond_8

    :goto_7
    return v0

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method public static final bVF(II)I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 117
    shl-int/2addr v0, p1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method public static final bVG(BIZ)B
    .registers 4

    .prologue
    .line 128
    invoke-static {p0, p1, p2}, Lu/aly/aN;->bVH(IIZ)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static final bVH(IIZ)I
    .registers 4

    .prologue
    .line 136
    if-nez p2, :cond_7

    .line 139
    invoke-static {p0, p1}, Lu/aly/aN;->bVF(II)I

    move-result v0

    return v0

    :cond_7
    const/4 v0, 0x1

    .line 137
    shl-int/2addr v0, p1

    or-int/2addr v0, p0

    return v0
.end method
