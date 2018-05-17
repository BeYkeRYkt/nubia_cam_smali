.class public Lcom/loc/bI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bhN:Lcom/loc/bI;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/bI;->bhN:Lcom/loc/bI;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "2.0.201501131131"

    const-string/jumbo v1, "."

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bI;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bI;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcom/loc/bI;
    .registers 2

    const-class v1, Lcom/loc/bI;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/loc/bI;->bhN:Lcom/loc/bI;

    if-eqz v0, :cond_b

    :goto_7
    sget-object v0, Lcom/loc/bI;->bhN:Lcom/loc/bI;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Lcom/loc/bI;

    invoke-direct {v0}, Lcom/loc/bI;-><init>()V

    sput-object v0, Lcom/loc/bI;->bhN:Lcom/loc/bI;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_7

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bCt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SELECT count(*) as c FROM sqlite_master WHERE type = \'table\' AND name = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/bI;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\' "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_30} :catch_4f
    .catchall {:try_start_9 .. :try_end_30} :catchall_54

    move-result-object v0

    if-nez v0, :cond_40

    :cond_33
    :goto_33
    const/4 v4, 0x0

    :try_start_34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-nez v0, :cond_5b

    :goto_3d
    move v0, v1

    :goto_3e
    return v0

    :cond_3f
    return v1

    :cond_40
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_4a} :catch_4f
    .catchall {:try_start_34 .. :try_end_4a} :catchall_67

    move-result v4

    if-lez v4, :cond_33

    move v1, v2

    goto :goto_33

    :catch_4f
    move-exception v1

    if-nez v0, :cond_5f

    :goto_52
    move v0, v2

    goto :goto_3e

    :catchall_54
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_58
    if-nez v1, :cond_63

    :goto_5a
    throw v0

    :cond_5b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    :cond_5f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_52

    :cond_63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5a

    :catchall_67
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_58
.end method


