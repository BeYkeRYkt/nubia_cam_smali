.class public Lcom/loc/bX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loc/aC;


# static fields
.field private static bjm:Lcom/loc/bX;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized c()Lcom/loc/bX;
    .registers 2

    const-class v1, Lcom/loc/bX;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/loc/bX;->bjm:Lcom/loc/bX;

    if-eqz v0, :cond_b

    :goto_7
    sget-object v0, Lcom/loc/bX;->bjm:Lcom/loc/bX;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Lcom/loc/bX;

    invoke-direct {v0}, Lcom/loc/bX;-><init>()V

    sput-object v0, Lcom/loc/bX;->bjm:Lcom/loc/bX;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_7

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "dynamicamapfile.db"

    return-object v0
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public bzm(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    :try_start_0
    const-string/jumbo v0, "CREATE TABLE IF NOT EXISTS file (_id integer primary key autoincrement, sdkname  varchar(20), filename varchar(100),md5 varchar(20),version varchar(20),dynamicversion varchar(20),status varchar(20),reservedfield varchar(20));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    const-string/jumbo v1, "DynamicFileDBCreator"

    const-string/jumbo v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public bzn(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
