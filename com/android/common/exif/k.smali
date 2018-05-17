.class public Lcom/android/common/exif/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final Pl:Ljava/text/SimpleDateFormat;

.field private static final Pm:[I

.field private static Pn:Ljava/nio/charset/Charset;


# instance fields
.field private Po:I

.field private final Pp:S

.field private Pq:Z

.field private Pr:I

.field private Ps:I

.field private final Pt:S

.field private Pu:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 70
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/common/exif/k;->Pn:Ljava/nio/charset/Charset;

    .line 71
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/android/common/exif/k;->Pm:[I

    .line 78
    sget-object v0, Lcom/android/common/exif/k;->Pm:[I

    aput v2, v0, v2

    .line 79
    sget-object v0, Lcom/android/common/exif/k;->Pm:[I

    aput v2, v0, v4

    .line 80
    sget-object v0, Lcom/android/common/exif/k;->Pm:[I

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 81
    sget-object v0, Lcom/android/common/exif/k;->Pm:[I

    aput v3, v0, v3

    .line 82
    sget-object v0, Lcom/android/common/exif/k;->Pm:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    .line 83
    sget-object v0, Lcom/android/common/exif/k;->Pm:[I

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 84
    sget-object v0, Lcom/android/common/exif/k;->Pm:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 85
    sget-object v0, Lcom/android/common/exif/k;->Pm:[I

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/common/exif/k;->Pl:Ljava/text/SimpleDateFormat;

    .line 31
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(SSIIZ)V
    .registers 7

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-short p1, p0, Lcom/android/common/exif/k;->Pt:S

    .line 130
    iput-short p2, p0, Lcom/android/common/exif/k;->Pp:S

    .line 131
    iput p3, p0, Lcom/android/common/exif/k;->Po:I

    .line 132
    iput-boolean p5, p0, Lcom/android/common/exif/k;->Pq:Z

    .line 133
    iput p4, p0, Lcom/android/common/exif/k;->Pr:I

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public static PD(S)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 120
    if-eq p0, v0, :cond_6

    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    .line 121
    :cond_7
    const/4 v1, 0x3

    if-eq p0, v1, :cond_6

    const/4 v1, 0x4

    if-eq p0, v1, :cond_6

    .line 122
    const/4 v1, 0x5

    if-eq p0, v1, :cond_6

    const/4 v1, 0x7

    if-eq p0, v1, :cond_6

    .line 123
    const/16 v1, 0x9

    if-eq p0, v1, :cond_6

    const/16 v1, 0xa

    if-eq p0, v1, :cond_6

    const/4 v0, 0x0

    goto :goto_6
.end method

.method private PW(I)Z
    .registers 3

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/android/common/exif/k;->Pq:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/common/exif/k;->Po:I

    if-eq v0, p1, :cond_a

    .line 886
    const/4 v0, 0x1

    return v0

    .line 888
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private PX([Lcom/android/common/exif/m;)Z
    .registers 12

    .prologue
    const-wide/32 v8, 0x7fffffff

    const-wide/32 v6, -0x80000000

    const/4 v1, 0x0

    .line 953
    array-length v2, p1

    move v0, v1

    :goto_9
    if-ge v0, v2, :cond_32

    aget-object v3, p1, v0

    .line 954
    invoke-virtual {v3}, Lcom/android/common/exif/m;->Qr()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1d

    invoke-virtual {v3}, Lcom/android/common/exif/m;->Qs()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_1f

    .line 957
    :cond_1d
    const/4 v0, 0x1

    return v0

    .line 955
    :cond_1f
    invoke-virtual {v3}, Lcom/android/common/exif/m;->Qr()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_1d

    .line 956
    invoke-virtual {v3}, Lcom/android/common/exif/m;->Qs()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-gtz v3, :cond_1d

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 960
    :cond_32
    return v1
.end method

.method private PY([J)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 924
    array-length v2, p1

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_1b

    aget-wide v4, p1, v0

    .line 925
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_16

    const-wide v6, 0xffffffffL

    cmp-long v3, v4, v6

    if-lez v3, :cond_18

    .line 926
    :cond_16
    const/4 v0, 0x1

    return v0

    .line 924
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 929
    :cond_1b
    return v1
.end method

.method private PZ([I)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 933
    array-length v2, p1

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_e

    aget v3, p1, v0

    .line 934
    if-gez v3, :cond_b

    .line 935
    const/4 v0, 0x1

    return v0

    .line 933
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 938
    :cond_e
    return v1
.end method

.method public static Pw(I)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 111
    if-eqz p0, :cond_6

    if-ne p0, v0, :cond_7

    :cond_6
    :goto_6
    return v0

    .line 112
    :cond_7
    const/4 v2, 0x2

    if-eq p0, v2, :cond_6

    const/4 v2, 0x3

    if-eq p0, v2, :cond_6

    .line 113
    const/4 v2, 0x4

    if-eq p0, v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method private Qa([Lcom/android/common/exif/m;)Z
    .registers 12

    .prologue
    const-wide v8, 0xffffffffL

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 942
    array-length v2, p1

    move v0, v1

    :goto_a
    if-ge v0, v2, :cond_33

    aget-object v3, p1, v0

    .line 943
    invoke-virtual {v3}, Lcom/android/common/exif/m;->Qr()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1e

    invoke-virtual {v3}, Lcom/android/common/exif/m;->Qs()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_20

    .line 946
    :cond_1e
    const/4 v0, 0x1

    return v0

    .line 944
    :cond_20
    invoke-virtual {v3}, Lcom/android/common/exif/m;->Qr()J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-gtz v4, :cond_1e

    .line 945
    invoke-virtual {v3}, Lcom/android/common/exif/m;->Qs()J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-gtz v3, :cond_1e

    .line 942
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 949
    :cond_33
    return v1
.end method

.method private Qb([I)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 915
    array-length v2, p1

    move v0, v1

    :goto_3
    if-ge v0, v2, :cond_13

    aget v3, p1, v0

    .line 916
    const v4, 0xffff

    if-gt v3, v4, :cond_e

    if-gez v3, :cond_10

    .line 917
    :cond_e
    const/4 v0, 0x1

    return v0

    .line 915
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 920
    :cond_13
    return v1
.end method

.method private static Qc(S)Ljava/lang/String;
    .registers 2

    .prologue
    .line 892
    packed-switch p0, :pswitch_data_28

    .line 910
    :pswitch_3
    const-string/jumbo v0, ""

    return-object v0

    .line 894
    :pswitch_7
    const-string/jumbo v0, "UNSIGNED_BYTE"

    return-object v0

    .line 896
    :pswitch_b
    const-string/jumbo v0, "ASCII"

    return-object v0

    .line 898
    :pswitch_f
    const-string/jumbo v0, "UNSIGNED_SHORT"

    return-object v0

    .line 900
    :pswitch_13
    const-string/jumbo v0, "UNSIGNED_LONG"

    return-object v0

    .line 902
    :pswitch_17
    const-string/jumbo v0, "UNSIGNED_RATIONAL"

    return-object v0

    .line 904
    :pswitch_1b
    const-string/jumbo v0, "UNDEFINED"

    return-object v0

    .line 906
    :pswitch_1f
    const-string/jumbo v0, "LONG"

    return-object v0

    .line 908
    :pswitch_23
    const-string/jumbo v0, "RATIONAL"

    return-object v0

    .line 892
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_3
        :pswitch_1b
        :pswitch_3
        :pswitch_1f
        :pswitch_23
    .end packed-switch
.end method

.method public static Qf(S)I
    .registers 2

    .prologue
    .line 150
    sget-object v0, Lcom/android/common/exif/k;->Pm:[I

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method public PA()S
    .registers 2

    .prologue
    .line 190
    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    return v0
.end method

.method protected PB(I)J
    .registers 5

    .prologue
    .line 791
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_d

    .line 792
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, p1

    return-wide v0

    .line 793
    :cond_d
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1b

    .line 794
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    return-wide v0

    .line 796
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot get integer value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 797
    iget-short v2, p0, Lcom/android/common/exif/k;->Pp:S

    invoke-static {v2}, Lcom/android/common/exif/k;->Qc(S)Ljava/lang/String;

    move-result-object v2

    .line 796
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected PC()I
    .registers 2

    .prologue
    .line 866
    iget v0, p0, Lcom/android/common/exif/k;->Ps:I

    return v0
.end method

.method public PE()I
    .registers 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/common/exif/k;->Py()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/exif/k;->PA()S

    move-result v1

    invoke-static {v1}, Lcom/android/common/exif/k;->Qf(S)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public PF([B)Z
    .registers 4

    .prologue
    .line 428
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/common/exif/k;->Ql([BII)Z

    move-result v0

    return v0
.end method

.method protected PG(I)V
    .registers 2

    .prologue
    .line 873
    iput p1, p0, Lcom/android/common/exif/k;->Ps:I

    .line 872
    return-void
.end method

.method protected PH()Z
    .registers 2

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/android/common/exif/k;->Pq:Z

    return v0
.end method

.method protected PI(Z)V
    .registers 2

    .prologue
    .line 877
    iput-boolean p1, p0, Lcom/android/common/exif/k;->Pq:Z

    .line 876
    return-void
.end method

.method public PJ()S
    .registers 2

    .prologue
    .line 174
    iget-short v0, p0, Lcom/android/common/exif/k;->Pt:S

    return v0
.end method

.method public PK()Z
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected PL(I)V
    .registers 2

    .prologue
    .line 214
    iput p1, p0, Lcom/android/common/exif/k;->Po:I

    .line 213
    return-void
.end method

.method public PM(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v5, 0x7

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 328
    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    if-eq v0, v2, :cond_d

    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    if-eq v0, v5, :cond_d

    .line 329
    return v3

    .line 332
    :cond_d
    sget-object v0, Lcom/android/common/exif/k;->Pn:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 334
    array-length v1, v0

    if-lez v1, :cond_31

    .line 335
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    if-eqz v1, :cond_21

    iget-short v1, p0, Lcom/android/common/exif/k;->Pp:S

    if-ne v1, v5, :cond_29

    .line 340
    :cond_21
    :goto_21
    array-length v1, v0

    .line 341
    invoke-direct {p0, v1}, Lcom/android/common/exif/k;->PW(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 342
    return v3

    .line 336
    :cond_29
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 335
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_21

    .line 337
    :cond_31
    iget-short v1, p0, Lcom/android/common/exif/k;->Pp:S

    if-ne v1, v2, :cond_21

    iget v1, p0, Lcom/android/common/exif/k;->Po:I

    if-ne v1, v4, :cond_21

    .line 338
    new-array v0, v4, [B

    aput-byte v3, v0, v3

    goto :goto_21

    .line 344
    :cond_3e
    iput v1, p0, Lcom/android/common/exif/k;->Po:I

    .line 345
    iput-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    .line 346
    return v4
.end method

.method public PN([J)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 287
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/common/exif/k;->PW(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 288
    :cond_d
    return v2

    .line 290
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/common/exif/k;->PY([J)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 291
    return v2

    .line 293
    :cond_15
    iput-object p1, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    .line 294
    array-length v0, p1

    iput v0, p0, Lcom/android/common/exif/k;->Po:I

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public PO([Lcom/android/common/exif/m;)Z
    .registers 6

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 364
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/android/common/exif/k;->PW(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 365
    return v1

    .line 367
    :cond_c
    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    if-eq v0, v2, :cond_15

    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    if-eq v0, v3, :cond_15

    .line 368
    return v1

    .line 370
    :cond_15
    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    if-ne v0, v2, :cond_20

    invoke-direct {p0, p1}, Lcom/android/common/exif/k;->Qa([Lcom/android/common/exif/m;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 371
    return v1

    .line 372
    :cond_20
    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    if-ne v0, v3, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/common/exif/k;->PX([Lcom/android/common/exif/m;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 373
    return v1

    .line 376
    :cond_2b
    iput-object p1, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    .line 377
    array-length v0, p1

    iput v0, p0, Lcom/android/common/exif/k;->Po:I

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public PP([I)Z
    .registers 7

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 237
    array-length v1, p1

    invoke-direct {p0, v1}, Lcom/android/common/exif/k;->PW(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 238
    return v0

    .line 240
    :cond_b
    iget-short v1, p0, Lcom/android/common/exif/k;->Pp:S

    if-eq v1, v3, :cond_1a

    iget-short v1, p0, Lcom/android/common/exif/k;->Pp:S

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1a

    .line 241
    iget-short v1, p0, Lcom/android/common/exif/k;->Pp:S

    if-eq v1, v4, :cond_1a

    .line 242
    return v0

    .line 244
    :cond_1a
    iget-short v1, p0, Lcom/android/common/exif/k;->Pp:S

    if-ne v1, v3, :cond_25

    invoke-direct {p0, p1}, Lcom/android/common/exif/k;->Qb([I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 245
    return v0

    .line 246
    :cond_25
    iget-short v1, p0, Lcom/android/common/exif/k;->Pp:S

    if-ne v1, v4, :cond_30

    invoke-direct {p0, p1}, Lcom/android/common/exif/k;->PZ([I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 247
    return v0

    .line 250
    :cond_30
    array-length v1, p1

    new-array v1, v1, [J

    .line 251
    :goto_33
    array-length v2, p1

    if-ge v0, v2, :cond_3e

    .line 252
    aget v2, p1, v0

    int-to-long v2, v2

    aput-wide v2, v1, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 254
    :cond_3e
    iput-object v1, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    .line 255
    array-length v0, p1

    iput v0, p0, Lcom/android/common/exif/k;->Po:I

    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method protected PQ()[B
    .registers 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method protected PR(I)Lcom/android/common/exif/m;
    .registers 5

    .prologue
    .line 828
    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2b

    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2b

    .line 829
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot get RATIONAL value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 830
    iget-short v2, p0, Lcom/android/common/exif/k;->Pp:S

    invoke-static {v2}, Lcom/android/common/exif/k;->Qc(S)Ljava/lang/String;

    move-result-object v2

    .line 829
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 832
    :cond_2b
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [Lcom/android/common/exif/m;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public PS()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    return-object v0
.end method

.method public PT(I)Z
    .registers 4

    .prologue
    .line 271
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 272
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/common/exif/k;->PP([I)Z

    move-result v0

    return v0
.end method

.method public PU()[I
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 652
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 653
    return-object v1

    .line 654
    :cond_6
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_20

    .line 655
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [J

    .line 656
    array-length v1, v0

    new-array v2, v1, [I

    .line 657
    const/4 v1, 0x0

    :goto_14
    array-length v3, v0

    if-ge v1, v3, :cond_1f

    .line 658
    aget-wide v4, v0, v1

    long-to-int v3, v4

    aput v3, v2, v1

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 660
    :cond_1f
    return-object v2

    .line 662
    :cond_20
    return-object v1
.end method

.method public PV()[Lcom/android/common/exif/m;
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v0, v0, [Lcom/android/common/exif/m;

    if-eqz v0, :cond_b

    .line 607
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [Lcom/android/common/exif/m;

    return-object v0

    .line 609
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public Pv()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 541
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 542
    return-object v1

    .line 543
    :cond_6
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 544
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 545
    :cond_11
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_23

    .line 546
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [B

    sget-object v2, Lcom/android/common/exif/k;->Pn:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 548
    :cond_23
    return-object v1
.end method

.method public Px()I
    .registers 2

    .prologue
    .line 163
    iget v0, p0, Lcom/android/common/exif/k;->Pr:I

    return v0
.end method

.method public Py()I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/android/common/exif/k;->Po:I

    return v0
.end method

.method protected Pz([B)V
    .registers 4

    .prologue
    .line 839
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/common/exif/k;->Qe([BII)V

    .line 838
    return-void
.end method

.method public Qd()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 750
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 751
    const-string/jumbo v0, ""

    return-object v0

    .line 752
    :cond_a
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_2a

    .line 753
    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 754
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [B

    sget-object v2, Lcom/android/common/exif/k;->Pn:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1

    .line 756
    :cond_21
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 758
    :cond_2a
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_4b

    .line 759
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    if-ne v0, v2, :cond_42

    .line 760
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 762
    :cond_42
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 764
    :cond_4b
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_72

    .line 765
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    if-ne v0, v2, :cond_69

    .line 766
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 767
    if-nez v0, :cond_64

    .line 768
    const-string/jumbo v0, ""

    return-object v0

    .line 770
    :cond_64
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 773
    :cond_69
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 776
    :cond_72
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Qe([BII)V
    .registers 7

    .prologue
    .line 853
    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2a

    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    .line 854
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot get BYTE value from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 855
    iget-short v2, p0, Lcom/android/common/exif/k;->Pp:S

    invoke-static {v2}, Lcom/android/common/exif/k;->Qc(S)Ljava/lang/String;

    move-result-object v2

    .line 854
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 857
    :cond_2a
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [B

    .line 858
    iget v1, p0, Lcom/android/common/exif/k;->Po:I

    if-le p3, v1, :cond_34

    iget p3, p0, Lcom/android/common/exif/k;->Po:I

    .line 857
    :cond_34
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/f/a;->btF([BI[BII)V

    .line 852
    return-void
.end method

.method protected Qg(I)V
    .registers 2

    .prologue
    .line 167
    iput p1, p0, Lcom/android/common/exif/k;->Pr:I

    .line 166
    return-void
.end method

.method public Qh(J)Z
    .registers 6

    .prologue
    .line 308
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 309
    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 308
    invoke-virtual {p0, v0}, Lcom/android/common/exif/k;->PN([J)Z

    move-result v0

    return v0
.end method

.method public Qi(Lcom/android/common/exif/m;)Z
    .registers 4

    .prologue
    .line 395
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/common/exif/m;

    .line 396
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 395
    invoke-virtual {p0, v0}, Lcom/android/common/exif/k;->PO([Lcom/android/common/exif/m;)Z

    move-result v0

    return v0
.end method

.method public Qj(B)Z
    .registers 4

    .prologue
    .line 442
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 443
    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/common/exif/k;->PF([B)Z

    move-result v0

    return v0
.end method

.method public Qk(Ljava/lang/Object;)Z
    .registers 7

    .prologue
    const v4, 0xffff

    const/4 v1, 0x0

    .line 458
    if-nez p1, :cond_7

    .line 459
    return v1

    .line 460
    :cond_7
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_17

    .line 461
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result v0

    and-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/android/common/exif/k;->PT(I)Z

    move-result v0

    return v0

    .line 462
    :cond_17
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 463
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/common/exif/k;->PM(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 464
    :cond_22
    instance-of v0, p1, [I

    if-eqz v0, :cond_2d

    .line 465
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/android/common/exif/k;->PP([I)Z

    move-result v0

    return v0

    .line 466
    :cond_2d
    instance-of v0, p1, [J

    if-eqz v0, :cond_38

    .line 467
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/android/common/exif/k;->PN([J)Z

    move-result v0

    return v0

    .line 468
    :cond_38
    instance-of v0, p1, Lcom/android/common/exif/m;

    if-eqz v0, :cond_43

    .line 469
    check-cast p1, Lcom/android/common/exif/m;

    invoke-virtual {p0, p1}, Lcom/android/common/exif/k;->Qi(Lcom/android/common/exif/m;)Z

    move-result v0

    return v0

    .line 470
    :cond_43
    instance-of v0, p1, [Lcom/android/common/exif/m;

    if-eqz v0, :cond_4e

    .line 471
    check-cast p1, [Lcom/android/common/exif/m;

    invoke-virtual {p0, p1}, Lcom/android/common/exif/k;->PO([Lcom/android/common/exif/m;)Z

    move-result v0

    return v0

    .line 472
    :cond_4e
    instance-of v0, p1, [B

    if-eqz v0, :cond_59

    .line 473
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/android/common/exif/k;->PF([B)Z

    move-result v0

    return v0

    .line 474
    :cond_59
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_68

    .line 475
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/exif/k;->PT(I)Z

    move-result v0

    return v0

    .line 476
    :cond_68
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_77

    .line 477
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/exif/k;->Qh(J)Z

    move-result v0

    return v0

    .line 478
    :cond_77
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_86

    .line 479
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/exif/k;->Qj(B)Z

    move-result v0

    return v0

    .line 480
    :cond_86
    instance-of v0, p1, [Ljava/lang/Short;

    if-eqz v0, :cond_aa

    .line 482
    check-cast p1, [Ljava/lang/Short;

    .line 483
    array-length v0, p1

    new-array v3, v0, [I

    move v0, v1

    .line 484
    :goto_90
    array-length v2, p1

    if-ge v0, v2, :cond_a5

    .line 485
    aget-object v2, p1, v0

    if-nez v2, :cond_9d

    move v2, v1

    :goto_98
    aput v2, v3, v0

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 485
    :cond_9d
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    and-int/2addr v2, v4

    goto :goto_98

    .line 487
    :cond_a5
    invoke-virtual {p0, v3}, Lcom/android/common/exif/k;->PP([I)Z

    move-result v0

    return v0

    .line 488
    :cond_aa
    instance-of v0, p1, [Ljava/lang/Integer;

    if-eqz v0, :cond_cd

    .line 490
    check-cast p1, [Ljava/lang/Integer;

    .line 491
    array-length v0, p1

    new-array v3, v0, [I

    move v0, v1

    .line 492
    :goto_b4
    array-length v2, p1

    if-ge v0, v2, :cond_c8

    .line 493
    aget-object v2, p1, v0

    if-nez v2, :cond_c1

    move v2, v1

    :goto_bc
    aput v2, v3, v0

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    .line 493
    :cond_c1
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_bc

    .line 495
    :cond_c8
    invoke-virtual {p0, v3}, Lcom/android/common/exif/k;->PP([I)Z

    move-result v0

    return v0

    .line 496
    :cond_cd
    instance-of v0, p1, [Ljava/lang/Long;

    if-eqz v0, :cond_f0

    .line 498
    check-cast p1, [Ljava/lang/Long;

    .line 499
    array-length v0, p1

    new-array v0, v0, [J

    .line 500
    :goto_d6
    array-length v2, p1

    if-ge v1, v2, :cond_eb

    .line 501
    aget-object v2, p1, v1

    if-nez v2, :cond_e4

    const-wide/16 v2, 0x0

    :goto_df
    aput-wide v2, v0, v1

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    .line 501
    :cond_e4
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_df

    .line 503
    :cond_eb
    invoke-virtual {p0, v0}, Lcom/android/common/exif/k;->PN([J)Z

    move-result v0

    return v0

    .line 504
    :cond_f0
    instance-of v0, p1, [Ljava/lang/Byte;

    if-eqz v0, :cond_113

    .line 506
    check-cast p1, [Ljava/lang/Byte;

    .line 507
    array-length v0, p1

    new-array v3, v0, [B

    move v0, v1

    .line 508
    :goto_fa
    array-length v2, p1

    if-ge v0, v2, :cond_10e

    .line 509
    aget-object v2, p1, v0

    if-nez v2, :cond_107

    move v2, v1

    :goto_102
    aput-byte v2, v3, v0

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_fa

    .line 509
    :cond_107
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    goto :goto_102

    .line 511
    :cond_10e
    invoke-virtual {p0, v3}, Lcom/android/common/exif/k;->PF([B)Z

    move-result v0

    return v0

    .line 513
    :cond_113
    return v1
.end method

.method public Ql([BII)Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 412
    invoke-direct {p0, p3}, Lcom/android/common/exif/k;->PW(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 413
    return v2

    .line 415
    :cond_9
    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    if-eq v0, v3, :cond_13

    iget-short v0, p0, Lcom/android/common/exif/k;->Pp:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_13

    .line 416
    return v2

    .line 418
    :cond_13
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    .line 419
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {p1, p2, v0, v2, p3}, Lcom/android/f/a;->btF([BI[BII)V

    .line 420
    iput p3, p0, Lcom/android/common/exif/k;->Po:I

    .line 421
    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 965
    if-nez p1, :cond_4

    .line 966
    return v0

    .line 968
    :cond_4
    instance-of v1, p1, Lcom/android/common/exif/k;

    if-eqz v1, :cond_83

    .line 969
    check-cast p1, Lcom/android/common/exif/k;

    .line 970
    iget-short v1, p1, Lcom/android/common/exif/k;->Pt:S

    iget-short v2, p0, Lcom/android/common/exif/k;->Pt:S

    if-ne v1, v2, :cond_16

    .line 971
    iget v1, p1, Lcom/android/common/exif/k;->Po:I

    iget v2, p0, Lcom/android/common/exif/k;->Po:I

    if-eq v1, v2, :cond_17

    .line 973
    :cond_16
    return v0

    .line 972
    :cond_17
    iget-short v1, p1, Lcom/android/common/exif/k;->Pp:S

    iget-short v2, p0, Lcom/android/common/exif/k;->Pp:S

    if-ne v1, v2, :cond_16

    .line 975
    iget-object v1, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    if-eqz v1, :cond_7d

    .line 976
    iget-object v1, p1, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    if-nez v1, :cond_26

    .line 977
    return v0

    .line 978
    :cond_26
    iget-object v1, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_40

    .line 979
    iget-object v1, p1, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-nez v1, :cond_33

    .line 980
    return v0

    .line 982
    :cond_33
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v1, p1, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 983
    :cond_40
    iget-object v1, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/android/common/exif/m;

    if-eqz v1, :cond_5a

    .line 984
    iget-object v1, p1, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/android/common/exif/m;

    if-nez v1, :cond_4d

    .line 985
    return v0

    .line 987
    :cond_4d
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [Lcom/android/common/exif/m;

    iget-object v1, p1, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v1, [Lcom/android/common/exif/m;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 988
    :cond_5a
    iget-object v1, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_74

    .line 989
    iget-object v1, p1, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-nez v1, :cond_67

    .line 990
    return v0

    .line 992
    :cond_67
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, p1, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 994
    :cond_74
    iget-object v0, p0, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    iget-object v1, p1, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 997
    :cond_7d
    iget-object v1, p1, Lcom/android/common/exif/k;->Pu:Ljava/lang/Object;

    if-nez v1, :cond_82

    const/4 v0, 0x1

    :cond_82
    return v0

    .line 1000
    :cond_83
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tag id: %04X\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-short v3, p0, Lcom/android/common/exif/k;->Pt:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/common/exif/k;->Pr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1006
    iget-short v1, p0, Lcom/android/common/exif/k;->Pp:S

    invoke-static {v1}, Lcom/android/common/exif/k;->Qc(S)Ljava/lang/String;

    move-result-object v1

    .line 1005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1006
    const-string/jumbo v1, "\ncount: "

    .line 1005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1006
    iget v1, p0, Lcom/android/common/exif/k;->Po:I

    .line 1005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1007
    const-string/jumbo v1, "\noffset: "

    .line 1005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1007
    iget v1, p0, Lcom/android/common/exif/k;->Ps:I

    .line 1005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1007
    const-string/jumbo v1, "\nvalue: "

    .line 1005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1007
    invoke-virtual {p0}, Lcom/android/common/exif/k;->Qd()Ljava/lang/String;

    move-result-object v1

    .line 1005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1007
    const-string/jumbo v1, "\n"

    .line 1005
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
