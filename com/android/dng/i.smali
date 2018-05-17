.class public Lcom/android/dng/i;
.super Lcom/android/common/b/a;
.source "SourceFile"


# instance fields
.field private aAs:Landroid/content/ContentResolver;

.field private aAt:Landroid/content/ContentValues;

.field private aAu:Ljava/lang/String;

.field private aAv:Ljava/lang/String;

.field private aAw:[B

.field private aAx:Lcom/android/common/storagemanager/f;

.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/common/b/f;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, v1}, Lcom/android/common/b/a;-><init>(Lcom/android/common/appService/W;Landroid/util/SparseArray;)V

    .line 20
    iput-object v1, p0, Lcom/android/dng/i;->aAw:[B

    .line 21
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/dng/i;->aAu:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/android/dng/i;->aAv:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/android/dng/i;->mFileName:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/android/dng/i;->aAt:Landroid/content/ContentValues;

    .line 37
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qa()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dng/i;->aAs:Landroid/content/ContentResolver;

    .line 38
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dng/i;->aAx:Lcom/android/common/storagemanager/f;

    .line 39
    iput-object p2, p0, Lcom/android/dng/i;->aAw:[B

    .line 40
    iput-object p3, p0, Lcom/android/dng/i;->aAu:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/android/dng/i;->aAv:Ljava/lang/String;

    .line 42
    iput-object p5, p0, Lcom/android/dng/i;->mFileName:Ljava/lang/String;

    .line 43
    iput-object p6, p0, Lcom/android/dng/i;->aAt:Landroid/content/ContentValues;

    .line 44
    iget-object v0, p0, Lcom/android/dng/i;->aq:Lcom/android/common/storagemanager/c;

    iput-object p7, v0, Lcom/android/common/storagemanager/c;->aab:Lcom/android/common/b/f;

    .line 35
    return-void
.end method


# virtual methods
.method public bg()Lcom/android/common/storagemanager/c;
    .registers 6

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/dng/i;->aAw:[B

    if-nez v0, :cond_16

    .line 50
    const-string/jumbo v0, "DngStorageRequest"

    const-string/jumbo v1, "raw can not be null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/dng/i;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aae:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 52
    iget-object v0, p0, Lcom/android/dng/i;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 55
    :cond_16
    iget-object v0, p0, Lcom/android/dng/i;->aAv:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/dng/i;->mFileName:Ljava/lang/String;

    if-nez v0, :cond_30

    .line 56
    :cond_1e
    const-string/jumbo v0, "DngStorageRequest"

    const-string/jumbo v1, "path can not be null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/dng/i;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aaf:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 58
    iget-object v0, p0, Lcom/android/dng/i;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 60
    :cond_30
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/dng/i;->aAv:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 66
    :goto_43
    iget-boolean v0, p0, Lcom/android/dng/i;->ap:Z

    if-eqz v0, :cond_6a

    .line 67
    iget-object v0, p0, Lcom/android/dng/i;->aAx:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agx()J

    move-result-wide v0

    .line 68
    const-wide/32 v2, 0x6400000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6a

    .line 69
    const-string/jumbo v0, "DngStorageRequest"

    const-string/jumbo v1, "storage is not enough"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/android/dng/i;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 71
    iget-object v0, p0, Lcom/android/dng/i;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 62
    :cond_66
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_43

    .line 75
    :cond_6a
    new-instance v0, Lcom/android/dng/DngCreator;

    invoke-direct {v0}, Lcom/android/dng/DngCreator;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/android/dng/i;->aAw:[B

    iget-object v2, p0, Lcom/android/dng/i;->aAu:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/dng/i;->aAv:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dng/i;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dng/DngCreator;->raw2Dng([BLjava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "DngStorageRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "File:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dng/i;->aAv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dng/i;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/dng/i;->aAt:Landroid/content/ContentValues;

    if-eqz v0, :cond_f1

    .line 80
    iget-object v0, p0, Lcom/android/dng/i;->aq:Lcom/android/common/storagemanager/c;

    iget-object v1, p0, Lcom/android/dng/i;->aAs:Landroid/content/ContentResolver;

    .line 81
    const-string/jumbo v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/android/dng/i;->aAt:Landroid/content/ContentValues;

    .line 80
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 83
    const-string/jumbo v0, "DngStorageRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dng/i;->aq:Lcom/android/common/storagemanager/c;

    iget-object v2, v2, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/dng/i;->aq:Lcom/android/common/storagemanager/c;

    iget-object v0, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    if-nez v0, :cond_f1

    .line 85
    iget-object v0, p0, Lcom/android/dng/i;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aad:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 86
    iget-object v0, p0, Lcom/android/dng/i;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 89
    :cond_f1
    iget-object v0, p0, Lcom/android/dng/i;->aq:Lcom/android/common/storagemanager/c;

    return-object v0
.end method

.method public bh(Lcom/android/common/storagemanager/c;)V
    .registers 2

    .prologue
    .line 93
    return-void
.end method