# virtual methods
.method protected declared-synchronized a(Landroid/content/Context;)V
    .registers 14

    const/4 v1, 0x0

    const/4 v3, 0x0

    monitor-enter p0

    if-eqz p1, :cond_68

    :try_start_5
    const-string/jumbo v0, "hmdb"

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_d} :catch_348
    .catchall {:try_start_5 .. :try_end_d} :catchall_33a

    move-result-object v7

    :try_start_e
    const-string/jumbo v0, "hist"

    invoke-direct {p0, v7, v0}, Lcom/loc/bI;->bCt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "SELECT feature, nb, loc FROM "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "hist"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bI;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v4

    const-wide/32 v10, 0x5265c00

    sub-long/2addr v4, v10

    const-string/jumbo v0, " WHERE time > "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " ORDER BY time ASC"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_4d} :catch_78
    .catchall {:try_start_e .. :try_end_4d} :catchall_33f

    :try_start_4d
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_55} :catch_94
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_55} :catch_78
    .catchall {:try_start_4d .. :try_end_55} :catchall_33f

    move-result-object v1

    move-object v6, v1

    :goto_57
    :try_start_57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/loc/bI;->c:Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5e} :catch_c3
    .catchall {:try_start_57 .. :try_end_5e} :catchall_1a0

    if-eqz v0, :cond_b5

    :goto_60
    if-nez v6, :cond_c7

    :cond_62
    :goto_62
    if-nez v6, :cond_315

    :goto_64
    if-nez v7, :cond_31a

    :cond_66
    :goto_66
    monitor-exit p0

    return-void

    :cond_68
    monitor-exit p0

    return-void

    :cond_6a
    if-nez v7, :cond_6e

    :cond_6c
    :goto_6c
    monitor-exit p0

    return-void

    :cond_6e
    :try_start_6e
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_77} :catch_78
    .catchall {:try_start_6e .. :try_end_77} :catchall_33f

    goto :goto_6c

    :catch_78
    move-exception v0

    move-object v2, v7

    :goto_7a
    :try_start_7a
    const-string/jumbo v3, "DB"

    const-string/jumbo v4, "fetchHist p2"

    invoke-static {v0, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_343

    if-nez v1, :cond_325

    :goto_85
    if-eqz v2, :cond_66

    :try_start_87
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_90
    .catchall {:try_start_87 .. :try_end_90} :catchall_91

    goto :goto_66

    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_94
    move-exception v0

    :try_start_95
    const-string/jumbo v2, "DB"

    const-string/jumbo v4, "fetchHist"

    invoke-static {v0, v2, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_aa

    :cond_a8
    move-object v6, v1

    goto :goto_57

    :cond_aa
    const-string/jumbo v2, "no such table"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_b0
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_b0} :catch_78
    .catchall {:try_start_95 .. :try_end_b0} :catchall_33f

    move-result v0

    if-eqz v0, :cond_a8

    move-object v6, v1

    goto :goto_57

    :cond_b5
    :try_start_b5
    const-string/jumbo v0, "MD5"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bI;->c:Ljava/lang/String;

    goto :goto_60

    :catch_c3
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    goto :goto_7a

    :cond_c7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_62

    :goto_cd
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15d

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cz;->b(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bI;->c:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/loc/ai;->byi([BLjava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c7

    const-string/jumbo v0, "mmac"

    invoke-static {v1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e3

    :goto_113
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cz;->b(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v0, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    iget-object v8, p0, Lcom/loc/bI;->c:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/loc/ai;->byi([BLjava/lang/String;)[B

    move-result-object v4

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v5, v4, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "type"

    invoke-static {v0, v4}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1fc

    :cond_138
    :goto_138
    add-int/lit8 v8, v3, 0x1

    new-instance v3, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v3, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, ""

    const-string/jumbo v0, "mmac"

    invoke-static {v1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_207

    :cond_14b
    const-string/jumbo v0, "cgi"

    invoke-static {v1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2ae

    :cond_154
    :goto_154
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_303

    move v3, v8

    goto/16 :goto_cd

    :cond_15d
    new-instance v1, Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    const-string/jumbo v0, "mmac"

    invoke-static {v1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1af

    :goto_183
    new-instance v0, Lorg/json/JSONObject;

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "type"

    invoke-static {v0, v4}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_138

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "new"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19f
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_19f} :catch_c3
    .catchall {:try_start_b5 .. :try_end_19f} :catchall_1a0

    goto :goto_138

    :catchall_1a0
    move-exception v0

    :goto_1a1
    if-nez v6, :cond_32a

    :goto_1a3
    if-nez v7, :cond_32f

    :cond_1a5
    :goto_1a5
    :try_start_1a5
    throw v0
    :try_end_1a6
    .catchall {:try_start_1a5 .. :try_end_1a6} :catchall_91

    :cond_1a6
    const/4 v0, 0x1

    :try_start_1a7
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_183

    :cond_1af
    const-string/jumbo v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "mmac"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ",access"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_183

    :cond_1c7
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cz;->b(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bI;->c:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/loc/ai;->byi([BLjava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_113

    :cond_1e3
    const-string/jumbo v0, "#"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "mmac"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ",access"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_113

    :cond_1fc
    const-string/jumbo v4, "type"

    const-string/jumbo v5, "new"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_138

    :cond_207
    const-string/jumbo v0, "cgi"

    invoke-static {v1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cgi"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "network#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "cgi"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_299

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHD()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHF()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/loc/bj;->a()Lcom/loc/bj;

    move-result-object v0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/loc/bj;->bAO(Ljava/lang/String;Ljava/lang/StringBuilder;Lcom/autonavi/aps/amapapi/model/AmapLoc;Landroid/content/Context;Z)V

    goto/16 :goto_154

    :cond_299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cgiwifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_263

    :cond_2ae
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cgi"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "network#"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "cgi"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_154

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cgi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_263

    :cond_303
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_313
    .catch Ljava/lang/Throwable; {:try_start_1a7 .. :try_end_313} :catch_c3
    .catchall {:try_start_1a7 .. :try_end_313} :catchall_1a0

    goto/16 :goto_62

    :cond_315
    :try_start_315
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_64

    :cond_31a
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_66

    :cond_325
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_85

    :cond_32a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1a3

    :cond_32f
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1a5

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_338
    .catchall {:try_start_315 .. :try_end_338} :catchall_91

    goto/16 :goto_1a5

    :catchall_33a
    move-exception v0

    move-object v6, v1

    move-object v7, v1

    goto/16 :goto_1a1

    :catchall_33f
    move-exception v0

    move-object v6, v1

    goto/16 :goto_1a1

    :catchall_343
    move-exception v0

    move-object v6, v1

    move-object v7, v2

    goto/16 :goto_1a1

    :catch_348
    move-exception v0

    move-object v2, v1

    goto/16 :goto_7a
.end method

.method protected declared-synchronized b(Landroid/content/Context;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_3
    sget-boolean v0, Lcom/loc/cu;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_99

    if-nez v0, :cond_9

    :cond_7
    monitor-exit p0

    return-void

    :cond_9
    if-eqz p1, :cond_7

    :try_start_b
    const-string/jumbo v0, "hmdb"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_13} :catch_12e
    .catchall {:try_start_b .. :try_end_13} :catchall_fc

    move-result-object v10

    :try_start_14
    const-string/jumbo v0, "hm"

    invoke-direct {p0, v10, v0}, Lcom/loc/bI;->bCt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v4

    const-wide/32 v6, 0x48190800

    sub-long/2addr v4, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "SELECT hash, num, extra, time FROM "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "hm"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/loc/bI;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " WHERE time > "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " ORDER BY num DESC LIMIT 0,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1f4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_58} :catch_80
    .catchall {:try_start_14 .. :try_end_58} :catchall_126

    :try_start_58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v10, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_60} :catch_9c
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_60} :catch_80
    .catchall {:try_start_58 .. :try_end_60} :catchall_126

    move-result-object v1

    move-object v9, v1

    :goto_62
    const/4 v0, 0x0

    :try_start_63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_6a} :catch_132
    .catchall {:try_start_63 .. :try_end_6a} :catchall_128

    if-nez v9, :cond_bd

    :cond_6c
    if-nez v9, :cond_103

    :goto_6e
    if-nez v10, :cond_108

    :cond_70
    :goto_70
    monitor-exit p0

    return-void

    :cond_72
    if-nez v10, :cond_76

    :cond_74
    :goto_74
    monitor-exit p0

    return-void

    :cond_76
    :try_start_76
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_7f} :catch_80
    .catchall {:try_start_76 .. :try_end_7f} :catchall_126

    goto :goto_74

    :catch_80
    move-exception v0

    move-object v2, v10

    :goto_82
    :try_start_82
    const-string/jumbo v3, "DB"

    const-string/jumbo v4, "fetchHm p2"

    invoke-static {v0, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_12b

    if-nez v1, :cond_113

    :goto_8d
    if-eqz v2, :cond_70

    :try_start_8f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_99

    goto :goto_70

    :catchall_99
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_9c
    move-exception v0

    :try_start_9d
    const-string/jumbo v4, "DB"

    const-string/jumbo v5, "fetchHm"

    invoke-static {v0, v4, v5}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b2

    :cond_b0
    move-object v9, v1

    goto :goto_62

    :cond_b2
    const-string/jumbo v4, "no such table"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_b8
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_b8} :catch_80
    .catchall {:try_start_9d .. :try_end_b8} :catchall_126

    move-result v0

    if-eqz v0, :cond_b0

    move-object v9, v1

    goto :goto_62

    :cond_bd
    :try_start_bd
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6c

    move v0, v2

    :goto_c4
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string/jumbo v1, "{"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f3

    :goto_e3
    invoke-static {}, Lcom/loc/p;->a()Lcom/loc/p;

    move-result-object v1

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/loc/p;->bwd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJZ)V

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    goto :goto_c4

    :cond_f3
    invoke-static {v3}, Lcom/loc/X;->bxr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lcom/loc/X;->bxr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_fa
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_fa} :catch_132
    .catchall {:try_start_bd .. :try_end_fa} :catchall_128

    move-result-object v4

    goto :goto_e3

    :catchall_fc
    move-exception v0

    move-object v10, v1

    :goto_fe
    if-nez v1, :cond_118

    :goto_100
    if-nez v10, :cond_11c

    :cond_102
    :goto_102
    :try_start_102
    throw v0

    :cond_103
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6e

    :cond_108
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_70

    :cond_113
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_8d

    :cond_118
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_100

    :cond_11c
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_102

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_125
    .catchall {:try_start_102 .. :try_end_125} :catchall_99

    goto :goto_102

    :catchall_126
    move-exception v0

    goto :goto_fe

    :catchall_128
    move-exception v0

    move-object v1, v9

    goto :goto_fe

    :catchall_12b
    move-exception v0

    move-object v10, v2

    goto :goto_fe

    :catch_12e
    move-exception v0

    move-object v2, v1

    goto/16 :goto_82

    :catch_132
    move-exception v0

    move-object v1, v9

    move-object v2, v10

    goto/16 :goto_82
.end method

.method protected bCr(Ljava/lang/String;Lcom/autonavi/aps/amapapi/model/AmapLoc;Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .registers 15

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz p4, :cond_117

    iget-object v0, p0, Lcom/loc/bI;->c:Ljava/lang/String;

    if-eqz v0, :cond_118

    :goto_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_127

    :goto_16
    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cgi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_134

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_157

    :cond_32
    :goto_32
    const-string/jumbo v0, "cgi"

    invoke-static {v3, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    :cond_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_40
    const-string/jumbo v0, "hmdb"

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {p4, v0, v1, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_48} :catch_1d4
    .catchall {:try_start_40 .. :try_end_48} :catchall_1f5

    move-result-object v1

    :try_start_49
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, "hist"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bI;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " (feature VARCHAR PRIMARY KEY, nb VARCHAR, loc VARCHAR, time VARCHAR);"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "REPLACE INTO "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "hist"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/loc/bI;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " VALUES (?, ?, ?, ?)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v7, p0, Lcom/loc/bI;->c:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/loc/ai;->byh([BLjava/lang/String;)[B

    move-result-object v3

    aput-object v3, v6, v0

    const/4 v0, 0x1

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v7, p0, Lcom/loc/bI;->c:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/loc/ai;->byh([BLjava/lang/String;)[B

    move-result-object v3

    aput-object v3, v6, v0

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIJ()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    iget-object v7, p0, Lcom/loc/bI;->c:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/loc/ai;->byh([BLjava/lang/String;)[B

    move-result-object v3

    aput-object v3, v6, v0

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHS()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v0

    move v3, v4

    :goto_d3
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    if-lt v3, v0, :cond_1bb

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v5, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "SELECT COUNT(*) AS total FROM "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "hist"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/bI;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_108
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_108} :catch_227
    .catchall {:try_start_49 .. :try_end_108} :catchall_225

    move-result-object v2

    if-nez v2, :cond_1cc

    :cond_10b
    :goto_10b
    if-nez v2, :cond_203

    :goto_10d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v5, v4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-nez v1, :cond_208

    :cond_116
    :goto_116
    return-void

    :cond_117
    return-void

    :cond_118
    const-string/jumbo v0, "MD5"

    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/ai;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bI;->c:Ljava/lang/String;

    goto/16 :goto_8

    :cond_127
    const-string/jumbo v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_16

    :cond_134
    const-string/jumbo v0, "network"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const-string/jumbo v1, "cgi"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "cgi"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v0, v5, v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_32

    :cond_157
    const-string/jumbo v1, "access"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_32

    const-string/jumbo v1, "network"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, v0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cgi"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ",access"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v4

    const-string/jumbo v5, "#"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19f

    aget-object v0, v0, v4

    :goto_197
    const-string/jumbo v1, "mmac"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_32

    :cond_19f
    aget-object v1, v0, v4

    aget-object v0, v0, v4

    const-string/jumbo v5, "#"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_197

    :cond_1b1
    const-string/jumbo v0, "mmac"

    invoke-static {v3, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    return-void

    :cond_1bb
    :try_start_1bb
    aget-object v0, v6, v3

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/loc/cz;->a([B)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_d3

    :cond_1cc
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1cf
    .catch Ljava/lang/Throwable; {:try_start_1bb .. :try_end_1cf} :catch_227
    .catchall {:try_start_1bb .. :try_end_1cf} :catchall_225

    move-result v0

    if-nez v0, :cond_10b

    goto/16 :goto_10b

    :catch_1d4
    move-exception v0

    move-object v1, v2

    :goto_1d6
    :try_start_1d6
    const-string/jumbo v3, "DB"

    const-string/jumbo v6, "updateHist"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1df
    .catchall {:try_start_1d6 .. :try_end_1df} :catchall_225

    if-nez v2, :cond_213

    :goto_1e1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v5, v4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_116

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_116

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_116

    :catchall_1f5
    move-exception v0

    move-object v1, v2

    :goto_1f7
    if-nez v2, :cond_217

    :goto_1f9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v5, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    if-nez v1, :cond_21b

    :cond_202
    :goto_202
    throw v0

    :cond_203
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_10d

    :cond_208
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_116

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_116

    :cond_213
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1e1

    :cond_217
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1f9

    :cond_21b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_202

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_202

    :catchall_225
    move-exception v0

    goto :goto_1f7

    :catch_227
    move-exception v0

    goto :goto_1d6
.end method

.method public declared-synchronized bCs(Landroid/content/Context;I)V
    .registers 11

    const/4 v2, 0x0

    monitor-enter p0

    if-eqz p1, :cond_37

    :try_start_4
    const-string/jumbo v0, "hmdb"

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_c} :catch_b3
    .catchall {:try_start_4 .. :try_end_c} :catchall_b0

    move-result-object v1

    :try_start_d
    const-string/jumbo v0, "hist"

    invoke-direct {p0, v1, v0}, Lcom/loc/bI;->bCt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_13} :catch_47
    .catchall {:try_start_d .. :try_end_13} :catchall_76

    move-result v0

    if-eqz v0, :cond_39

    packed-switch p2, :pswitch_data_b6

    move-object v0, v2

    :goto_1a
    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/loc/bI;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_33} :catch_7e
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_33} :catch_47
    .catchall {:try_start_1a .. :try_end_33} :catchall_76

    :cond_33
    :goto_33
    if-nez v1, :cond_9c

    :cond_35
    :goto_35
    monitor-exit p0

    return-void

    :cond_37
    monitor-exit p0

    return-void

    :cond_39
    if-nez v1, :cond_3d

    :cond_3b
    :goto_3b
    monitor-exit p0

    return-void

    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_46} :catch_47
    .catchall {:try_start_3d .. :try_end_46} :catchall_76

    goto :goto_3b

    :catch_47
    move-exception v0

    :goto_48
    :try_start_48
    const-string/jumbo v2, "DB"

    const-string/jumbo v3, "clearHist p2"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_48 .. :try_end_51} :catchall_76

    if-eqz v1, :cond_35

    :try_start_53
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_5d

    goto :goto_35

    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_60
    :try_start_60
    const-string/jumbo v0, "time<?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_75} :catch_47
    .catchall {:try_start_60 .. :try_end_75} :catchall_76

    goto :goto_1a

    :catchall_76
    move-exception v0

    :goto_77
    if-nez v1, :cond_a6

    :cond_79
    :goto_79
    :try_start_79
    throw v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_5d

    :pswitch_7a
    :try_start_7a
    const-string/jumbo v0, "1"

    goto :goto_1a

    :catch_7e
    move-exception v0

    const-string/jumbo v2, "DB"

    const-string/jumbo v3, "clearHist"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    const-string/jumbo v2, "no such table"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_98} :catch_47
    .catchall {:try_start_7a .. :try_end_98} :catchall_76

    move-result v0

    if-nez v0, :cond_33

    goto :goto_33

    :cond_9c
    :try_start_9c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_35

    :cond_a6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_79

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_af
    .catchall {:try_start_9c .. :try_end_af} :catchall_5d

    goto :goto_79

    :catchall_b0
    move-exception v0

    move-object v1, v2

    goto :goto_77

    :catch_b3
    move-exception v0

    move-object v1, v2

    goto :goto_48

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_60
        :pswitch_7a
    .end packed-switch
.end method

.method protected declared-synchronized bCu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16

    const/4 v1, 0x0

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_165

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    monitor-exit p0

    return-void

    :cond_b
    if-eqz p1, :cond_9

    :try_start_d
    invoke-static {p2}, Lcom/loc/X;->bxp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Lcom/loc/X;->bxp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_165

    move-result-object v5

    :try_start_15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "hmdb"

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v2, v7}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_22} :catch_198
    .catchall {:try_start_15 .. :try_end_22} :catchall_195

    move-result-object v2

    :try_start_23
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "hm"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bI;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " (hash VARCHAR PRIMARY KEY, num INTEGER, extra VARCHAR, time VARCHAR);"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "SELECT num FROM "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "hm"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/loc/bI;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " WHERE hash = \'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "\';"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_6d} :catch_14c
    .catchall {:try_start_23 .. :try_end_6d} :catchall_16d

    :try_start_6d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_75} :catch_ca
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_75} :catch_14c
    .catchall {:try_start_6d .. :try_end_75} :catchall_16d

    move-result-object v1

    :cond_76
    :goto_76
    if-nez v1, :cond_e8

    :cond_78
    move v0, v3

    :goto_79
    if-gtz v0, :cond_f4

    const/4 v0, 0x0

    :try_start_7c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v6, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "REPLACE INTO "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "hm"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/bI;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " VALUES (?, ?, ?, ?)"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x2

    aput-object v5, v0, v3

    const/4 v3, 0x3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_ba
    if-nez v1, :cond_168

    :goto_bc
    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v6, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_c4} :catch_14c
    .catchall {:try_start_7c .. :try_end_c4} :catchall_16d

    if-nez v1, :cond_173

    :goto_c6
    if-nez v2, :cond_178

    :cond_c8
    :goto_c8
    monitor-exit p0

    return-void

    :catch_ca
    move-exception v0

    :try_start_cb
    const-string/jumbo v7, "DB"

    const-string/jumbo v8, "updateHm"

    invoke-static {v0, v7, v8}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_76

    const-string/jumbo v7, "no such table"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    goto :goto_76

    :cond_e8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_78

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_79

    :cond_f4
    add-int/lit8 v0, v0, 0x1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "num"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "extra"

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "time"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hash = \'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/bI;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14a
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_14a} :catch_14c
    .catchall {:try_start_cb .. :try_end_14a} :catchall_16d

    goto/16 :goto_ba

    :catch_14c
    move-exception v0

    :goto_14d
    :try_start_14d
    const-string/jumbo v3, "DB"

    const-string/jumbo v4, "updateHm p2"

    invoke-static {v0, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_156
    .catchall {:try_start_14d .. :try_end_156} :catchall_16d

    if-nez v1, :cond_183

    :goto_158
    if-eqz v2, :cond_c8

    :try_start_15a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_163
    .catchall {:try_start_15a .. :try_end_163} :catchall_165

    goto/16 :goto_c8

    :catchall_165
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_168
    :try_start_168
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_16b
    .catch Ljava/lang/Throwable; {:try_start_168 .. :try_end_16b} :catch_14c
    .catchall {:try_start_168 .. :try_end_16b} :catchall_16d

    goto/16 :goto_bc

    :catchall_16d
    move-exception v0

    :goto_16e
    if-nez v1, :cond_187

    :goto_170
    if-nez v2, :cond_18b

    :cond_172
    :goto_172
    :try_start_172
    throw v0

    :cond_173
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_c6

    :cond_178
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_c8

    :cond_183
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_158

    :cond_187
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_170

    :cond_18b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_172

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_194
    .catchall {:try_start_172 .. :try_end_194} :catchall_165

    goto :goto_172

    :catchall_195
    move-exception v0

    move-object v2, v1

    goto :goto_16e

    :catch_198
    move-exception v0

    move-object v2, v1

    goto :goto_14d
.end method

.method public declared-synchronized bCv(Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 13

    const/4 v2, 0x0

    monitor-enter p0

    if-eqz p1, :cond_42

    :try_start_4
    const-string/jumbo v0, "hmdb"

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_c} :catch_151
    .catchall {:try_start_4 .. :try_end_c} :catchall_14d

    move-result-object v3

    :try_start_d
    const-string/jumbo v0, "hm"

    invoke-direct {p0, v3, v0}, Lcom/loc/bI;->bCt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1b} :catch_52
    .catchall {:try_start_d .. :try_end_1b} :catchall_84

    packed-switch p2, :pswitch_data_15a

    move-object v0, v2

    move-object v1, v2

    :goto_20
    :try_start_20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hm"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/loc/bI;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_90

    invoke-virtual {v3, v5, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_3b} :catch_156
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_3b} :catch_52
    .catchall {:try_start_20 .. :try_end_3b} :catchall_84

    move-object v1, v2

    :cond_3c
    :goto_3c
    if-nez v1, :cond_128

    :goto_3e
    if-nez v3, :cond_12d

    :cond_40
    :goto_40
    monitor-exit p0

    return-object v2

    :cond_42
    monitor-exit p0

    return-object v2

    :cond_44
    if-nez v3, :cond_48

    :cond_46
    :goto_46
    monitor-exit p0

    return-object v2

    :cond_48
    :try_start_48
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_51} :catch_52
    .catchall {:try_start_48 .. :try_end_51} :catchall_84

    goto :goto_46

    :catch_52
    move-exception v0

    move-object v1, v2

    :goto_54
    :try_start_54
    const-string/jumbo v4, "DB"

    const-string/jumbo v5, "clearHm p2"

    invoke-static {v0, v4, v5}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_120

    if-nez v1, :cond_138

    :goto_5f
    if-eqz v3, :cond_40

    :try_start_61
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_6b

    goto :goto_40

    :catchall_6b
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_6e
    :try_start_6e
    const-string/jumbo v1, "time<?"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v6

    const-wide/32 v8, 0x48190800

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_83} :catch_52
    .catchall {:try_start_6e .. :try_end_83} :catchall_84

    goto :goto_20

    :catchall_84
    move-exception v0

    :goto_85
    if-nez v2, :cond_13d

    :goto_87
    if-nez v3, :cond_142

    :cond_89
    :goto_89
    :try_start_89
    throw v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_6b

    :pswitch_8a
    :try_start_8a
    const-string/jumbo v0, "1"
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8d} :catch_52
    .catchall {:try_start_8a .. :try_end_8d} :catchall_84

    move-object v1, v0

    move-object v0, v2

    goto :goto_20

    :cond_90
    :try_start_90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SELECT hash, num, extra FROM "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " WHERE time < "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v0, v0, v6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_ba} :catch_156
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_ba} :catch_52
    .catchall {:try_start_90 .. :try_end_ba} :catchall_84

    move-result-object v1

    if-nez v1, :cond_c5

    :cond_bd
    if-nez v1, :cond_10f

    :goto_bf
    if-nez v3, :cond_116

    :cond_c1
    :goto_c1
    if-nez v1, :cond_124

    :goto_c3
    monitor-exit p0

    return-object v4

    :cond_c5
    :try_start_c5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_bd

    :goto_cb
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e8

    :goto_de
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    goto :goto_cb

    :cond_e8
    invoke-static {v0}, Lcom/loc/X;->bxr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5}, Lcom/loc/X;->bxr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_ef
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_ef} :catch_f0
    .catch Ljava/lang/Throwable; {:try_start_c5 .. :try_end_ef} :catch_113
    .catchall {:try_start_c5 .. :try_end_ef} :catchall_120

    goto :goto_de

    :catch_f0
    move-exception v0

    :goto_f1
    :try_start_f1
    const-string/jumbo v4, "DB"

    const-string/jumbo v5, "clearHm"

    invoke-static {v0, v4, v5}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string/jumbo v4, "no such table"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_10a} :catch_113
    .catchall {:try_start_f1 .. :try_end_10a} :catchall_120

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_3c

    :cond_10f
    :try_start_10f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_bf

    :catch_113
    move-exception v0

    goto/16 :goto_54

    :cond_116
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_11f
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_11f} :catch_f0
    .catch Ljava/lang/Throwable; {:try_start_10f .. :try_end_11f} :catch_113
    .catchall {:try_start_10f .. :try_end_11f} :catchall_120

    goto :goto_c1

    :catchall_120
    move-exception v0

    move-object v2, v1

    goto/16 :goto_85

    :cond_124
    :try_start_124
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_c3

    :cond_128
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3e

    :cond_12d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_40

    :cond_138
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5f

    :cond_13d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_87

    :cond_142
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_14b
    .catchall {:try_start_124 .. :try_end_14b} :catchall_6b

    goto/16 :goto_89

    :catchall_14d
    move-exception v0

    move-object v3, v2

    goto/16 :goto_85

    :catch_151
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_54

    :catch_156
    move-exception v0

    move-object v1, v2

    goto :goto_f1

    nop

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_8a
    .end packed-switch
.end method
