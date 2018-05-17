.class Lcom/android/common/exif/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Oj:[B

.field private static final Ok:[B

.field private static final Ol:[B


# instance fields
.field private final Om:Ljava/nio/ByteOrder;

.field private final On:[Lcom/android/common/exif/p;

.field private Oo:Ljava/util/ArrayList;

.field private Op:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x8

    .line 36
    new-array v0, v1, [B

    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/common/exif/a;->Oj:[B

    .line 39
    new-array v0, v1, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/android/common/exif/a;->Ok:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/common/exif/a;->Ol:[B

    .line 34
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 36
    :array_18
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 39
    :array_20
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 42
    :array_28
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/common/exif/p;

    iput-object v0, p0, Lcom/android/common/exif/a;->On:[Lcom/android/common/exif/p;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/android/common/exif/a;->Om:Ljava/nio/ByteOrder;

    .line 51
    return-void
.end method


# virtual methods
.method protected Oi(Lcom/android/common/exif/p;)V
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/common/exif/a;->On:[Lcom/android/common/exif/p;

    invoke-virtual {p1}, Lcom/android/common/exif/p;->Rw()I

    move-result v1

    aput-object p1, v0, v1

    .line 138
    return-void
.end method

.method protected Oj(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 169
    if-eqz p1, :cond_c

    .line 170
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Px()I

    move-result v0

    .line 171
    invoke-virtual {p0, p1, v0}, Lcom/android/common/exif/a;->Ok(Lcom/android/common/exif/k;I)Lcom/android/common/exif/k;

    move-result-object v0

    return-object v0

    .line 173
    :cond_c
    return-object v0
.end method

.method protected Ok(Lcom/android/common/exif/k;I)Lcom/android/common/exif/k;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 181
    if-eqz p1, :cond_12

    invoke-static {p2}, Lcom/android/common/exif/k;->Pw(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/common/exif/a;->Op(I)Lcom/android/common/exif/p;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p1}, Lcom/android/common/exif/p;->Ry(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    move-result-object v0

    return-object v0

    .line 185
    :cond_12
    return-object v1
.end method

.method protected Ol()Ljava/util/List;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 256
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v4, p0, Lcom/android/common/exif/a;->On:[Lcom/android/common/exif/p;

    array-length v5, v4

    move v2, v1

    :goto_b
    if-ge v2, v5, :cond_27

    aget-object v0, v4, v2

    .line 258
    if-eqz v0, :cond_23

    .line 259
    invoke-virtual {v0}, Lcom/android/common/exif/p;->RA()[Lcom/android/common/exif/k;

    move-result-object v6

    .line 260
    if-eqz v6, :cond_23

    .line 261
    array-length v7, v6

    move v0, v1

    :goto_19
    if-ge v0, v7, :cond_23

    aget-object v8, v6, v0

    .line 262
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 257
    :cond_23
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_b

    .line 267
    :cond_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2e

    .line 268
    return-object v9

    .line 270
    :cond_2e
    return-object v3
.end method

.method protected Om()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/common/exif/a;->Om:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected On()[B
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/common/exif/a;->Op:[B

    return-object v0
.end method

.method protected Oo(I)Lcom/android/common/exif/p;
    .registers 3

    .prologue
    .line 128
    invoke-static {p1}, Lcom/android/common/exif/k;->Pw(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 129
    iget-object v0, p0, Lcom/android/common/exif/a;->On:[Lcom/android/common/exif/p;

    aget-object v0, v0, p1

    return-object v0

    .line 131
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method protected Op(I)Lcom/android/common/exif/p;
    .registers 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/common/exif/a;->On:[Lcom/android/common/exif/p;

    aget-object v0, v0, p1

    .line 148
    if-nez v0, :cond_f

    .line 149
    new-instance v0, Lcom/android/common/exif/p;

    invoke-direct {v0, p1}, Lcom/android/common/exif/p;-><init>(I)V

    .line 150
    iget-object v1, p0, Lcom/android/common/exif/a;->On:[Lcom/android/common/exif/p;

    aput-object v0, v1, p1

    .line 152
    :cond_f
    return-object v0
.end method

.method protected Oq(I)[B
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected Or()I
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected Os(SI)Lcom/android/common/exif/k;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Lcom/android/common/exif/a;->On:[Lcom/android/common/exif/p;

    aget-object v1, v1, p2

    .line 161
    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v1, p1}, Lcom/android/common/exif/p;->Rx(S)Lcom/android/common/exif/k;

    move-result-object v0

    goto :goto_7
.end method

.method protected Ot()Z
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/common/exif/a;->Op:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected Ou()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method protected Ov(SI)V
    .registers 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/common/exif/a;->On:[Lcom/android/common/exif/p;

    aget-object v0, v0, p2

    .line 206
    if-nez v0, :cond_7

    .line 207
    return-void

    .line 209
    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/common/exif/p;->Rz(S)V

    .line 204
    return-void
.end method

.method protected Ow([B)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/common/exif/a;->Op:[B

    .line 68
    return-void
.end method

.method protected Ox(I[B)V
    .registers 6

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_e

    .line 84
    iget-object v0, p0, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    :goto_d
    return-void

    .line 86
    :cond_e
    iget-object v0, p0, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_14
    if-ge v0, p1, :cond_1f

    .line 87
    iget-object v1, p0, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 89
    :cond_1f
    iget-object v0, p0, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 318
    if-ne p0, p1, :cond_5

    .line 319
    return v4

    .line 321
    :cond_5
    if-nez p1, :cond_8

    .line 322
    return v3

    .line 324
    :cond_8
    instance-of v0, p1, Lcom/android/common/exif/a;

    if-eqz v0, :cond_6c

    .line 325
    check-cast p1, Lcom/android/common/exif/a;

    .line 326
    iget-object v0, p1, Lcom/android/common/exif/a;->Om:Ljava/nio/ByteOrder;

    iget-object v1, p0, Lcom/android/common/exif/a;->Om:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_22

    .line 327
    iget-object v0, p1, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_23

    .line 329
    :cond_22
    return v3

    .line 328
    :cond_23
    iget-object v0, p1, Lcom/android/common/exif/a;->Op:[B

    iget-object v1, p0, Lcom/android/common/exif/a;->Op:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_22

    move v2, v3

    .line 331
    :goto_2e
    iget-object v0, p0, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_51

    .line 332
    iget-object v0, p1, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/android/common/exif/a;->Oo:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 333
    return v3

    .line 331
    :cond_4d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2e

    :cond_51
    move v0, v3

    .line 336
    :goto_52
    const/4 v1, 0x5

    if-ge v0, v1, :cond_6b

    .line 337
    invoke-virtual {p1, v0}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v1

    .line 338
    invoke-virtual {p0, v0}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v2

    .line 339
    if-eq v1, v2, :cond_67

    if-eqz v1, :cond_67

    invoke-virtual {v1, v2}, Lcom/android/common/exif/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 336
    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 340
    :cond_6a
    return v3

    .line 343
    :cond_6b
    return v4

    .line 345
    :cond_6c
    return v3
.end method
