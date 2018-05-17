.class public Lcom/android/common/b/b;
.super Lcom/android/common/b/a;
.source "SourceFile"


# instance fields
.field private aA:I

.field private aB:I

.field private aC:Landroid/graphics/Matrix;

.field private aD:I

.field private ar:Landroid/graphics/Bitmap;

.field private as:Lcom/android/common/appService/CameraMember;

.field private at:Landroid/content/ContentResolver;

.field private au:Landroid/content/ContentValues;

.field private av:Ljava/nio/ByteBuffer;

.field private aw:Ljava/lang/String;

.field private ax:Landroid/content/res/Resources;

.field private ay:Lcom/android/common/storagemanager/f;

.field private az:Lcom/android/common/m/c;

.field private height:I

.field private mName:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;ILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/content/ContentValues;Lcom/android/common/b/f;)V
    .registers 13

    .prologue
    .line 66
    invoke-direct {p0, p1, p9}, Lcom/android/common/b/a;-><init>(Lcom/android/common/appService/W;Landroid/util/SparseArray;)V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/b/b;->au:Landroid/content/ContentValues;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/b/b;->aB:I

    .line 67
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qa()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/b;->at:Landroid/content/ContentResolver;

    .line 68
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/b;->ax:Landroid/content/res/Resources;

    .line 69
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qj()I

    move-result v0

    iput v0, p0, Lcom/android/common/b/b;->aA:I

    .line 70
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/b;->az:Lcom/android/common/m/c;

    .line 71
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/b;->ay:Lcom/android/common/storagemanager/f;

    .line 72
    invoke-static {p1}, Lcom/android/common/h;->apa(Lcom/android/common/appService/W;)I

    move-result v0

    iput v0, p0, Lcom/android/common/b/b;->aB:I

    .line 73
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/b;->as:Lcom/android/common/appService/CameraMember;

    .line 74
    iput-object p2, p0, Lcom/android/common/b/b;->av:Ljava/nio/ByteBuffer;

    .line 75
    iput p3, p0, Lcom/android/common/b/b;->width:I

    .line 76
    iput p4, p0, Lcom/android/common/b/b;->height:I

    .line 77
    iput-object p5, p0, Lcom/android/common/b/b;->aC:Landroid/graphics/Matrix;

    .line 78
    iput p6, p0, Lcom/android/common/b/b;->aD:I

    .line 79
    iput-object p10, p0, Lcom/android/common/b/b;->au:Landroid/content/ContentValues;

    .line 80
    iput-object p7, p0, Lcom/android/common/b/b;->aw:Ljava/lang/String;

    .line 81
    iput-object p8, p0, Lcom/android/common/b/b;->mName:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    iput-object p11, v0, Lcom/android/common/storagemanager/c;->aab:Lcom/android/common/b/f;

    .line 65
    return-void
.end method


