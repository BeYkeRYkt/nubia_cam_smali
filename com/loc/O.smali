.class final Lcom/loc/O;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;

.field private final beg:[J

.field private beh:Lcom/loc/bV;

.field final synthetic bei:Lcom/loc/cD;

.field private d:Z

.field private f:J


# direct methods
.method private constructor <init>(Lcom/loc/cD;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/loc/O;->bei:Lcom/loc/cD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/loc/O;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/cD;->bHs(Lcom/loc/cD;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/loc/O;->beg:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/cD;Ljava/lang/String;Lcom/loc/ax;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/loc/O;-><init>(Lcom/loc/cD;Ljava/lang/String;)V

    return-void
.end method

.method private bwE([Ljava/lang/String;)V
    .registers 6

    array-length v0, p1

    iget-object v1, p0, Lcom/loc/O;->bei:Lcom/loc/cD;

    invoke-static {v1}, Lcom/loc/cD;->bHs(Lcom/loc/cD;)I

    move-result v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_a
    :try_start_a
    array-length v1, p1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_b} :catch_20

    if-lt v0, v1, :cond_13

    return-void

    :cond_e
    invoke-direct {p0, p1}, Lcom/loc/O;->bwF([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/loc/O;->beg:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_1d} :catch_20

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :catch_20
    move-exception v0

    invoke-direct {p0, p1}, Lcom/loc/O;->bwF([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private bwF([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic bwH(Lcom/loc/O;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/loc/O;->d:Z

    return p1
.end method

.method static synthetic bwI(Lcom/loc/O;Lcom/loc/bV;)Lcom/loc/bV;
    .registers 2

    iput-object p1, p0, Lcom/loc/O;->beh:Lcom/loc/bV;

    return-object p1
.end method

.method static synthetic bwJ(Lcom/loc/O;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/loc/O;->bwE([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic bwK(Lcom/loc/O;)Lcom/loc/bV;
    .registers 2

    iget-object v0, p0, Lcom/loc/O;->beh:Lcom/loc/bV;

    return-object v0
.end method

.method static synthetic bwL(Lcom/loc/O;)[J
    .registers 2

    iget-object v0, p0, Lcom/loc/O;->beg:[J

    return-object v0
.end method

.method static synthetic bwM(Lcom/loc/O;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/O;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bwN(Lcom/loc/O;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/loc/O;->d:Z

    return v0
.end method

.method static synthetic bwO(Lcom/loc/O;)J
    .registers 3

    iget-wide v0, p0, Lcom/loc/O;->f:J

    return-wide v0
.end method

.method static synthetic bwP(Lcom/loc/O;J)J
    .registers 4

    iput-wide p1, p0, Lcom/loc/O;->f:J

    return-wide p1
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/O;->bei:Lcom/loc/cD;

    invoke-static {v1}, Lcom/loc/cD;->bHt(Lcom/loc/cD;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/loc/O;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/loc/O;->beg:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-lt v0, v3, :cond_10

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    aget-wide v4, v2, v0

    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public bwG(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/O;->bei:Lcom/loc/cD;

    invoke-static {v1}, Lcom/loc/cD;->bHt(Lcom/loc/cD;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/loc/O;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
