.class public Lcom/loc/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/cl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcom/loc/cn;->bGa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bU;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/List;)V
    .registers 7

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_b

    return-void

    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v3, v0

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_18

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_18
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bC;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/bC;

    invoke-virtual {v0}, Lcom/loc/bC;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/loc/bC;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/loc/ak;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_36

    :goto_32
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    :cond_36
    invoke-interface {p0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_32
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/loc/bU;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    return v1

    :cond_8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    return v0
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static bFF(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/loc/cl;->bFG(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/loc/cl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/loc/cl;->bFG(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;)V

    return-void
.end method

.method static bFG(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;)V
    .registers 5

    invoke-static {p0, p2}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    :goto_f
    invoke-static {p2}, Lcom/loc/bC;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/loc/bC;

    invoke-virtual {p1, v0, v1}, Lcom/loc/n;->bvM(Ljava/lang/String;Ljava/lang/Class;)V

    return-void

    :cond_19
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_f
.end method

.method public static bFH(Lcom/loc/n;Landroid/content/Context;Lcom/loc/ag;)V
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/loc/bz;->bBU(Lcom/loc/n;Ljava/lang/String;)Lcom/loc/bC;

    move-result-object v2

    if-nez v2, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    invoke-static {p1, p0, v1}, Lcom/loc/cl;->bFF(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/loc/bC;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/bC;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/loc/bC;

    invoke-virtual {p0, v0, v1}, Lcom/loc/n;->bvU(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bC;

    const-string/jumbo v1, "errorstatus"

    invoke-virtual {v0, v1}, Lcom/loc/bC;->bCh(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/bC;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bC;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/bz;->bBT(Lcom/loc/n;Lcom/loc/bC;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/bC;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_13
.end method

.method static bFI(Landroid/content/Context;Lcom/loc/n;Lcom/loc/ag;Lcom/loc/bC;Ljava/lang/String;)V
    .registers 10

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/loc/bC;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/loc/cl;->bFF(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_16} :catch_8f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_65
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_6a
    .catchall {:try_start_1 .. :try_end_16} :catchall_7f

    :try_start_16
    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/cl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v1, v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_29} :catch_92
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_29} :catch_8a
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_29} :catch_85
    .catchall {:try_start_16 .. :try_end_29} :catchall_68

    const/16 v0, 0x400

    :try_start_2b
    new-array v0, v0, [B

    :goto_2d
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_43

    invoke-virtual {p3}, Lcom/loc/bC;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bC;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/loc/bz;->bBT(Lcom/loc/n;Lcom/loc/bC;Ljava/lang/String;)V

    if-nez v3, :cond_53

    :goto_40
    if-nez v1, :cond_5c

    :goto_42
    return-void

    :cond_43
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_47} :catch_48
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_47} :catch_8c
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_47} :catch_87
    .catchall {:try_start_2b .. :try_end_47} :catchall_82

    goto :goto_2d

    :catch_48
    move-exception v0

    move-object v2, v3

    :goto_4a
    :try_start_4a
    throw v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    :goto_4e
    if-nez v3, :cond_6d

    :goto_50
    if-nez v2, :cond_76

    :goto_52
    throw v0

    :cond_53
    :try_start_53
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_40

    :catch_57
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    :cond_5c
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_42

    :catch_60
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    :catch_65
    move-exception v0

    move-object v3, v2

    :goto_67
    :try_start_67
    throw v0

    :catchall_68
    move-exception v0

    goto :goto_4e

    :catch_6a
    move-exception v0

    move-object v3, v2

    :goto_6c
    throw v0
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_68

    :cond_6d
    :try_start_6d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_71

    goto :goto_50

    :catch_71
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    :cond_76
    :try_start_76
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_52

    :catch_7a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    :catchall_7f
    move-exception v0

    move-object v3, v2

    goto :goto_4e

    :catchall_82
    move-exception v0

    move-object v2, v1

    goto :goto_4e

    :catch_85
    move-exception v0

    goto :goto_6c

    :catch_87
    move-exception v0

    move-object v2, v1

    goto :goto_6c

    :catch_8a
    move-exception v0

    goto :goto_67

    :catch_8c
    move-exception v0

    move-object v2, v1

    goto :goto_67

    :catch_8f
    move-exception v0

    move-object v1, v2

    goto :goto_4a

    :catch_92
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_4a
.end method

.method static bFJ(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;Lcom/loc/ag;)Z
    .registers 5

    invoke-static {p0, p2}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/loc/cl;->bFK(Lcom/loc/n;Ljava/lang/String;Ljava/lang/String;Lcom/loc/ag;)Z

    move-result v0

    return v0
.end method

.method static bFK(Lcom/loc/n;Ljava/lang/String;Ljava/lang/String;Lcom/loc/ag;)Z
    .registers 8

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lcom/loc/bz;->bBU(Lcom/loc/n;Ljava/lang/String;)Lcom/loc/bC;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    return v3

    :cond_8
    invoke-virtual {p3}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/loc/bC;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0}, Lcom/loc/bC;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/loc/cl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_22
    return v3
.end method

.method static bFL(Landroid/content/Context;Lcom/loc/n;Lcom/loc/ag;)Ljava/lang/String;
    .registers 13

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "copy"

    invoke-static {v1, v2}, Lcom/loc/bC;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/loc/bC;

    invoke-virtual {p1, v1, v2}, Lcom/loc/n;->bvU(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v9

    if-nez v9, :cond_16

    :cond_15
    return-object v8

    :cond_16
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {v9}, Lcom/loc/cl;->a(Ljava/util/List;)V

    move v7, v0

    :goto_20
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lt v7, v0, :cond_28

    move-object v0, v8

    :goto_27
    return-object v0

    :cond_28
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/loc/bC;

    invoke-virtual {v6}, Lcom/loc/bC;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/loc/cl;->bFJ(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;Lcom/loc/ag;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-virtual {v6}, Lcom/loc/bC;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/loc/cl;->bFG(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;)V

    :goto_40
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_20

    :cond_44
    :try_start_44
    new-instance v0, Lcom/loc/bY;

    invoke-virtual {p2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/loc/bC;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/loc/bC;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/loc/bY;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "usedex"

    invoke-virtual {v0, v1}, Lcom/loc/bY;->a(Ljava/lang/String;)Lcom/loc/bY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bY;->a()Lcom/loc/bC;

    move-result-object v0

    invoke-virtual {v6}, Lcom/loc/bC;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/loc/cl;->bFI(Landroid/content/Context;Lcom/loc/n;Lcom/loc/ag;Lcom/loc/bC;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/loc/bC;->d()Ljava/lang/String;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_7e} :catch_80

    move-result-object v0

    goto :goto_27

    :catch_80
    move-exception v0

    const-string/jumbo v1, "DexFileManager"

    const-string/jumbo v2, "loadAvailableDynamicSDKFile"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/loc/aK;

    invoke-direct {v0, p0, p1, p2}, Lcom/loc/aK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/aK;->start()V

    return-void
.end method
