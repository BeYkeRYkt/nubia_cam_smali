.class public Lu/aly/f;
.super Lu/aly/dl;
.source "SourceFile"


# static fields
.field private static final btF:Lu/aly/aO;


# instance fields
.field protected btG:Z

.field protected btH:Z

.field private btI:[B

.field private btJ:[B

.field private btK:[B

.field private btL:[B

.field private btM:[B

.field private btN:[B

.field private btO:[B

.field protected d:Z

.field protected e:I

.field private i:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Lu/aly/aO;

    invoke-direct {v0}, Lu/aly/aO;-><init>()V

    sput-object v0, Lu/aly/f;->btF:Lu/aly/aO;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lu/aly/cV;ZZ)V
    .registers 9

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 89
    invoke-direct {p0, p1}, Lu/aly/dl;-><init>(Lu/aly/cV;)V

    .line 40
    iput-boolean v0, p0, Lu/aly/f;->btG:Z

    .line 41
    iput-boolean v1, p0, Lu/aly/f;->d:Z

    .line 44
    iput-boolean v0, p0, Lu/aly/f;->btH:Z

    .line 150
    new-array v0, v1, [B

    iput-object v0, p0, Lu/aly/f;->i:[B

    .line 156
    new-array v0, v2, [B

    iput-object v0, p0, Lu/aly/f;->btI:[B

    .line 163
    new-array v0, v3, [B

    iput-object v0, p0, Lu/aly/f;->btJ:[B

    .line 172
    new-array v0, v4, [B

    iput-object v0, p0, Lu/aly/f;->btK:[B

    .line 263
    new-array v0, v1, [B

    iput-object v0, p0, Lu/aly/f;->btL:[B

    .line 274
    new-array v0, v2, [B

    iput-object v0, p0, Lu/aly/f;->btM:[B

    .line 293
    new-array v0, v3, [B

    iput-object v0, p0, Lu/aly/f;->btN:[B

    .line 312
    new-array v0, v4, [B

    iput-object v0, p0, Lu/aly/f;->btO:[B

    .line 90
    iput-boolean p2, p0, Lu/aly/f;->btG:Z

    .line 91
    iput-boolean p3, p0, Lu/aly/f;->d:Z

    .line 92
    return-void
.end method

.method private bRr([BII)I
    .registers 5

    .prologue
    .line 383
    invoke-virtual {p0, p3}, Lu/aly/f;->bRt(I)V

    .line 384
    iget-object v0, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v0, p1, p2, p3}, Lu/aly/cV;->bZn([BII)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 165
    iget-object v0, p0, Lu/aly/f;->btJ:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 166
    iget-object v0, p0, Lu/aly/f;->btJ:[B

    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 167
    iget-object v0, p0, Lu/aly/f;->btJ:[B

    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 168
    iget-object v0, p0, Lu/aly/f;->btJ:[B

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 169
    iget-object v0, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    iget-object v1, p0, Lu/aly/f;->btJ:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Lu/aly/cV;->bYk([BII)V

    .line 170
    return-void
.end method

.method public a(J)V
    .registers 12

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    .line 174
    iget-object v0, p0, Lu/aly/f;->btK:[B

    const/16 v1, 0x38

    shr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    .line 175
    iget-object v0, p0, Lu/aly/f;->btK:[B

    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 176
    iget-object v0, p0, Lu/aly/f;->btK:[B

    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 177
    iget-object v0, p0, Lu/aly/f;->btK:[B

    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 178
    iget-object v0, p0, Lu/aly/f;->btK:[B

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 179
    iget-object v0, p0, Lu/aly/f;->btK:[B

    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p1, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 180
    iget-object v0, p0, Lu/aly/f;->btK:[B

    const/4 v1, 0x6

    shr-long v2, p1, v7

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 181
    iget-object v0, p0, Lu/aly/f;->btK:[B

    const/4 v1, 0x7

    and-long v2, v4, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 182
    iget-object v0, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    iget-object v1, p0, Lu/aly/f;->btK:[B

    invoke-virtual {v0, v1, v6, v7}, Lu/aly/cV;->bYk([BII)V

    .line 183
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    .line 191
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 192
    array-length v1, v0

    invoke-virtual {p0, v1}, Lu/aly/f;->a(I)V

    .line 193
    iget-object v1, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lu/aly/cV;->bYk([BII)V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_12} :catch_13

    .line 197
    return-void

    .line 196
    :catch_13
    move-exception v0

    .line 195
    new-instance v0, Lu/aly/cp;

    const-string/jumbo v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Z)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 147
    if-nez p1, :cond_7

    :goto_3
    invoke-virtual {p0, v0}, Lu/aly/f;->bQZ(B)V

    .line 148
    return-void

    :cond_7
    const/4 v0, 0x1

    .line 147
    goto :goto_3
.end method

.method public b()V
    .registers 1

    .prologue
    .line 111
    return-void
.end method

.method public bQV(Lu/aly/aO;)V
    .registers 2

    .prologue
    .line 109
    return-void
.end method

.method public bQW(Lu/aly/cB;)V
    .registers 3

    .prologue
    .line 114
    iget-byte v0, p1, Lu/aly/cB;->b:B

    invoke-virtual {p0, v0}, Lu/aly/f;->bQZ(B)V

    .line 115
    iget-short v0, p1, Lu/aly/cB;->c:S

    invoke-virtual {p0, v0}, Lu/aly/f;->bRa(S)V

    .line 116
    return-void
.end method

.method public bQX(Lu/aly/dh;)V
    .registers 3

    .prologue
    .line 125
    iget-byte v0, p1, Lu/aly/dh;->a:B

    invoke-virtual {p0, v0}, Lu/aly/f;->bQZ(B)V

    .line 126
    iget-byte v0, p1, Lu/aly/dh;->b:B

    invoke-virtual {p0, v0}, Lu/aly/f;->bQZ(B)V

    .line 127
    iget v0, p1, Lu/aly/dh;->c:I

    invoke-virtual {p0, v0}, Lu/aly/f;->a(I)V

    .line 128
    return-void
.end method

.method public bQY(Lu/aly/bP;)V
    .registers 3

    .prologue
    .line 133
    iget-byte v0, p1, Lu/aly/bP;->a:B

    invoke-virtual {p0, v0}, Lu/aly/f;->bQZ(B)V

    .line 134
    iget v0, p1, Lu/aly/bP;->b:I

    invoke-virtual {p0, v0}, Lu/aly/f;->a(I)V

    .line 135
    return-void
.end method

.method public bQZ(B)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lu/aly/f;->i:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 153
    iget-object v0, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    iget-object v1, p0, Lu/aly/f;->i:[B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lu/aly/cV;->bYk([BII)V

    .line 154
    return-void
.end method

.method public bRa(S)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 158
    iget-object v0, p0, Lu/aly/f;->btI:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 159
    iget-object v0, p0, Lu/aly/f;->btI:[B

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 160
    iget-object v0, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    iget-object v1, p0, Lu/aly/f;->btI:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Lu/aly/cV;->bYk([BII)V

    .line 161
    return-void
.end method

.method public bRb(D)V
    .registers 6

    .prologue
    .line 186
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lu/aly/f;->a(J)V

    .line 187
    return-void
.end method

.method public bRc(Ljava/nio/ByteBuffer;)V
    .registers 7

    .prologue
    .line 200
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    .line 201
    invoke-virtual {p0, v0}, Lu/aly/f;->a(I)V

    .line 202
    iget-object v1, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3, v0}, Lu/aly/cV;->bYk([BII)V

    .line 203
    return-void
.end method

.method public bRd()V
    .registers 1

    .prologue
    .line 245
    return-void
.end method

.method public bRe()Lu/aly/bP;
    .registers 4

    .prologue
    .line 248
    new-instance v0, Lu/aly/bP;

    invoke-virtual {p0}, Lu/aly/f;->bRj()B

    move-result v1

    invoke-virtual {p0}, Lu/aly/f;->bRl()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/aly/bP;-><init>(BI)V

    return-object v0
.end method

.method public bRf()V
    .registers 1

    .prologue
    .line 251
    return-void
.end method

.method public bRg()Lu/aly/m;
    .registers 4

    .prologue
    .line 254
    new-instance v0, Lu/aly/m;

    invoke-virtual {p0}, Lu/aly/f;->bRj()B

    move-result v1

    invoke-virtual {p0}, Lu/aly/f;->bRl()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lu/aly/m;-><init>(BI)V

    return-object v0
.end method

.method public bRh()V
    .registers 1

    .prologue
    .line 257
    return-void
.end method

.method public bRi()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 260
    invoke-virtual {p0}, Lu/aly/f;->bRj()B

    move-result v1

    if-eq v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    return v0
.end method

.method public bRj()B
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 265
    iget-object v0, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v0}, Lu/aly/cV;->h()I

    move-result v0

    if-ge v0, v2, :cond_14

    .line 270
    iget-object v0, p0, Lu/aly/f;->btL:[B

    invoke-direct {p0, v0, v1, v2}, Lu/aly/f;->bRr([BII)I

    .line 271
    iget-object v0, p0, Lu/aly/f;->btL:[B

    aget-byte v0, v0, v1

    return v0

    .line 266
    :cond_14
    iget-object v0, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v0}, Lu/aly/cV;->f()[B

    move-result-object v0

    iget-object v1, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v1}, Lu/aly/cV;->g()I

    move-result v1

    aget-byte v0, v0, v1

    .line 267
    iget-object v1, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v1, v2}, Lu/aly/cV;->a(I)V

    .line 268
    return v0
.end method

.method public bRk()S
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 276
    iget-object v1, p0, Lu/aly/f;->btM:[B

    .line 279
    iget-object v2, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v2}, Lu/aly/cV;->h()I

    move-result v2

    if-ge v2, v3, :cond_20

    .line 284
    iget-object v2, p0, Lu/aly/f;->btM:[B

    invoke-direct {p0, v2, v0, v3}, Lu/aly/f;->bRr([BII)I

    .line 287
    :goto_11
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    return v0

    .line 280
    :cond_20
    iget-object v0, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v0}, Lu/aly/cV;->f()[B

    move-result-object v1

    .line 281
    iget-object v0, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v0}, Lu/aly/cV;->g()I

    move-result v0

    .line 282
    iget-object v2, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v2, v3}, Lu/aly/cV;->a(I)V

    goto :goto_11
.end method

.method public bRl()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x4

    .line 295
    iget-object v1, p0, Lu/aly/f;->btN:[B

    .line 298
    iget-object v2, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v2}, Lu/aly/cV;->h()I

    move-result v2

    if-ge v2, v3, :cond_31

    .line 303
    iget-object v2, p0, Lu/aly/f;->btN:[B

    invoke-direct {p0, v2, v0, v3}, Lu/aly/f;->bRr([BII)I

    .line 305
    :goto_11
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    return v0

    .line 299
    :cond_31
    iget-object v0, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v0}, Lu/aly/cV;->f()[B

    move-result-object v1

    .line 300
    iget-object v0, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v0}, Lu/aly/cV;->g()I

    move-result v0

    .line 301
    iget-object v2, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v2, v3}, Lu/aly/cV;->a(I)V

    goto :goto_11
.end method

.method public bRm()J
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/16 v7, 0x8

    .line 314
    iget-object v1, p0, Lu/aly/f;->btO:[B

    .line 317
    iget-object v2, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v2}, Lu/aly/cV;->h()I

    move-result v2

    if-ge v2, v7, :cond_63

    .line 322
    iget-object v2, p0, Lu/aly/f;->btO:[B

    invoke-direct {p0, v2, v0, v7}, Lu/aly/f;->bRr([BII)I

    .line 325
    :goto_12
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v7

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v2

    return-wide v0

    .line 318
    :cond_63
    iget-object v0, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v0}, Lu/aly/cV;->f()[B

    move-result-object v1

    .line 319
    iget-object v0, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v0}, Lu/aly/cV;->g()I

    move-result v0

    .line 320
    iget-object v2, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v2, v7}, Lu/aly/cV;->a(I)V

    goto :goto_12
.end method

.method public bRn()D
    .registers 3

    .prologue
    .line 337
    invoke-virtual {p0}, Lu/aly/f;->bRm()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public bRo()Ljava/lang/String;
    .registers 6

    .prologue
    .line 341
    invoke-virtual {p0}, Lu/aly/f;->bRl()I

    move-result v0

    .line 343
    iget-object v1, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v1}, Lu/aly/cV;->h()I

    move-result v1

    if-ge v1, v0, :cond_11

    .line 353
    invoke-virtual {p0, v0}, Lu/aly/f;->bRp(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 345
    :cond_11
    :try_start_11
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v2}, Lu/aly/cV;->f()[B

    move-result-object v2

    iget-object v3, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v3}, Lu/aly/cV;->g()I

    move-result v3

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 346
    iget-object v2, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v2, v0}, Lu/aly/cV;->a(I)V
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_2a} :catch_2b

    .line 347
    return-object v1

    :catch_2b
    move-exception v0

    .line 349
    new-instance v0, Lu/aly/cp;

    const-string/jumbo v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bRp(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 358
    :try_start_0
    invoke-virtual {p0, p1}, Lu/aly/f;->bRt(I)V

    .line 359
    new-array v0, p1, [B

    .line 360
    iget-object v1, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lu/aly/cV;->bZn([BII)I

    .line 361
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception v0

    .line 363
    new-instance v0, Lu/aly/cp;

    const-string/jumbo v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bRq()Ljava/nio/ByteBuffer;
    .registers 5

    .prologue
    .line 368
    invoke-virtual {p0}, Lu/aly/f;->bRl()I

    move-result v0

    .line 369
    invoke-virtual {p0, v0}, Lu/aly/f;->bRt(I)V

    .line 371
    iget-object v1, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v1}, Lu/aly/cV;->h()I

    move-result v1

    if-ge v1, v0, :cond_1c

    .line 377
    new-array v1, v0, [B

    .line 378
    iget-object v2, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lu/aly/cV;->bZn([BII)I

    .line 379
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 372
    :cond_1c
    iget-object v1, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v1}, Lu/aly/cV;->f()[B

    move-result-object v1

    iget-object v2, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v2}, Lu/aly/cV;->g()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 373
    iget-object v2, p0, Lu/aly/f;->bAX:Lu/aly/cV;

    invoke-virtual {v2, v0}, Lu/aly/cV;->a(I)V

    .line 374
    return-object v1
.end method

.method public bRs(I)V
    .registers 3

    .prologue
    .line 388
    iput p1, p0, Lu/aly/f;->e:I

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/aly/f;->btH:Z

    .line 390
    return-void
.end method

.method protected bRt(I)V
    .registers 5

    .prologue
    .line 393
    if-ltz p1, :cond_7

    .line 396
    iget-boolean v0, p0, Lu/aly/f;->btH:Z

    if-nez v0, :cond_21

    .line 402
    :cond_6
    return-void

    .line 394
    :cond_7
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

    .line 397
    :cond_21
    iget v0, p0, Lu/aly/f;->e:I

    sub-int/2addr v0, p1

    iput v0, p0, Lu/aly/f;->e:I

    .line 398
    iget v0, p0, Lu/aly/f;->e:I

    if-gez v0, :cond_6

    .line 399
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Message length exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu/aly/f;->bQZ(B)V

    .line 122
    return-void
.end method

.method public e()V
    .registers 1

    .prologue
    .line 130
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 137
    return-void
.end method

.method public j()Lu/aly/aO;
    .registers 2

    .prologue
    .line 228
    sget-object v0, Lu/aly/f;->btF:Lu/aly/aO;

    return-object v0
.end method

.method public k()V
    .registers 1

    .prologue
    .line 231
    return-void
.end method

.method public l()Lu/aly/cB;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 234
    invoke-virtual {p0}, Lu/aly/f;->bRj()B

    move-result v1

    .line 235
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lu/aly/f;->bRk()S

    move-result v0

    .line 236
    :cond_b
    new-instance v2, Lu/aly/cB;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3, v1, v0}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    return-object v2
.end method

.method public m()V
    .registers 1

    .prologue
    .line 239
    return-void
.end method

.method public n()Lu/aly/dh;
    .registers 5

    .prologue
    .line 242
    new-instance v0, Lu/aly/dh;

    invoke-virtual {p0}, Lu/aly/f;->bRj()B

    move-result v1

    invoke-virtual {p0}, Lu/aly/f;->bRj()B

    move-result v2

    invoke-virtual {p0}, Lu/aly/f;->bRl()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/dh;-><init>(BBI)V

    return-object v0
.end method
