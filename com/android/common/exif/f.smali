.class Lcom/android/common/exif/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final OW:Ljava/nio/ByteBuffer;

.field private final OX:Lcom/android/common/exif/o;

.field private OY:I

.field private final OZ:Ljava/util/List;

.field private final Pa:Lcom/android/common/exif/a;


# direct methods
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/android/common/exif/o;)V
    .registers 7

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/exif/f;->OZ:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lcom/android/common/exif/f;->OW:Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/android/common/exif/f;->OY:I

    .line 52
    iput-object p2, p0, Lcom/android/common/exif/f;->OX:Lcom/android/common/exif/o;

    .line 53
    const/4 v2, 0x0

    .line 55
    :try_start_15
    new-instance v1, Lcom/android/common/exif/i;

    invoke-direct {v1, p1}, Lcom/android/common/exif/i;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_3e

    .line 57
    :try_start_1a
    iget-object v0, p0, Lcom/android/common/exif/f;->OX:Lcom/android/common/exif/o;

    invoke-static {v1, v0}, Lcom/android/common/exif/b;->OM(Ljava/io/InputStream;Lcom/android/common/exif/o;)Lcom/android/common/exif/b;

    move-result-object v0

    .line 58
    new-instance v2, Lcom/android/common/exif/a;

    invoke-virtual {v0}, Lcom/android/common/exif/b;->OA()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/common/exif/a;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v2, p0, Lcom/android/common/exif/f;->Pa:Lcom/android/common/exif/a;

    .line 59
    iget v2, p0, Lcom/android/common/exif/f;->OY:I

    invoke-virtual {v0}, Lcom/android/common/exif/b;->OH()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/common/exif/f;->OY:I

    .line 60
    iget-object v0, p0, Lcom/android/common/exif/f;->OW:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_44

    .line 62
    invoke-static {v1}, Lcom/android/common/exif/o;->QW(Ljava/io/Closeable;)V

    .line 49
    return-void

    .line 61
    :catchall_3e
    move-exception v0

    move-object v1, v2

    .line 62
    :goto_40
    invoke-static {v1}, Lcom/android/common/exif/o;->QW(Ljava/io/Closeable;)V

    .line 61
    throw v0

    :catchall_44
    move-exception v0

    goto :goto_40
.end method

.method private Pg()V
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/common/exif/f;->OW:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/android/common/exif/f;->Pf()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 143
    iget-object v0, p0, Lcom/android/common/exif/f;->OZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/exif/g;

    .line 144
    iget-object v2, v0, Lcom/android/common/exif/g;->Pc:Lcom/android/common/exif/k;

    iget v0, v0, Lcom/android/common/exif/g;->Pb:I

    invoke-direct {p0, v2, v0}, Lcom/android/common/exif/f;->Pi(Lcom/android/common/exif/k;I)V

    goto :goto_f

    .line 141
    :cond_23
    return-void
.end method

