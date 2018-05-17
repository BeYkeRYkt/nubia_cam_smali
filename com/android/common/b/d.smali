.class public Lcom/android/common/b/d;
.super Lcom/android/common/b/a;
.source "SourceFile"


# instance fields
.field private aO:Lcom/android/common/appService/W;

.field private aP:Landroid/graphics/Bitmap;

.field private aQ:Landroid/content/ContentResolver;

.field private aR:Landroid/content/ContentValues;

.field private aS:I

.field private aT:Ljava/lang/String;

.field private aU:Landroid/content/res/Resources;

.field private aV:Lcom/android/common/storagemanager/f;

.field private aW:Lcom/android/common/m/c;

.field private aX:I

.field private aY:I

.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p3}, Lcom/android/common/b/a;-><init>(Lcom/android/common/appService/W;Landroid/util/SparseArray;)V

    .line 33
    iput-object v0, p0, Lcom/android/common/b/d;->aP:Landroid/graphics/Bitmap;

    .line 34
    iput-object v0, p0, Lcom/android/common/b/d;->aT:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/android/common/b/d;->mFileName:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/android/common/b/d;->aR:Landroid/content/ContentValues;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/b/d;->aS:I

    .line 58
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/d;->aU:Landroid/content/res/Resources;

    .line 59
    invoke-static {p1}, Lcom/android/common/h;->apa(Lcom/android/common/appService/W;)I

    move-result v0

    iput v0, p0, Lcom/android/common/b/d;->aY:I

    .line 60
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qa()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/d;->aQ:Landroid/content/ContentResolver;

    .line 61
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qj()I

    move-result v0

    iput v0, p0, Lcom/android/common/b/d;->aX:I

    .line 62
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/d;->aW:Lcom/android/common/m/c;

    .line 63
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/d;->aV:Lcom/android/common/storagemanager/f;

    .line 64
    iput-object p1, p0, Lcom/android/common/b/d;->aO:Lcom/android/common/appService/W;

    .line 65
    iput-object p2, p0, Lcom/android/common/b/d;->aP:Landroid/graphics/Bitmap;

    .line 66
    iput-object p4, p0, Lcom/android/common/b/d;->aT:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/android/common/b/d;->mFileName:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/android/common/b/d;->aR:Landroid/content/ContentValues;

    .line 69
    iput p7, p0, Lcom/android/common/b/d;->aS:I

    .line 70
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    iput-object p8, v0, Lcom/android/common/storagemanager/c;->aab:Lcom/android/common/b/f;

    .line 56
    return-void
.end method

