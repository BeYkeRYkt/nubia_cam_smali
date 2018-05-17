.class Lcom/android/common/exif/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Oq:S

.field private static final Or:S

.field private static final Os:S

.field private static final Ot:S

.field private static final Ou:S

.field private static final Ov:S

.field private static final Ow:S

.field private static final Ox:Ljava/nio/charset/Charset;


# instance fields
.field private final OA:Ljava/util/TreeMap;

.field private OB:[B

.field private OC:I

.field private OD:I

.field private OE:I

.field private OF:Lcom/android/common/exif/c;

.field private final OG:Lcom/android/common/exif/o;

.field private OH:Lcom/android/common/exif/k;

.field private OI:Z

.field private OJ:I

.field private OK:I

.field private final OL:I

.field private OM:Lcom/android/common/exif/k;

.field private ON:Lcom/android/common/exif/k;

.field private OO:I

.field private final OP:Lcom/android/common/exif/n;

.field private Oy:I

.field private Oz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 142
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/common/exif/b;->Ox:Ljava/nio/charset/Charset;

    .line 166
    sget v0, Lcom/android/common/exif/o;->PL:I

    .line 165
    invoke-static {v0}, Lcom/android/common/exif/o;->QK(I)S

    move-result v0

    sput-short v0, Lcom/android/common/exif/b;->Oq:S

    .line 167
    sget v0, Lcom/android/common/exif/o;->PM:I

    invoke-static {v0}, Lcom/android/common/exif/o;->QK(I)S

    move-result v0

    sput-short v0, Lcom/android/common/exif/b;->Or:S

    .line 169
    sget v0, Lcom/android/common/exif/o;->PN:I

    .line 168
    invoke-static {v0}, Lcom/android/common/exif/o;->QK(I)S

    move-result v0

    sput-short v0, Lcom/android/common/exif/b;->Os:S

    .line 171
    sget v0, Lcom/android/common/exif/o;->PO:I

    .line 170
    invoke-static {v0}, Lcom/android/common/exif/o;->QK(I)S

    move-result v0

    sput-short v0, Lcom/android/common/exif/b;->Ot:S

    .line 173
    sget v0, Lcom/android/common/exif/o;->PP:I

    .line 172
    invoke-static {v0}, Lcom/android/common/exif/o;->QK(I)S

    move-result v0

    sput-short v0, Lcom/android/common/exif/b;->Ou:S

    .line 175
    sget v0, Lcom/android/common/exif/o;->PQ:I

    .line 174
    invoke-static {v0}, Lcom/android/common/exif/o;->QK(I)S

    move-result v0

    sput-short v0, Lcom/android/common/exif/b;->Ow:S

    .line 177
    sget v0, Lcom/android/common/exif/o;->PR:I

    .line 176
    invoke-static {v0}, Lcom/android/common/exif/o;->QK(I)S

    move-result v0

    sput-short v0, Lcom/android/common/exif/b;->Ov:S

    .line 69
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcom/android/common/exif/o;)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput v4, p0, Lcom/android/common/exif/b;->OD:I

    .line 149
    iput v4, p0, Lcom/android/common/exif/b;->OJ:I

    .line 157
    iput-boolean v4, p0, Lcom/android/common/exif/b;->Oz:Z

    .line 159
    iput v4, p0, Lcom/android/common/exif/b;->OK:I

    .line 179
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    .line 203
    if-nez p1, :cond_1e

    .line 204
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Null argument inputStream to ExifParser"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_1e
    iput-object p3, p0, Lcom/android/common/exif/b;->OG:Lcom/android/common/exif/o;

    .line 210
    invoke-direct {p0, p1}, Lcom/android/common/exif/b;->Pc(Ljava/io/InputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/exif/b;->Oz:Z

    .line 211
    new-instance v0, Lcom/android/common/exif/n;

    invoke-direct {v0, p1}, Lcom/android/common/exif/n;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    .line 212
    iput p2, p0, Lcom/android/common/exif/b;->OL:I

    .line 213
    iget-boolean v0, p0, Lcom/android/common/exif/b;->Oz:Z

    if-nez v0, :cond_34

    .line 214
    return-void

    .line 217
    :cond_34
    invoke-direct {p0}, Lcom/android/common/exif/b;->OO()V

    .line 218
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0}, Lcom/android/common/exif/n;->Qt()J

    move-result-wide v0

    .line 219
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_5e

    .line 220
    new-instance v2, Lcom/android/common/exif/ExifInvalidFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/common/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_5e
    long-to-int v2, v0

    iput v2, p0, Lcom/android/common/exif/b;->OC:I

    .line 223
    iput v4, p0, Lcom/android/common/exif/b;->OE:I

    .line 224
    invoke-direct {p0, v4}, Lcom/android/common/exif/b;->OI(I)Z

    move-result v2

    if-nez v2, :cond_6f

    invoke-direct {p0}, Lcom/android/common/exif/b;->OK()Z

    move-result v2

    if-eqz v2, :cond_84

    .line 225
    :cond_6f
    invoke-direct {p0, v4, v0, v1}, Lcom/android/common/exif/b;->Pa(IJ)V

    .line 226
    const-wide/16 v2, 0x8

    cmp-long v2, v0, v2

    if-eqz v2, :cond_84

    .line 227
    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/common/exif/b;->OB:[B

    .line 228
    iget-object v0, p0, Lcom/android/common/exif/b;->OB:[B

    invoke-virtual {p0, v0}, Lcom/android/common/exif/b;->read([B)I

    .line 202
    :cond_84
    return-void
.end method

.method private OI(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    packed-switch p1, :pswitch_data_34

    .line 194
    return v1

    .line 184
    :pswitch_6
    iget v2, p0, Lcom/android/common/exif/b;->OL:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    .line 186
    :pswitch_f
    iget v2, p0, Lcom/android/common/exif/b;->OL:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_16

    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15

    .line 188
    :pswitch_18
    iget v2, p0, Lcom/android/common/exif/b;->OL:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1f

    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e

    .line 190
    :pswitch_21
    iget v2, p0, Lcom/android/common/exif/b;->OL:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_28

    :goto_27
    return v0

    :cond_28
    move v0, v1

    goto :goto_27

    .line 192
    :pswitch_2a
    iget v2, p0, Lcom/android/common/exif/b;->OL:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_31

    :goto_30
    return v0

    :cond_31
    move v0, v1

    goto :goto_30

    .line 182
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_18
        :pswitch_2a
        :pswitch_21
    .end packed-switch
.end method

.method private OJ()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 198
    iget v1, p0, Lcom/android/common/exif/b;->OL:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private OK()Z
    .registers 4

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 392
    iget v1, p0, Lcom/android/common/exif/b;->OE:I

    packed-switch v1, :pswitch_data_2c

    .line 403
    const/4 v0, 0x0

    return v0

    .line 394
    :pswitch_9
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/common/exif/b;->OI(I)Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/common/exif/b;->OI(I)Z

    move-result v1

    if-nez v1, :cond_21

    .line 395
    invoke-direct {p0, v2}, Lcom/android/common/exif/b;->OI(I)Z

    move-result v1

    .line 394
    if-nez v1, :cond_21

    .line 396
    invoke-direct {p0, v0}, Lcom/android/common/exif/b;->OI(I)Z

    move-result v0

    .line 394
    :cond_21
    return v0

    .line 398
    :pswitch_22
    invoke-direct {p0}, Lcom/android/common/exif/b;->OJ()Z

    move-result v0

    return v0

    .line 401
    :pswitch_27
    invoke-direct {p0, v2}, Lcom/android/common/exif/b;->OI(I)Z

    move-result v0

    return v0

    .line 392
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_22
        :pswitch_27
    .end packed-switch
.end method

.method protected static OM(Ljava/io/InputStream;Lcom/android/common/exif/o;)Lcom/android/common/exif/b;
    .registers 4

    .prologue
    .line 254
    new-instance v0, Lcom/android/common/exif/b;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcom/android/common/exif/b;-><init>(Ljava/io/InputStream;ILcom/android/common/exif/o;)V

    return-object v0
.end method

.method protected static ON(Ljava/io/InputStream;ILcom/android/common/exif/o;)Lcom/android/common/exif/b;
    .registers 4

    .prologue
    .line 241
    new-instance v0, Lcom/android/common/exif/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/common/exif/b;-><init>(Ljava/io/InputStream;ILcom/android/common/exif/o;)V

    return-object v0
.end method

.method private OO()V
    .registers 3

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0}, Lcom/android/common/exif/n;->Qx()S

    move-result v0

    .line 739
    const/16 v1, 0x4949

    if-ne v1, v0, :cond_24

    .line 740
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/android/common/exif/n;->Qy(Ljava/nio/ByteOrder;)V

    .line 747
    :goto_11
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0}, Lcom/android/common/exif/n;->Qx()S

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_39

    .line 748
    new-instance v0, Lcom/android/common/exif/ExifInvalidFormatException;

    const-string/jumbo v1, "Invalid TIFF header"

    invoke-direct {v0, v1}, Lcom/android/common/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_24
    const/16 v1, 0x4d4d

    if-ne v1, v0, :cond_30

    .line 742
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/android/common/exif/n;->Qy(Ljava/nio/ByteOrder;)V

    goto :goto_11

    .line 744
    :cond_30
    new-instance v0, Lcom/android/common/exif/ExifInvalidFormatException;

    const-string/jumbo v1, "Invalid TIFF header"

    invoke-direct {v0, v1}, Lcom/android/common/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_39
    return-void
.end method

.method private OU()Lcom/android/common/exif/k;
    .registers 13

    .prologue
    const-wide/32 v10, 0x7fffffff

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 534
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0}, Lcom/android/common/exif/n;->Qx()S

    move-result v1

    .line 535
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0}, Lcom/android/common/exif/n;->Qx()S

    move-result v2

    .line 536
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0}, Lcom/android/common/exif/n;->Qt()J

    move-result-wide v8

    .line 537
    cmp-long v0, v8, v10

    if-lez v0, :cond_24

    .line 538
    new-instance v0, Lcom/android/common/exif/ExifInvalidFormatException;

    .line 539
    const-string/jumbo v1, "Number of component is larger then Integer.MAX_VALUE"

    .line 538
    invoke-direct {v0, v1}, Lcom/android/common/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :cond_24
    invoke-static {v2}, Lcom/android/common/exif/k;->PD(S)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 543
    const-string/jumbo v0, "ExifParser"

    const-string/jumbo v3, "Tag %04x: Invalid data type %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Lcom/android/common/exif/n;->skip(J)J

    .line 545
    const/4 v0, 0x0

    return-object v0

    .line 548
    :cond_4f
    new-instance v0, Lcom/android/common/exif/k;

    long-to-int v3, v8

    iget v4, p0, Lcom/android/common/exif/b;->OE:I

    .line 549
    long-to-int v7, v8

    if-eqz v7, :cond_74

    .line 548
    :goto_57
    invoke-direct/range {v0 .. v5}, Lcom/android/common/exif/k;-><init>(SSIIZ)V

    .line 550
    invoke-virtual {v0}, Lcom/android/common/exif/k;->PE()I

    move-result v1

    .line 551
    const/4 v3, 0x4

    if-le v1, v3, :cond_95

    .line 552
    iget-object v1, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v1}, Lcom/android/common/exif/n;->Qt()J

    move-result-wide v4

    .line 553
    cmp-long v1, v4, v10

    if-lez v1, :cond_76

    .line 554
    new-instance v0, Lcom/android/common/exif/ExifInvalidFormatException;

    .line 555
    const-string/jumbo v1, "offset is larger then Integer.MAX_VALUE"

    .line 554
    invoke-direct {v0, v1}, Lcom/android/common/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    move v5, v6

    .line 549
    goto :goto_57

    .line 559
    :cond_76
    iget v1, p0, Lcom/android/common/exif/b;->OC:I

    int-to-long v10, v1

    cmp-long v1, v4, v10

    if-gez v1, :cond_90

    const/4 v1, 0x7

    if-ne v2, v1, :cond_90

    .line 560
    long-to-int v1, v8

    new-array v1, v1, [B

    .line 561
    iget-object v2, p0, Lcom/android/common/exif/b;->OB:[B

    long-to-int v3, v4

    add-int/lit8 v3, v3, -0x8

    .line 562
    long-to-int v4, v8

    .line 561
    invoke-static {v2, v3, v1, v6, v4}, Lcom/android/f/a;->btF([BI[BII)V

    .line 563
    invoke-virtual {v0, v1}, Lcom/android/common/exif/k;->PF([B)Z

    .line 578
    :goto_8f
    return-object v0

    .line 565
    :cond_90
    long-to-int v1, v4

    invoke-virtual {v0, v1}, Lcom/android/common/exif/k;->PG(I)V

    goto :goto_8f

    .line 568
    :cond_95
    invoke-virtual {v0}, Lcom/android/common/exif/k;->PH()Z

    move-result v2

    .line 570
    invoke-virtual {v0, v6}, Lcom/android/common/exif/k;->PI(Z)V

    .line 572
    invoke-virtual {p0, v0}, Lcom/android/common/exif/b;->OP(Lcom/android/common/exif/k;)V

    .line 573
    invoke-virtual {v0, v2}, Lcom/android/common/exif/k;->PI(Z)V

    .line 574
    iget-object v2, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/android/common/exif/n;->skip(J)J

    .line 576
    iget-object v1, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v1}, Lcom/android/common/exif/n;->Qu()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Lcom/android/common/exif/k;->PG(I)V

    goto :goto_8f
.end method

.method private OY(J)V
    .registers 8

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/common/exif/c;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/android/common/exif/c;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    return-void
.end method

.method private Oy(II)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 638
    iget-object v0, p0, Lcom/android/common/exif/b;->OG:Lcom/android/common/exif/o;

    invoke-virtual {v0}, Lcom/android/common/exif/o;->QM()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 639
    if-nez v0, :cond_e

    .line 640
    return v1

    .line 642
    :cond_e
    invoke-static {v0, p1}, Lcom/android/common/exif/o;->QN(II)Z

    move-result v0

    return v0
.end method

.method private Oz(Lcom/android/common/exif/k;)V
    .registers 9

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 587
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v1

    if-nez v1, :cond_b

    .line 588
    return-void

    .line 590
    :cond_b
    invoke-virtual {p1}, Lcom/android/common/exif/k;->PJ()S

    move-result v1

    .line 591
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Px()I

    move-result v2

    .line 592
    sget-short v3, Lcom/android/common/exif/b;->Oq:S

    if-ne v1, v3, :cond_33

    sget v3, Lcom/android/common/exif/o;->PL:I

    invoke-direct {p0, v2, v3}, Lcom/android/common/exif/b;->Oy(II)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 593
    invoke-direct {p0, v5}, Lcom/android/common/exif/b;->OI(I)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 594
    invoke-direct {p0, v4}, Lcom/android/common/exif/b;->OI(I)Z

    move-result v1

    .line 593
    if-eqz v1, :cond_32

    .line 595
    :cond_2b
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PB(I)J

    move-result-wide v0

    invoke-direct {p0, v5, v0, v1}, Lcom/android/common/exif/b;->Pa(IJ)V

    .line 585
    :cond_32
    :goto_32
    return-void

    .line 597
    :cond_33
    sget-short v3, Lcom/android/common/exif/b;->Or:S

    if-ne v1, v3, :cond_4d

    sget v3, Lcom/android/common/exif/o;->PM:I

    invoke-direct {p0, v2, v3}, Lcom/android/common/exif/b;->Oy(II)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 598
    invoke-direct {p0, v6}, Lcom/android/common/exif/b;->OI(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 599
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PB(I)J

    move-result-wide v0

    invoke-direct {p0, v6, v0, v1}, Lcom/android/common/exif/b;->Pa(IJ)V

    goto :goto_32

    .line 601
    :cond_4d
    sget-short v3, Lcom/android/common/exif/b;->Os:S

    if-ne v1, v3, :cond_67

    .line 602
    sget v3, Lcom/android/common/exif/o;->PN:I

    invoke-direct {p0, v2, v3}, Lcom/android/common/exif/b;->Oy(II)Z

    move-result v3

    .line 601
    if-eqz v3, :cond_67

    .line 603
    invoke-direct {p0, v4}, Lcom/android/common/exif/b;->OI(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 604
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PB(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcom/android/common/exif/b;->Pa(IJ)V

    goto :goto_32

    .line 606
    :cond_67
    sget-short v3, Lcom/android/common/exif/b;->Ot:S

    if-ne v1, v3, :cond_81

    .line 607
    sget v3, Lcom/android/common/exif/o;->PO:I

    invoke-direct {p0, v2, v3}, Lcom/android/common/exif/b;->Oy(II)Z

    move-result v3

    .line 606
    if-eqz v3, :cond_81

    .line 608
    invoke-direct {p0}, Lcom/android/common/exif/b;->OJ()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 609
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PB(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/common/exif/b;->OY(J)V

    goto :goto_32

    .line 611
    :cond_81
    sget-short v3, Lcom/android/common/exif/b;->Ou:S

    if-ne v1, v3, :cond_96

    .line 612
    sget v3, Lcom/android/common/exif/o;->PP:I

    invoke-direct {p0, v2, v3}, Lcom/android/common/exif/b;->Oy(II)Z

    move-result v3

    .line 611
    if-eqz v3, :cond_96

    .line 613
    invoke-direct {p0}, Lcom/android/common/exif/b;->OJ()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 614
    iput-object p1, p0, Lcom/android/common/exif/b;->OH:Lcom/android/common/exif/k;

    goto :goto_32

    .line 616
    :cond_96
    sget-short v3, Lcom/android/common/exif/b;->Ow:S

    if-ne v1, v3, :cond_e0

    sget v3, Lcom/android/common/exif/o;->PQ:I

    invoke-direct {p0, v2, v3}, Lcom/android/common/exif/b;->Oy(II)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 617
    invoke-direct {p0}, Lcom/android/common/exif/b;->OJ()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 618
    invoke-virtual {p1}, Lcom/android/common/exif/k;->PK()Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 619
    :goto_ae
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 620
    invoke-virtual {p1}, Lcom/android/common/exif/k;->PA()S

    move-result v1

    if-ne v1, v4, :cond_c4

    .line 621
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PB(I)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/common/exif/b;->Pb(IJ)V

    .line 619
    :goto_c1
    add-int/lit8 v0, v0, 0x1

    goto :goto_ae

    .line 623
    :cond_c4
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PB(I)J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/android/common/exif/b;->Pb(IJ)V

    goto :goto_c1

    .line 627
    :cond_cc
    iget-object v1, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/common/exif/k;->PC()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/common/exif/e;

    invoke-direct {v3, p1, v0}, Lcom/android/common/exif/e;-><init>(Lcom/android/common/exif/k;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_32

    .line 630
    :cond_e0
    sget-short v0, Lcom/android/common/exif/b;->Ov:S

    if-ne v1, v0, :cond_32

    .line 631
    sget v0, Lcom/android/common/exif/o;->PR:I

    invoke-direct {p0, v2, v0}, Lcom/android/common/exif/b;->Oy(II)Z

    move-result v0

    .line 630
    if-eqz v0, :cond_32

    .line 632
    invoke-direct {p0}, Lcom/android/common/exif/b;->OJ()Z

    move-result v0

    .line 630
    if-eqz v0, :cond_32

    .line 632
    invoke-virtual {p1}, Lcom/android/common/exif/k;->PK()Z

    move-result v0

    .line 630
    if-eqz v0, :cond_32

    .line 633
    iput-object p1, p0, Lcom/android/common/exif/b;->OM:Lcom/android/common/exif/k;

    goto/16 :goto_32
.end method

.method private Pa(IJ)V
    .registers 8

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/common/exif/d;

    invoke-direct {p0, p1}, Lcom/android/common/exif/b;->OI(I)Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/android/common/exif/d;-><init>(IZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    return-void
.end method

.method private Pb(IJ)V
    .registers 8

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    long-to-int v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/common/exif/c;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p1}, Lcom/android/common/exif/c;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    return-void
.end method

.method private Pc(Ljava/io/InputStream;)Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 754
    new-instance v2, Lcom/android/common/exif/n;

    invoke-direct {v2, p1}, Lcom/android/common/exif/n;-><init>(Ljava/io/InputStream;)V

    .line 755
    invoke-virtual {v2}, Lcom/android/common/exif/n;->Qx()S

    move-result v0

    const/16 v1, -0x28

    if-eq v0, v1, :cond_17

    .line 756
    new-instance v0, Lcom/android/common/exif/ExifInvalidFormatException;

    const-string/jumbo v1, "Invalid JPEG format"

    invoke-direct {v0, v1}, Lcom/android/common/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_17
    invoke-virtual {v2}, Lcom/android/common/exif/n;->Qx()S

    move-result v0

    move v1, v0

    .line 760
    :goto_1c
    const/16 v0, -0x27

    if-eq v1, v0, :cond_26

    .line 761
    invoke-static {v1}, Lcom/android/common/exif/q;->RF(S)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 786
    :cond_26
    return v6

    .line 762
    :cond_27
    invoke-virtual {v2}, Lcom/android/common/exif/n;->Qv()I

    move-result v0

    .line 765
    const/16 v3, -0x1f

    if-ne v1, v3, :cond_55

    .line 768
    const/16 v1, 0x8

    if-lt v0, v1, :cond_55

    .line 769
    invoke-virtual {v2}, Lcom/android/common/exif/n;->Qz()I

    move-result v1

    .line 770
    invoke-virtual {v2}, Lcom/android/common/exif/n;->Qx()S

    move-result v3

    .line 771
    add-int/lit8 v0, v0, -0x6

    .line 772
    const v4, 0x45786966

    if-ne v1, v4, :cond_55

    if-nez v3, :cond_55

    .line 773
    invoke-virtual {v2}, Lcom/android/common/exif/n;->Qu()I

    move-result v1

    iput v1, p0, Lcom/android/common/exif/b;->OO:I

    .line 774
    iput v0, p0, Lcom/android/common/exif/b;->Oy:I

    .line 775
    iget v0, p0, Lcom/android/common/exif/b;->OO:I

    iget v1, p0, Lcom/android/common/exif/b;->Oy:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/exif/b;->OK:I

    .line 776
    const/4 v0, 0x1

    return v0

    .line 780
    :cond_55
    const/4 v1, 0x2

    if-lt v0, v1, :cond_66

    add-int/lit8 v1, v0, -0x2

    int-to-long v4, v1

    add-int/lit8 v0, v0, -0x2

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Lcom/android/common/exif/n;->skip(J)J

    move-result-wide v0

    cmp-long v0, v4, v0

    if-eqz v0, :cond_70

    .line 781
    :cond_66
    const-string/jumbo v0, "ExifParser"

    const-string/jumbo v1, "Invalid JPEG format."

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    return v6

    .line 784
    :cond_70
    invoke-virtual {v2}, Lcom/android/common/exif/n;->Qx()S

    move-result v0

    move v1, v0

    goto :goto_1c
.end method

.method private Pe(I)V
    .registers 6

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/common/exif/n;->Qw(J)V

    .line 498
    :goto_6
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_22

    .line 499
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_6

    .line 496
    :cond_22
    return-void
.end method


# virtual methods
.method protected OA()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0}, Lcom/android/common/exif/n;->QB()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method protected OB()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/android/common/exif/b;->OH:Lcom/android/common/exif/k;

    if-nez v0, :cond_6

    .line 491
    return v1

    .line 493
    :cond_6
    iget-object v0, p0, Lcom/android/common/exif/b;->OH:Lcom/android/common/exif/k;

    invoke-virtual {v0, v1}, Lcom/android/common/exif/k;->PB(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected OC()I
    .registers 2

    .prologue
    .line 452
    iget v0, p0, Lcom/android/common/exif/b;->OE:I

    return v0
.end method

.method protected OD()I
    .registers 2

    .prologue
    .line 790
    iget v0, p0, Lcom/android/common/exif/b;->OK:I

    return v0
.end method

.method protected OE()I
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/common/exif/b;->OF:Lcom/android/common/exif/c;

    iget v0, v0, Lcom/android/common/exif/c;->OQ:I

    return v0
.end method

.method protected OF()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lcom/android/common/exif/b;->OM:Lcom/android/common/exif/k;

    if-nez v0, :cond_6

    .line 481
    return v1

    .line 482
    :cond_6
    iget-object v0, p0, Lcom/android/common/exif/b;->OM:Lcom/android/common/exif/k;

    invoke-virtual {v0, v1}, Lcom/android/common/exif/k;->PB(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected OG()Lcom/android/common/exif/k;
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/common/exif/b;->ON:Lcom/android/common/exif/k;

    return-object v0
.end method

.method protected OH()I
    .registers 2

    .prologue
    .line 794
    iget v0, p0, Lcom/android/common/exif/b;->OO:I

    return v0
.end method

.method protected OL()I
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v1, 0x4

    const/4 v6, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 272
    iget-boolean v0, p0, Lcom/android/common/exif/b;->Oz:Z

    if-nez v0, :cond_b

    .line 273
    return v6

    .line 275
    :cond_b
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0}, Lcom/android/common/exif/n;->Qu()I

    move-result v0

    .line 276
    iget v2, p0, Lcom/android/common/exif/b;->OD:I

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/common/exif/b;->OJ:I

    mul-int/lit8 v3, v3, 0xc

    add-int/2addr v2, v3

    .line 277
    if-ge v0, v2, :cond_35

    .line 278
    invoke-direct {p0}, Lcom/android/common/exif/b;->OU()Lcom/android/common/exif/k;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/exif/b;->ON:Lcom/android/common/exif/k;

    .line 279
    iget-object v0, p0, Lcom/android/common/exif/b;->ON:Lcom/android/common/exif/k;

    if-nez v0, :cond_2b

    .line 280
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OL()I

    move-result v0

    return v0

    .line 282
    :cond_2b
    iget-boolean v0, p0, Lcom/android/common/exif/b;->OI:Z

    if-eqz v0, :cond_34

    .line 283
    iget-object v0, p0, Lcom/android/common/exif/b;->ON:Lcom/android/common/exif/k;

    invoke-direct {p0, v0}, Lcom/android/common/exif/b;->Oz(Lcom/android/common/exif/k;)V

    .line 285
    :cond_34
    return v4

    .line 286
    :cond_35
    if-ne v0, v2, :cond_52

    .line 288
    iget v0, p0, Lcom/android/common/exif/b;->OE:I

    if-nez v0, :cond_ba

    .line 289
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OV()J

    move-result-wide v0

    .line 290
    invoke-direct {p0, v4}, Lcom/android/common/exif/b;->OI(I)Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-direct {p0}, Lcom/android/common/exif/b;->OJ()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 291
    :cond_4b
    cmp-long v2, v0, v8

    if-eqz v2, :cond_52

    .line 292
    invoke-direct {p0, v4, v0, v1}, Lcom/android/common/exif/b;->Pa(IJ)V

    .line 312
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_194

    .line 313
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    .line 314
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 316
    :try_start_64
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/common/exif/b;->Pe(I)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_71} :catch_11b

    .line 322
    instance-of v0, v1, Lcom/android/common/exif/d;

    if-eqz v0, :cond_168

    move-object v0, v1

    .line 323
    check-cast v0, Lcom/android/common/exif/d;

    iget v0, v0, Lcom/android/common/exif/d;->OS:I

    iput v0, p0, Lcom/android/common/exif/b;->OE:I

    .line 324
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0}, Lcom/android/common/exif/n;->Qv()I

    move-result v0

    iput v0, p0, Lcom/android/common/exif/b;->OJ:I

    .line 325
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/common/exif/b;->OD:I

    .line 327
    iget v0, p0, Lcom/android/common/exif/b;->OJ:I

    mul-int/lit8 v0, v0, 0xc

    iget v2, p0, Lcom/android/common/exif/b;->OD:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iget v2, p0, Lcom/android/common/exif/b;->Oy:I

    if-le v0, v2, :cond_156

    .line 328
    const-string/jumbo v0, "ExifParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid size of IFD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/exif/b;->OE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return v6

    .line 298
    :cond_ba
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_195

    .line 299
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 300
    iget-object v2, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v2}, Lcom/android/common/exif/n;->Qu()I

    move-result v2

    .line 299
    sub-int/2addr v0, v2

    .line 302
    :goto_d9
    if-ge v0, v1, :cond_f7

    .line 303
    const-string/jumbo v1, "ExifParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid size of link to next IFD: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    .line 305
    :cond_f7
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OV()J

    move-result-wide v0

    .line 306
    cmp-long v2, v0, v8

    if-eqz v2, :cond_52

    .line 307
    const-string/jumbo v2, "ExifParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid link to next IFD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    .line 317
    :catch_11b
    move-exception v0

    .line 318
    const-string/jumbo v0, "ExifParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to skip to data at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 319
    const-string/jumbo v3, " for "

    .line 318
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 319
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 319
    const-string/jumbo v2, ", the file may be broken."

    .line 318
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    .line 332
    :cond_156
    invoke-direct {p0}, Lcom/android/common/exif/b;->OK()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/exif/b;->OI:Z

    .line 333
    check-cast v1, Lcom/android/common/exif/d;

    iget-boolean v0, v1, Lcom/android/common/exif/d;->OT:Z

    if-eqz v0, :cond_163

    .line 334
    return v5

    .line 336
    :cond_163
    invoke-virtual {p0}, Lcom/android/common/exif/b;->Pd()V

    goto/16 :goto_52

    .line 338
    :cond_168
    instance-of v0, v1, Lcom/android/common/exif/c;

    if-eqz v0, :cond_175

    .line 339
    check-cast v1, Lcom/android/common/exif/c;

    iput-object v1, p0, Lcom/android/common/exif/b;->OF:Lcom/android/common/exif/c;

    .line 340
    iget-object v0, p0, Lcom/android/common/exif/b;->OF:Lcom/android/common/exif/c;

    iget v0, v0, Lcom/android/common/exif/c;->OR:I

    return v0

    .line 342
    :cond_175
    check-cast v1, Lcom/android/common/exif/e;

    .line 343
    iget-object v0, v1, Lcom/android/common/exif/e;->OV:Lcom/android/common/exif/k;

    iput-object v0, p0, Lcom/android/common/exif/b;->ON:Lcom/android/common/exif/k;

    .line 344
    iget-object v0, p0, Lcom/android/common/exif/b;->ON:Lcom/android/common/exif/k;

    invoke-virtual {v0}, Lcom/android/common/exif/k;->PA()S

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_18e

    .line 345
    iget-object v0, p0, Lcom/android/common/exif/b;->ON:Lcom/android/common/exif/k;

    invoke-virtual {p0, v0}, Lcom/android/common/exif/b;->OP(Lcom/android/common/exif/k;)V

    .line 346
    iget-object v0, p0, Lcom/android/common/exif/b;->ON:Lcom/android/common/exif/k;

    invoke-direct {p0, v0}, Lcom/android/common/exif/b;->Oz(Lcom/android/common/exif/k;)V

    .line 348
    :cond_18e
    iget-boolean v0, v1, Lcom/android/common/exif/e;->OU:Z

    if-eqz v0, :cond_52

    .line 349
    const/4 v0, 0x2

    return v0

    .line 353
    :cond_194
    return v6

    :cond_195
    move v0, v1

    goto/16 :goto_d9
.end method

.method protected OP(Lcom/android/common/exif/k;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 647
    invoke-virtual {p1}, Lcom/android/common/exif/k;->PA()S

    move-result v0

    .line 648
    const/4 v2, 0x2

    if-eq v0, v2, :cond_b

    const/4 v2, 0x7

    if-ne v0, v2, :cond_88

    .line 650
    :cond_b
    :goto_b
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v2

    .line 651
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-lez v0, :cond_80

    .line 652
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v3}, Lcom/android/common/exif/n;->Qu()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_80

    .line 654
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 655
    instance-of v2, v0, Lcom/android/common/exif/c;

    if-eqz v2, :cond_8c

    .line 657
    const-string/jumbo v0, "ExifParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/common/exif/k;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 659
    const-string/jumbo v2, "ExifParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid thumbnail offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_80
    :goto_80
    invoke-virtual {p1}, Lcom/android/common/exif/k;->PA()S

    move-result v0

    packed-switch v0, :pswitch_data_1c6

    .line 645
    :goto_87
    :pswitch_87
    return-void

    .line 649
    :cond_88
    const/4 v2, 0x1

    if-ne v0, v2, :cond_80

    goto :goto_b

    .line 662
    :cond_8c
    instance-of v2, v0, Lcom/android/common/exif/d;

    if-eqz v2, :cond_101

    .line 663
    const-string/jumbo v2, "ExifParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Ifd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v0, Lcom/android/common/exif/d;

    iget v0, v0, Lcom/android/common/exif/d;->OS:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 664
    const-string/jumbo v3, " overlaps value for tag: \n"

    .line 663
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 664
    invoke-virtual {p1}, Lcom/android/common/exif/k;->toString()Ljava/lang/String;

    move-result-object v3

    .line 663
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_bd
    :goto_bd
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 671
    iget-object v2, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v2}, Lcom/android/common/exif/n;->Qu()I

    move-result v2

    .line 670
    sub-int/2addr v0, v2

    .line 672
    const-string/jumbo v2, "ExifParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid size of tag: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/common/exif/k;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 673
    const-string/jumbo v4, " setting count to: "

    .line 672
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PL(I)V

    goto :goto_80

    .line 665
    :cond_101
    instance-of v2, v0, Lcom/android/common/exif/e;

    if-eqz v2, :cond_bd

    .line 666
    const-string/jumbo v2, "ExifParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tag value for tag: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 667
    check-cast v0, Lcom/android/common/exif/e;

    iget-object v0, v0, Lcom/android/common/exif/e;->OV:Lcom/android/common/exif/k;

    invoke-virtual {v0}, Lcom/android/common/exif/k;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 668
    const-string/jumbo v3, " overlaps value for tag: \n"

    .line 666
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 668
    invoke-virtual {p1}, Lcom/android/common/exif/k;->toString()Ljava/lang/String;

    move-result-object v3

    .line 666
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bd

    .line 682
    :pswitch_137
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v0

    new-array v0, v0, [B

    .line 683
    invoke-virtual {p0, v0}, Lcom/android/common/exif/b;->read([B)I

    .line 684
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PF([B)Z

    goto/16 :goto_87

    .line 688
    :pswitch_145
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/exif/b;->OS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PM(Ljava/lang/String;)Z

    goto/16 :goto_87

    .line 691
    :pswitch_152
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v0

    new-array v0, v0, [J

    .line 692
    array-length v2, v0

    :goto_159
    if-ge v1, v2, :cond_164

    .line 693
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OV()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 692
    add-int/lit8 v1, v1, 0x1

    goto :goto_159

    .line 695
    :cond_164
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PN([J)Z

    goto/16 :goto_87

    .line 699
    :pswitch_169
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v0

    new-array v0, v0, [Lcom/android/common/exif/m;

    .line 700
    array-length v2, v0

    :goto_170
    if-ge v1, v2, :cond_17b

    .line 701
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OW()Lcom/android/common/exif/m;

    move-result-object v3

    aput-object v3, v0, v1

    .line 700
    add-int/lit8 v1, v1, 0x1

    goto :goto_170

    .line 703
    :cond_17b
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PO([Lcom/android/common/exif/m;)Z

    goto/16 :goto_87

    .line 707
    :pswitch_180
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v0

    new-array v0, v0, [I

    .line 708
    array-length v2, v0

    :goto_187
    if-ge v1, v2, :cond_192

    .line 709
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OX()I

    move-result v3

    aput v3, v0, v1

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_187

    .line 711
    :cond_192
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PP([I)Z

    goto/16 :goto_87

    .line 715
    :pswitch_197
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v0

    new-array v0, v0, [I

    .line 716
    array-length v2, v0

    :goto_19e
    if-ge v1, v2, :cond_1a9

    .line 717
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OQ()I

    move-result v3

    aput v3, v0, v1

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_19e

    .line 719
    :cond_1a9
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PP([I)Z

    goto/16 :goto_87

    .line 723
    :pswitch_1ae
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v0

    new-array v2, v0, [Lcom/android/common/exif/m;

    .line 724
    array-length v3, v2

    move v0, v1

    :goto_1b6
    if-ge v0, v3, :cond_1c1

    .line 725
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OR()Lcom/android/common/exif/m;

    move-result-object v1

    aput-object v1, v2, v0

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b6

    .line 727
    :cond_1c1
    invoke-virtual {p1, v2}, Lcom/android/common/exif/k;->PO([Lcom/android/common/exif/m;)Z

    goto/16 :goto_87

    .line 679
    :pswitch_data_1c6
    .packed-switch 0x1
        :pswitch_137
        :pswitch_145
        :pswitch_180
        :pswitch_152
        :pswitch_169
        :pswitch_87
        :pswitch_137
        :pswitch_87
        :pswitch_197
        :pswitch_1ae
    .end packed-switch
.end method

.method protected OQ()I
    .registers 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0}, Lcom/android/common/exif/n;->Qz()I

    move-result v0

    return v0
.end method

.method protected OR()Lcom/android/common/exif/m;
    .registers 7

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OQ()I

    move-result v0

    .line 871
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OQ()I

    move-result v1

    .line 872
    new-instance v2, Lcom/android/common/exif/m;

    int-to-long v4, v0

    int-to-long v0, v1

    invoke-direct {v2, v4, v5, v0, v1}, Lcom/android/common/exif/m;-><init>(JJ)V

    return-object v2
.end method

.method protected OS(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 817
    sget-object v0, Lcom/android/common/exif/b;->Ox:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcom/android/common/exif/b;->OT(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected OT(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 826
    if-lez p1, :cond_9

    .line 827
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/exif/n;->QA(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 829
    :cond_9
    const-string/jumbo v0, ""

    return-object v0
.end method

.method protected OV()J
    .registers 5

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OQ()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected OW()Lcom/android/common/exif/m;
    .registers 6

    .prologue
    .line 854
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OV()J

    move-result-wide v0

    .line 855
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OV()J

    move-result-wide v2

    .line 856
    new-instance v4, Lcom/android/common/exif/m;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/common/exif/m;-><init>(JJ)V

    return-object v4
.end method

.method protected OX()I
    .registers 3

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0}, Lcom/android/common/exif/n;->Qx()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected OZ(Lcom/android/common/exif/k;)V
    .registers 6

    .prologue
    .line 513
    invoke-virtual {p1}, Lcom/android/common/exif/k;->PC()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v1}, Lcom/android/common/exif/n;->Qu()I

    move-result v1

    if-lt v0, v1, :cond_1f

    .line 514
    iget-object v0, p0, Lcom/android/common/exif/b;->OA:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/android/common/exif/k;->PC()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/common/exif/e;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/android/common/exif/e;-><init>(Lcom/android/common/exif/k;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :cond_1f
    return-void
.end method

.method protected Pd()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 364
    iget v0, p0, Lcom/android/common/exif/b;->OD:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/common/exif/b;->OJ:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v1, v0

    .line 365
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0}, Lcom/android/common/exif/n;->Qu()I

    move-result v0

    .line 366
    if-le v0, v1, :cond_13

    .line 367
    return-void

    .line 369
    :cond_13
    iget-boolean v2, p0, Lcom/android/common/exif/b;->OI:Z

    if-eqz v2, :cond_2b

    .line 370
    :cond_17
    :goto_17
    if-ge v0, v1, :cond_2e

    .line 371
    invoke-direct {p0}, Lcom/android/common/exif/b;->OU()Lcom/android/common/exif/k;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/exif/b;->ON:Lcom/android/common/exif/k;

    .line 372
    add-int/lit8 v0, v0, 0xc

    .line 373
    iget-object v2, p0, Lcom/android/common/exif/b;->ON:Lcom/android/common/exif/k;

    if-eqz v2, :cond_17

    .line 376
    iget-object v2, p0, Lcom/android/common/exif/b;->ON:Lcom/android/common/exif/k;

    invoke-direct {p0, v2}, Lcom/android/common/exif/b;->Oz(Lcom/android/common/exif/k;)V

    goto :goto_17

    .line 379
    :cond_2b
    invoke-direct {p0, v1}, Lcom/android/common/exif/b;->Pe(I)V

    .line 381
    :cond_2e
    invoke-virtual {p0}, Lcom/android/common/exif/b;->OV()J

    move-result-wide v0

    .line 383
    iget v2, p0, Lcom/android/common/exif/b;->OE:I

    if-nez v2, :cond_4b

    .line 384
    invoke-direct {p0, v4}, Lcom/android/common/exif/b;->OI(I)Z

    move-result v2

    if-nez v2, :cond_42

    invoke-direct {p0}, Lcom/android/common/exif/b;->OJ()Z

    move-result v2

    .line 383
    if-eqz v2, :cond_4b

    .line 385
    :cond_42
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4b

    .line 386
    invoke-direct {p0, v4, v0, v1}, Lcom/android/common/exif/b;->Pa(IJ)V

    .line 363
    :cond_4b
    return-void
.end method

.method protected read([B)I
    .registers 3

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/common/exif/b;->OP:Lcom/android/common/exif/n;

    invoke-virtual {v0, p1}, Lcom/android/common/exif/n;->read([B)I

    move-result v0

    return v0
.end method
