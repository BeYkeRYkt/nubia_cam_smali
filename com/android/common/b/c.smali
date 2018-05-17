.class public Lcom/android/common/b/c;
.super Lcom/android/common/b/a;
.source "SourceFile"


# instance fields
.field private aE:Lcom/android/common/appService/W;

.field private aF:Landroid/content/ContentResolver;

.field private aG:Landroid/content/ContentValues;

.field private aH:[B

.field private aI:I

.field private aJ:Ljava/lang/String;

.field private aK:Landroid/content/res/Resources;

.field private aL:Lcom/android/common/storagemanager/f;

.field private aM:Lcom/android/common/m/c;

.field private aN:I

.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p3}, Lcom/android/common/b/a;-><init>(Lcom/android/common/appService/W;Landroid/util/SparseArray;)V

    .line 33
    iput-object v0, p0, Lcom/android/common/b/c;->aH:[B

    .line 34
    iput-object v0, p0, Lcom/android/common/b/c;->aJ:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/android/common/b/c;->mFileName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/android/common/b/c;->aG:Landroid/content/ContentValues;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/b/c;->aI:I

    .line 56
    iput-object p1, p0, Lcom/android/common/b/c;->aE:Lcom/android/common/appService/W;

    .line 57
    iget-object v0, p0, Lcom/android/common/b/c;->aE:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/c;->aK:Landroid/content/res/Resources;

    .line 58
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qa()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/c;->aF:Landroid/content/ContentResolver;

    .line 59
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qj()I

    move-result v0

    iput v0, p0, Lcom/android/common/b/c;->aN:I

    .line 60
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/c;->aM:Lcom/android/common/m/c;

    .line 61
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/c;->aL:Lcom/android/common/storagemanager/f;

    .line 62
    iput-object p2, p0, Lcom/android/common/b/c;->aH:[B

    .line 63
    iput-object p4, p0, Lcom/android/common/b/c;->aJ:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/android/common/b/c;->mFileName:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lcom/android/common/b/c;->aG:Landroid/content/ContentValues;

    .line 66
    iput p7, p0, Lcom/android/common/b/c;->aI:I

    .line 67
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    iput-object p8, v0, Lcom/android/common/storagemanager/c;->aab:Lcom/android/common/b/f;

    .line 54
    return-void
.end method

.method private bi([B)[B
    .registers 6

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/common/b/c;->aE:Lcom/android/common/appService/W;

    invoke-static {v0}, Lcom/android/common/h;->apa(Lcom/android/common/appService/W;)I

    move-result v0

    .line 132
    if-nez v0, :cond_9

    return-object p1

    .line 133
    :cond_9
    invoke-static {p1}, Lcom/android/common/h;->apk([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 134
    iget v2, p0, Lcom/android/common/b/c;->aI:I

    .line 136
    iget-object v3, p0, Lcom/android/common/b/c;->aK:Landroid/content/res/Resources;

    .line 134
    invoke-static {v2, v0, v3, v1}, Lcom/android/common/w;->arH(IILandroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 138
    new-instance v0, Lcom/android/common/l/e;

    invoke-direct {v0}, Lcom/android/common/l/e;-><init>()V

    .line 139
    const/16 v0, 0x5a

    invoke-static {v1, v0}, Lcom/android/common/l/b;->agg(Landroid/graphics/Bitmap;I)Lcom/android/common/l/e;

    move-result-object v0

    .line 140
    iget-boolean v1, v0, Lcom/android/common/l/e;->ZT:Z

    if-nez v1, :cond_2d

    .line 141
    const-string/jumbo v0, "JpegStorageRequest"

    const-string/jumbo v1, "because compress jpeg fialed, add water mark fail"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-object p1

    .line 144
    :cond_2d
    iget-object v0, v0, Lcom/android/common/l/e;->ZS:[B

    return-object v0
.end method


# virtual methods
.method public bg()Lcom/android/common/storagemanager/c;
    .registers 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/common/b/c;->aH:[B

    if-nez v0, :cond_16

    .line 73
    const-string/jumbo v0, "JpegStorageRequest"

    const-string/jumbo v1, "Jpeg can not be null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aae:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 75
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 77
    :cond_16
    iget-object v0, p0, Lcom/android/common/b/c;->aJ:Ljava/lang/String;

    if-nez v0, :cond_2c

    .line 78
    const-string/jumbo v0, "JpegStorageRequest"

    const-string/jumbo v1, "Path can not be null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aaf:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 80
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 82
    :cond_2c
    iget-object v0, p0, Lcom/android/common/b/c;->aJ:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/common/l/c;->agi(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 83
    const-string/jumbo v0, "JpegStorageRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mkdirs fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/b/c;->aJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_50
    iget-boolean v0, p0, Lcom/android/common/b/c;->ap:Z

    if-eqz v0, :cond_73

    .line 87
    iget-object v0, p0, Lcom/android/common/b/c;->aL:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agx()J

    move-result-wide v0

    .line 88
    const-wide/32 v2, 0x6400000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_73

    .line 89
    const-string/jumbo v0, "JpegStorageRequest"

    const-string/jumbo v1, "storage is not enough"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 91
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 95
    :cond_73
    iget-object v0, p0, Lcom/android/common/b/c;->ao:Landroid/util/SparseArray;

    if-eqz v0, :cond_8d

    .line 96
    iget-object v0, p0, Lcom/android/common/b/c;->aH:[B

    iget-object v1, p0, Lcom/android/common/b/c;->ao:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Lcom/android/common/l/a;->age([BLandroid/util/SparseArray;)[B

    move-result-object v0

    .line 97
    if-eqz v0, :cond_84

    array-length v1, v0

    if-nez v1, :cond_8f

    .line 98
    :cond_84
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aah:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 99
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 102
    :cond_8d
    iget-object v0, p0, Lcom/android/common/b/c;->aH:[B

    .line 105
    :cond_8f
    iget-object v1, p0, Lcom/android/common/b/c;->aE:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    if-ne v1, v2, :cond_aa

    .line 107
    invoke-direct {p0, v0}, Lcom/android/common/b/c;->bi([B)[B

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/common/b/c;->aG:Landroid/content/ContentValues;

    const-string/jumbo v2, "_size"

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    :cond_aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/common/b/c;->aJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/b/c;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/common/l/c;->agh(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_ce

    .line 113
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 114
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 116
    :cond_ce
    const-string/jumbo v0, "JpegStorageRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/b/c;->aJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/b/c;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/common/b/c;->aG:Landroid/content/ContentValues;

    if-eqz v0, :cond_111

    .line 118
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    iget-object v1, p0, Lcom/android/common/b/c;->aF:Landroid/content/ContentResolver;

    .line 119
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 120
    iget-object v3, p0, Lcom/android/common/b/c;->aG:Landroid/content/ContentValues;

    .line 118
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 121
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    iget-object v0, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    if-nez v0, :cond_111

    .line 122
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aad:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 123
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 126
    :cond_111
    const-string/jumbo v0, "JpegStorageRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    iget-object v2, v2, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/common/b/c;->aq:Lcom/android/common/storagemanager/c;

    return-object v0
.end method

.method public bh(Lcom/android/common/storagemanager/c;)V
    .registers 7

    .prologue
    .line 149
    iget-object v0, p1, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    if-eq v0, v1, :cond_23

    .line 150
    const-string/jumbo v0, "JpegStorageRequest"

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

    .line 151
    return-void

    .line 153
    :cond_23
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 155
    iget-object v1, p0, Lcom/android/common/b/c;->aH:[B

    iget-object v2, p0, Lcom/android/common/b/c;->aH:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 156
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/android/common/b/c;->aN:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 158
    new-instance v1, Lcom/android/common/d/d;

    .line 159
    iget-object v2, p1, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 160
    iget-object v3, p0, Lcom/android/common/b/c;->aH:[B

    .line 161
    iget v4, p0, Lcom/android/common/b/c;->aI:I

    .line 158
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/common/d/d;-><init>(Landroid/net/Uri;[BII)V

    .line 163
    iget-object v0, p0, Lcom/android/common/b/c;->aM:Lcom/android/common/m/c;

    invoke-virtual {v0, v1}, Lcom/android/common/m/c;->ahk(Lcom/android/common/d/e;)V

    .line 148
    return-void
.end method
