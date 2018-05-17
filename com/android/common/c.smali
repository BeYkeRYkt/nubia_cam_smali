.class public Lcom/android/common/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aob([B)I
    .registers 11

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_9

    .line 27
    return v1

    :cond_9
    move v0, v1

    .line 34
    :cond_a
    :goto_a
    add-int/lit8 v2, v0, 0x3

    array-length v4, p0

    if-ge v2, v4, :cond_3f

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xff

    if-ne v0, v4, :cond_23

    .line 35
    aget-byte v0, p0, v2

    and-int/lit16 v4, v0, 0xff

    .line 38
    const/16 v0, 0xff

    if-ne v4, v0, :cond_42

    move v0, v2

    .line 39
    goto :goto_a

    :cond_23
    move v4, v2

    move v2, v1

    .line 74
    :goto_25
    if-le v2, v9, :cond_ec

    .line 76
    invoke-static {p0, v4, v8, v1}, Lcom/android/common/c;->aod([BIIZ)I

    move-result v0

    .line 77
    const v5, 0x49492a00    # 823968.0f

    if-eq v0, v5, :cond_8d

    const v5, 0x4d4d002a    # 2.14958752E8f

    if-eq v0, v5, :cond_8d

    .line 78
    const-string/jumbo v0, "CameraExif"

    const-string/jumbo v2, "Invalid byte order"

    invoke-static {v0, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return v1

    :cond_3f
    move v2, v1

    move v4, v0

    .line 34
    goto :goto_25

    .line 41
    :cond_42
    add-int/lit8 v0, v2, 0x1

    .line 44
    const/16 v2, 0xd8

    if-eq v4, v2, :cond_a

    if-eq v4, v3, :cond_a

    .line 48
    const/16 v2, 0xd9

    if-eq v4, v2, :cond_52

    const/16 v2, 0xda

    if-ne v4, v2, :cond_55

    :cond_52
    move v2, v1

    move v4, v0

    .line 49
    goto :goto_25

    .line 53
    :cond_55
    invoke-static {p0, v0, v7, v1}, Lcom/android/common/c;->aod([BIIZ)I

    move-result v5

    .line 54
    if-lt v5, v7, :cond_60

    add-int v2, v0, v5

    array-length v6, p0

    if-le v2, v6, :cond_6a

    .line 55
    :cond_60
    const-string/jumbo v0, "CameraExif"

    const-string/jumbo v2, "Invalid length"

    invoke-static {v0, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return v1

    .line 60
    :cond_6a
    const/16 v2, 0xe1

    if-ne v4, v2, :cond_8a

    if-lt v5, v9, :cond_8a

    .line 61
    add-int/lit8 v2, v0, 0x2

    invoke-static {p0, v2, v8, v1}, Lcom/android/common/c;->aod([BIIZ)I

    move-result v2

    const v4, 0x45786966

    if-ne v2, v4, :cond_8a

    .line 62
    add-int/lit8 v2, v0, 0x6

    invoke-static {p0, v2, v7, v1}, Lcom/android/common/c;->aod([BIIZ)I

    move-result v2

    if-nez v2, :cond_8a

    .line 63
    add-int/lit8 v2, v0, 0x8

    .line 64
    add-int/lit8 v0, v5, -0x8

    move v4, v2

    move v2, v0

    .line 65
    goto :goto_25

    .line 69
    :cond_8a
    add-int/2addr v0, v5

    goto/16 :goto_a

    .line 81
    :cond_8d
    const v5, 0x49492a00    # 823968.0f

    if-ne v0, v5, :cond_ab

    move v0, v3

    .line 84
    :goto_93
    add-int/lit8 v3, v4, 0x4

    invoke-static {p0, v3, v8, v0}, Lcom/android/common/c;->aod([BIIZ)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    .line 85
    const/16 v5, 0xa

    if-lt v3, v5, :cond_a1

    if-le v3, v2, :cond_ad

    .line 86
    :cond_a1
    const-string/jumbo v0, "CameraExif"

    const-string/jumbo v2, "Invalid offset"

    invoke-static {v0, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return v1

    :cond_ab
    move v0, v1

    .line 81
    goto :goto_93

    .line 89
    :cond_ad
    add-int/2addr v4, v3

    .line 90
    sub-int v3, v2, v3

    .line 93
    add-int/lit8 v2, v4, -0x2

    invoke-static {p0, v2, v7, v0}, Lcom/android/common/c;->aod([BIIZ)I

    move-result v2

    move v5, v4

    move v4, v3

    .line 94
    :goto_b8
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_ec

    const/16 v2, 0xc

    if-lt v4, v2, :cond_ec

    .line 96
    invoke-static {p0, v5, v7, v0}, Lcom/android/common/c;->aod([BIIZ)I

    move-result v2

    .line 97
    const/16 v6, 0x112

    if-ne v2, v6, :cond_e5

    .line 99
    add-int/lit8 v2, v5, 0x8

    invoke-static {p0, v2, v7, v0}, Lcom/android/common/c;->aod([BIIZ)I

    move-result v0

    .line 100
    packed-switch v0, :pswitch_data_f6

    .line 110
    :pswitch_d1
    const-string/jumbo v0, "CameraExif"

    const-string/jumbo v2, "Unsupported orientation"

    invoke-static {v0, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return v1

    .line 102
    :pswitch_db
    return v1

    .line 104
    :pswitch_dc
    const/16 v0, 0xb4

    return v0

    .line 106
    :pswitch_df
    const/16 v0, 0x5a

    return v0

    .line 108
    :pswitch_e2
    const/16 v0, 0x10e

    return v0

    .line 113
    :cond_e5
    add-int/lit8 v5, v5, 0xc

    .line 114
    add-int/lit8 v2, v4, -0xc

    move v4, v2

    move v2, v3

    goto :goto_b8

    .line 118
    :cond_ec
    const-string/jumbo v0, "CameraExif"

    const-string/jumbo v2, "Orientation not found"

    invoke-static {v0, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return v1

    .line 100
    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_db
        :pswitch_d1
        :pswitch_dc
        :pswitch_d1
        :pswitch_d1
        :pswitch_df
        :pswitch_d1
        :pswitch_e2
    .end packed-switch
.end method

.method public static aoc(I)I
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 139
    sparse-switch p0, :sswitch_data_e

    .line 149
    return v0

    .line 141
    :sswitch_5
    return v0

    .line 143
    :sswitch_6
    const/4 v0, 0x3

    return v0

    .line 145
    :sswitch_8
    const/4 v0, 0x6

    return v0

    .line 147
    :sswitch_a
    const/16 v0, 0x8

    return v0

    .line 139
    nop

    :sswitch_data_e
    .sparse-switch
        0x0 -> :sswitch_5
        0x5a -> :sswitch_8
        0xb4 -> :sswitch_6
        0x10e -> :sswitch_a
    .end sparse-switch
.end method

.method private static aod([BIIZ)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 124
    const/4 v0, 0x1

    .line 125
    if-eqz p3, :cond_8

    .line 126
    add-int/lit8 v0, p2, -0x1

    add-int/2addr p1, v0

    .line 127
    const/4 v0, -0x1

    .line 131
    :cond_8
    :goto_8
    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_16

    .line 132
    shl-int/lit8 v1, v1, 0x8

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 133
    add-int/2addr p1, v0

    move p2, v2

    goto :goto_8

    .line 135
    :cond_16
    return v1
.end method
