.class public final Lu/aly/aC;
.super Lu/aly/H;
.source "SourceFile"


# direct methods
.method public static a([B)Ljava/util/BitSet;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 72
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 73
    :goto_6
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x8

    if-lt v0, v2, :cond_c

    .line 78
    return-object v1

    .line 74
    :cond_c
    array-length v2, p0

    div-int/lit8 v3, v0, 0x8

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    rem-int/lit8 v3, v0, 0x8

    const/4 v4, 0x1

    shl-int v3, v4, v3

    and-int/2addr v2, v3

    if-gtz v2, :cond_1f

    .line 73
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 75
    :cond_1f
    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_1c
.end method

.method public static bUF(Ljava/util/BitSet;I)[B
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 93
    int-to-double v2, p1

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    new-array v1, v1, [B

    .line 94
    :goto_c
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v2

    if-lt v0, v2, :cond_13

    .line 99
    return-object v1

    .line 95
    :cond_13
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 94
    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 96
    :cond_1c
    array-length v2, v1

    div-int/lit8 v3, v0, 0x8

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, v1, v2

    rem-int/lit8 v4, v0, 0x8

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_19
.end method


# virtual methods
.method public bUC()Ljava/lang/Class;
    .registers 2

    .prologue
    const-class v0, Lu/aly/dC;

    .line 47
    return-object v0
.end method

.method public bUD(Ljava/util/BitSet;I)V
    .registers 7

    .prologue
    .line 51
    invoke-static {p1, p2}, Lu/aly/aC;->bUF(Ljava/util/BitSet;I)[B

    move-result-object v1

    .line 52
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-lt v0, v2, :cond_9

    .line 55
    return-void

    .line 52
    :cond_9
    aget-byte v3, v1, v0

    .line 53
    invoke-virtual {p0, v3}, Lu/aly/aC;->bQZ(B)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public bUE(I)Ljava/util/BitSet;
    .registers 6

    .prologue
    .line 58
    int-to-double v0, p1

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 59
    new-array v2, v1, [B

    const/4 v0, 0x0

    .line 60
    :goto_c
    if-lt v0, v1, :cond_13

    .line 63
    invoke-static {v2}, Lu/aly/aC;->a([B)Ljava/util/BitSet;

    move-result-object v0

    .line 64
    return-object v0

    .line 61
    :cond_13
    invoke-virtual {p0}, Lu/aly/aC;->bRj()B

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method
