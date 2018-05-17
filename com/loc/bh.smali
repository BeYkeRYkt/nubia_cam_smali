.class public Lcom/loc/bh;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/loc/f;


# instance fields
.field private bgV:Lcom/loc/ch;

.field private bgW:Lcom/loc/aM;

.field private bgX:Lcom/loc/ag;

.field private bgY:Ljava/io/RandomAccessFile;

.field private bgZ:Landroid/content/Context;

.field private bha:I

.field private d:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/loc/ch;Lcom/loc/ag;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    iput-object p3, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    if-eqz p2, :cond_74

    iput-object p2, p0, Lcom/loc/bh;->bgV:Lcom/loc/ch;

    new-instance v0, Lcom/loc/aM;

    new-instance v1, Lcom/loc/k;

    iget-object v2, p0, Lcom/loc/bh;->bgV:Lcom/loc/ch;

    invoke-direct {v1, v2}, Lcom/loc/k;-><init>(Lcom/loc/ch;)V

    invoke-direct {v0, v1}, Lcom/loc/aM;-><init>(Lcom/loc/q;)V

    iput-object v0, p0, Lcom/loc/bh;->bgW:Lcom/loc/aM;

    iget-object v0, p0, Lcom/loc/bh;->bgV:Lcom/loc/ch;

    invoke-virtual {v0}, Lcom/loc/ch;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/loc/bh;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bh;->f:Ljava/lang/String;

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/loc/bh;->h:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/loc/bh;->i:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/loc/bh;->j:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/loc/bh;->l:I

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string/jumbo v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loc/bh;->bha:I

    invoke-virtual {p2}, Lcom/loc/ch;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bh;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/bh;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bh;->d:Ljava/lang/String;
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_73} :catch_75

    :goto_73
    return-void

    :cond_74
    return-void

    :catch_75
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "DexDownLoad"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    new-instance v2, Lcom/loc/n;

    iget-object v1, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    invoke-static {}, Lcom/loc/bX;->c()Lcom/loc/bX;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/loc/n;-><init>(Landroid/content/Context;Lcom/loc/aC;)V

    const-string/jumbo v1, "copy"

    invoke-static {v2, p1, v1}, Lcom/loc/bz;->bBV(Lcom/loc/n;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/cl;->a(Ljava/util/List;)V

    if-nez v3, :cond_19

    :cond_18
    return-void

    :cond_19
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_18

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_24
    if-ge v1, v4, :cond_18

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bC;

    iget-object v5, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/loc/bC;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/loc/cl;->bFG(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24
.end method

.method private a(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/loc/cn;->bFW(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    return v0
.end method

.method private bAK(Lcom/loc/n;Lcom/loc/bC;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "errorstatus"

    invoke-virtual {p2}, Lcom/loc/bC;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/bh;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    invoke-static {v0, p3, p4}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p4, p5}, Lcom/loc/bC;->bCg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/loc/bC;

    invoke-virtual {p1, v0, v1}, Lcom/loc/n;->bvU(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9a

    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    invoke-virtual {v1}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/loc/bY;

    move-object v2, p6

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/loc/bY;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "usedex"

    invoke-virtual {v0, v1}, Lcom/loc/bY;->a(Ljava/lang/String;)Lcom/loc/bY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bY;->a()Lcom/loc/bC;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    iget-object v3, p0, Lcom/loc/bh;->d:Ljava/lang/String;

    invoke-static {v1, p1, v2, v0, v3}, Lcom/loc/cl;->bFI(Landroid/content/Context;Lcom/loc/n;Lcom/loc/ag;Lcom/loc/bC;Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/bE;->a()Lcom/loc/bE;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    invoke-virtual {v0, v1, v2}, Lcom/loc/bE;->bCn(Landroid/content/Context;Lcom/loc/ag;)Lcom/loc/W;
    :try_end_62
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_62} :catch_a1
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_62} :catch_ac
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_62} :catch_b7

    :goto_62
    return v6

    :cond_63
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    invoke-virtual {v2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    invoke-virtual {v3}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/loc/cl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_81

    :goto_80
    return v6

    :cond_81
    iget-object v0, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    invoke-static {v0, p1, v1}, Lcom/loc/cl;->bFL(Landroid/content/Context;Lcom/loc/n;Lcom/loc/ag;)Ljava/lang/String;

    :try_start_88
    invoke-static {}, Lcom/loc/bE;->a()Lcom/loc/bE;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    invoke-virtual {v0, v1, v2}, Lcom/loc/bE;->bCn(Landroid/content/Context;Lcom/loc/ag;)Lcom/loc/W;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_93} :catch_94

    goto :goto_80

    :catch_94
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_80

    :cond_99
    return v2

    :cond_9a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2e

    return v6

    :catch_a1
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "processDownloadedFile()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :catch_ac
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "processDownloadedFile()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :catch_b7
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "processDownloadedFile()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62
.end method

.method private d()Z
    .registers 8

    const/4 v4, 0x0

    new-instance v1, Lcom/loc/n;

    iget-object v0, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    invoke-static {}, Lcom/loc/bX;->c()Lcom/loc/bX;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/loc/n;-><init>(Landroid/content/Context;Lcom/loc/aC;)V

    :try_start_c
    iget-object v0, p0, Lcom/loc/bh;->h:Ljava/lang/String;

    const-string/jumbo v2, "usedex"

    invoke-static {v1, v0, v2}, Lcom/loc/bz;->bBV(Lcom/loc/n;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_14} :catch_3b

    move-result-object v0

    if-nez v0, :cond_20

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/loc/bh;->f:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/loc/bz;->bBU(Lcom/loc/n;Ljava/lang/String;)Lcom/loc/bC;

    move-result-object v2

    if-nez v2, :cond_46

    return v4

    :cond_20
    :try_start_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_17

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bC;

    invoke-virtual {v0}, Lcom/loc/bC;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bh;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/ak;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_36} :catch_3b

    move-result v0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    return v0

    :catch_3b
    move-exception v0

    const-string/jumbo v2, "DexDownLoad"

    const-string/jumbo v3, "isDownloaded()"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_46
    iget-object v3, p0, Lcom/loc/bh;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/bh;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bh;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/loc/bh;->k:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/loc/bh;->bAK(Lcom/loc/n;Lcom/loc/bC;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private e()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    invoke-virtual {v1}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bh;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_13
    :goto_13
    return v0

    :cond_14
    return v0

    :cond_15
    iget-object v1, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    invoke-virtual {v1}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bh;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    goto :goto_13
.end method

.method private f()Z
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/loc/bh;->bha:I

    if-ge v0, v1, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/loc/bh;->l:I

    if-gt v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_7
.end method

.method private g()Z
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/loc/bh;->e()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    return v3

    :cond_8
    invoke-direct {p0}, Lcom/loc/bh;->d()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/loc/bh;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/bh;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    invoke-virtual {v0}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/bh;->a(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_25} :catch_27

    const/4 v0, 0x1

    return v0

    :catch_27
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "isNeedDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public a()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/bh;->start()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "startDownload"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/bh;->bgY:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_16

    if-eqz v0, :cond_a

    :try_start_4
    iget-object v0, p0, Lcom/loc/bh;->bgY:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_16

    :goto_9
    return-void

    :cond_a
    return-void

    :catch_b
    move-exception v0

    :try_start_c
    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onException()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    goto :goto_9

    :catch_16
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onException()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public bvF([BJ)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/loc/bh;->bgY:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_36

    if-eqz v0, :cond_f

    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/loc/bh;->bgY:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/loc/bh;->bgY:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_45
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_e} :catch_36

    :goto_e
    return-void

    :cond_f
    :try_start_f
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/bh;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1d} :catch_36

    move-result v2

    if-eqz v2, :cond_41

    :goto_20
    :try_start_20
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/bh;->bgY:Ljava/io/RandomAccessFile;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2a} :catch_36

    goto :goto_4

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_35} :catch_36

    goto :goto_4

    :catch_36
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_41
    :try_start_41
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_20

    :catch_45
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_4f} :catch_36

    goto :goto_e
