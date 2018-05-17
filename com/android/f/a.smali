.class public final Lcom/android/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bcz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    sput-boolean v0, Lcom/android/f/a;->bcz:Z

    .line 47
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static btF([BI[BII)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 168
    sget-boolean v1, Lcom/android/f/a;->bcz:Z

    if-eqz v1, :cond_9

    .line 169
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 170
    return-void

    .line 172
    :cond_9
    if-nez p0, :cond_14

    .line 173
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_14
    if-nez p2, :cond_1f

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1f
    if-ltz p1, :cond_23

    if-gez p3, :cond_6b

    .line 180
    :cond_23
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    const-string/jumbo v2, " dst.length="

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    array-length v2, p2

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    const-string/jumbo v2, " dstPos="

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 182
    const-string/jumbo v2, " length="

    .line 181
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_6b
    if-ltz p4, :cond_23

    .line 179
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_23

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_23

    .line 184
    const/16 v1, 0x20

    if-gt p4, v1, :cond_9d

    .line 186
    if-ne p0, p2, :cond_90

    if-ge p1, p3, :cond_90

    add-int v1, p1, p4

    if-ge p3, v1, :cond_90

    .line 190
    add-int/lit8 v0, p4, -0x1

    :goto_83
    if-ltz v0, :cond_b2

    .line 191
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 190
    add-int/lit8 v0, v0, -0x1

    goto :goto_83

    .line 195
    :cond_90
    :goto_90
    if-ge v0, p4, :cond_b2

    .line 196
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    aput-byte v2, p2, v1

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 200
    :cond_9d
    const-string/jumbo v0, "com.android.f.a"

    const-string/jumbo v1, "arraycopy failed!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    .line 201
    :goto_a7
    if-ge v0, p3, :cond_b2

    .line 202
    sub-int v1, v0, p1

    aget-byte v2, p0, v0

    aput-byte v2, p2, v1

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    .line 167
    :cond_b2
    return-void
.end method

.method public static btG([Ljava/lang/CharSequence;I[Ljava/lang/CharSequence;II)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 469
    sget-boolean v1, Lcom/android/f/a;->bcz:Z

    if-eqz v1, :cond_9

    .line 470
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 471
    return-void

    .line 473
    :cond_9
    if-nez p0, :cond_14

    .line 474
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_14
    if-nez p2, :cond_1f

    .line 477
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_1f
    if-ltz p1, :cond_23

    if-gez p3, :cond_6b

    .line 481
    :cond_23
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 482
    const-string/jumbo v2, " srcPos="

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 482
    const-string/jumbo v2, " dst.length="

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 482
    array-length v2, p2

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 483
    const-string/jumbo v2, " dstPos="

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 483
    const-string/jumbo v2, " length="

    .line 481
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_6b
    if-ltz p4, :cond_23

    .line 480
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_23

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_23

    .line 485
    const v1, 0x7fffffff

    if-gt p4, v1, :cond_9e

    .line 487
    if-ne p0, p2, :cond_91

    if-ge p1, p3, :cond_91

    add-int v1, p1, p4

    if-ge p3, v1, :cond_91

    .line 491
    add-int/lit8 v0, p4, -0x1

    :goto_84
    if-ltz v0, :cond_b3

    .line 492
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-object v2, p0, v2

    aput-object v2, p2, v1

    .line 491
    add-int/lit8 v0, v0, -0x1

    goto :goto_84

    .line 496
    :cond_91
    :goto_91
    if-ge v0, p4, :cond_b3

    .line 497
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget-object v2, p0, v2

    aput-object v2, p2, v1

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 501
    :cond_9e
    const-string/jumbo v0, "com.android.f.a"

    const-string/jumbo v1, "arraycopy failed!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    .line 502
    :goto_a8
    if-ge v0, p3, :cond_b3

    .line 503
    sub-int v1, v0, p1

    aget-object v2, p0, v0

    aput-object v2, p2, v1

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    .line 468
    :cond_b3
    return-void
.end method

.method public static btH([II[III)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 272
    sget-boolean v1, Lcom/android/f/a;->bcz:Z

    if-eqz v1, :cond_9

    .line 273
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 274
    return-void

    .line 276
    :cond_9
    if-nez p0, :cond_14

    .line 277
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_14
    if-nez p2, :cond_1f

    .line 280
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1f
    if-ltz p1, :cond_23

    if-gez p3, :cond_6b

    .line 284
    :cond_23
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " srcPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    const-string/jumbo v2, " dst.length="

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    array-length v2, p2

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    const-string/jumbo v2, " dstPos="

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    const-string/jumbo v2, " length="

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_6b
    if-ltz p4, :cond_23

    .line 283
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_23

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_23

    .line 288
    const/16 v1, 0x20

    if-gt p4, v1, :cond_9d

    .line 290
    if-ne p0, p2, :cond_90

    if-ge p1, p3, :cond_90

    add-int v1, p1, p4

    if-ge p3, v1, :cond_90

    .line 294
    add-int/lit8 v0, p4, -0x1

    :goto_83
    if-ltz v0, :cond_b2

    .line 295
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 294
    add-int/lit8 v0, v0, -0x1

    goto :goto_83

    .line 299
    :cond_90
    :goto_90
    if-ge v0, p4, :cond_b2

    .line 300
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 304
    :cond_9d
    const-string/jumbo v0, "com.android.f.a"

    const-string/jumbo v1, "arraycopy failed!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    .line 305
    :goto_a7
    if-ge v0, p3, :cond_b2

    .line 306
    sub-int v1, v0, p1

    aget v2, p0, v0

    aput v2, p2, v1

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    .line 271
    :cond_b2
    return-void
.end method

.method public static btI([FI[FII)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 78
    sget-boolean v1, Lcom/android/f/a;->bcz:Z

    if-eqz v1, :cond_9

    .line 79
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 80
    return-void

    .line 82
    :cond_9
    if-nez p0, :cond_14

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_14
    if-nez p2, :cond_1f

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1f
    if-ltz p1, :cond_23

    if-gez p3, :cond_6b

    .line 90
    :cond_23
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "src.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    const-string/jumbo v2, " srcPos="

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    const-string/jumbo v2, " dst.length="

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    array-length v2, p2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    const-string/jumbo v2, " dstPos="

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    const-string/jumbo v2, " length="

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_6b
    if-ltz p4, :cond_23

    .line 89
    array-length v1, p0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_23

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_23

    .line 94
    const/16 v1, 0x20

    if-gt p4, v1, :cond_9d

    .line 96
    if-ne p0, p2, :cond_90

    if-ge p1, p3, :cond_90

    add-int v1, p1, p4

    if-ge p3, v1, :cond_90

    .line 100
    add-int/lit8 v0, p4, -0x1

    :goto_83
    if-ltz v0, :cond_b2

    .line 101
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 100
    add-int/lit8 v0, v0, -0x1

    goto :goto_83

    .line 105
    :cond_90
    :goto_90
    if-ge v0, p4, :cond_b2

    .line 106
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 110
    :cond_9d
    const-string/jumbo v0, "com.android.f.a"

    const-string/jumbo v1, "arraycopy failed!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, p1

    .line 111
    :goto_a7
    if-ge v0, p3, :cond_b2

    .line 112
    sub-int v1, v0, p1

    aget v2, p0, v0

    aput v2, p2, v1

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    .line 77
    :cond_b2
    return-void
.end method
