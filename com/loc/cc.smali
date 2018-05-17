.class Lcom/loc/cc;
.super Lcom/loc/W;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/ag;Z)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Lcom/loc/W;-><init>(Landroid/content/Context;Lcom/loc/ag;Z)V

    invoke-virtual {p2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/loc/cl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/loc/cl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_19
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "dexPath or dexOutputDir is null."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3a

    if-nez p3, :cond_57

    :goto_39
    return-void

    :cond_3a
    if-nez v3, :cond_45

    :cond_3c
    :goto_3c
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "file not exist!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/loc/cl;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/loc/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/loc/ac;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/loc/ac;-><init>(Lcom/loc/cc;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/loc/ac;->start()V

    goto :goto_39
.end method

.method private bEp(Lcom/loc/n;Lcom/loc/ag;Ljava/lang/String;)Z
    .registers 7

    iget-object v0, p0, Lcom/loc/cc;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p3, p2}, Lcom/loc/cl;->bFK(Lcom/loc/n;Ljava/lang/String;Ljava/lang/String;Lcom/loc/ag;)Z

    move-result v0

    return v0
.end method

.method private bEq(Lcom/loc/n;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/cc;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/cc;->bev:Lcom/loc/ag;

    invoke-static {p1, p2, v1, v0}, Lcom/loc/cl;->bFK(Lcom/loc/n;Ljava/lang/String;Ljava/lang/String;Lcom/loc/ag;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {p1, p2}, Lcom/loc/bz;->bBU(Lcom/loc/n;Ljava/lang/String;)Lcom/loc/bC;

    move-result-object v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/loc/cc;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    :goto_1e
    return v6

    :cond_1f
    return v6

    :cond_20
    return v2

    :cond_21
    new-instance v0, Lcom/loc/bY;

    invoke-static {v1}, Lcom/loc/bU;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/loc/cc;->bev:Lcom/loc/ag;

    invoke-virtual {v1}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/loc/cc;->bev:Lcom/loc/ag;

    invoke-virtual {v1}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v4

    move-object v1, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/loc/bY;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "useodex"

    invoke-virtual {v0, v1}, Lcom/loc/bY;->a(Ljava/lang/String;)Lcom/loc/bY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bY;->a()Lcom/loc/bC;

    move-result-object v0

    invoke-static {p2}, Lcom/loc/bC;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/loc/bz;->bBT(Lcom/loc/n;Lcom/loc/bC;Ljava/lang/String;)V

    goto :goto_1e
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    :try_start_8
    new-instance v0, Lcom/loc/n;

    invoke-static {}, Lcom/loc/bX;->c()Lcom/loc/bX;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/loc/n;-><init>(Landroid/content/Context;Lcom/loc/aC;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/loc/bz;->bBU(Lcom/loc/n;Ljava/lang/String;)Lcom/loc/bC;

    move-result-object v2

    if-nez v2, :cond_65

    :goto_20
    iget-object v2, p0, Lcom/loc/cc;->bev:Lcom/loc/ag;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/loc/cc;->bEp(Lcom/loc/n;Lcom/loc/ag;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/cl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_59} :catch_6c

    move-result v4

    if-nez v4, :cond_9c

    :cond_5c
    :goto_5c
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    return-void

    :cond_65
    :try_start_65
    invoke-virtual {v2}, Lcom/loc/bC;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/cc;->f:Ljava/lang/String;
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_6b} :catch_6c

    goto :goto_20

    :catch_6c
    move-exception v0

    const-string/jumbo v1, "DynamicClassLoader"

    const-string/jumbo v2, "verifyDynamicSDK()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :cond_77
    const/4 v2, 0x0

    :try_start_78
    iput-boolean v2, p0, Lcom/loc/cc;->d:Z

    iget-object v2, p0, Lcom/loc/cc;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/loc/cl;->bFF(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/cc;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/cc;->bev:Lcom/loc/ag;

    invoke-static {v2, v0, v3}, Lcom/loc/cl;->bFL(Landroid/content/Context;Lcom/loc/n;Lcom/loc/ag;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    iput-object v2, p0, Lcom/loc/cc;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/cc;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/cc;->bev:Lcom/loc/ag;

    invoke-virtual {p0, v2, v3}, Lcom/loc/cc;->bwX(Landroid/content/Context;Lcom/loc/ag;)V

    goto :goto_2c

    :cond_9b
    return-void

    :cond_9c
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/cl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/loc/cc;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/loc/cc;->bEq(Lcom/loc/n;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/cl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/loc/cc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/cc;->f:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/loc/cc;->bwY(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/loc/n;)V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_d3} :catch_6c

    goto :goto_5c
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/cc;->b()V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/cc;->beu:Ldalvik/system/DexFile;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    const-string/jumbo v1, "DynamicClassLoader"

    const-string/jumbo v2, "loadDexFile()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "load dex fail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bwY(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/loc/n;)V
    .registers 11

    iget-object v0, p0, Lcom/loc/cc;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    :cond_8
    invoke-static {p2}, Lcom/loc/bU;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/loc/cc;->bev:Lcom/loc/ag;

    invoke-virtual {v0}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/loc/cc;->bev:Lcom/loc/ag;

    invoke-virtual {v0}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/loc/bY;

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/loc/bY;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "useodex"

    invoke-virtual {v0, v2}, Lcom/loc/bY;->a(Ljava/lang/String;)Lcom/loc/bY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bY;->a()Lcom/loc/bC;

    move-result-object v0

    invoke-static {v1}, Lcom/loc/bC;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/loc/bz;->bBT(Lcom/loc/n;Lcom/loc/bC;Ljava/lang/String;)V

    :goto_34
    return-void

    :cond_35
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_34
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/cc;->beu:Ldalvik/system/DexFile;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/loc/cc;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/loc/cc;->beu:Ldalvik/system/DexFile;

    invoke-virtual {v0, p1, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/cc;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_33

    return-object v0

    :cond_1c
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_22

    :catch_22
    move-exception v0

    const-string/jumbo v1, "DynamicClassLoader"

    const-string/jumbo v2, "findClass()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    return-object v0

    :cond_33
    :try_start_33
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_39} :catch_22
.end method
