.class public Lcom/loc/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/16 v1, 0x300

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/loc/N;->b:I

    iput v0, p0, Lcom/loc/N;->c:I

    iput v0, p0, Lcom/loc/N;->d:I

    iput v0, p0, Lcom/loc/N;->e:I

    iput v0, p0, Lcom/loc/N;->f:I

    iput v0, p0, Lcom/loc/N;->g:I

    iput-object p1, p0, Lcom/loc/N;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/loc/N;->a(I)V

    invoke-virtual {p0, v1}, Lcom/loc/N;->bwA(I)V

    return-void
.end method

.method private bwC([Ljava/io/File;)Ljava/util/ArrayList;
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    :try_start_6
    array-length v2, p1

    if-lt v0, v2, :cond_a

    :goto_9
    return-object v1

    :cond_a
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_15

    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_15
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_12

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_34} :catch_35

    goto :goto_12

    :catch_35
    move-exception v0

    const-string/jumbo v2, "CollectorFileProvider"

    const-string/jumbo v3, "getKnownFile"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private bwD(J)Ljava/io/File;
    .registers 12

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_2c

    const-string/jumbo v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {}, Lcom/loc/cw;->a()Z

    move-result v3

    if-nez v3, :cond_2d

    :cond_1b
    invoke-static {}, Lcom/loc/cw;->b()J

    move-result-wide v4

    iget v1, p0, Lcom/loc/N;->d:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-lez v1, :cond_33

    const/4 v1, 0x1

    :goto_29
    if-nez v1, :cond_35

    return-object v2

    :cond_2c
    return-object v2

    :cond_2d
    if-nez v1, :cond_1b

    move-object v1, v2

    :goto_30
    if-nez v0, :cond_95

    :goto_32
    return-object v2

    :cond_33
    move v1, v0

    goto :goto_29

    :cond_35
    iget-object v1, p0, Lcom/loc/N;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/loc/cw;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "carrierdata"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8c

    :cond_64
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :goto_67
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_87} :catch_96

    :try_start_87
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_93
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8a} :catch_96

    move-result v0

    goto :goto_30

    :cond_8c
    :try_start_8c
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8f} :catch_96

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_67

    :catch_93
    move-exception v3

    goto :goto_30

    :cond_95
    return-object v1

    :catch_96
    move-exception v0

    const-string/jumbo v1, "CollectorFileProvider"

    const-string/jumbo v3, "createWriteFileInSDCard"

    invoke-static {v0, v1, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method

.method private c()Ljava/io/File;
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    :try_start_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_4d

    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, Lcom/loc/cw;->a()Z

    move-result v4

    if-nez v4, :cond_4e

    :cond_1c
    iget-object v0, p0, Lcom/loc/N;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cw;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "carrierdata"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_51

    :cond_4b
    :goto_4b
    move-object v0, v2

    :cond_4c
    :goto_4c
    return-object v0

    :cond_4d
    return-object v2

    :cond_4e
    if-nez v0, :cond_1c

    goto :goto_4b

    :cond_51
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4b

    array-length v4, v0

    if-lez v4, :cond_4b

    invoke-direct {p0, v0}, Lcom/loc/N;->bwC([Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v1, :cond_8f

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4b

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_4c

    move-object v0, v1

    goto :goto_4c

    :cond_8f
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    iget v0, p0, Lcom/loc/N;->f:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_ac

    move v0, v1

    :goto_a2
    if-nez v0, :cond_4b

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_ab} :catch_ae

    goto :goto_4c

    :cond_ac
    move v0, v3

    goto :goto_a2

    :catch_ae
    move-exception v0

    const-string/jumbo v1, "CollectorFileProvider"

    const-string/jumbo v3, "findWriteInSDCard"

    invoke-static {v0, v1, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method private d()I
    .registers 9

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/os/Process;->myUid()I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_8d

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_4d

    :try_start_b
    const-string/jumbo v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_4e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_15} :catch_8d

    move-result v3

    :goto_16
    :try_start_16
    invoke-static {}, Lcom/loc/cw;->a()Z

    move-result v4

    if-nez v4, :cond_51

    :cond_1c
    iget-object v3, p0, Lcom/loc/N;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/cw;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "carrierdata"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_54

    :cond_4b
    :goto_4b
    move v0, v1

    :cond_4c
    :goto_4c
    return v0

    :cond_4d
    return v1

    :catch_4e
    move-exception v3

    move v3, v1

    goto :goto_16

    :cond_51
    if-nez v3, :cond_1c

    goto :goto_4b

    :cond_54
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4b

    array-length v4, v3

    if-lez v4, :cond_4b

    invoke-direct {p0, v3}, Lcom/loc/N;->bwC([Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v2, :cond_74

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_4c

    goto :goto_4b

    :cond_74
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_7e} :catch_8d

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_86

    move v1, v2

    :cond_86
    if-nez v1, :cond_8b

    const/16 v0, 0xa

    goto :goto_4c

    :cond_8b
    move v0, v2

    goto :goto_4c

    :catch_8d
    move-exception v0

    const-string/jumbo v2, "CollectorFileProvider"

    const-string/jumbo v3, "findWriteInSDCard_OneFile"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method private e()Ljava/io/File;
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/Process;->myUid()I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_8a

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_25

    :try_start_a
    const-string/jumbo v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_95
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_14} :catch_8a

    move-result v0

    :goto_15
    :try_start_15
    invoke-static {}, Lcom/loc/cw;->a()Z

    move-result v1

    if-nez v1, :cond_26

    :cond_1b
    iget-object v0, p0, Lcom/loc/N;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cw;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_29

    :cond_23
    :goto_23
    move-object v0, v2

    :cond_24
    :goto_24
    return-object v0

    :cond_25
    return-object v2

    :cond_26
    if-nez v0, :cond_1b

    goto :goto_23

    :cond_29
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "carrierdata"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_23

    array-length v1, v0

    if-lez v1, :cond_23

    invoke-direct {p0, v0}, Lcom/loc/N;->bwC([Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_23

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_85} :catch_8a

    move-result v2

    if-lez v2, :cond_24

    move-object v0, v1

    goto :goto_24

    :catch_8a
    move-exception v0

    const-string/jumbo v1, "CollectorFileProvider"

    const-string/jumbo v3, "findReadInSDCard"

    invoke-static {v0, v1, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :catch_95
    move-exception v1

    goto/16 :goto_15
.end method


# virtual methods
.method protected a()I
    .registers 2

    iget v0, p0, Lcom/loc/N;->b:I

    return v0
.end method

.method protected declared-synchronized a(J)Ljava/io/File;
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/loc/N;->c()Ljava/io/File;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_f
    .catchall {:try_start_2 .. :try_end_5} :catchall_1b

    move-result-object v0

    if-eqz v0, :cond_a

    :goto_8
    monitor-exit p0

    return-object v0

    :cond_a
    :try_start_a
    invoke-direct {p0, p1, p2}, Lcom/loc/N;->bwD(J)Ljava/io/File;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_1e
    .catchall {:try_start_a .. :try_end_d} :catchall_1b

    move-result-object v0

    goto :goto_8

    :catch_f
    move-exception v0

    :goto_10
    :try_start_10
    const-string/jumbo v2, "CollectorFileProvider"

    const-string/jumbo v3, "getWriteFile"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1b

    move-object v0, v1

    goto :goto_8

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1e
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_10
.end method

.method protected a(I)V
    .registers 5

    :try_start_0
    iput p1, p0, Lcom/loc/N;->b:I

    iget v0, p0, Lcom/loc/N;->b:I

    mul-int/lit8 v0, v0, 0x8

    mul-int/lit16 v0, v0, 0x5dc

    iget v1, p0, Lcom/loc/N;->b:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/loc/N;->d:I

    iget v0, p0, Lcom/loc/N;->b:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1c

    :cond_15
    iget v0, p0, Lcom/loc/N;->d:I

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/loc/N;->f:I

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget v0, p0, Lcom/loc/N;->b:I

    const/16 v1, 0x300

    if-eq v0, v1, :cond_15

    iget v0, p0, Lcom/loc/N;->b:I

    const/16 v1, 0x2220

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/loc/N;->d:I

    add-int/lit16 v0, v0, -0x1388

    iput v0, p0, Lcom/loc/N;->f:I
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_1b

    :catch_2f
    move-exception v0

    const-string/jumbo v1, "CollectorFileProvider"

    const-string/jumbo v2, "setSnapshotInfo"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method protected b()Ljava/io/File;
    .registers 4

    :try_start_0
    invoke-direct {p0}, Lcom/loc/N;->e()Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    :goto_3
    const/4 v0, 0x0

    return-object v0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "CollectorFileProvider"

    const-string/jumbo v2, "getReadFile"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected bwA(I)V
    .registers 5

    :try_start_0
    iput p1, p0, Lcom/loc/N;->c:I

    iget v0, p0, Lcom/loc/N;->c:I

    mul-int/lit8 v0, v0, 0x8

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/loc/N;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/loc/N;->e:I

    iget v0, p0, Lcom/loc/N;->e:I

    iput v0, p0, Lcom/loc/N;->g:I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string/jumbo v1, "CollectorFileProvider"

    const-string/jumbo v2, "setExternalSnapshotInfo"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method protected declared-synchronized bwB(J)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/loc/N;->d()I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_1e
    .catchall {:try_start_3 .. :try_end_6} :catchall_2a

    move-result v0

    if-eqz v0, :cond_10

    if-eq v0, v2, :cond_12

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    monitor-exit p0

    return v3

    :cond_10
    monitor-exit p0

    return v3

    :cond_12
    :try_start_12
    invoke-direct {p0, p1, p2}, Lcom/loc/N;->bwD(J)Ljava/io/File;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_15} :catch_1e
    .catchall {:try_start_12 .. :try_end_15} :catchall_2a

    move-result-object v0

    if-eqz v0, :cond_1a

    monitor-exit p0

    return v2

    :cond_1a
    monitor-exit p0

    return v3

    :cond_1c
    monitor-exit p0

    return v2

    :catch_1e
    move-exception v0

    :try_start_1f
    const-string/jumbo v1, "CollectorFileProvider"

    const-string/jumbo v2, "setUploadEnabled"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2a

    monitor-exit p0

    return v3

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
