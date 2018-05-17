.class public Lu/aly/H;
.super Lu/aly/dl;
.source "SourceFile"


# static fields
.field private static final bvg:Lu/aly/aO;

.field private static final bvh:Lu/aly/cB;

.field private static final bvi:[B


# instance fields
.field a:[B

.field b:[B

.field private bvj:Lu/aly/bY;

.field private bvk:Lu/aly/cB;

.field private bvl:Ljava/lang/Boolean;

.field private final bvm:J

.field private bvn:[B

.field c:[B

.field private n:S


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/H;->bvg:Lu/aly/aO;

    .line 44
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, v2, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/H;->bvh:Lu/aly/cB;

    const/16 v0, 0x10

    .line 46
    new-array v0, v0, [B

    sput-object v0, Lu/aly/H;->bvi:[B

    .line 49
    sget-object v0, Lu/aly/H;->bvi:[B

    aput-byte v2, v0, v2

    .line 50
    sget-object v0, Lu/aly/H;->bvi:[B

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 51
    sget-object v0, Lu/aly/H;->bvi:[B

    aput-byte v3, v0, v3

    .line 52
    sget-object v0, Lu/aly/H;->bvi:[B

    aput-byte v4, v0, v5

    .line 53
    sget-object v0, Lu/aly/H;->bvi:[B

    const/4 v1, 0x5

    aput-byte v1, v0, v6

    .line 54
    sget-object v0, Lu/aly/H;->bvi:[B

    const/16 v1, 0xa

    aput-byte v5, v0, v1

    .line 55
    sget-object v0, Lu/aly/H;->bvi:[B

    const/4 v1, 0x7

    aput-byte v1, v0, v4

    .line 56
    sget-object v0, Lu/aly/H;->bvi:[B

    const/16 v1, 0xb

    aput-byte v6, v0, v1

    .line 57
    sget-object v0, Lu/aly/H;->bvi:[B

    const/16 v1, 0xf

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    .line 58
    sget-object v0, Lu/aly/H;->bvi:[B

    const/16 v1, 0xe

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 59
    sget-object v0, Lu/aly/H;->bvi:[B

    const/16 v1, 0xd

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    .line 60
    sget-object v0, Lu/aly/H;->bvi:[B

    const/16 v1, 0xc

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    .line 61
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lu/aly/cV;J)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 142
    invoke-direct {p0, p1}, Lu/aly/dl;-><init>(Lu/aly/cV;)V

    .line 111
    new-instance v0, Lu/aly/bY;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lu/aly/bY;-><init>(I)V

    iput-object v0, p0, Lu/aly/H;->bvj:Lu/aly/bY;

    .line 113
    const/4 v0, 0x0

    iput-short v0, p0, Lu/aly/H;->n:S

    .line 119
    iput-object v3, p0, Lu/aly/H;->bvk:Lu/aly/cB;

    .line 125
    iput-object v3, p0, Lu/aly/H;->bvl:Ljava/lang/Boolean;

    const/4 v0, 0x5

    .line 380
    new-array v0, v0, [B

    iput-object v0, p0, Lu/aly/H;->a:[B

    const/16 v0, 0xa

    .line 401
    new-array v0, v0, [B

    iput-object v0, p0, Lu/aly/H;->b:[B

    .line 451
    new-array v0, v2, [B

    iput-object v0, p0, Lu/aly/H;->bvn:[B

    .line 594
    new-array v0, v2, [B

    iput-object v0, p0, Lu/aly/H;->c:[B

    .line 143
    iput-wide p2, p0, Lu/aly/H;->bvm:J

    .line 144
    return-void
.end method

.method private a([B)J
    .registers 10

    .prologue
    const-wide/16 v6, 0xff

    const/4 v0, 0x7

    .line 795
    aget-byte v0, p1, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x5

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private bSE(Lu/aly/cB;B)V
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 219
    if-eq p2, v0, :cond_17

    .line 222
    :goto_3
    iget-short v0, p1, Lu/aly/cB;->c:S

    iget-short v1, p0, Lu/aly/H;->n:S

    if-gt v0, v1, :cond_1e

    .line 227
    :cond_9
    invoke-direct {p0, p2}, Lu/aly/H;->bSM(B)V

    .line 228
    iget-short v0, p1, Lu/aly/cB;->c:S

    invoke-virtual {p0, v0}, Lu/aly/H;->bRa(S)V

    .line 231
    :goto_11
    iget-short v0, p1, Lu/aly/cB;->c:S

    int-to-short v0, v0

    iput-short v0, p0, Lu/aly/H;->n:S

    .line 233
    return-void

    .line 219
    :cond_17
    iget-byte v0, p1, Lu/aly/cB;->b:B

    invoke-direct {p0, v0}, Lu/aly/H;->bSW(B)B

    move-result p2

    goto :goto_3

    .line 222
    :cond_1e
    iget-short v0, p1, Lu/aly/cB;->c:S

    iget-short v1, p0, Lu/aly/H;->n:S

    sub-int/2addr v0, v1

    const/16 v1, 0xf

    if-gt v0, v1, :cond_9

    .line 224
    iget-short v0, p1, Lu/aly/cB;->c:S

    iget-short v1, p0, Lu/aly/H;->n:S

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr v0, p2

    invoke-direct {p0, v0}, Lu/aly/H;->bSN(I)V

    goto :goto_11
.end method

.method private bSF([BII)V
    .registers 5

    .prologue
    .line 344
    invoke-direct {p0, p3}, Lu/aly/H;->bSH(I)V

    .line 345
    iget-object v0, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v0, p1, p2, p3}, Lu/aly/cV;->bYk([BII)V

    .line 346
    return-void
.end method

.method private bSH(I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 384
    :goto_2
    and-int/lit8 v2, p1, -0x80

    if-eqz v2, :cond_16

    .line 390
    iget-object v3, p0, Lu/aly/H;->a:[B

    add-int/lit8 v2, v0, 0x1

    and-int/lit8 v4, p1, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 392
    ushr-int/lit8 p1, p1, 0x7

    move v0, v2

    goto :goto_2

    .line 385
    :cond_16
    iget-object v2, p0, Lu/aly/H;->a:[B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v4, p1

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 395
    iget-object v0, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    iget-object v2, p0, Lu/aly/H;->a:[B

    invoke-virtual {v0, v2, v1, v3}, Lu/aly/cV;->bYk([BII)V

    .line 396
    return-void
.end method

.method private bSI(J)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    move v0, v1

    :goto_2
    const-wide/16 v2, -0x80

    .line 405
    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1c

    .line 406
    iget-object v2, p0, Lu/aly/H;->b:[B

    add-int/lit8 v3, v0, 0x1

    long-to-int v4, p1

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 413
    iget-object v0, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    iget-object v2, p0, Lu/aly/H;->b:[B

    invoke-virtual {v0, v2, v1, v3}, Lu/aly/cV;->bYk([BII)V

    .line 414
    return-void

    .line 409
    :cond_1c
    iget-object v3, p0, Lu/aly/H;->b:[B

    add-int/lit8 v2, v0, 0x1

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    const/4 v0, 0x7

    .line 410
    ushr-long/2addr p1, v0

    move v0, v2

    goto :goto_2
.end method

.method private bSJ(J)J
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 421
    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long v2, p1, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private bSK(I)I
    .registers 4

    .prologue
    .line 429
    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p1, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method private bSL(J[BI)V
    .registers 12

    .prologue
    const-wide/16 v4, 0xff

    .line 437
    add-int/lit8 v0, p4, 0x0

    and-long v2, p1, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 438
    add-int/lit8 v0, p4, 0x1

    const/16 v1, 0x8

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 439
    add-int/lit8 v0, p4, 0x2

    const/16 v1, 0x10

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 440
    add-int/lit8 v0, p4, 0x3

    const/16 v1, 0x18

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 441
    add-int/lit8 v0, p4, 0x4

    const/16 v1, 0x20

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 442
    add-int/lit8 v0, p4, 0x5

    const/16 v1, 0x28

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 443
    add-int/lit8 v0, p4, 0x6

    const/16 v1, 0x30

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 444
    add-int/lit8 v0, p4, 0x7

    const/16 v1, 0x38

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    .line 445
    return-void
.end method

.method private bSM(B)V
    .registers 5

    .prologue
    .line 453
    iget-object v0, p0, Lu/aly/H;->bvn:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 454
    iget-object v0, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    iget-object v1, p0, Lu/aly/H;->bvn:[B

    invoke-virtual {v0, v1}, Lu/aly/cV;->b([B)V

    .line 455
    return-void
.end method

.method private bSN(I)V
    .registers 3

    .prologue
    .line 461
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lu/aly/H;->bSM(B)V

    .line 462
    return-void
.end method

.method private bSO(I)[B
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 681
    if-eqz p1, :cond_b

    .line 683
    new-array v0, p1, [B

    .line 684
    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v1, v0, v2, p1}, Lu/aly/cV;->bZn([BII)I

    .line 685
    return-object v0

    .line 681
    :cond_b
    new-array v0, v2, [B

    return-object v0
.end method

.method private bSP(I)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 689
    if-ltz p1, :cond_2f

    .line 692
    iget-wide v2, p0, Lu/aly/H;->bvm:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_49

    int-to-long v2, p1

    iget-wide v4, p0, Lu/aly/H;->bvm:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    if-nez v0, :cond_49

    .line 693
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Length exceeded max allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    :cond_2f
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :cond_49
    return-void
.end method

.method private bSQ()I
    .registers 9

    .prologue
    const/16 v7, 0x80

    const/4 v0, 0x0

    .line 718
    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v1}, Lu/aly/cV;->h()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1c

    move v1, v0

    .line 732
    :goto_d
    invoke-virtual {p0}, Lu/aly/H;->bRj()B

    move-result v2

    .line 733
    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v0

    or-int/2addr v1, v3

    .line 734
    and-int/lit16 v2, v2, 0x80

    if-ne v2, v7, :cond_43

    .line 735
    add-int/lit8 v0, v0, 0x7

    goto :goto_d

    .line 719
    :cond_1c
    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v1}, Lu/aly/cV;->f()[B

    move-result-object v3

    .line 720
    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v1}, Lu/aly/cV;->g()I

    move-result v4

    move v1, v0

    move v2, v0

    .line 723
    :goto_2a
    add-int v5, v4, v0

    aget-byte v5, v3, v5

    .line 724
    and-int/lit8 v6, v5, 0x7f

    shl-int/2addr v6, v1

    or-int/2addr v2, v6

    .line 725
    and-int/lit16 v5, v5, 0x80

    if-ne v5, v7, :cond_3b

    .line 726
    add-int/lit8 v1, v1, 0x7

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 729
    :cond_3b
    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lu/aly/cV;->a(I)V

    move v1, v2

    .line 738
    :cond_43
    return v1
.end method

.method private bSR()J
    .registers 12

    .prologue
    const/16 v10, 0x80

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    .line 748
    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v1}, Lu/aly/cV;->h()I

    move-result v1

    const/16 v4, 0xa

    if-ge v1, v4, :cond_1f

    .line 762
    :goto_f
    invoke-virtual {p0}, Lu/aly/H;->bRj()B

    move-result v1

    .line 763
    and-int/lit8 v4, v1, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 764
    and-int/lit16 v1, v1, 0x80

    if-ne v1, v10, :cond_45

    .line 765
    add-int/lit8 v0, v0, 0x7

    goto :goto_f

    .line 749
    :cond_1f
    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v1}, Lu/aly/cV;->f()[B

    move-result-object v4

    .line 750
    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v1}, Lu/aly/cV;->g()I

    move-result v5

    move v1, v0

    .line 753
    :goto_2c
    add-int v6, v5, v0

    aget-byte v6, v4, v6

    .line 754
    and-int/lit8 v7, v6, 0x7f

    int-to-long v8, v7

    shl-long/2addr v8, v1

    or-long/2addr v2, v8

    .line 755
    and-int/lit16 v6, v6, 0x80

    if-ne v6, v10, :cond_3e

    .line 756
    add-int/lit8 v1, v1, 0x7

    .line 757
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 759
    :cond_3e
    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lu/aly/cV;->a(I)V

    .line 768
    :cond_45
    return-wide v2
.end method

.method private bSS(I)I
    .registers 4

    .prologue
    .line 779
    ushr-int/lit8 v0, p1, 0x1

    and-int/lit8 v1, p1, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private bST(J)J
    .registers 8

    .prologue
    const/4 v0, 0x1

    .line 786
    ushr-long v0, p1, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private bSU(B)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 811
    and-int/lit8 v1, p1, 0xf

    .line 812
    if-ne v1, v0, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method

.method private bSV(B)B
    .registers 5

    .prologue
    .line 820
    and-int/lit8 v0, p1, 0xf

    int-to-byte v0, v0

    packed-switch v0, :pswitch_data_42

    .line 847
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "don\'t know what type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p1, 0xf

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :pswitch_23
    const/4 v0, 0x0

    return v0

    .line 825
    :pswitch_25
    const/4 v0, 0x2

    return v0

    .line 827
    :pswitch_27
    const/4 v0, 0x3

    return v0

    .line 829
    :pswitch_29
    const/4 v0, 0x6

    return v0

    .line 831
    :pswitch_2b
    const/16 v0, 0x8

    return v0

    .line 833
    :pswitch_2e
    const/16 v0, 0xa

    return v0

    .line 835
    :pswitch_31
    const/4 v0, 0x4

    return v0

    .line 837
    :pswitch_33
    const/16 v0, 0xb

    return v0

    .line 839
    :pswitch_36
    const/16 v0, 0xf

    return v0

    .line 841
    :pswitch_39
    const/16 v0, 0xe

    return v0

    .line 843
    :pswitch_3c
    const/16 v0, 0xd

    return v0

    .line 845
    :pswitch_3f
    const/16 v0, 0xc

    return v0

    .line 820
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_23
        :pswitch_25
        :pswitch_25
        :pswitch_27
        :pswitch_29
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_33
        :pswitch_36
        :pswitch_39
        :pswitch_3c
        :pswitch_3f
    .end packed-switch
.end method

.method private bSW(B)B
    .registers 3

    .prologue
    .line 855
    sget-object v0, Lu/aly/H;->bvi:[B

    aget-byte v0, v0, p1

    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lu/aly/H;->bSK(I)I

    move-result v0

    invoke-direct {p0, v0}, Lu/aly/H;->bSH(I)V

    .line 305
    return-void
.end method

.method public a(J)V
    .registers 6

    .prologue
    .line 311
    invoke-direct {p0, p1, p2}, Lu/aly/H;->bSJ(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lu/aly/H;->bSI(J)V

    .line 312
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .prologue
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 329
    array-length v2, v0

    invoke-direct {p0, v0, v1, v2}, Lu/aly/H;->bSF([BII)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_d

    .line 333
    return-void

    .line 332
    :catch_d
    move-exception v0

    .line 331
    new-instance v0, Lu/aly/cp;

    const-string/jumbo v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Z)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 276
    iget-object v2, p0, Lu/aly/H;->bvk:Lu/aly/cB;

    if-nez v2, :cond_d

    .line 282
    if-nez p1, :cond_19

    :goto_9
    invoke-direct {p0, v0}, Lu/aly/H;->bSM(B)V

    .line 284
    :goto_c
    return-void

    .line 278
    :cond_d
    iget-object v2, p0, Lu/aly/H;->bvk:Lu/aly/cB;

    if-nez p1, :cond_17

    :goto_11
    invoke-direct {p0, v2, v0}, Lu/aly/H;->bSE(Lu/aly/cB;B)V

    .line 279
    iput-object v3, p0, Lu/aly/H;->bvk:Lu/aly/cB;

    goto :goto_c

    :cond_17
    move v0, v1

    .line 278
    goto :goto_11

    :cond_19
    move v0, v1

    .line 282
    goto :goto_9
.end method

.method public b()V
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lu/aly/H;->bvj:Lu/aly/bY;

    invoke-virtual {v0}, Lu/aly/bY;->a()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lu/aly/H;->n:S

    .line 193
    return-void
.end method

.method public bQV(Lu/aly/aO;)V
    .registers 4

    .prologue
    .line 182
    iget-object v0, p0, Lu/aly/H;->bvj:Lu/aly/bY;

    iget-short v1, p0, Lu/aly/H;->n:S

    invoke-virtual {v0, v1}, Lu/aly/bY;->bXV(S)V

    .line 183
    const/4 v0, 0x0

    iput-short v0, p0, Lu/aly/H;->n:S

    .line 184
    return-void
.end method

.method public bQW(Lu/aly/cB;)V
    .registers 4

    .prologue
    .line 202
    iget-byte v0, p1, Lu/aly/cB;->b:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 206
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lu/aly/H;->bSE(Lu/aly/cB;B)V

    .line 208
    :goto_9
    return-void

    .line 204
    :cond_a
    iput-object p1, p0, Lu/aly/H;->bvk:Lu/aly/cB;

    goto :goto_9
.end method

.method public bQX(Lu/aly/dh;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 247
    iget v0, p1, Lu/aly/dh;->c:I

    if-eqz v0, :cond_1d

    .line 250
    iget v0, p1, Lu/aly/dh;->c:I

    invoke-direct {p0, v0}, Lu/aly/H;->bSH(I)V

    .line 251
    iget-byte v0, p1, Lu/aly/dh;->a:B

    invoke-direct {p0, v0}, Lu/aly/H;->bSW(B)B

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    iget-byte v1, p1, Lu/aly/dh;->b:B

    invoke-direct {p0, v1}, Lu/aly/H;->bSW(B)B

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lu/aly/H;->bSN(I)V

    .line 253
    :goto_1c
    return-void

    .line 248
    :cond_1d
    invoke-direct {p0, v1}, Lu/aly/H;->bSN(I)V

    goto :goto_1c
.end method

.method public bQY(Lu/aly/bP;)V
    .registers 4

    .prologue
    .line 259
    iget-byte v0, p1, Lu/aly/bP;->a:B

    iget v1, p1, Lu/aly/bP;->b:I

    invoke-virtual {p0, v0, v1}, Lu/aly/H;->bSG(BI)V

    .line 260
    return-void
.end method

.method public bQZ(B)V
    .registers 2

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lu/aly/H;->bSM(B)V

    .line 291
    return-void
.end method

.method public bRa(S)V
    .registers 3

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lu/aly/H;->bSK(I)I

    move-result v0

    invoke-direct {p0, v0}, Lu/aly/H;->bSH(I)V

    .line 298
    return-void
.end method

.method public bRb(D)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/16 v0, 0x8

    .line 318
    new-array v0, v0, [B

    aput-byte v4, v0, v4

    const/4 v1, 0x1

    aput-byte v4, v0, v1

    const/4 v1, 0x2

    aput-byte v4, v0, v1

    const/4 v1, 0x3

    aput-byte v4, v0, v1

    const/4 v1, 0x4

    aput-byte v4, v0, v1

    const/4 v1, 0x5

    aput-byte v4, v0, v1

    const/4 v1, 0x6

    aput-byte v4, v0, v1

    const/4 v1, 0x7

    aput-byte v4, v0, v1

    .line 319
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0, v4}, Lu/aly/H;->bSL(J[BI)V

    .line 320
    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v1, v0}, Lu/aly/cV;->b([B)V

    .line 321
    return-void
.end method

.method public bRc(Ljava/nio/ByteBuffer;)V
    .registers 6

    .prologue
    .line 339
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    .line 340
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2, v0}, Lu/aly/H;->bSF([BII)V

    .line 341
    return-void
.end method

.method public bRd()V
    .registers 1

    .prologue
    .line 703
    return-void
.end method

.method public bRe()Lu/aly/bP;
    .registers 4

    .prologue
    .line 561
    invoke-virtual {p0}, Lu/aly/H;->bRj()B

    move-result v1

    .line 562
    shr-int/lit8 v0, v1, 0x4

    and-int/lit8 v0, v0, 0xf

    const/16 v2, 0xf

    .line 563
    if-eq v0, v2, :cond_16

    .line 566
    :goto_c
    invoke-direct {p0, v1}, Lu/aly/H;->bSV(B)B

    move-result v1

    .line 567
    new-instance v2, Lu/aly/bP;

    invoke-direct {v2, v1, v0}, Lu/aly/bP;-><init>(BI)V

    return-object v2

    .line 564
    :cond_16
    invoke-direct {p0}, Lu/aly/H;->bSQ()I

    move-result v0

    goto :goto_c
.end method

.method public bRf()V
    .registers 1

    .prologue
    .line 704
    return-void
.end method

.method public bRg()Lu/aly/m;
    .registers 3

    .prologue
    .line 577
    new-instance v0, Lu/aly/m;

    invoke-virtual {p0}, Lu/aly/H;->bRe()Lu/aly/bP;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/m;-><init>(Lu/aly/bP;)V

    return-object v0
.end method

.method public bRh()V
    .registers 1

    .prologue
    .line 705
    return-void
.end method

.method public bRi()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 586
    iget-object v1, p0, Lu/aly/H;->bvl:Ljava/lang/Boolean;

    if-nez v1, :cond_e

    .line 591
    invoke-virtual {p0}, Lu/aly/H;->bRj()B

    move-result v1

    if-eq v1, v0, :cond_d

    const/4 v0, 0x0

    :cond_d
    return v0

    .line 587
    :cond_e
    iget-object v0, p0, Lu/aly/H;->bvl:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 588
    iput-object v2, p0, Lu/aly/H;->bvl:Ljava/lang/Boolean;

    .line 589
    return v0
.end method

.method public bRj()B
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 600
    iget-object v0, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v0}, Lu/aly/cV;->h()I

    move-result v0

    if-gtz v0, :cond_16

    .line 604
    iget-object v0, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    iget-object v1, p0, Lu/aly/H;->c:[B

    invoke-virtual {v0, v1, v2, v3}, Lu/aly/cV;->bZn([BII)I

    .line 605
    iget-object v0, p0, Lu/aly/H;->c:[B

    aget-byte v0, v0, v2

    .line 607
    :goto_15
    return v0

    .line 601
    :cond_16
    iget-object v0, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v0}, Lu/aly/cV;->f()[B

    move-result-object v0

    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v1}, Lu/aly/cV;->g()I

    move-result v1

    aget-byte v0, v0, v1

    .line 602
    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v1, v3}, Lu/aly/cV;->a(I)V

    goto :goto_15
.end method

.method public bRk()S
    .registers 2

    .prologue
    .line 614
    invoke-direct {p0}, Lu/aly/H;->bSQ()I

    move-result v0

    invoke-direct {p0, v0}, Lu/aly/H;->bSS(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public bRl()I
    .registers 2

    .prologue
    .line 621
    invoke-direct {p0}, Lu/aly/H;->bSQ()I

    move-result v0

    invoke-direct {p0, v0}, Lu/aly/H;->bSS(I)I

    move-result v0

    return v0
.end method

.method public bRm()J
    .registers 3

    .prologue
    .line 628
    invoke-direct {p0}, Lu/aly/H;->bSR()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lu/aly/H;->bST(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bRn()D
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 635
    new-array v0, v3, [B

    .line 636
    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lu/aly/cV;->bZn([BII)I

    .line 637
    invoke-direct {p0, v0}, Lu/aly/H;->a([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public bRo()Ljava/lang/String;
    .registers 6

    .prologue
    .line 644
    invoke-direct {p0}, Lu/aly/H;->bSQ()I

    move-result v0

    .line 645
    invoke-direct {p0, v0}, Lu/aly/H;->bSP(I)V

    .line 647
    if-eqz v0, :cond_1e

    .line 652
    :try_start_9
    iget-object v1, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v1}, Lu/aly/cV;->h()I

    move-result v1

    if-ge v1, v0, :cond_22

    .line 657
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Lu/aly/H;->bSO(I)[B

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_1d} :catch_3c

    return-object v1

    :cond_1e
    const-string/jumbo v0, ""

    .line 648
    return-object v0

    .line 653
    :cond_22
    :try_start_22
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v2}, Lu/aly/cV;->f()[B

    move-result-object v2

    iget-object v3, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v3}, Lu/aly/cV;->g()I

    move-result v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 654
    iget-object v2, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v2, v0}, Lu/aly/cV;->a(I)V
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_22 .. :try_end_3b} :catch_3c

    .line 655
    return-object v1

    .line 657
    :catch_3c
    move-exception v0

    .line 660
    new-instance v0, Lu/aly/cp;

    const-string/jumbo v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bRq()Ljava/nio/ByteBuffer;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 668
    invoke-direct {p0}, Lu/aly/H;->bSQ()I

    move-result v0

    .line 669
    invoke-direct {p0, v0}, Lu/aly/H;->bSP(I)V

    .line 670
    if-eqz v0, :cond_16

    .line 672
    new-array v1, v0, [B

    .line 673
    iget-object v2, p0, Lu/aly/H;->bAX:Lu/aly/cV;

    invoke-virtual {v2, v1, v3, v0}, Lu/aly/cV;->bZn([BII)I

    .line 674
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 670
    :cond_16
    new-array v0, v3, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bSD()V
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lu/aly/H;->bvj:Lu/aly/bY;

    invoke-virtual {v0}, Lu/aly/bY;->c()V

    .line 158
    const/4 v0, 0x0

    iput-short v0, p0, Lu/aly/H;->n:S

    .line 159
    return-void
.end method

.method protected bSG(BI)V
    .registers 5

    .prologue
    const/16 v0, 0xe

    .line 368
    if-le p2, v0, :cond_11

    .line 371
    invoke-direct {p0, p1}, Lu/aly/H;->bSW(B)B

    move-result v0

    or-int/lit16 v0, v0, 0xf0

    invoke-direct {p0, v0}, Lu/aly/H;->bSN(I)V

    .line 372
    invoke-direct {p0, p2}, Lu/aly/H;->bSH(I)V

    .line 374
    :goto_10
    return-void

    .line 369
    :cond_11
    shl-int/lit8 v0, p2, 0x4

    invoke-direct {p0, p1}, Lu/aly/H;->bSW(B)B

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lu/aly/H;->bSN(I)V

    goto :goto_10
.end method

.method public c()V
    .registers 1

    .prologue
    .line 357
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lu/aly/H;->bSM(B)V

    .line 240
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 354
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 355
    return-void
.end method

.method public j()Lu/aly/aO;
    .registers 3

    .prologue
    .line 493
    iget-object v0, p0, Lu/aly/H;->bvj:Lu/aly/bY;

    iget-short v1, p0, Lu/aly/H;->n:S

    invoke-virtual {v0, v1}, Lu/aly/bY;->bXV(S)V

    .line 494
    const/4 v0, 0x0

    iput-short v0, p0, Lu/aly/H;->n:S

    .line 495
    sget-object v0, Lu/aly/H;->bvg:Lu/aly/aO;

    return-object v0
.end method

.method public k()V
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, Lu/aly/H;->bvj:Lu/aly/bY;

    invoke-virtual {v0}, Lu/aly/bY;->a()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lu/aly/H;->n:S

    .line 505
    return-void
.end method

.method public l()Lu/aly/cB;
    .registers 6

    .prologue
    .line 511
    invoke-virtual {p0}, Lu/aly/H;->bRj()B

    move-result v1

    .line 514
    if-eqz v1, :cond_2c

    .line 521
    and-int/lit16 v0, v1, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    .line 522
    if-eqz v0, :cond_2f

    .line 527
    iget-short v2, p0, Lu/aly/H;->n:S

    add-int/2addr v0, v2

    int-to-short v0, v0

    .line 530
    :goto_11
    new-instance v2, Lu/aly/cB;

    const-string/jumbo v3, ""

    and-int/lit8 v4, v1, 0xf

    int-to-byte v4, v4

    invoke-direct {p0, v4}, Lu/aly/H;->bSV(B)B

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    .line 533
    invoke-direct {p0, v1}, Lu/aly/H;->bSU(B)Z

    move-result v0

    if-nez v0, :cond_34

    .line 539
    :goto_26
    iget-short v0, v2, Lu/aly/cB;->c:S

    int-to-short v0, v0

    iput-short v0, p0, Lu/aly/H;->n:S

    .line 540
    return-object v2

    .line 515
    :cond_2c
    sget-object v0, Lu/aly/H;->bvh:Lu/aly/cB;

    return-object v0

    .line 524
    :cond_2f
    invoke-virtual {p0}, Lu/aly/H;->bRk()S

    move-result v0

    goto :goto_11

    .line 535
    :cond_34
    and-int/lit8 v0, v1, 0xf

    int-to-byte v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3f

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3c
    iput-object v0, p0, Lu/aly/H;->bvl:Ljava/lang/Boolean;

    goto :goto_26

    :cond_3f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3c
.end method

.method public m()V
    .registers 1

    .prologue
    .line 702
    return-void
.end method

.method public n()Lu/aly/dh;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 549
    invoke-direct {p0}, Lu/aly/H;->bSQ()I

    move-result v1

    .line 550
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lu/aly/H;->bRj()B

    move-result v0

    .line 551
    :cond_b
    new-instance v2, Lu/aly/dh;

    shr-int/lit8 v3, v0, 0x4

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lu/aly/H;->bSV(B)B

    move-result v3

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lu/aly/H;->bSV(B)B

    move-result v0

    invoke-direct {v2, v3, v0, v1}, Lu/aly/dh;-><init>(BBI)V

    return-object v2
.end method