.end method

.method public c()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/loc/bh;->bgY:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_2e

    if-eqz v0, :cond_22

    :try_start_4
    iget-object v0, p0, Lcom/loc/bh;->bgY:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_23
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_2e

    :goto_9
    :try_start_9
    iget-object v0, p0, Lcom/loc/bh;->bgV:Lcom/loc/ch;

    invoke-virtual {v0}, Lcom/loc/ch;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/bh;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/cl;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_14} :catch_2e

    move-result v0

    if-nez v0, :cond_39

    :try_start_17
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/bh;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_21} :catch_c9
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_21} :catch_2e

    :goto_21
    return-void

    :cond_22
    return-void

    :catch_23
    move-exception v0

    :try_start_24
    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_9

    :catch_2e
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/loc/bh;->bgV:Lcom/loc/ch;

    invoke-virtual {v0}, Lcom/loc/ch;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/loc/n;

    iget-object v0, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    invoke-static {}, Lcom/loc/bX;->c()Lcom/loc/bX;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/loc/n;-><init>(Landroid/content/Context;Lcom/loc/aC;)V

    new-instance v0, Lcom/loc/bY;

    iget-object v1, p0, Lcom/loc/bh;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bh;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bh;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/loc/bY;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "copy"

    invoke-virtual {v0, v1}, Lcom/loc/bY;->a(Ljava/lang/String;)Lcom/loc/bY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bY;->a()Lcom/loc/bC;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bh;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/bh;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bh;->j:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Lcom/loc/bC;->bCg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/loc/bz;->bBT(Lcom/loc/n;Lcom/loc/bC;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_6d} :catch_2e

    :try_start_6d
    new-instance v0, Lcom/loc/bY;

    iget-object v1, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/bh;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    invoke-virtual {v5}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/loc/cl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/loc/bh;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bh;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/loc/bY;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "usedex"

    invoke-virtual {v0, v1}, Lcom/loc/bY;->a(Ljava/lang/String;)Lcom/loc/bY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bY;->a()Lcom/loc/bC;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    iget-object v3, p0, Lcom/loc/bh;->d:Ljava/lang/String;

    invoke-static {v1, v6, v2, v0, v3}, Lcom/loc/cl;->bFI(Landroid/content/Context;Lcom/loc/n;Lcom/loc/ag;Lcom/loc/bC;Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/bE;->a()Lcom/loc/bE;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bh;->bgZ:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/bh;->bgX:Lcom/loc/ag;

    invoke-virtual {v0, v1, v2}, Lcom/loc/bE;->bCn(Landroid/content/Context;Lcom/loc/ag;)Lcom/loc/W;
    :try_end_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_a3} :catch_a5
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_a3} :catch_b1
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_a3} :catch_bd
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_a3} :catch_2e

    goto/16 :goto_21

    :catch_a5
    move-exception v0

    :try_start_a6
    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    :catch_b1
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    :catch_bd
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21

    :catch_c9
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_d3} :catch_2e

    goto/16 :goto_21
.end method

.method public run()V
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/loc/bh;->g()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/loc/bh;->bgW:Lcom/loc/aM;

    invoke-virtual {v0, p0}, Lcom/loc/aM;->bzV(Lcom/loc/f;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_6

    :catch_d
    move-exception v0

    const-string/jumbo v1, "DexDownLoad"

    const-string/jumbo v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method
