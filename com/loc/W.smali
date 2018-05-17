.class abstract Lcom/loc/W;
.super Ljava/lang/ClassLoader;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Ljava/util/Map;

.field protected beu:Ldalvik/system/DexFile;

.field protected bev:Lcom/loc/ag;

.field volatile d:Z

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/ag;Z)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loc/W;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/W;->beu:Ldalvik/system/DexFile;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/W;->d:Z

    iput-object p1, p0, Lcom/loc/W;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/W;->bev:Lcom/loc/ag;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/loc/W;->beu:Ldalvik/system/DexFile;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method protected b()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/W;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/loc/W;->beu:Ldalvik/system/DexFile;

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/loc/W;->beu:Ldalvik/system/DexFile;

    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_9

    :catch_10
    move-exception v0

    const-string/jumbo v1, "DynamicClassLoader"

    const-string/jumbo v2, "preReleaseDexFile()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected bwX(Landroid/content/Context;Lcom/loc/ag;)V
    .registers 8

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

    if-eqz v2, :cond_17

    :cond_16
    return-void

    :cond_17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {p1, p2}, Lcom/loc/cB;->bHe(Landroid/content/Context;Lcom/loc/ag;)Lcom/loc/cB;

    :try_start_20
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_56

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v0

    if-nez v0, :cond_76

    :goto_55
    return-void

    :cond_56
    if-nez v3, :cond_59

    :cond_58
    :goto_58
    return-void

    :cond_59
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/loc/cl;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_6a} :catch_6b

    goto :goto_58

    :catch_6b
    move-exception v0

    const-string/jumbo v1, "DynamicClassLoader"

    const-string/jumbo v2, "getInstanceByThread()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_76
    :try_start_76
    invoke-virtual {v0}, Ldalvik/system/DexFile;->close()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/loc/W;->f:Ljava/lang/String;

    new-instance v3, Lcom/loc/n;

    invoke-static {}, Lcom/loc/bX;->c()Lcom/loc/bX;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/loc/n;-><init>(Landroid/content/Context;Lcom/loc/aC;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/loc/W;->bwY(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/loc/n;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_8c} :catch_6b

    goto :goto_55
.end method

.method abstract bwY(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/loc/n;)V
.end method
