.class public Lcom/fotonation/utils/FNImage;
.super Lcom/fotonation/utils/Referenced;
.source "SourceFile"


# instance fields
.field public data:[B

.field public format:Lcom/fotonation/utils/FNImage$Format;

.field public height:I

.field public orientation:I

.field public stride:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 474
    invoke-direct {p0}, Lcom/fotonation/utils/Referenced;-><init>()V

    .line 475
    iput v1, p0, Lcom/fotonation/utils/FNImage;->width:I

    .line 476
    iput v1, p0, Lcom/fotonation/utils/FNImage;->height:I

    .line 477
    sget-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_UNKNOWN:Lcom/fotonation/utils/FNImage$Format;

    iput-object v0, p0, Lcom/fotonation/utils/FNImage;->format:Lcom/fotonation/utils/FNImage$Format;

    .line 478
    iput v1, p0, Lcom/fotonation/utils/FNImage;->orientation:I

    .line 479
    iput v1, p0, Lcom/fotonation/utils/FNImage;->stride:I

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fotonation/utils/FNImage;->data:[B

    .line 474
    return-void
.end method

.method public static Create(IILcom/fotonation/utils/FNImage$Format;)Lcom/fotonation/utils/FNImage;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 496
    if-lez p0, :cond_5

    if-gtz p1, :cond_6

    .line 497
    :cond_5
    return-object v1

    .line 496
    :cond_6
    sget-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_UNKNOWN:Lcom/fotonation/utils/FNImage$Format;

    if-eq p2, v0, :cond_5

    .line 501
    :try_start_a
    new-instance v0, Lcom/fotonation/utils/FNImage;

    invoke-direct {v0}, Lcom/fotonation/utils/FNImage;-><init>()V

    .line 502
    iput-object p2, v0, Lcom/fotonation/utils/FNImage;->format:Lcom/fotonation/utils/FNImage$Format;

    .line 503
    iput p0, v0, Lcom/fotonation/utils/FNImage;->width:I

    .line 504
    iput p1, v0, Lcom/fotonation/utils/FNImage;->height:I

    .line 505
    const/4 v2, 0x0

    invoke-virtual {p2, p0, v2}, Lcom/fotonation/utils/FNImage$Format;->GetLineSize(II)I

    move-result v2

    iput v2, v0, Lcom/fotonation/utils/FNImage;->stride:I

    .line 506
    invoke-virtual {p2, p0, p1}, Lcom/fotonation/utils/FNImage$Format;->GetBufferSize(II)I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/fotonation/utils/FNImage;->data:[B
    :try_end_24
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_24} :catch_25

    .line 511
    :goto_24
    return-object v0

    .line 508
    :catch_25
    move-exception v0

    move-object v0, v1

    .line 509
    goto :goto_24
.end method

.method public static CreateBGRA8888_From_Bitmap(Landroid/graphics/Bitmap;)Lcom/fotonation/utils/FNImage;
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 529
    if-nez p0, :cond_5

    .line 530
    return-object v0

    .line 532
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 534
    sget-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_BGRA8888:Lcom/fotonation/utils/FNImage$Format;

    invoke-static {v3, v7, v0}, Lcom/fotonation/utils/FNImage;->Create(IILcom/fotonation/utils/FNImage$Format;)Lcom/fotonation/utils/FNImage;

    move-result-object v8

    .line 535
    if-eqz v8, :cond_55

    .line 536
    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 537
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v2

    .line 539
    :goto_21
    array-length v3, v1

    if-ge v0, v3, :cond_55

    .line 540
    aget v3, v1, v0

    .line 541
    iget-object v4, v8, Lcom/fotonation/utils/FNImage;->data:[B

    add-int/lit8 v5, v2, 0x1

    ushr-int/lit8 v6, v3, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    .line 542
    iget-object v2, v8, Lcom/fotonation/utils/FNImage;->data:[B

    add-int/lit8 v4, v5, 0x1

    ushr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    .line 543
    iget-object v2, v8, Lcom/fotonation/utils/FNImage;->data:[B

    add-int/lit8 v5, v4, 0x1

    ushr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v4

    .line 544
    iget-object v4, v8, Lcom/fotonation/utils/FNImage;->data:[B

    add-int/lit8 v2, v5, 0x1

    ushr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    .line 539
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 548
    :cond_55
    return-object v8
.end method

.method public static LoadFromRaw(Ljava/lang/String;IILcom/fotonation/utils/FNImage$Format;)Lcom/fotonation/utils/FNImage;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 595
    invoke-static {p1, p2, p3}, Lcom/fotonation/utils/FNImage;->Create(IILcom/fotonation/utils/FNImage$Format;)Lcom/fotonation/utils/FNImage;

    move-result-object v0

    .line 596
    if-eqz v0, :cond_1d

    .line 598
    :try_start_7
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v2, v0, Lcom/fotonation/utils/FNImage;->data:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 600
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_18

    .line 601
    return-object v0

    .line 602
    :catch_18
    move-exception v0

    .line 603
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 604
    return-object v3

    .line 608
    :cond_1d
    return-object v3
.end method


# virtual methods
.method public GetSize()Lcom/fotonation/utils/Size;
    .registers 4

    .prologue
    .line 518
    new-instance v0, Lcom/fotonation/utils/Size;

    iget v1, p0, Lcom/fotonation/utils/FNImage;->width:I

    iget v2, p0, Lcom/fotonation/utils/FNImage;->height:I

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/Size;-><init>(II)V

    return-object v0
.end method

.method public Release()I
    .registers 3

    .prologue
    .line 557
    invoke-super {p0}, Lcom/fotonation/utils/Referenced;->Release()I

    move-result v0

    .line 558
    if-nez v0, :cond_9

    .line 559
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fotonation/utils/FNImage;->data:[B

    .line 560
    :cond_9
    return v0
.end method

.method public SaveAsRaw(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 586
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v1, p0, Lcom/fotonation/utils/FNImage;->data:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 588
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    .line 584
    :goto_10
    return-void

    .line 589
    :catch_11
    move-exception v0

    .line 590
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10
.end method

.method public shallowCopy()Lcom/fotonation/utils/FNImage;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 570
    :try_start_1
    new-instance v0, Lcom/fotonation/utils/FNImage;

    invoke-direct {v0}, Lcom/fotonation/utils/FNImage;-><init>()V

    .line 571
    iget-object v2, p0, Lcom/fotonation/utils/FNImage;->format:Lcom/fotonation/utils/FNImage$Format;

    iput-object v2, v0, Lcom/fotonation/utils/FNImage;->format:Lcom/fotonation/utils/FNImage$Format;

    .line 572
    iget v2, p0, Lcom/fotonation/utils/FNImage;->width:I

    iput v2, v0, Lcom/fotonation/utils/FNImage;->width:I

    .line 573
    iget v2, p0, Lcom/fotonation/utils/FNImage;->height:I

    iput v2, v0, Lcom/fotonation/utils/FNImage;->height:I

    .line 574
    iget v2, p0, Lcom/fotonation/utils/FNImage;->stride:I

    iput v2, v0, Lcom/fotonation/utils/FNImage;->stride:I

    .line 575
    iget-object v2, p0, Lcom/fotonation/utils/FNImage;->data:[B

    iput-object v2, v0, Lcom/fotonation/utils/FNImage;->data:[B
    :try_end_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 580
    :goto_1a
    return-object v0

    .line 577
    :catch_1b
    move-exception v0

    move-object v0, v1

    .line 578
    goto :goto_1a
.end method
