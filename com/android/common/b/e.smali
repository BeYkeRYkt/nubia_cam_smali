.class public Lcom/android/common/b/e;
.super Lcom/android/common/b/a;
.source "SourceFile"


# instance fields
.field private aZ:Landroid/content/ContentResolver;

.field private ba:Ljava/lang/String;

.field private bb:Landroid/content/ContentValues;

.field private bc:I

.field private bd:Lcom/android/common/m/c;

.field private be:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Landroid/content/ContentValues;Ljava/lang/String;ILcom/android/common/b/f;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/android/common/b/a;-><init>(Lcom/android/common/appService/W;Landroid/util/SparseArray;)V

    .line 19
    iput-object v0, p0, Lcom/android/common/b/e;->aZ:Landroid/content/ContentResolver;

    .line 31
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/e;->bd:Lcom/android/common/m/c;

    .line 32
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qj()I

    move-result v0

    iput v0, p0, Lcom/android/common/b/e;->be:I

    .line 33
    invoke-virtual {p1}, Lcom/android/common/appService/W;->qa()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/b/e;->aZ:Landroid/content/ContentResolver;

    .line 34
    iput-object p2, p0, Lcom/android/common/b/e;->bb:Landroid/content/ContentValues;

    .line 35
    iput-object p3, p0, Lcom/android/common/b/e;->ba:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/android/common/b/e;->aq:Lcom/android/common/storagemanager/c;

    iput-object p5, v0, Lcom/android/common/storagemanager/c;->aab:Lcom/android/common/b/f;

    .line 37
    iput p4, p0, Lcom/android/common/b/e;->bc:I

    .line 29
    return-void
.end method

.method private bk()Landroid/net/Uri;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 60
    :try_start_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    const-string/jumbo v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/b/e;->ba:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 62
    const-string/jumbo v1, ")"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    iget-object v0, p0, Lcom/android/common/b/e;->aZ:Landroid/content/ContentResolver;

    .line 64
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 65
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 63
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_58} :catch_93
    .catchall {:try_start_1 .. :try_end_58} :catchall_a4

    move-result-object v1

    .line 67
    if-eqz v1, :cond_8d

    :try_start_5b
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_8d

    .line 68
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 69
    const-string/jumbo v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 70
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 72
    const-string/jumbo v3, "/"

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_8c} :catch_ae
    .catchall {:try_start_5b .. :try_end_8c} :catchall_ab

    move-result-object v6

    .line 77
    :cond_8d
    if-eqz v1, :cond_92

    .line 78
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_92
    :goto_92
    return-object v6

    .line 74
    :catch_93
    move-exception v0

    move-object v1, v6

    .line 75
    :goto_95
    :try_start_95
    const-string/jumbo v2, "VideoUpdateDatabaseRequest"

    const-string/jumbo v3, "getUriFromFile failed!"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_ab

    .line 77
    if-eqz v1, :cond_92

    .line 78
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_92

    .line 76
    :catchall_a4
    move-exception v0

    .line 77
    :goto_a5
    if-eqz v6, :cond_aa

    .line 78
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_aa
    throw v0

    :catchall_ab
    move-exception v0

    move-object v6, v1

    goto :goto_a5

    .line 74
    :catch_ae
    move-exception v0

    goto :goto_95
.end method


# virtual methods
.method public bg()Lcom/android/common/storagemanager/c;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v0, p0, Lcom/android/common/b/e;->aq:Lcom/android/common/storagemanager/c;

    invoke-direct {p0}, Lcom/android/common/b/e;->bk()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 43
    iget-object v0, p0, Lcom/android/common/b/e;->aq:Lcom/android/common/storagemanager/c;

    iget-object v0, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    if-eqz v0, :cond_3b

    .line 44
    iget-object v0, p0, Lcom/android/common/b/e;->aZ:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/common/b/e;->aq:Lcom/android/common/storagemanager/c;

    iget-object v1, v1, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/common/b/e;->bb:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    :goto_1a
    const-string/jumbo v0, "VideoUpdateDatabaseRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addVideoToMediaStore mCurrentVideoUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/android/common/b/e;->aq:Lcom/android/common/storagemanager/c;

    iget-object v2, v2, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/android/common/b/e;->aq:Lcom/android/common/storagemanager/c;

    return-object v0

    .line 47
    :cond_3b
    iget-object v0, p0, Lcom/android/common/b/e;->aq:Lcom/android/common/storagemanager/c;

    iget-object v1, p0, Lcom/android/common/b/e;->aZ:Landroid/content/ContentResolver;

    .line 48
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 49
    iget-object v3, p0, Lcom/android/common/b/e;->bb:Landroid/content/ContentValues;

    .line 47
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    goto :goto_1a
.end method

.method public bh(Lcom/android/common/storagemanager/c;)V
    .registers 7

    .prologue
    .line 87
    new-instance v0, Lcom/android/common/d/a;

    iget-object v1, p0, Lcom/android/common/b/e;->aq:Lcom/android/common/storagemanager/c;

    iget-object v1, v1, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 88
    iget-object v2, p0, Lcom/android/common/b/e;->ba:Ljava/lang/String;

    .line 89
    iget v3, p0, Lcom/android/common/b/e;->be:I

    .line 90
    iget v4, p0, Lcom/android/common/b/e;->bc:I

    .line 87
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/common/d/a;-><init>(Landroid/net/Uri;Ljava/lang/String;II)V

    .line 91
    iget-object v1, p0, Lcom/android/common/b/e;->bd:Lcom/android/common/m/c;

    invoke-virtual {v1, v0}, Lcom/android/common/m/c;->ahk(Lcom/android/common/d/e;)V

    .line 86
    return-void
.end method
