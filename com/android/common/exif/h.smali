.class Lcom/android/common/exif/h;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private Pd:Ljava/nio/ByteBuffer;

.field private Pe:I

.field private Pf:I

.field private Pg:Lcom/android/common/exif/a;

.field private final Ph:Lcom/android/common/exif/o;

.field private Pi:[B

.field private mState:I


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;Lcom/android/common/exif/o;)V
    .registers 5

    .prologue
    .line 86
    new-instance v0, Ljava/io/BufferedOutputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/exif/h;->mState:I

    .line 81
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/common/exif/h;->Pi:[B

    .line 82
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    .line 87
    iput-object p2, p0, Lcom/android/common/exif/h;->Ph:Lcom/android/common/exif/o;

    .line 85
    return-void
.end method

.method private Pj()I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 435
    const/16 v0, 0x8

    .line 436
    iget-object v2, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v2, v1}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v2

    .line 437
    invoke-direct {p0, v2, v0}, Lcom/android/common/exif/h;->Pk(Lcom/android/common/exif/p;I)I

    move-result v0

    .line 438
    sget v3, Lcom/android/common/exif/o;->PL:I

    invoke-static {v3}, Lcom/android/common/exif/o;->QK(I)S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/common/exif/p;->Rx(S)Lcom/android/common/exif/k;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/common/exif/k;->PT(I)Z

    .line 440
    iget-object v3, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v3

    .line 441
    invoke-direct {p0, v3, v0}, Lcom/android/common/exif/h;->Pk(Lcom/android/common/exif/p;I)I

    move-result v0

    .line 443
    iget-object v4, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v4

    .line 444
    if-eqz v4, :cond_3f

    .line 445
    sget v5, Lcom/android/common/exif/o;->PN:I

    invoke-static {v5}, Lcom/android/common/exif/o;->QK(I)S

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/common/exif/p;->Rx(S)Lcom/android/common/exif/k;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/common/exif/k;->PT(I)Z

    .line 447
    invoke-direct {p0, v4, v0}, Lcom/android/common/exif/h;->Pk(Lcom/android/common/exif/p;I)I

    move-result v0

    .line 450
    :cond_3f
    iget-object v3, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v3

    .line 451
    if-eqz v3, :cond_59

    .line 452
    sget v4, Lcom/android/common/exif/o;->PM:I

    invoke-static {v4}, Lcom/android/common/exif/o;->QK(I)S

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/common/exif/p;->Rx(S)Lcom/android/common/exif/k;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/common/exif/k;->PT(I)Z

    .line 453
    invoke-direct {p0, v3, v0}, Lcom/android/common/exif/h;->Pk(Lcom/android/common/exif/p;I)I

    move-result v0

    .line 456
    :cond_59
    iget-object v3, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v3

    .line 457
    if-eqz v3, :cond_69

    .line 458
    invoke-virtual {v2, v0}, Lcom/android/common/exif/p;->RD(I)V

    .line 459
    invoke-direct {p0, v3, v0}, Lcom/android/common/exif/h;->Pk(Lcom/android/common/exif/p;I)I

    move-result v0

    .line 463
    :cond_69
    iget-object v2, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v2}, Lcom/android/common/exif/a;->Ot()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 464
    sget v1, Lcom/android/common/exif/o;->PO:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/common/exif/p;->Rx(S)Lcom/android/common/exif/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/exif/k;->PT(I)Z

    .line 466
    iget-object v1, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v1}, Lcom/android/common/exif/a;->On()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v0

    .line 477
    :goto_86
    return v1

    .line 467
    :cond_87
    iget-object v2, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v2}, Lcom/android/common/exif/a;->Ou()Z

    move-result v2

    if-eqz v2, :cond_be

    .line 468
    iget-object v2, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v2}, Lcom/android/common/exif/a;->Or()I

    move-result v2

    .line 469
    new-array v2, v2, [J

    move v6, v1

    move v1, v0

    move v0, v6

    .line 470
    :goto_9a
    iget-object v4, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v4}, Lcom/android/common/exif/a;->Or()I

    move-result v4

    if-ge v0, v4, :cond_b0

    .line 471
    int-to-long v4, v1

    aput-wide v4, v2, v0

    .line 472
    iget-object v4, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v4, v0}, Lcom/android/common/exif/a;->Oq(I)[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v1, v4

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_9a

    .line 474
    :cond_b0
    sget v0, Lcom/android/common/exif/o;->PQ:I

    invoke-static {v0}, Lcom/android/common/exif/o;->QK(I)S

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/common/exif/p;->Rx(S)Lcom/android/common/exif/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/exif/k;->PN([J)Z

    goto :goto_86

    :cond_be
    move v1, v0

    goto :goto_86
.end method

.method private Pk(Lcom/android/common/exif/p;I)I
    .registers 11

    .prologue
    .line 310
    invoke-virtual {p1}, Lcom/android/common/exif/p;->RB()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    add-int v1, p2, v0

    .line 311
    invoke-virtual {p1}, Lcom/android/common/exif/p;->RA()[Lcom/android/common/exif/k;

    move-result-object v2

    .line 312
    const/4 v0, 0x0

    array-length v3, v2

    move v7, v0

    move v0, v1

    move v1, v7

    :goto_15
    if-ge v1, v3, :cond_2b

    aget-object v4, v2, v1

    .line 313
    invoke-virtual {v4}, Lcom/android/common/exif/k;->PE()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_28

    .line 314
    invoke-virtual {v4, v0}, Lcom/android/common/exif/k;->PG(I)V

    .line 315
    invoke-virtual {v4}, Lcom/android/common/exif/k;->PE()I

    move-result v4

    add-int/2addr v0, v4

    .line 312
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 318
    :cond_2b
    return v0
.end method

.method private Pl()V
    .registers 9

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v0, v2}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    .line 324
    if-nez v0, :cond_15

    .line 325
    new-instance v0, Lcom/android/common/exif/p;

    invoke-direct {v0, v2}, Lcom/android/common/exif/p;-><init>(I)V

    .line 326
    iget-object v1, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v1, v0}, Lcom/android/common/exif/a;->Oi(Lcom/android/common/exif/p;)V

    .line 328
    :cond_15
    iget-object v1, p0, Lcom/android/common/exif/h;->Ph:Lcom/android/common/exif/o;

    sget v3, Lcom/android/common/exif/o;->PL:I

    invoke-virtual {v1, v3}, Lcom/android/common/exif/o;->QY(I)Lcom/android/common/exif/k;

    move-result-object v1

    .line 329
    if-nez v1, :cond_3b

    .line 330
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    sget v2, Lcom/android/common/exif/o;->PL:I

    .line 330
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_3b
    invoke-virtual {v0, v1}, Lcom/android/common/exif/p;->Ry(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 336
    iget-object v1, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v1, v4}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v1

    .line 337
    if-nez v1, :cond_50

    .line 338
    new-instance v1, Lcom/android/common/exif/p;

    invoke-direct {v1, v4}, Lcom/android/common/exif/p;-><init>(I)V

    .line 339
    iget-object v3, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v3, v1}, Lcom/android/common/exif/a;->Oi(Lcom/android/common/exif/p;)V

    .line 343
    :cond_50
    iget-object v3, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v3

    .line 344
    if-eqz v3, :cond_82

    .line 345
    iget-object v3, p0, Lcom/android/common/exif/h;->Ph:Lcom/android/common/exif/o;

    sget v4, Lcom/android/common/exif/o;->PM:I

    invoke-virtual {v3, v4}, Lcom/android/common/exif/o;->QY(I)Lcom/android/common/exif/k;

    move-result-object v3

    .line 346
    if-nez v3, :cond_7f

    .line 347
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    sget v2, Lcom/android/common/exif/o;->PM:I

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_7f
    invoke-virtual {v0, v3}, Lcom/android/common/exif/p;->Ry(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 354
    :cond_82
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_b4

    .line 356
    iget-object v0, p0, Lcom/android/common/exif/h;->Ph:Lcom/android/common/exif/o;

    .line 357
    sget v3, Lcom/android/common/exif/o;->PN:I

    .line 356
    invoke-virtual {v0, v3}, Lcom/android/common/exif/o;->QY(I)Lcom/android/common/exif/k;

    move-result-object v0

    .line 358
    if-nez v0, :cond_b1

    .line 359
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 360
    sget v2, Lcom/android/common/exif/o;->PN:I

    .line 359
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_b1
    invoke-virtual {v1, v0}, Lcom/android/common/exif/p;->Ry(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 365
    :cond_b4
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v0, v5}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v1}, Lcom/android/common/exif/a;->Ot()Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 370
    if-nez v0, :cond_ce

    .line 371
    new-instance v0, Lcom/android/common/exif/p;

    invoke-direct {v0, v5}, Lcom/android/common/exif/p;-><init>(I)V

    .line 372
    iget-object v1, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v1, v0}, Lcom/android/common/exif/a;->Oi(Lcom/android/common/exif/p;)V

    .line 375
    :cond_ce
    iget-object v1, p0, Lcom/android/common/exif/h;->Ph:Lcom/android/common/exif/o;

    .line 376
    sget v2, Lcom/android/common/exif/o;->PO:I

    .line 375
    invoke-virtual {v1, v2}, Lcom/android/common/exif/o;->QY(I)Lcom/android/common/exif/k;

    move-result-object v1

    .line 377
    if-nez v1, :cond_f4

    .line 378
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    sget v2, Lcom/android/common/exif/o;->PO:I

    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_f4
    invoke-virtual {v0, v1}, Lcom/android/common/exif/p;->Ry(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 383
    iget-object v1, p0, Lcom/android/common/exif/h;->Ph:Lcom/android/common/exif/o;

    .line 384
    sget v2, Lcom/android/common/exif/o;->PP:I

    .line 383
    invoke-virtual {v1, v2}, Lcom/android/common/exif/o;->QY(I)Lcom/android/common/exif/k;

    move-result-object v1

    .line 385
    if-nez v1, :cond_11d

    .line 386
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 387
    sget v2, Lcom/android/common/exif/o;->PP:I

    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_11d
    iget-object v2, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v2}, Lcom/android/common/exif/a;->On()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/android/common/exif/k;->PT(I)Z

    .line 391
    invoke-virtual {v0, v1}, Lcom/android/common/exif/p;->Ry(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 394
    sget v1, Lcom/android/common/exif/o;->PQ:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/exif/p;->Rz(S)V

    .line 395
    sget v1, Lcom/android/common/exif/o;->PR:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/exif/p;->Rz(S)V

    .line 321
    :cond_13c
    :goto_13c
    return-void

    .line 396
    :cond_13d
    iget-object v1, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v1}, Lcom/android/common/exif/a;->Ou()Z

    move-result v1

    if-eqz v1, :cond_1d8

    .line 397
    if-nez v0, :cond_151

    .line 398
    new-instance v0, Lcom/android/common/exif/p;

    invoke-direct {v0, v5}, Lcom/android/common/exif/p;-><init>(I)V

    .line 399
    iget-object v1, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v1, v0}, Lcom/android/common/exif/a;->Oi(Lcom/android/common/exif/p;)V

    .line 401
    :cond_151
    iget-object v1, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v1}, Lcom/android/common/exif/a;->Or()I

    move-result v1

    .line 402
    iget-object v3, p0, Lcom/android/common/exif/h;->Ph:Lcom/android/common/exif/o;

    sget v4, Lcom/android/common/exif/o;->PQ:I

    invoke-virtual {v3, v4}, Lcom/android/common/exif/o;->QY(I)Lcom/android/common/exif/k;

    move-result-object v3

    .line 403
    if-nez v3, :cond_17d

    .line 404
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 405
    sget v2, Lcom/android/common/exif/o;->PQ:I

    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_17d
    iget-object v4, p0, Lcom/android/common/exif/h;->Ph:Lcom/android/common/exif/o;

    .line 408
    sget v5, Lcom/android/common/exif/o;->PR:I

    .line 407
    invoke-virtual {v4, v5}, Lcom/android/common/exif/o;->QY(I)Lcom/android/common/exif/k;

    move-result-object v4

    .line 409
    if-nez v4, :cond_1a3

    .line 410
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No definition for crucial exif tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 411
    sget v2, Lcom/android/common/exif/o;->PR:I

    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1a3
    new-array v5, v1, [J

    move v1, v2

    .line 414
    :goto_1a6
    iget-object v2, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v2}, Lcom/android/common/exif/a;->Or()I

    move-result v2

    if-ge v1, v2, :cond_1bb

    .line 415
    iget-object v2, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v2, v1}, Lcom/android/common/exif/a;->Oq(I)[B

    move-result-object v2

    array-length v2, v2

    int-to-long v6, v2

    aput-wide v6, v5, v1

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a6

    .line 417
    :cond_1bb
    invoke-virtual {v4, v5}, Lcom/android/common/exif/k;->PN([J)Z

    .line 418
    invoke-virtual {v0, v3}, Lcom/android/common/exif/p;->Ry(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 419
    invoke-virtual {v0, v4}, Lcom/android/common/exif/p;->Ry(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 421
    sget v1, Lcom/android/common/exif/o;->PO:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/exif/p;->Rz(S)V

    .line 423
    sget v1, Lcom/android/common/exif/o;->PP:I

    .line 422
    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/exif/p;->Rz(S)V

    goto/16 :goto_13c

    .line 424
    :cond_1d8
    if-eqz v0, :cond_13c

    .line 426
    sget v1, Lcom/android/common/exif/o;->PQ:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/exif/p;->Rz(S)V

    .line 427
    sget v1, Lcom/android/common/exif/o;->PR:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/exif/p;->Rz(S)V

    .line 428
    sget v1, Lcom/android/common/exif/o;->PO:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/exif/p;->Rz(S)V

    .line 430
    sget v1, Lcom/android/common/exif/o;->PP:I

    .line 429
    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/exif/p;->Rz(S)V

    goto/16 :goto_13c
.end method

.method private Pm(I[BII)I
    .registers 6

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int v0, p1, v0

    .line 108
    if-le p4, v0, :cond_b

    move p4, v0

    .line 109
    :cond_b
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 110
    return p4
.end method

.method private Po(Lcom/android/common/exif/a;)Ljava/util/ArrayList;
    .registers 7

    .prologue
    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-virtual {p1}, Lcom/android/common/exif/a;->Ol()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/exif/k;

    .line 246
    invoke-virtual {v0}, Lcom/android/common/exif/k;->PS()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    invoke-virtual {v0}, Lcom/android/common/exif/k;->PJ()S

    move-result v3

    invoke-static {v3}, Lcom/android/common/exif/o;->QX(S)Z

    move-result v3

    if-nez v3, :cond_d

    .line 247
    invoke-virtual {v0}, Lcom/android/common/exif/k;->PJ()S

    move-result v3

    invoke-virtual {v0}, Lcom/android/common/exif/k;->Px()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Lcom/android/common/exif/a;->Ov(SI)V

    .line 248
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 251
    :cond_38
    return-object v1
.end method

.method private Pp(Lcom/android/common/exif/l;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 265
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/common/exif/h;->Pr(Lcom/android/common/exif/p;Lcom/android/common/exif/l;)V

    .line 266
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/common/exif/h;->Pr(Lcom/android/common/exif/p;Lcom/android/common/exif/l;)V

    .line 267
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_21

    .line 269
    invoke-direct {p0, v0, p1}, Lcom/android/common/exif/h;->Pr(Lcom/android/common/exif/p;Lcom/android/common/exif/l;)V

    .line 271
    :cond_21
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_2d

    .line 273
    invoke-direct {p0, v0, p1}, Lcom/android/common/exif/h;->Pr(Lcom/android/common/exif/p;Lcom/android/common/exif/l;)V

    .line 275
    :cond_2d
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v0, v2}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_3e

    .line 277
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v0, v2}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/common/exif/h;->Pr(Lcom/android/common/exif/p;Lcom/android/common/exif/l;)V

    .line 264
    :cond_3e
    return-void
.end method

.method private Pq()V
    .registers 5

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    if-nez v0, :cond_5

    .line 211
    return-void

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-direct {p0, v0}, Lcom/android/common/exif/h;->Po(Lcom/android/common/exif/a;)Ljava/util/ArrayList;

    move-result-object v0

    .line 217
    invoke-direct {p0}, Lcom/android/common/exif/h;->Pl()V

    .line 218
    invoke-direct {p0}, Lcom/android/common/exif/h;->Pj()I

    move-result v1

    .line 219
    add-int/lit8 v2, v1, 0x8

    const v3, 0xffff

    if-le v2, v3, :cond_22

    .line 220
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Exif header is too large (>64Kb)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_22
    new-instance v2, Lcom/android/common/exif/l;

    iget-object v3, p0, Lcom/android/common/exif/h;->out:Ljava/io/OutputStream;

    invoke-direct {v2, v3}, Lcom/android/common/exif/l;-><init>(Ljava/io/OutputStream;)V

    .line 223
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Lcom/android/common/exif/l;->Qm(Ljava/nio/ByteOrder;)Lcom/android/common/exif/l;

    .line 224
    const/16 v3, -0x1f

    invoke-virtual {v2, v3}, Lcom/android/common/exif/l;->Qn(S)Lcom/android/common/exif/l;

    .line 225
    add-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Lcom/android/common/exif/l;->Qn(S)Lcom/android/common/exif/l;

    .line 226
    const v1, 0x45786966

    invoke-virtual {v2, v1}, Lcom/android/common/exif/l;->Qo(I)Lcom/android/common/exif/l;

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/android/common/exif/l;->Qn(S)Lcom/android/common/exif/l;

    .line 228
    iget-object v1, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v1}, Lcom/android/common/exif/a;->Om()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v3, :cond_81

    .line 229
    const/16 v1, 0x4d4d

    invoke-virtual {v2, v1}, Lcom/android/common/exif/l;->Qn(S)Lcom/android/common/exif/l;

    .line 233
    :goto_52
    iget-object v1, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v1}, Lcom/android/common/exif/a;->Om()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/common/exif/l;->Qm(Ljava/nio/ByteOrder;)Lcom/android/common/exif/l;

    .line 234
    const/16 v1, 0x2a

    invoke-virtual {v2, v1}, Lcom/android/common/exif/l;->Qn(S)Lcom/android/common/exif/l;

    .line 235
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Lcom/android/common/exif/l;->Qo(I)Lcom/android/common/exif/l;

    .line 236
    invoke-direct {p0, v2}, Lcom/android/common/exif/h;->Pp(Lcom/android/common/exif/l;)V

    .line 237
    invoke-direct {p0, v2}, Lcom/android/common/exif/h;->Pt(Lcom/android/common/exif/l;)V

    .line 238
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/exif/k;

    .line 239
    iget-object v2, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v2, v0}, Lcom/android/common/exif/a;->Oj(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    goto :goto_6f

    .line 231
    :cond_81
    const/16 v1, 0x4949

    invoke-virtual {v2, v1}, Lcom/android/common/exif/l;->Qn(S)Lcom/android/common/exif/l;

    goto :goto_52

    .line 209
    :cond_87
    return-void
.end method

.method private Pr(Lcom/android/common/exif/p;Lcom/android/common/exif/l;)V
    .registers 10

    .prologue
    const/4 v6, 0x4

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p1}, Lcom/android/common/exif/p;->RA()[Lcom/android/common/exif/k;

    move-result-object v3

    .line 284
    array-length v1, v3

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcom/android/common/exif/l;->Qn(S)Lcom/android/common/exif/l;

    .line 285
    array-length v4, v3

    move v2, v0

    :goto_d
    if-ge v2, v4, :cond_49

    aget-object v1, v3, v2

    .line 286
    invoke-virtual {v1}, Lcom/android/common/exif/k;->PJ()S

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/common/exif/l;->Qn(S)Lcom/android/common/exif/l;

    .line 287
    invoke-virtual {v1}, Lcom/android/common/exif/k;->PA()S

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/common/exif/l;->Qn(S)Lcom/android/common/exif/l;

    .line 288
    invoke-virtual {v1}, Lcom/android/common/exif/k;->Py()I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/common/exif/l;->Qo(I)Lcom/android/common/exif/l;

    .line 292
    invoke-virtual {v1}, Lcom/android/common/exif/k;->PE()I

    move-result v5

    if-le v5, v6, :cond_37

    .line 293
    invoke-virtual {v1}, Lcom/android/common/exif/k;->PC()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/common/exif/l;->Qo(I)Lcom/android/common/exif/l;

    .line 285
    :cond_33
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_d

    .line 295
    :cond_37
    invoke-static {v1, p2}, Lcom/android/common/exif/h;->Ps(Lcom/android/common/exif/k;Lcom/android/common/exif/l;)V

    .line 296
    invoke-virtual {v1}, Lcom/android/common/exif/k;->PE()I

    move-result v1

    rsub-int/lit8 v5, v1, 0x4

    move v1, v0

    :goto_41
    if-ge v1, v5, :cond_33

    .line 297
    invoke-virtual {p2, v0}, Lcom/android/common/exif/l;->write(I)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 301
    :cond_49
    invoke-virtual {p1}, Lcom/android/common/exif/p;->RC()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/common/exif/l;->Qo(I)Lcom/android/common/exif/l;

    .line 302
    array-length v1, v3

    :goto_51
    if-ge v0, v1, :cond_61

    aget-object v2, v3, v0

    .line 303
    invoke-virtual {v2}, Lcom/android/common/exif/k;->PE()I

    move-result v4

    if-le v4, v6, :cond_5e

    .line 304
    invoke-static {v2, p2}, Lcom/android/common/exif/h;->Ps(Lcom/android/common/exif/k;Lcom/android/common/exif/l;)V

    .line 302
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 282
    :cond_61
    return-void
.end method

.method static Ps(Lcom/android/common/exif/k;Lcom/android/common/exif/l;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-virtual {p0}, Lcom/android/common/exif/k;->PA()S

    move-result v1

    packed-switch v1, :pswitch_data_64

    .line 481
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 484
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/common/exif/k;->PQ()[B

    move-result-object v1

    .line 485
    array-length v2, v1

    invoke-virtual {p0}, Lcom/android/common/exif/k;->Py()I

    move-result v3

    if-ne v2, v3, :cond_1d

    .line 486
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-byte v0, v1, v2

    .line 487
    invoke-virtual {p1, v1}, Lcom/android/common/exif/l;->write([B)V

    goto :goto_8

    .line 489
    :cond_1d
    invoke-virtual {p1, v1}, Lcom/android/common/exif/l;->write([B)V

    .line 490
    invoke-virtual {p1, v0}, Lcom/android/common/exif/l;->write(I)V

    goto :goto_8

    .line 495
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/common/exif/k;->Py()I

    move-result v1

    :goto_28
    if-ge v0, v1, :cond_8

    .line 496
    invoke-virtual {p0, v0}, Lcom/android/common/exif/k;->PB(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/android/common/exif/l;->Qo(I)Lcom/android/common/exif/l;

    .line 495
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 501
    :pswitch_35
    invoke-virtual {p0}, Lcom/android/common/exif/k;->Py()I

    move-result v1

    :goto_39
    if-ge v0, v1, :cond_8

    .line 502
    invoke-virtual {p0, v0}, Lcom/android/common/exif/k;->PR(I)Lcom/android/common/exif/m;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/common/exif/l;->Qp(Lcom/android/common/exif/m;)Lcom/android/common/exif/l;

    .line 501
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 507
    :pswitch_45
    invoke-virtual {p0}, Lcom/android/common/exif/k;->Py()I

    move-result v0

    new-array v0, v0, [B

    .line 508
    invoke-virtual {p0, v0}, Lcom/android/common/exif/k;->Pz([B)V

    .line 509
    invoke-virtual {p1, v0}, Lcom/android/common/exif/l;->write([B)V

    goto :goto_8

    .line 512
    :pswitch_52
    invoke-virtual {p0}, Lcom/android/common/exif/k;->Py()I

    move-result v1

    :goto_56
    if-ge v0, v1, :cond_8

    .line 513
    invoke-virtual {p0, v0}, Lcom/android/common/exif/k;->PB(I)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p1, v2}, Lcom/android/common/exif/l;->Qn(S)Lcom/android/common/exif/l;

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 482
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_45
        :pswitch_9
        :pswitch_52
        :pswitch_24
        :pswitch_35
        :pswitch_8
        :pswitch_45
        :pswitch_8
        :pswitch_24
        :pswitch_35
    .end packed-switch
.end method

.method private Pt(Lcom/android/common/exif/l;)V
    .registers 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v0}, Lcom/android/common/exif/a;->Ot()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 256
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v0}, Lcom/android/common/exif/a;->On()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/common/exif/l;->write([B)V

    .line 254
    :cond_11
    return-void

    .line 257
    :cond_12
    iget-object v0, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v0}, Lcom/android/common/exif/a;->Ou()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 258
    const/4 v0, 0x0

    :goto_1b
    iget-object v1, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v1}, Lcom/android/common/exif/a;->Or()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 259
    iget-object v1, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    invoke-virtual {v1, v0}, Lcom/android/common/exif/a;->Oq(I)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/common/exif/l;->write([B)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method


# virtual methods
.method protected Pn(Lcom/android/common/exif/a;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/common/exif/h;->Pg:Lcom/android/common/exif/a;

    .line 94
    return-void
.end method

.method public write(I)V
    .registers 5

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/common/exif/h;->Pi:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 198
    iget-object v0, p0, Lcom/android/common/exif/h;->Pi:[B

    invoke-virtual {p0, v0}, Lcom/android/common/exif/h;->write([B)V

    .line 196
    return-void
.end method

.method public write([B)V
    .registers 4

    .prologue
    .line 206
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/common/exif/h;->write([BII)V

    .line 205
    return-void
.end method

.method public write([BII)V
    .registers 10

    .prologue
    const v5, 0xffff

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 119
    :goto_6
    iget v0, p0, Lcom/android/common/exif/h;->Pf:I

    if-gtz v0, :cond_e

    iget v0, p0, Lcom/android/common/exif/h;->Pe:I

    if-lez v0, :cond_3a

    .line 120
    :cond_e
    if-lez p3, :cond_3e

    .line 121
    iget v0, p0, Lcom/android/common/exif/h;->Pf:I

    if-lez v0, :cond_21

    .line 122
    iget v0, p0, Lcom/android/common/exif/h;->Pf:I

    if-le p3, v0, :cond_46

    iget v0, p0, Lcom/android/common/exif/h;->Pf:I

    .line 123
    :goto_1a
    sub-int/2addr p3, v0

    .line 124
    iget v1, p0, Lcom/android/common/exif/h;->Pf:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/common/exif/h;->Pf:I

    .line 125
    add-int/2addr p2, v0

    .line 127
    :cond_21
    iget v0, p0, Lcom/android/common/exif/h;->Pe:I

    if-lez v0, :cond_37

    .line 128
    iget v0, p0, Lcom/android/common/exif/h;->Pe:I

    if-le p3, v0, :cond_48

    iget v0, p0, Lcom/android/common/exif/h;->Pe:I

    .line 129
    :goto_2b
    iget-object v1, p0, Lcom/android/common/exif/h;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 130
    sub-int/2addr p3, v0

    .line 131
    iget v1, p0, Lcom/android/common/exif/h;->Pe:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/common/exif/h;->Pe:I

    .line 132
    add-int/2addr p2, v0

    .line 134
    :cond_37
    if-nez p3, :cond_4a

    .line 135
    return-void

    .line 119
    :cond_3a
    iget v0, p0, Lcom/android/common/exif/h;->mState:I

    if-ne v0, v3, :cond_e

    .line 186
    :cond_3e
    if-lez p3, :cond_45

    .line 187
    iget-object v0, p0, Lcom/android/common/exif/h;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 118
    :cond_45
    return-void

    :cond_46
    move v0, p3

    .line 122
    goto :goto_1a

    :cond_48
    move v0, p3

    .line 128
    goto :goto_2b

    .line 137
    :cond_4a
    iget v0, p0, Lcom/android/common/exif/h;->mState:I

    packed-switch v0, :pswitch_data_10e

    goto :goto_6

    .line 139
    :pswitch_50
    invoke-direct {p0, v3, p1, p2, p3}, Lcom/android/common/exif/h;->Pm(I[BII)I

    move-result v0

    .line 140
    add-int/2addr p2, v0

    .line 141
    sub-int/2addr p3, v0

    .line 142
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, v3, :cond_5f

    .line 143
    return-void

    .line 145
    :cond_5f
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 146
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v1, -0x28

    if-eq v0, v1, :cond_77

    .line 147
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid jpeg image, cannot write exif"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_77
    iget-object v0, p0, Lcom/android/common/exif/h;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 150
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/exif/h;->mState:I

    .line 151
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 152
    invoke-direct {p0}, Lcom/android/common/exif/h;->Pq()V

    goto/16 :goto_6

    .line 157
    :pswitch_8f
    invoke-direct {p0, v4, p1, p2, p3}, Lcom/android/common/exif/h;->Pm(I[BII)I

    move-result v0

    .line 158
    add-int/2addr p2, v0

    .line 159
    sub-int/2addr p3, v0

    .line 161
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ne v0, v3, :cond_b7

    .line 162
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 163
    const/16 v1, -0x27

    if-ne v0, v1, :cond_b7

    .line 164
    iget-object v0, p0, Lcom/android/common/exif/h;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 165
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 168
    :cond_b7
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-ge v0, v4, :cond_c0

    .line 169
    return-void

    .line 171
    :cond_c0
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 172
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 173
    const/16 v1, -0x1f

    if-ne v0, v1, :cond_e3

    .line 174
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/common/exif/h;->Pf:I

    .line 175
    iput v3, p0, Lcom/android/common/exif/h;->mState:I

    .line 183
    :goto_dc
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto/16 :goto_6

    .line 176
    :cond_e3
    invoke-static {v0}, Lcom/android/common/exif/q;->RF(S)Z

    move-result v0

    if-nez v0, :cond_100

    .line 177
    iget-object v0, p0, Lcom/android/common/exif/h;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 178
    iget-object v0, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    and-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/common/exif/h;->Pe:I

    goto :goto_dc

    .line 180
    :cond_100
    iget-object v0, p0, Lcom/android/common/exif/h;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/common/exif/h;->Pd:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 181
    iput v3, p0, Lcom/android/common/exif/h;->mState:I

    goto :goto_dc

    .line 137
    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_50
        :pswitch_8f
    .end packed-switch
.end method