.method private Pi(Lcom/android/common/exif/k;I)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lcom/android/common/exif/f;->OW:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/android/common/exif/f;->OY:I

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    invoke-virtual {p1}, Lcom/android/common/exif/k;->PA()S

    move-result v1

    packed-switch v1, :pswitch_data_8a

    .line 148
    :cond_10
    :goto_10
    :pswitch_10
    return-void

    .line 156
    :pswitch_11
    invoke-virtual {p1}, Lcom/android/common/exif/k;->PQ()[B

    move-result-object v1

    .line 157
    array-length v2, v1

    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v3

    if-ne v2, v3, :cond_27

    .line 158
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-byte v0, v1, v2

    .line 159
    iget-object v0, p0, Lcom/android/common/exif/f;->OW:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_10

    .line 161
    :cond_27
    iget-object v2, p0, Lcom/android/common/exif/f;->OW:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 162
    iget-object v1, p0, Lcom/android/common/exif/f;->OW:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_10

    .line 167
    :pswitch_32
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v1

    :goto_36
    if-ge v0, v1, :cond_10

    .line 168
    iget-object v2, p0, Lcom/android/common/exif/f;->OW:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PB(I)J

    move-result-wide v4

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 173
    :pswitch_45
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v1

    :goto_49
    if-ge v0, v1, :cond_10

    .line 174
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PR(I)Lcom/android/common/exif/m;

    move-result-object v2

    .line 175
    iget-object v3, p0, Lcom/android/common/exif/f;->OW:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Lcom/android/common/exif/m;->Qr()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 176
    iget-object v3, p0, Lcom/android/common/exif/f;->OW:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Lcom/android/common/exif/m;->Qs()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 181
    :pswitch_66
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v0

    new-array v0, v0, [B

    .line 182
    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->Pz([B)V

    .line 183
    iget-object v1, p0, Lcom/android/common/exif/f;->OW:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_10

    .line 186
    :pswitch_75
    invoke-virtual {p1}, Lcom/android/common/exif/k;->Py()I

    move-result v1

    :goto_79
    if-ge v0, v1, :cond_10

    .line 187
    iget-object v2, p0, Lcom/android/common/exif/f;->OW:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/android/common/exif/k;->PB(I)J

    move-result-wide v4

    long-to-int v3, v4

    int-to-short v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 154
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_66
        :pswitch_11
        :pswitch_75
        :pswitch_32
        :pswitch_45
        :pswitch_10
        :pswitch_66
        :pswitch_10
        :pswitch_32
        :pswitch_45
    .end packed-switch
.end method


# virtual methods
.method protected Pf()Ljava/nio/ByteOrder;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/common/exif/f;->Pa:Lcom/android/common/exif/a;

    invoke-virtual {v0}, Lcom/android/common/exif/a;->Om()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public Ph(Lcom/android/common/exif/k;)V
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/common/exif/f;->Pa:Lcom/android/common/exif/a;

    invoke-virtual {v0, p1}, Lcom/android/common/exif/a;->Oj(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 193
    return-void
.end method

.method protected commit()Z
    .registers 13

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 73
    :try_start_3
    new-instance v1, Lcom/android/common/exif/i;

    iget-object v0, p0, Lcom/android/common/exif/f;->OW:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v0}, Lcom/android/common/exif/i;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_eb

    .line 75
    const/4 v0, 0x5

    :try_start_b
    new-array v5, v0, [Lcom/android/common/exif/p;

    .line 76
    iget-object v0, p0, Lcom/android/common/exif/f;->Pa:Lcom/android/common/exif/a;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 77
    iget-object v0, p0, Lcom/android/common/exif/f;->Pa:Lcom/android/common/exif/a;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v5, v6

    .line 78
    iget-object v0, p0, Lcom/android/common/exif/f;->Pa:Lcom/android/common/exif/a;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    const/4 v6, 0x2

    aput-object v0, v5, v6

    .line 79
    iget-object v0, p0, Lcom/android/common/exif/f;->Pa:Lcom/android/common/exif/a;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    const/4 v6, 0x3

    aput-object v0, v5, v6

    .line 80
    iget-object v0, p0, Lcom/android/common/exif/f;->Pa:Lcom/android/common/exif/a;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/android/common/exif/a;->Oo(I)Lcom/android/common/exif/p;

    move-result-object v0

    const/4 v6, 0x4

    aput-object v0, v5, v6

    .line 83
    const/4 v0, 0x0

    aget-object v0, v5, v0

    if-eqz v0, :cond_ee

    move v0, v4

    .line 86
    :goto_45
    const/4 v6, 0x1

    aget-object v6, v5, v6

    if-eqz v6, :cond_4c

    .line 87
    or-int/lit8 v0, v0, 0x2

    .line 89
    :cond_4c
    const/4 v6, 0x2

    aget-object v6, v5, v6

    if-eqz v6, :cond_53

    .line 90
    or-int/lit8 v0, v0, 0x4

    .line 92
    :cond_53
    const/4 v6, 0x4

    aget-object v6, v5, v6

    if-eqz v6, :cond_5a

    .line 93
    or-int/lit8 v0, v0, 0x8

    .line 95
    :cond_5a
    const/4 v6, 0x3

    aget-object v6, v5, v6

    if-eqz v6, :cond_61

    .line 96
    or-int/lit8 v0, v0, 0x10

    .line 99
    :cond_61
    iget-object v6, p0, Lcom/android/common/exif/f;->OX:Lcom/android/common/exif/o;

    invoke-static {v1, v0, v6}, Lcom/android/common/exif/b;->ON(Ljava/io/InputStream;ILcom/android/common/exif/o;)Lcom/android/common/exif/b;

    move-result-object v6

    .line 100
    invoke-virtual {v6}, Lcom/android/common/exif/b;->OL()I

    move-result v0

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    .line 102
    :goto_6e
    const/4 v7, 0x5

    if-eq v2, v7, :cond_cf

    .line 103
    packed-switch v2, :pswitch_data_f2

    .line 127
    :cond_74
    :goto_74
    invoke-virtual {v6}, Lcom/android/common/exif/b;->OL()I

    move-result v2

    goto :goto_6e

    .line 105
    :pswitch_79
    invoke-virtual {v6}, Lcom/android/common/exif/b;->OC()I

    move-result v0

    aget-object v0, v5, v0

    .line 106
    if-nez v0, :cond_74

    .line 107
    invoke-virtual {v6}, Lcom/android/common/exif/b;->Pd()V
    :try_end_84
    .catchall {:try_start_b .. :try_end_84} :catchall_85

    goto :goto_74

    .line 135
    :catchall_85
    move-exception v0

    .line 136
    :goto_86
    invoke-static {v1}, Lcom/android/common/exif/o;->QW(Ljava/io/Closeable;)V

    .line 135
    throw v0

    .line 111
    :pswitch_8a
    :try_start_8a
    invoke-virtual {v6}, Lcom/android/common/exif/b;->OG()Lcom/android/common/exif/k;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lcom/android/common/exif/k;->PJ()S

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/common/exif/p;->Rx(S)Lcom/android/common/exif/k;

    move-result-object v7

    .line 113
    if-eqz v7, :cond_74

    .line 114
    invoke-virtual {v7}, Lcom/android/common/exif/k;->Py()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/common/exif/k;->Py()I

    move-result v9

    if-ne v8, v9, :cond_ac

    .line 115
    invoke-virtual {v7}, Lcom/android/common/exif/k;->PA()S

    move-result v8

    invoke-virtual {v2}, Lcom/android/common/exif/k;->PA()S
    :try_end_a9
    .catchall {:try_start_8a .. :try_end_a9} :catchall_85

    move-result v9

    if-eq v8, v9, :cond_b0

    .line 136
    :cond_ac
    invoke-static {v1}, Lcom/android/common/exif/o;->QW(Ljava/io/Closeable;)V

    .line 116
    return v3

    .line 118
    :cond_b0
    :try_start_b0
    iget-object v8, p0, Lcom/android/common/exif/f;->OZ:Ljava/util/List;

    new-instance v9, Lcom/android/common/exif/g;

    invoke-virtual {v2}, Lcom/android/common/exif/k;->PC()I

    move-result v10

    invoke-direct {v9, v7, v10}, Lcom/android/common/exif/g;-><init>(Lcom/android/common/exif/k;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v2}, Lcom/android/common/exif/k;->PJ()S

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/common/exif/p;->Rz(S)V

    .line 120
    invoke-virtual {v0}, Lcom/android/common/exif/p;->RB()I

    move-result v2

    if-nez v2, :cond_74

    .line 121
    invoke-virtual {v6}, Lcom/android/common/exif/b;->Pd()V

    goto :goto_74

    .line 129
    :cond_cf
    array-length v2, v5

    move v0, v3

    :goto_d1
    if-ge v0, v2, :cond_e4

    aget-object v6, v5, v0

    .line 130
    if-eqz v6, :cond_e1

    invoke-virtual {v6}, Lcom/android/common/exif/p;->RB()I
    :try_end_da
    .catchall {:try_start_b0 .. :try_end_da} :catchall_85

    move-result v6

    if-lez v6, :cond_e1

    .line 136
    invoke-static {v1}, Lcom/android/common/exif/o;->QW(Ljava/io/Closeable;)V

    .line 131
    return v3

    .line 129
    :cond_e1
    add-int/lit8 v0, v0, 0x1

    goto :goto_d1

    .line 134
    :cond_e4
    :try_start_e4
    invoke-direct {p0}, Lcom/android/common/exif/f;->Pg()V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_85

    .line 136
    invoke-static {v1}, Lcom/android/common/exif/o;->QW(Ljava/io/Closeable;)V

    .line 138
    return v4

    .line 135
    :catchall_eb
    move-exception v0

    move-object v1, v2

    goto :goto_86

    :cond_ee
    move v0, v3

    goto/16 :goto_45

    .line 103
    nop

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_79
        :pswitch_8a
    .end packed-switch
.end method
