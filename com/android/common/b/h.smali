.class public Lcom/android/common/b/h;
.super Lcom/android/common/b/a;
.source "SourceFile"


# instance fields
.field private bf:Landroid/content/ContentResolver;

.field private bg:Landroid/content/ContentValues;

.field private bh:I

.field private bi:I

.field private bj:Z

.field private bk:I

.field private bl:Ljava/lang/String;

.field private bm:Lcom/android/common/storagemanager/f;

.field private bn:Lcom/android/common/m/c;

.field private bo:I

.field private bp:I

.field private bq:[B

.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;[BIILandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/ContentValues;Lcom/android/common/b/f;)V
    .registers 15

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p5}, Lcom/android/common/b/a;-><init>(Lcom/android/common/appService/W;Landroid/util/SparseArray;)V

    .line 33
    iput-object v1, p0, Lcom/android/common/b/h;->bq:[B

    .line 34
    iput-object v1, p0, Lcom/android/common/b/h;->bl:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/android/common/b/h;->mFileName:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/android/common/b/h;->bg:Landroid/content/ContentValues;

    .line 37
    iput v0, p0, Lcom/android/common/b/h;->bp:I

    .line 38
    iput v0, p0, Lcom/android/common/b/h;->bh:I

    .line 39
    iput v0, p0, Lcom/android/common/b/h;->bk:I

    .line 45
    iput-boolean v0, p0, Lcom/android/common/b/h;->bj:Z

    .line 46
    iput v0, p0, Lcom/android/common/b/h;->bi:I

    .line 62
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qa()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/b/h;->bf:Landroid/content/ContentResolver;

    .line 63
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qj()I

    move-result v1

    iput v1, p0, Lcom/android/common/b/h;->bo:I

    .line 64
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/b/h;->bn:Lcom/android/common/m/c;

    .line 65
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/b/h;->bm:Lcom/android/common/storagemanager/f;

    .line 66
    iput-object p2, p0, Lcom/android/common/b/h;->bq:[B

    .line 67
    iput-object p6, p0, Lcom/android/common/b/h;->bl:Ljava/lang/String;

    .line 68
    iput-object p7, p0, Lcom/android/common/b/h;->mFileName:Ljava/lang/String;

    .line 69
    iput-object p11, p0, Lcom/android/common/b/h;->bg:Landroid/content/ContentValues;

    .line 70
    iput p3, p0, Lcom/android/common/b/h;->bp:I

    .line 71
    iput p4, p0, Lcom/android/common/b/h;->bh:I

    .line 72
    iput p8, p0, Lcom/android/common/b/h;->bk:I

    .line 73
    iput-boolean p9, p0, Lcom/android/common/b/h;->bj:Z

    .line 74
    iget-object v1, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    iput-object p12, v1, Lcom/android/common/storagemanager/c;->aab:Lcom/android/common/b/f;

    .line 75
    if-eqz p10, :cond_49

    invoke-static {p1}, Lcom/android/common/h;->apa(Lcom/android/common/appService/W;)I

    move-result v0

    :cond_49
    iput v0, p0, Lcom/android/common/b/h;->bi:I

    .line 60
    return-void
.end method


# virtual methods
.method public bg()Lcom/android/common/storagemanager/c;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/common/b/h;->bq:[B

    if-nez v0, :cond_18

    .line 81
    const-string/jumbo v0, "YuvStorageRequest"

    const-string/jumbo v1, "YUV can not be null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aae:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 83
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 85
    :cond_18
    iget-object v0, p0, Lcom/android/common/b/h;->bl:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 86
    const-string/jumbo v0, "YuvStorageRequest"

    const-string/jumbo v1, "Path can not be null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aaf:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 88
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 90
    :cond_2e
    iget-object v0, p0, Lcom/android/common/b/h;->bl:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/common/l/c;->agi(Ljava/lang/String;)Z

    .line 94
    iget v0, p0, Lcom/android/common/b/h;->bk:I

    if-eqz v0, :cond_b6

    iget-boolean v0, p0, Lcom/android/common/b/h;->bj:Z

    .line 95
    :goto_39
    iget v2, p0, Lcom/android/common/b/h;->bi:I

    if-eqz v2, :cond_b8

    const/4 v2, 0x1

    move v4, v2

    .line 96
    :goto_3f
    if-nez v0, :cond_43

    if-eqz v4, :cond_16b

    .line 97
    :cond_43
    new-instance v2, Lcom/nubia/camera/common/Native/BufferCell;

    iget v5, p0, Lcom/android/common/b/h;->bp:I

    iget v6, p0, Lcom/android/common/b/h;->bh:I

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v5}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(I)V

    .line 100
    :goto_51
    if-eqz v0, :cond_ba

    .line 101
    new-instance v5, Lcom/nubia/camera/common/Native/BufferCell;

    iget-object v6, p0, Lcom/android/common/b/h;->bq:[B

    invoke-direct {v5, v6}, Lcom/nubia/camera/common/Native/BufferCell;-><init>([B)V

    .line 102
    iget v6, p0, Lcom/android/common/b/h;->bk:I

    rem-int/lit16 v6, v6, 0xb4

    if-eqz v6, :cond_68

    .line 103
    iget v6, p0, Lcom/android/common/b/h;->bp:I

    .line 104
    iget v7, p0, Lcom/android/common/b/h;->bh:I

    iput v7, p0, Lcom/android/common/b/h;->bp:I

    .line 105
    iput v6, p0, Lcom/android/common/b/h;->bh:I

    .line 107
    :cond_68
    new-instance v6, Lcom/nubia/camera/common/Native/YUVAlgorithm;

    invoke-direct {v6}, Lcom/nubia/camera/common/Native/YUVAlgorithm;-><init>()V

    iget v6, p0, Lcom/android/common/b/h;->bp:I

    iget v7, p0, Lcom/android/common/b/h;->bh:I

    iget v8, p0, Lcom/android/common/b/h;->bk:I

    rsub-int v8, v8, 0x168

    invoke-static {v5, v2, v6, v7, v8}, Lcom/nubia/camera/common/Native/YUVAlgorithm;->btR(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;III)V

    .line 109
    invoke-virtual {v5}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 114
    :cond_7b
    :goto_7b
    if-eqz v4, :cond_88

    .line 115
    iget v4, p0, Lcom/android/common/b/h;->bp:I

    iget v5, p0, Lcom/android/common/b/h;->bh:I

    iget v6, p0, Lcom/android/common/b/h;->bi:I

    if-eqz v0, :cond_c2

    :goto_85
    invoke-static {v2, v4, v5, v6, v1}, Lcom/nubia/camera/common/Native/PrettyWaterMarkEffect;->btP(Lcom/nubia/camera/common/Native/BufferCell;IIII)V

    .line 118
    :cond_88
    if-eqz v2, :cond_93

    .line 119
    invoke-virtual {v2}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/h;->bq:[B

    .line 120
    invoke-virtual {v2}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 123
    :cond_93
    iget-boolean v0, p0, Lcom/android/common/b/h;->ap:Z

    if-eqz v0, :cond_c5

    .line 124
    iget-object v0, p0, Lcom/android/common/b/h;->bm:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agx()J

    move-result-wide v0

    .line 125
    const-wide/32 v4, 0x6400000

    cmp-long v0, v0, v4

    if-gtz v0, :cond_c5

    .line 126
    const-string/jumbo v0, "YuvStorageRequest"

    const-string/jumbo v1, "storage is not enough"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 128
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    :cond_b6
    move v0, v1

    .line 94
    goto :goto_39

    :cond_b8
    move v4, v1

    .line 95
    goto :goto_3f

    .line 110
    :cond_ba
    if-eqz v4, :cond_7b

    .line 111
    iget-object v5, p0, Lcom/android/common/b/h;->bq:[B

    invoke-virtual {v2, v5}, Lcom/nubia/camera/common/Native/BufferCell;->btY([B)V

    goto :goto_7b

    .line 115
    :cond_c2
    iget v1, p0, Lcom/android/common/b/h;->bk:I

    goto :goto_85

    .line 131
    :cond_c5
    iget-object v0, p0, Lcom/android/common/b/h;->bq:[B

    iget v1, p0, Lcom/android/common/b/h;->bp:I

    iget v2, p0, Lcom/android/common/b/h;->bh:I

    const/16 v4, 0x50

    invoke-static {v0, v1, v2, v4}, Lcom/android/common/l/b;->agf([BIII)Lcom/android/common/l/e;

    move-result-object v1

    .line 132
    iget-boolean v0, v1, Lcom/android/common/l/e;->ZT:Z

    if-nez v0, :cond_e0

    .line 133
    iput-object v3, v1, Lcom/android/common/l/e;->ZS:[B

    .line 135
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aag:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 136
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 138
    :cond_e0
    iget-object v0, v1, Lcom/android/common/l/e;->ZS:[B

    .line 139
    iput-object v3, v1, Lcom/android/common/l/e;->ZS:[B

    .line 141
    iget-object v1, p0, Lcom/android/common/b/h;->ao:Landroid/util/SparseArray;

    if-eqz v1, :cond_fe

    if-eqz v0, :cond_fe

    .line 142
    iget-object v1, p0, Lcom/android/common/b/h;->ao:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Lcom/android/common/l/a;->age([BLandroid/util/SparseArray;)[B

    move-result-object v0

    .line 143
    if-eqz v0, :cond_f5

    array-length v1, v0

    if-nez v1, :cond_fe

    .line 144
    :cond_f5
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aah:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 145
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 148
    :cond_fe
    if-eqz v0, :cond_15f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/common/b/h;->bl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/b/h;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/common/l/c;->agh(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 152
    iget-object v0, p0, Lcom/android/common/b/h;->bg:Landroid/content/ContentValues;

    if-eqz v0, :cond_168

    .line 153
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    .line 154
    iget-object v1, p0, Lcom/android/common/b/h;->bf:Landroid/content/ContentResolver;

    .line 155
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 156
    iget-object v3, p0, Lcom/android/common/b/h;->bg:Landroid/content/ContentValues;

    .line 153
    invoke-static {v1, v2, v3}, Lcom/android/common/l/d;->agj(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 157
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    iget-object v0, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    if-nez v0, :cond_168

    .line 158
    const-string/jumbo v0, "YuvStorageRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "yuv:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/b/h;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aad:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 160
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 149
    :cond_15f
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 150
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 163
    :cond_168
    iget-object v0, p0, Lcom/android/common/b/h;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    :cond_16b
    move-object v2, v3

    goto/16 :goto_51
.end method

.method public bh(Lcom/android/common/storagemanager/c;)V
    .registers 9

    .prologue
    .line 168
    iget-object v0, p1, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    if-eq v0, v1, :cond_23

    .line 169
    const-string/jumbo v0, "YuvStorageRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no thumbnail request because storage fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 172
    :cond_23
    iget v0, p0, Lcom/android/common/b/h;->bo:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/common/b/h;->bp:I

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 173
    new-instance v0, Lcom/android/common/d/b;

    .line 174
    iget-object v1, p1, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 175
    iget-object v2, p0, Lcom/android/common/b/h;->bq:[B

    .line 176
    iget-boolean v3, p0, Lcom/android/common/b/h;->bj:Z

    if-eqz v3, :cond_43

    const/4 v3, 0x0

    .line 178
    :goto_36
    iget v5, p0, Lcom/android/common/b/h;->bp:I

    .line 179
    iget v6, p0, Lcom/android/common/b/h;->bh:I

    .line 173
    invoke-direct/range {v0 .. v6}, Lcom/android/common/d/b;-><init>(Landroid/net/Uri;[BIFII)V

    .line 180
    iget-object v1, p0, Lcom/android/common/b/h;->bn:Lcom/android/common/m/c;

    invoke-virtual {v1, v0}, Lcom/android/common/m/c;->ahk(Lcom/android/common/d/e;)V

    .line 167
    return-void

    .line 176
    :cond_43
    iget v3, p0, Lcom/android/common/b/h;->bk:I

    goto :goto_36
.end method