# virtual methods
.method public bg()Lcom/android/common/storagemanager/c;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/common/b/b;->av:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_18

    .line 88
    const-string/jumbo v0, "ByteBufferStorageRequest"

    const-string/jumbo v1, "ByteBuffer can not be null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aae:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 90
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 92
    :cond_18
    iget-object v0, p0, Lcom/android/common/b/b;->aw:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 93
    const-string/jumbo v0, "ByteBufferStorageRequest"

    const-string/jumbo v1, "path can not be null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aaf:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 95
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 97
    :cond_2e
    iget-object v0, p0, Lcom/android/common/b/b;->aw:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/common/l/c;->agi(Ljava/lang/String;)Z

    .line 99
    iget-boolean v0, p0, Lcom/android/common/b/b;->ap:Z

    if-eqz v0, :cond_56

    .line 100
    iget-object v0, p0, Lcom/android/common/b/b;->ay:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agx()J

    move-result-wide v2

    .line 101
    const-wide/32 v4, 0x6400000

    cmp-long v0, v2, v4

    if-gtz v0, :cond_56

    .line 102
    const-string/jumbo v0, "ByteBufferStorageRequest"

    const-string/jumbo v1, "storage is not enough"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 104
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 107
    :cond_56
    iget v0, p0, Lcom/android/common/b/b;->width:I

    iget v2, p0, Lcom/android/common/b/b;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/b;->ar:Landroid/graphics/Bitmap;

    .line 108
    iget-object v0, p0, Lcom/android/common/b/b;->ar:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/common/b/b;->av:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 109
    iget-object v0, p0, Lcom/android/common/b/b;->ar:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/common/b/b;->width:I

    iget v4, p0, Lcom/android/common/b/b;->height:I

    iget-object v5, p0, Lcom/android/common/b/b;->aC:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/b;->ar:Landroid/graphics/Bitmap;

    .line 110
    iget v0, p0, Lcom/android/common/b/b;->aB:I

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/common/b/b;->as:Lcom/android/common/appService/CameraMember;

    sget-object v2, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-eq v0, v2, :cond_8c

    .line 111
    iget v0, p0, Lcom/android/common/b/b;->aB:I

    iget-object v2, p0, Lcom/android/common/b/b;->ax:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/common/b/b;->ar:Landroid/graphics/Bitmap;

    invoke-static {v1, v0, v2, v3}, Lcom/android/common/w;->arH(IILandroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 113
    :cond_8c
    iget-object v0, p0, Lcom/android/common/b/b;->ar:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/common/b/b;->aD:I

    invoke-static {v0, v1}, Lcom/android/common/l/b;->agg(Landroid/graphics/Bitmap;I)Lcom/android/common/l/e;

    move-result-object v1

    .line 114
    iget-boolean v0, v1, Lcom/android/common/l/e;->ZT:Z

    if-nez v0, :cond_a3

    .line 115
    iput-object v7, v1, Lcom/android/common/l/e;->ZS:[B

    .line 117
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aag:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 118
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 120
    :cond_a3
    iget-object v0, v1, Lcom/android/common/l/e;->ZS:[B

    .line 121
    iput-object v7, v1, Lcom/android/common/l/e;->ZS:[B

    .line 122
    iget-object v1, p0, Lcom/android/common/b/b;->ao:Landroid/util/SparseArray;

    if-eqz v1, :cond_c1

    if-eqz v0, :cond_c1

    .line 123
    iget-object v1, p0, Lcom/android/common/b/b;->ao:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Lcom/android/common/l/a;->age([BLandroid/util/SparseArray;)[B

    move-result-object v0

    .line 124
    if-eqz v0, :cond_b8

    array-length v1, v0

    if-nez v1, :cond_c1

    .line 125
    :cond_b8
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aah:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 126
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 129
    :cond_c1
    if-eqz v0, :cond_11d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/common/b/b;->aw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/b/b;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/common/l/c;->agh(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 133
    iget-object v0, p0, Lcom/android/common/b/b;->au:Landroid/content/ContentValues;

    if-eqz v0, :cond_126

    .line 134
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    iget-object v1, p0, Lcom/android/common/b/b;->at:Landroid/content/ContentResolver;

    .line 135
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 136
    iget-object v3, p0, Lcom/android/common/b/b;->au:Landroid/content/ContentValues;

    .line 134
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 137
    const-string/jumbo v0, "ByteBufferStorageRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    iget-object v2, v2, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    iget-object v0, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    if-nez v0, :cond_126

    .line 139
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aad:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 140
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 130
    :cond_11d
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 131
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 143
    :cond_126
    iget-object v0, p0, Lcom/android/common/b/b;->aq:Lcom/android/common/storagemanager/c;

    return-object v0
.end method

.method public bh(Lcom/android/common/storagemanager/c;)V
    .registers 7

    .prologue
    .line 148
    iget-object v0, p1, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    if-eq v0, v1, :cond_23

    .line 149
    const-string/jumbo v0, "ByteBufferStorageRequest"

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

    .line 150
    return-void

    .line 152
    :cond_23
    iget v0, p0, Lcom/android/common/b/b;->aA:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/common/b/b;->ar:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 153
    new-instance v1, Lcom/android/common/d/c;

    .line 154
    iget-object v2, p1, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 155
    iget-object v3, p0, Lcom/android/common/b/b;->ar:Landroid/graphics/Bitmap;

    .line 156
    const/4 v4, 0x0

    .line 153
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/common/d/c;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IF)V

    .line 158
    iget-object v0, p0, Lcom/android/common/b/b;->az:Lcom/android/common/m/c;

    invoke-virtual {v0, v1}, Lcom/android/common/m/c;->ahk(Lcom/android/common/d/e;)V

    .line 147
    return-void
.end method