.method private bj()Z
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/common/b/d;->aO:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jh:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_c

    .line 148
    const/4 v0, 0x1

    return v0

    .line 150
    :cond_c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public bg()Lcom/android/common/storagemanager/c;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 75
    iget-object v1, p0, Lcom/android/common/b/d;->aP:Landroid/graphics/Bitmap;

    if-nez v1, :cond_18

    .line 76
    const-string/jumbo v0, "BitmapStorageRequest"

    const-string/jumbo v1, "bitmap can not be null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aae:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 78
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 80
    :cond_18
    iget-object v1, p0, Lcom/android/common/b/d;->aT:Ljava/lang/String;

    if-nez v1, :cond_2e

    .line 81
    const-string/jumbo v0, "BitmapStorageRequest"

    const-string/jumbo v1, "path can not be null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aaf:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 83
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 85
    :cond_2e
    iget-object v1, p0, Lcom/android/common/b/d;->aT:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/common/l/c;->agi(Ljava/lang/String;)Z

    .line 87
    iget-boolean v1, p0, Lcom/android/common/b/d;->ap:Z

    if-eqz v1, :cond_56

    .line 88
    iget-object v1, p0, Lcom/android/common/b/d;->aV:Lcom/android/common/storagemanager/f;

    invoke-virtual {v1}, Lcom/android/common/storagemanager/f;->agx()J

    move-result-wide v2

    .line 89
    const-wide/32 v4, 0x6400000

    cmp-long v1, v2, v4

    if-gtz v1, :cond_56

    .line 90
    const-string/jumbo v0, "BitmapStorageRequest"

    const-string/jumbo v1, "storage is not enough"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 92
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 96
    :cond_56
    iget v1, p0, Lcom/android/common/b/d;->aY:I

    if-eqz v1, :cond_6b

    .line 97
    invoke-direct {p0}, Lcom/android/common/b/d;->bj()Z

    move-result v1

    if-eqz v1, :cond_62

    iget v0, p0, Lcom/android/common/b/d;->aS:I

    .line 98
    :cond_62
    iget v1, p0, Lcom/android/common/b/d;->aY:I

    .line 99
    iget-object v2, p0, Lcom/android/common/b/d;->aU:Landroid/content/res/Resources;

    .line 100
    iget-object v3, p0, Lcom/android/common/b/d;->aP:Landroid/graphics/Bitmap;

    .line 97
    invoke-static {v0, v1, v2, v3}, Lcom/android/common/w;->arH(IILandroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 102
    :cond_6b
    iget-object v0, p0, Lcom/android/common/b/d;->aP:Landroid/graphics/Bitmap;

    const/16 v1, 0x5f

    invoke-static {v0, v1}, Lcom/android/common/l/b;->agg(Landroid/graphics/Bitmap;I)Lcom/android/common/l/e;

    move-result-object v1

    .line 103
    iget-boolean v0, v1, Lcom/android/common/l/e;->ZT:Z

    if-nez v0, :cond_82

    .line 104
    iput-object v6, v1, Lcom/android/common/l/e;->ZS:[B

    .line 106
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aag:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 107
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 109
    :cond_82
    iget-object v0, v1, Lcom/android/common/l/e;->ZS:[B

    .line 110
    iput-object v6, v1, Lcom/android/common/l/e;->ZS:[B

    .line 112
    iget-object v1, p0, Lcom/android/common/b/d;->ao:Landroid/util/SparseArray;

    if-eqz v1, :cond_a0

    if-eqz v0, :cond_a0

    .line 113
    iget-object v1, p0, Lcom/android/common/b/d;->ao:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Lcom/android/common/l/a;->age([BLandroid/util/SparseArray;)[B

    move-result-object v0

    .line 114
    if-eqz v0, :cond_97

    array-length v1, v0

    if-nez v1, :cond_a0

    .line 115
    :cond_97
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aah:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 116
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 119
    :cond_a0
    if-eqz v0, :cond_fc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/common/b/d;->aT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/b/d;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/common/l/c;->agh(Ljava/lang/String;[B)Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 123
    iget-object v0, p0, Lcom/android/common/b/d;->aR:Landroid/content/ContentValues;

    if-eqz v0, :cond_105

    .line 124
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    .line 125
    iget-object v1, p0, Lcom/android/common/b/d;->aQ:Landroid/content/ContentResolver;

    .line 126
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 127
    iget-object v3, p0, Lcom/android/common/b/d;->aR:Landroid/content/ContentValues;

    .line 124
    invoke-static {v1, v2, v3}, Lcom/android/common/l/d;->agj(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 128
    const-string/jumbo v0, "BitmapStorageRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    iget-object v2, v2, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    iget-object v0, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    if-nez v0, :cond_105

    .line 130
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aad:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 131
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 120
    :cond_fc
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 121
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 136
    :cond_105
    iget-object v0, p0, Lcom/android/common/b/d;->aq:Lcom/android/common/storagemanager/c;

    return-object v0
.end method

.method public bh(Lcom/android/common/storagemanager/c;)V
    .registers 7

    .prologue
    .line 154
    iget-object v0, p1, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    if-eq v0, v1, :cond_23

    .line 155
    const-string/jumbo v0, "BitmapStorageRequest"

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

    .line 156
    return-void

    .line 158
    :cond_23
    iget v0, p0, Lcom/android/common/b/d;->aX:I

    int-to-float v0, v0

    .line 159
    iget-object v1, p0, Lcom/android/common/b/d;->aP:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 158
    div-float/2addr v0, v1

    .line 160
    new-instance v1, Lcom/android/common/d/c;

    .line 161
    iget-object v2, p1, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 162
    iget-object v3, p0, Lcom/android/common/b/d;->aP:Landroid/graphics/Bitmap;

    .line 163
    iget v4, p0, Lcom/android/common/b/d;->aS:I

    .line 160
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/common/d/c;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IF)V

    .line 165
    iget-object v0, p0, Lcom/android/common/b/d;->aW:Lcom/android/common/m/c;

    invoke-virtual {v0, v1}, Lcom/android/common/m/c;->ahk(Lcom/android/common/d/e;)V

    .line 153
    return-void
.end method
