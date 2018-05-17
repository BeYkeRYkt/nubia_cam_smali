.class public Lcom/android/dng/b;
.super Lcom/android/common/b/a;
.source "SourceFile"


# instance fields
.field azH:Landroid/content/ContentResolver;

.field private azI:Lcom/android/common/storagemanager/f;

.field private azJ:Ljava/lang/String;

.field private azK:Ljava/lang/String;

.field private azL:[B

.field private azM:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/common/appService/W;)V
    .registers 7

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p5, v0}, Lcom/android/common/b/a;-><init>(Lcom/android/common/appService/W;Landroid/util/SparseArray;)V

    .line 29
    iput-object p1, p0, Lcom/android/dng/b;->azL:[B

    .line 30
    iput-object p2, p0, Lcom/android/dng/b;->azK:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/android/dng/b;->azJ:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/android/dng/b;->azM:Landroid/content/ContentValues;

    .line 33
    invoke-virtual {p5}, Lcom/android/common/appService/W;->qa()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dng/b;->azH:Landroid/content/ContentResolver;

    .line 34
    invoke-virtual {p5}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dng/b;->azI:Lcom/android/common/storagemanager/f;

    .line 27
    return-void
.end method


# virtual methods
.method public bg()Lcom/android/common/storagemanager/c;
    .registers 5

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/dng/b;->ap:Z

    if-eqz v0, :cond_23

    .line 40
    iget-object v0, p0, Lcom/android/dng/b;->azI:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agx()J

    move-result-wide v0

    .line 41
    const-wide/32 v2, 0x6400000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_23

    .line 42
    const-string/jumbo v0, "MTKDngRawStorageRequset"

    const-string/jumbo v1, "storage is not enough"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/android/dng/b;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 44
    iget-object v0, p0, Lcom/android/dng/b;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 47
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dng/b;->azK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dng/b;->azJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dng/b;->azL:[B

    invoke-static {v0, v1}, Lcom/android/common/l/c;->agh(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_50

    .line 48
    iget-object v0, p0, Lcom/android/dng/b;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 49
    iget-object v0, p0, Lcom/android/dng/b;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 51
    :cond_50
    iget-object v0, p0, Lcom/android/dng/b;->aq:Lcom/android/common/storagemanager/c;

    iget-object v1, p0, Lcom/android/dng/b;->azH:Landroid/content/ContentResolver;

    const-string/jumbo v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dng/b;->azM:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 52
    iget-object v0, p0, Lcom/android/dng/b;->aq:Lcom/android/common/storagemanager/c;

    iget-object v0, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    if-nez v0, :cond_72

    .line 53
    iget-object v0, p0, Lcom/android/dng/b;->aq:Lcom/android/common/storagemanager/c;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aad:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 54
    iget-object v0, p0, Lcom/android/dng/b;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 56
    :cond_72
    iget-object v0, p0, Lcom/android/dng/b;->aq:Lcom/android/common/storagemanager/c;

    return-object v0
.end method

.method public bh(Lcom/android/common/storagemanager/c;)V
    .registers 2

    .prologue
    .line 60
    return-void
.end method
