.class public Lcom/loc/V;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/loc/f;


# static fields
.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private beq:Lcom/loc/aM;

.field private ber:Lcom/loc/aq;

.field private bes:Ljava/io/RandomAccessFile;

.field private bet:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "sodownload"

    sput-object v0, Lcom/loc/V;->h:Ljava/lang/String;

    const-string/jumbo v0, "sofail"

    sput-object v0, Lcom/loc/V;->i:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/loc/V;->bet:Landroid/content/Context;

    iput-object p4, p0, Lcom/loc/V;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "temp.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/loc/V;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/V;->d:Ljava/lang/String;

    const-string/jumbo v0, "libwgs2gcj.so"

    invoke-static {p1, v0}, Lcom/loc/V;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/V;->e:Ljava/lang/String;

    new-instance v0, Lcom/loc/aq;

    invoke-direct {v0, p3}, Lcom/loc/aq;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/V;->ber:Lcom/loc/aq;

    new-instance v0, Lcom/loc/aM;

    iget-object v1, p0, Lcom/loc/V;->ber:Lcom/loc/aq;

    invoke-direct {v0, v1}, Lcom/loc/aM;-><init>(Lcom/loc/q;)V

    iput-object v0, p0, Lcom/loc/V;->beq:Lcom/loc/aM;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

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

    const-string/jumbo v1, "libso"

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

.method private static bwW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/loc/V;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/V;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    :goto_d
    return-void

    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_d
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/loc/V;->ber:Lcom/loc/aq;

    if-nez v0, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/loc/V;->ber:Lcom/loc/aq;

    invoke-virtual {v0}, Lcom/loc/aq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/V;->ber:Lcom/loc/aq;

    invoke-virtual {v0}, Lcom/loc/aq;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "libJni_wgs2gcj.so"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/loc/V;->ber:Lcom/loc/aq;

    invoke-virtual {v0}, Lcom/loc/aq;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/V;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/loc/V;->start()V

    return-void

    :cond_3f
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/V;->bes:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1c

    :goto_4
    invoke-direct {p0}, Lcom/loc/V;->d()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/V;->bet:Landroid/content/Context;

    const-string/jumbo v2, "tempfile"

    invoke-static {v1, v2}, Lcom/loc/V;->bwW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2d

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/loc/V;->bes:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_4

    :catch_22
    move-exception v0

    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "onException"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_2d
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_46

    :goto_37
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_3a} :catch_3b
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_3a} :catch_22

    goto :goto_1b

    :catch_3b
    move-exception v0

    :try_start_3c
    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "onException"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_45} :catch_22

    goto :goto_1b

    :cond_46
    :try_start_46
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_3b
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_49} :catch_22

    goto :goto_37
.end method

.method public b()V
    .registers 1

    invoke-direct {p0}, Lcom/loc/V;->d()V

    return-void
.end method

.method public bvF([BJ)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/loc/V;->bes:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_39

    if-eqz v0, :cond_f

    :goto_4
    :try_start_4
    iget-object v0, p0, Lcom/loc/V;->bes:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/loc/V;->bes:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_4b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_e} :catch_39

    :goto_e
    return-void

    :cond_f
    :try_start_f
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/V;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1d} :catch_39

    move-result v2

    if-eqz v2, :cond_47

    :goto_20
    :try_start_20
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/V;->bes:Ljava/io/RandomAccessFile;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_2a} :catch_39

    goto :goto_4

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "onDownload"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/loc/V;->d()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_38} :catch_39

    goto :goto_4

    :catch_39
    move-exception v0

    invoke-direct {p0}, Lcom/loc/V;->d()V

    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "onDownload"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_47
    :try_start_47
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_20

    :catch_4b
    move-exception v0

    invoke-direct {p0}, Lcom/loc/V;->d()V

    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "onDownload"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_58} :catch_39

    goto :goto_e
.end method

.method public c()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/V;->bes:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_10

    :goto_4
    iget-object v0, p0, Lcom/loc/V;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/bU;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    :cond_c
    invoke-direct {p0}, Lcom/loc/V;->d()V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/loc/V;->bes:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_4

    :catch_16
    move-exception v0

    invoke-direct {p0}, Lcom/loc/V;->d()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/loc/V;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5c

    :goto_27
    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "onFinish"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_31
    :try_start_31
    iget-object v1, p0, Lcom/loc/V;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/V;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_58

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/V;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/loc/V;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_f

    :cond_58
    invoke-direct {p0}, Lcom/loc/V;->d()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_5b} :catch_16

    return-void

    :cond_5c
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_27
.end method

.method public run()V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/V;->bet:Landroid/content/Context;

    const-string/jumbo v2, "tempfile"

    invoke-static {v1, v2}, Lcom/loc/V;->bwW(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    :goto_14
    iget-object v0, p0, Lcom/loc/V;->beq:Lcom/loc/aM;

    invoke-virtual {v0, p0}, Lcom/loc/aM;->bzV(Lcom/loc/f;)V

    :goto_19
    return-void

    :cond_1a
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_14

    :catch_1e
    move-exception v0

    const-string/jumbo v1, "SDKCoordinatorDownload"

    const-string/jumbo v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/loc/V;->d()V

    goto :goto_19
.end method
