.class public Lcom/loc/ce;
.super Lcom/loc/aR;
.source "SourceFile"


# static fields
.field private static a:Z


# instance fields
.field private bkC:[Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/ce;->a:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/loc/aR;-><init>(I)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/ce;->bkC:[Ljava/lang/String;

    iput v1, p0, Lcom/loc/ce;->c:I

    iput-boolean v1, p0, Lcom/loc/ce;->d:Z

    iput v1, p0, Lcom/loc/ce;->e:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget v0, p0, Lcom/loc/ce;->c:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_13

    :goto_6
    iget-object v0, p0, Lcom/loc/ce;->bkC:[Ljava/lang/String;

    iget v1, p0, Lcom/loc/ce;->c:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/loc/ce;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/ce;->c:I

    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/ce;->c:I
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_6

    :catch_17
    move-exception v0

    const-string/jumbo v1, "ANRWriter"

    const-string/jumbo v2, "addData"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private d()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_5
    iget v0, p0, Lcom/loc/ce;->c:I

    :goto_7
    const/16 v2, 0xa

    if-lt v0, v2, :cond_15

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget v2, p0, Lcom/loc/ce;->c:I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_e} :catch_2d

    if-lt v0, v2, :cond_23

    :goto_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    const/16 v2, 0x9

    if-gt v0, v2, :cond_b

    :try_start_19
    iget-object v2, p0, Lcom/loc/ce;->bkC:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_23
    iget-object v2, p0, Lcom/loc/ce;->bkC:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_2a} :catch_2d

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :catch_2d
    move-exception v0

    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "getLogInfo"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method


# virtual methods
.method protected a(Ljava/util/List;)Ljava/lang/String;
    .registers 11

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/anr/traces.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_55

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_15} :catch_1a0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_a1
    .catchall {:try_start_2 .. :try_end_15} :catchall_c0

    :try_start_15
    new-instance v1, Lcom/loc/cf;

    sget-object v0, Lcom/loc/G;->beb:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v0}, Lcom/loc/cf;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1c} :catch_1a5
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_199
    .catchall {:try_start_15 .. :try_end_1c} :catchall_192

    move v4, v5

    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {v1}, Lcom/loc/cf;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "pid"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5a

    move-object v6, v0

    move v0, v4

    :goto_2c
    const-string/jumbo v4, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_67

    move v4, v0

    :goto_36
    if-eqz v4, :cond_1d

    invoke-direct {p0, v6}, Lcom/loc/ce;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/loc/ce;->e:I

    const/4 v7, 0x5

    if-eq v0, v7, :cond_4c

    iget-boolean v0, p0, Lcom/loc/ce;->d:Z

    if-eqz v0, :cond_69

    iget v0, p0, Lcom/loc/ce;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/loc/ce;->e:I
    :try_end_4a
    .catch Ljava/io/EOFException; {:try_start_1d .. :try_end_4a} :catch_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_4a} :catch_8b
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_4a} :catch_19d
    .catchall {:try_start_1d .. :try_end_4a} :catchall_196

    goto :goto_1d

    :catch_4b
    move-exception v0

    :cond_4c
    if-nez v1, :cond_cd

    :goto_4e
    if-nez v3, :cond_ea

    :cond_50
    :goto_50
    iget-boolean v0, p0, Lcom/loc/ce;->d:Z

    if-nez v0, :cond_c8

    return-object v2

    :cond_55
    return-object v2

    :cond_56
    :try_start_56
    invoke-virtual {v1}, Lcom/loc/cf;->a()Ljava/lang/String;

    move-result-object v0

    :cond_5a
    const-string/jumbo v4, "\"main\""

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_56

    const/4 v4, 0x1

    move-object v6, v0

    move v0, v4

    goto :goto_2c

    :cond_67
    move v4, v5

    goto :goto_36

    :cond_69
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6d
    :goto_6d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/ag;

    invoke-virtual {v0}, Lcom/loc/ag;->e()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/loc/ce;->bAi([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/loc/ce;->d:Z

    iget-boolean v8, p0, Lcom/loc/ce;->d:Z

    if-eqz v8, :cond_6d

    invoke-virtual {p0, v0}, Lcom/loc/ce;->bAc(Lcom/loc/ag;)V
    :try_end_8a
    .catch Ljava/io/EOFException; {:try_start_56 .. :try_end_8a} :catch_4b
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_8a} :catch_8b
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_8a} :catch_19d
    .catchall {:try_start_56 .. :try_end_8a} :catchall_196

    goto :goto_6d

    :catch_8b
    move-exception v0

    move-object v0, v1

    move-object v1, v3

    :goto_8e
    if-nez v0, :cond_107

    :goto_90
    if-eqz v1, :cond_50

    :try_start_92
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96
    .catch Ljava/lang/Throwable; {:try_start_92 .. :try_end_95} :catch_123

    goto :goto_50

    :catch_96
    move-exception v0

    const-string/jumbo v1, "ANRWriter"

    const-string/jumbo v3, "initLog3"

    invoke-static {v0, v1, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :catch_a1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_a4
    :try_start_a4
    const-string/jumbo v4, "ANRWriter"

    const-string/jumbo v5, "initLog"

    invoke-static {v0, v4, v5}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ad
    .catchall {:try_start_a4 .. :try_end_ad} :catchall_196

    if-nez v1, :cond_12f

    :goto_af
    if-eqz v3, :cond_50

    :try_start_b1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_b4} :catch_14c

    goto :goto_50

    :catch_b5
    move-exception v0

    const-string/jumbo v1, "ANRWriter"

    const-string/jumbo v3, "initLog3"

    invoke-static {v0, v1, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :catchall_c0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_c3
    if-nez v1, :cond_158

    :goto_c5
    if-nez v3, :cond_175

    :goto_c7
    throw v0

    :cond_c8
    invoke-direct {p0}, Lcom/loc/ce;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_cd
    :try_start_cd
    invoke-virtual {v1}, Lcom/loc/cf;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d2
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_d0} :catch_de

    goto/16 :goto_4e

    :catch_d2
    move-exception v0

    const-string/jumbo v1, "ANRWriter"

    const-string/jumbo v4, "initLog1"

    invoke-static {v0, v1, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4e

    :catch_de
    move-exception v0

    const-string/jumbo v1, "ANRWriter"

    const-string/jumbo v4, "initLog2"

    invoke-static {v0, v1, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4e

    :cond_ea
    :try_start_ea
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_ed} :catch_ef
    .catch Ljava/lang/Throwable; {:try_start_ea .. :try_end_ed} :catch_fb

    goto/16 :goto_50

    :catch_ef
    move-exception v0

    const-string/jumbo v1, "ANRWriter"

    const-string/jumbo v3, "initLog3"

    invoke-static {v0, v1, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50

    :catch_fb
    move-exception v0

    const-string/jumbo v1, "ANRWriter"

    const-string/jumbo v3, "initLog4"

    invoke-static {v0, v1, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50

    :cond_107
    :try_start_107
    invoke-virtual {v0}, Lcom/loc/cf;->close()V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10a} :catch_10b
    .catch Ljava/lang/Throwable; {:try_start_107 .. :try_end_10a} :catch_117

    goto :goto_90

    :catch_10b
    move-exception v0

    const-string/jumbo v3, "ANRWriter"

    const-string/jumbo v4, "initLog1"

    invoke-static {v0, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_90

    :catch_117
    move-exception v0

    const-string/jumbo v3, "ANRWriter"

    const-string/jumbo v4, "initLog2"

    invoke-static {v0, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_90

    :catch_123
    move-exception v0

    const-string/jumbo v1, "ANRWriter"

    const-string/jumbo v3, "initLog4"

    invoke-static {v0, v1, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50

    :cond_12f
    :try_start_12f
    invoke-virtual {v1}, Lcom/loc/cf;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_134
    .catch Ljava/lang/Throwable; {:try_start_12f .. :try_end_132} :catch_140

    goto/16 :goto_af

    :catch_134
    move-exception v0

    const-string/jumbo v1, "ANRWriter"

    const-string/jumbo v4, "initLog1"

    invoke-static {v0, v1, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_af

    :catch_140
    move-exception v0

    const-string/jumbo v1, "ANRWriter"

    const-string/jumbo v4, "initLog2"

    invoke-static {v0, v1, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_af

    :catch_14c
    move-exception v0

    const-string/jumbo v1, "ANRWriter"

    const-string/jumbo v3, "initLog4"

    invoke-static {v0, v1, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_50

    :cond_158
    :try_start_158
    invoke-virtual {v1}, Lcom/loc/cf;->close()V
    :try_end_15b
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_15b} :catch_15d
    .catch Ljava/lang/Throwable; {:try_start_158 .. :try_end_15b} :catch_169

    goto/16 :goto_c5

    :catch_15d
    move-exception v1

    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v4, "initLog1"

    invoke-static {v1, v2, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c5

    :catch_169
    move-exception v1

    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v4, "initLog2"

    invoke-static {v1, v2, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c5

    :cond_175
    :try_start_175
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_178} :catch_17a
    .catch Ljava/lang/Throwable; {:try_start_175 .. :try_end_178} :catch_186

    goto/16 :goto_c7

    :catch_17a
    move-exception v1

    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "initLog3"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c7

    :catch_186
    move-exception v1

    const-string/jumbo v2, "ANRWriter"

    const-string/jumbo v3, "initLog4"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c7

    :catchall_192
    move-exception v0

    move-object v1, v2

    goto/16 :goto_c3

    :catchall_196
    move-exception v0

    goto/16 :goto_c3

    :catch_199
    move-exception v0

    move-object v1, v2

    goto/16 :goto_a4

    :catch_19d
    move-exception v0

    goto/16 :goto_a4

    :catch_1a0
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_8e

    :catch_1a5
    move-exception v0

    move-object v0, v2

    move-object v1, v3

    goto/16 :goto_8e
.end method

.method protected a(Landroid/content/Context;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/loc/cn;->bFW(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v5, :cond_9

    :cond_8
    return v4

    :cond_9
    sget-boolean v0, Lcom/loc/ce;->a:Z

    if-eqz v0, :cond_8

    sput-boolean v4, Lcom/loc/ce;->a:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1

    :try_start_14
    new-instance v0, Lcom/loc/h;

    invoke-direct {v0, p1}, Lcom/loc/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/loc/h;->a()Lcom/loc/av;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/loc/av;->c()Z

    move-result v3

    if-nez v3, :cond_29

    monitor-exit v1

    return v4

    :cond_27
    monitor-exit v1

    return v5

    :cond_29
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/loc/av;->bzi(Z)V

    invoke-virtual {v0, v2}, Lcom/loc/h;->bvG(Lcom/loc/av;)V

    monitor-exit v1

    return v5

    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_32

    throw v0
.end method
