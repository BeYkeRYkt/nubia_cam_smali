.class public Lcom/loc/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Ljava/util/Map;


# instance fields
.field private bdo:Lcom/loc/ct;

.field private bdp:Landroid/database/sqlite/SQLiteDatabase;

.field private bdq:Lcom/loc/aC;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/loc/n;->d:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/loc/aC;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v0, Lcom/loc/ct;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p2}, Lcom/loc/aC;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/loc/aC;->b()I

    move-result v4

    const/4 v3, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/loc/ct;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/loc/aC;)V

    iput-object v0, p0, Lcom/loc/n;->bdo:Lcom/loc/ct;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_18} :catch_1b

    :goto_18
    iput-object p2, p0, Lcom/loc/n;->bdq:Lcom/loc/aC;

    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_18
.end method

.method private a(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_10

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/loc/n;->bdo:Lcom/loc/ct;

    invoke-virtual {v0}, Lcom/loc/ct;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_4

    :catch_10
    move-exception v0

    if-eqz p1, :cond_17

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :cond_17
    const-string/jumbo v1, "DBOperation"

    const-string/jumbo v2, "getReadAbleDataBase"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static declared-synchronized bvK(Ljava/lang/Class;)Lcom/loc/aC;
    .registers 4

    const-class v1, Lcom/loc/n;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/loc/n;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    :goto_b
    sget-object v0, Lcom/loc/n;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/aC;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1f

    monitor-exit v1

    return-object v0

    :cond_15
    :try_start_15
    sget-object v0, Lcom/loc/n;->d:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1f

    goto :goto_b

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static bvL(Ljava/util/Map;)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    if-eqz p0, :cond_1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    move v1, v0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    const-string/jumbo v0, ""

    return-object v0

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_4d

    const-string/jumbo v5, " and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_11

    :cond_4d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_11
.end method

.method private bvS(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/n;->bwc(Ljava/lang/Class;)Lcom/loc/Y;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/n;->bwb(Lcom/loc/Y;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    if-nez p2, :cond_17

    :cond_15
    return-void

    :cond_16
    return-void

    :cond_17
    if-eqz p1, :cond_15

    invoke-direct {p0, p2, v0}, Lcom/loc/n;->bvX(Ljava/lang/Object;Lcom/loc/Y;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p1, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void

    :cond_23
    return-void
.end method

.method private bvV(Landroid/database/Cursor;Ljava/lang/Class;Lcom/loc/Y;)Ljava/lang/Object;
    .registers 13

    const/4 v8, 0x1

    const/4 v0, 0x0

    invoke-interface {p3}, Lcom/loc/Y;->b()Z

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/loc/n;->bvY(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v2

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p2, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    array-length v4, v2

    move v1, v0

    :goto_1b
    if-lt v1, v4, :cond_1e

    return-object v3

    :cond_1e
    aget-object v5, v2, v1

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-class v0, Lcom/loc/b;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_3c

    check-cast v0, Lcom/loc/b;

    invoke-interface {v0}, Lcom/loc/b;->b()I

    move-result v6

    invoke-interface {v0}, Lcom/loc/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    packed-switch v6, :pswitch_data_8c

    :cond_3c
    :goto_3c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    :pswitch_40
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :pswitch_4c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :pswitch_58
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :pswitch_64
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :pswitch_70
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :pswitch_78
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :pswitch_84
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3c

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_40
        :pswitch_78
        :pswitch_64
        :pswitch_58
        :pswitch_70
        :pswitch_84
    .end packed-switch
.end method

.method private bvW(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    .registers 8

    const-class v0, Lcom/loc/b;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_12

    check-cast v0, Lcom/loc/b;

    invoke-interface {v0}, Lcom/loc/b;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_8a

    :goto_11
    return-void

    :cond_12
    return-void

    :pswitch_13
    :try_start_13
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0}, Lcom/loc/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_22} :catch_23

    goto :goto_11

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_11

    :pswitch_28
    :try_start_28
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v1

    invoke-interface {v0}, Lcom/loc/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_11

    :pswitch_38
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-interface {v0}, Lcom/loc/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_11

    :pswitch_48
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-interface {v0}, Lcom/loc/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_11

    :pswitch_58
    const-string/jumbo v1, ""

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Lcom/loc/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :pswitch_69
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-interface {v0}, Lcom/loc/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_11

    :pswitch_79
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-interface {v0}, Lcom/loc/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_88
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_88} :catch_23

    goto :goto_11

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_13
        :pswitch_69
        :pswitch_48
        :pswitch_38
        :pswitch_58
        :pswitch_79
    .end packed-switch
.end method

.method private bvX(Ljava/lang/Object;Lcom/loc/Y;)Landroid/content/ContentValues;
    .registers 9

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2}, Lcom/loc/Y;->b()Z

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/loc/n;->bvY(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_13
    if-lt v0, v3, :cond_16

    return-object v1

    :cond_16
    aget-object v4, v2, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-direct {p0, p1, v4, v1}, Lcom/loc/n;->bvW(Ljava/lang/Object;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method private bvY(Ljava/lang/Class;Z)[Ljava/lang/reflect/Field;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-nez p2, :cond_b

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0

    :cond_a
    return-object v0

    :cond_b
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method private bvZ(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_13

    :cond_4
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1c

    :goto_8
    iget-object v0, p0, Lcom/loc/n;->bdo:Lcom/loc/ct;

    invoke-virtual {v0}, Lcom/loc/ct;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_10} :catch_22

    :goto_10
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_10

    :cond_1c
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_21} :catch_22

    goto :goto_8

    :catch_22
    move-exception v0

    const-string/jumbo v1, "DBOperation"

    const-string/jumbo v2, "getWriteDatabase"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method private bwa(Ljava/lang/annotation/Annotation;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private bwb(Lcom/loc/Y;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lcom/loc/Y;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    return-object v0
.end method

.method private bwc(Ljava/lang/Class;)Lcom/loc/Y;
    .registers 4

    const-class v0, Lcom/loc/Y;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/n;->bwa(Ljava/lang/annotation/Annotation;)Z

    move-result v1

    if-eqz v1, :cond_f

    check-cast v0, Lcom/loc/Y;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public bvM(Ljava/lang/String;Ljava/lang/Class;)V
    .registers 7

    iget-object v1, p0, Lcom/loc/n;->bdq:Lcom/loc/aC;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p2}, Lcom/loc/n;->bwc(Ljava/lang/Class;)Lcom/loc/Y;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/n;->bwb(Lcom/loc/Y;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/loc/n;->bvZ(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_43

    if-eqz v2, :cond_2a

    :try_start_1c
    iget-object v2, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_22} :catch_2c
    .catchall {:try_start_1c .. :try_end_22} :catchall_46

    :try_start_22
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4c

    :cond_26
    :goto_26
    monitor-exit v1

    return-void

    :cond_28
    monitor-exit v1

    return-void

    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_43

    return-void

    :catch_2c
    move-exception v0

    :try_start_2d
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "deleteData"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_46

    :try_start_36
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_26

    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_43

    throw v0

    :catchall_46
    move-exception v0

    :try_start_47
    iget-object v2, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_55

    :goto_4b
    throw v0

    :cond_4c
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_26

    :cond_55
    iget-object v2, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5d
    .catchall {:try_start_47 .. :try_end_5d} :catchall_43

    goto :goto_4b
.end method

.method public bvN(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 9

    iget-object v1, p0, Lcom/loc/n;->bdq:Lcom/loc/aC;

    monitor-enter v1

    if-eqz p2, :cond_33

    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/n;->bwc(Ljava/lang/Class;)Lcom/loc/Y;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/n;->bwb(Lcom/loc/Y;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    invoke-direct {p0, p2, v0}, Lcom/loc/n;->bvX(Ljava/lang/Object;Lcom/loc/Y;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-direct {p0, p3}, Lcom/loc/n;->bvZ(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_4e

    if-eqz v3, :cond_39

    :try_start_27
    iget-object v3, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2d} :catch_3b
    .catchall {:try_start_27 .. :try_end_2d} :catchall_5b

    :try_start_2d
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_61

    :cond_31
    :goto_31
    monitor-exit v1

    return-void

    :cond_33
    monitor-exit v1

    return-void

    :cond_35
    monitor-exit v1

    return-void

    :cond_37
    monitor-exit v1

    return-void

    :cond_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_4e

    return-void

    :catch_3b
    move-exception v0

    if-eqz p3, :cond_51

    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_5b

    :goto_41
    :try_start_41
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_31

    :catchall_4e
    move-exception v0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_41 .. :try_end_50} :catchall_4e

    throw v0

    :cond_51
    :try_start_51
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "updateData"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5b

    goto :goto_41

    :catchall_5b
    move-exception v0

    :try_start_5c
    iget-object v2, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_6a

    :goto_60
    throw v0

    :cond_61
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_31

    :cond_6a
    iget-object v2, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_72
    .catchall {:try_start_5c .. :try_end_72} :catchall_4e

    goto :goto_60
.end method

.method public bvO(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loc/n;->bvN(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public bvP(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    iget-object v1, p0, Lcom/loc/n;->bdq:Lcom/loc/aC;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/loc/n;->bvU(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_d
    invoke-virtual {p0, p1}, Lcom/loc/n;->bvQ(Ljava/lang/Object;)V

    :goto_10
    monitor-exit v1

    return-void

    :cond_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p2, p1}, Lcom/loc/n;->bvO(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public bvQ(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/loc/n;->bvR(Ljava/lang/Object;Z)V

    return-void
.end method

.method public bvR(Ljava/lang/Object;Z)V
    .registers 7

    iget-object v1, p0, Lcom/loc/n;->bdq:Lcom/loc/aC;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p2}, Lcom/loc/n;->bvZ(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_31

    if-eqz v0, :cond_18

    :try_start_d
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0, p1}, Lcom/loc/n;->bvS(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_12} :catch_1a
    .catchall {:try_start_d .. :try_end_12} :catchall_34

    :try_start_12
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3a

    :cond_16
    :goto_16
    monitor-exit v1

    return-void

    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_31

    return-void

    :catch_1a
    move-exception v0

    :try_start_1b
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "insertData"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_34

    :try_start_24
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_16

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_31

    throw v0

    :catchall_34
    move-exception v0

    :try_start_35
    iget-object v2, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_43

    :goto_39
    throw v0

    :cond_3a
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_16

    :cond_43
    iget-object v2, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_31

    goto :goto_39
.end method

.method public bvT(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;
    .registers 16

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/loc/n;->bdq:Lcom/loc/aC;

    monitor-enter v9

    :try_start_4
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2}, Lcom/loc/n;->bwc(Ljava/lang/Class;)Lcom/loc/Y;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/loc/n;->bwb(Lcom/loc/Y;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1b

    :goto_15
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_25

    :cond_19
    monitor-exit v9

    return-object v10

    :cond_1b
    invoke-direct {p0, p3}, Lcom/loc/n;->a(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_15

    :catchall_22
    move-exception v0

    monitor-exit v9
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v0

    :cond_25
    :try_start_25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    move-result v0

    if-nez v0, :cond_19

    if-eqz p1, :cond_19

    :try_start_2d
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_38} :catch_121
    .catchall {:try_start_2d .. :try_end_38} :catchall_11d

    move-result-object v1

    if-eqz v1, :cond_49

    :goto_3b
    :try_start_3b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_61
    .catchall {:try_start_3b .. :try_end_3e} :catchall_8a

    move-result v0

    if-nez v0, :cond_59

    if-nez v1, :cond_b9

    :cond_43
    :goto_43
    :try_start_43
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_cb

    :cond_47
    :goto_47
    monitor-exit v9
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_22

    return-object v10

    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_51} :catch_61
    .catchall {:try_start_49 .. :try_end_51} :catchall_8a

    if-nez v1, :cond_92

    :cond_53
    :goto_53
    :try_start_53
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_a3

    :cond_57
    :goto_57
    monitor-exit v9
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_22

    return-object v10

    :cond_59
    :try_start_59
    invoke-direct {p0, v1, p2, v11}, Lcom/loc/n;->bvV(Landroid/database/Cursor;Ljava/lang/Class;Lcom/loc/Y;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_60} :catch_61
    .catchall {:try_start_59 .. :try_end_60} :catchall_8a

    goto :goto_3b

    :catch_61
    move-exception v0

    :goto_62
    if-eqz p3, :cond_80

    :goto_64
    if-nez v1, :cond_e3

    :cond_66
    :goto_66
    :try_start_66
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_47

    move-exception v0

    if-nez p3, :cond_47

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_66 .. :try_end_7f} :catchall_22

    goto :goto_47

    :cond_80
    :try_start_80
    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "searchListData"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_80 .. :try_end_89} :catchall_8a

    goto :goto_64

    :catchall_8a
    move-exception v0

    :goto_8b
    if-nez v1, :cond_f5

    :cond_8d
    :goto_8d
    :try_start_8d
    iget-object v1, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_106

    :cond_91
    :goto_91
    throw v0

    :cond_92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_53

    move-exception v0

    if-nez p3, :cond_53

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    :cond_a3
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_57

    move-exception v0

    if-nez p3, :cond_57

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    :cond_b9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_43

    move-exception v0

    if-nez p3, :cond_43

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43

    :cond_cb
    iget-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_47

    move-exception v0

    if-nez p3, :cond_47

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_47

    :cond_e3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_66

    move-exception v0

    if-nez p3, :cond_66

    const-string/jumbo v1, "DataBase"

    const-string/jumbo v2, "searchListData"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_66

    :cond_f5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8d

    move-exception v1

    if-nez p3, :cond_8d

    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "searchListData"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    :cond_106
    iget-object v1, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/loc/n;->bdp:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_91

    move-exception v1

    if-nez p3, :cond_91

    const-string/jumbo v2, "DataBase"

    const-string/jumbo v3, "searchListData"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11b
    .catchall {:try_start_8d .. :try_end_11b} :catchall_22

    goto/16 :goto_91

    :catchall_11d
    move-exception v0

    move-object v1, v8

    goto/16 :goto_8b

    :catch_121
    move-exception v0

    move-object v1, v8

    goto/16 :goto_62
.end method

.method public bvU(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loc/n;->bvT(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
