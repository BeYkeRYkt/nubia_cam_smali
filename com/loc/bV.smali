.class public final Lcom/loc/bV;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bjf:Lcom/loc/O;

.field private final bjg:[Z

.field private bjh:Z

.field final synthetic bji:Lcom/loc/cD;

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/loc/cD;Lcom/loc/O;)V
    .registers 4

    iput-object p1, p0, Lcom/loc/bV;->bji:Lcom/loc/cD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/loc/bV;->bjf:Lcom/loc/O;

    invoke-static {p2}, Lcom/loc/O;->bwN(Lcom/loc/O;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p1}, Lcom/loc/cD;->bHs(Lcom/loc/cD;)I

    move-result v0

    new-array v0, v0, [Z

    :goto_13
    iput-object v0, p0, Lcom/loc/bV;->bjg:[Z

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_13
.end method

.method synthetic constructor <init>(Lcom/loc/cD;Lcom/loc/O;Lcom/loc/ax;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/loc/bV;-><init>(Lcom/loc/cD;Lcom/loc/O;)V

    return-void
.end method

.method static synthetic bDP(Lcom/loc/bV;)Lcom/loc/O;
    .registers 2

    iget-object v0, p0, Lcom/loc/bV;->bjf:Lcom/loc/O;

    return-object v0
.end method

.method static synthetic bDQ(Lcom/loc/bV;)[Z
    .registers 2

    iget-object v0, p0, Lcom/loc/bV;->bjg:[Z

    return-object v0
.end method

.method static synthetic bDR(Lcom/loc/bV;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/loc/bV;->d:Z

    return p1
.end method


# virtual methods
.method public a(I)Ljava/io/OutputStream;
    .registers 6

    if-gez p1, :cond_3b

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "be greater than 0 and less than the maximum value count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/bV;->bji:Lcom/loc/cD;

    invoke-static {v2}, Lcom/loc/cD;->bHs(Lcom/loc/cD;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    iget-object v0, p0, Lcom/loc/bV;->bji:Lcom/loc/cD;

    invoke-static {v0}, Lcom/loc/cD;->bHs(Lcom/loc/cD;)I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v1, p0, Lcom/loc/bV;->bji:Lcom/loc/cD;

    monitor-enter v1

    :try_start_46
    iget-object v0, p0, Lcom/loc/bV;->bjf:Lcom/loc/O;

    invoke-static {v0}, Lcom/loc/O;->bwK(Lcom/loc/O;)Lcom/loc/bV;

    move-result-object v0

    if-ne v0, p0, :cond_69

    iget-object v0, p0, Lcom/loc/bV;->bjf:Lcom/loc/O;

    invoke-static {v0}, Lcom/loc/O;->bwN(Lcom/loc/O;)Z

    move-result v0

    if-eqz v0, :cond_72

    :goto_56
    iget-object v0, p0, Lcom/loc/bV;->bjf:Lcom/loc/O;

    invoke-virtual {v0, p1}, Lcom/loc/O;->bwG(I)Ljava/io/File;
    :try_end_5b
    .catchall {:try_start_46 .. :try_end_5b} :catchall_6f

    move-result-object v2

    :try_start_5c
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_61
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_61} :catch_78
    .catchall {:try_start_5c .. :try_end_61} :catchall_6f

    :goto_61
    :try_start_61
    new-instance v2, Lcom/loc/l;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/loc/l;-><init>(Lcom/loc/bV;Ljava/io/OutputStream;Lcom/loc/ax;)V

    monitor-exit v1

    return-object v2

    :cond_69
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_6f
    move-exception v0

    monitor-exit v1
    :try_end_71
    .catchall {:try_start_61 .. :try_end_71} :catchall_6f

    throw v0

    :cond_72
    :try_start_72
    iget-object v0, p0, Lcom/loc/bV;->bjg:[Z

    const/4 v2, 0x1

    aput-boolean v2, v0, p1

    goto :goto_56

    :catch_78
    move-exception v0

    iget-object v0, p0, Lcom/loc/bV;->bji:Lcom/loc/cD;

    invoke-static {v0}, Lcom/loc/cD;->bHt(Lcom/loc/cD;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_82
    .catchall {:try_start_72 .. :try_end_82} :catchall_6f

    :try_start_82
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_87
    .catch Ljava/io/FileNotFoundException; {:try_start_82 .. :try_end_87} :catch_88
    .catchall {:try_start_82 .. :try_end_87} :catchall_6f

    goto :goto_61

    :catch_88
    move-exception v0

    :try_start_89
    invoke-static {}, Lcom/loc/cD;->d()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_6f

    return-object v0
.end method

.method public a()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/loc/bV;->d:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/loc/bV;->bji:Lcom/loc/cD;

    invoke-static {v0, p0, v2}, Lcom/loc/cD;->bHu(Lcom/loc/cD;Lcom/loc/bV;Z)V

    :goto_b
    iput-boolean v2, p0, Lcom/loc/bV;->bjh:Z

    return-void

    :cond_e
    iget-object v0, p0, Lcom/loc/bV;->bji:Lcom/loc/cD;

    invoke-static {v0, p0, v1}, Lcom/loc/cD;->bHu(Lcom/loc/cD;Lcom/loc/bV;Z)V

    iget-object v0, p0, Lcom/loc/bV;->bji:Lcom/loc/cD;

    iget-object v1, p0, Lcom/loc/bV;->bjf:Lcom/loc/O;

    invoke-static {v1}, Lcom/loc/O;->bwM(Lcom/loc/O;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/loc/cD;->bHl(Ljava/lang/String;)Z

    goto :goto_b
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/loc/bV;->bji:Lcom/loc/cD;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/loc/cD;->bHu(Lcom/loc/cD;Lcom/loc/bV;Z)V

    return-void
.end method
