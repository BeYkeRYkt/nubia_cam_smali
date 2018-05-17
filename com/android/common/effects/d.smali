.class public Lcom/android/common/effects/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IC(Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 22
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/nubiaeffect"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 24
    const-string/jumbo v0, "/data/nubiaeffect"

    invoke-static {p0, v0}, Lcom/android/common/effects/d;->ID(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 25
    return-void

    .line 27
    :cond_15
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/data/com.android.camera/effect"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 29
    invoke-static {v0}, Lcom/android/common/effects/d;->IE(Ljava/io/File;)V

    .line 34
    :cond_26
    :goto_26
    const-string/jumbo v0, "/data/data/com.android.camera/effect"

    invoke-static {p0, v0}, Lcom/android/common/effects/d;->ID(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 21
    return-void

    .line 30
    :cond_2d
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 32
    invoke-static {v0}, Lcom/android/common/effects/d;->IE(Ljava/io/File;)V

    goto :goto_26
.end method

.method private static ID(Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 37
    const v1, 0x7f0b00a6

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 38
    const v1, 0x7f0b00a7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 39
    :goto_f
    array-length v1, v2

    if-ge v0, v1, :cond_ae

    .line 40
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_75

    .line 43
    const/4 v4, 0x0

    :try_start_38
    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 44
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 45
    const v6, 0xfa000

    new-array v6, v6, [B

    .line 47
    :goto_4a
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_78

    .line 48
    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_55} :catch_56
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_55} :catch_8e

    goto :goto_4a

    .line 55
    :catch_56
    move-exception v1

    .line 56
    const-string/jumbo v4, "EffectUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FileNotFoundException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_75
    :goto_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 50
    :cond_78
    :try_start_78
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 51
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 52
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 53
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 54
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_8d
    .catch Ljava/io/FileNotFoundException; {:try_start_78 .. :try_end_8d} :catch_56
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_8d} :catch_8e

    goto :goto_75

    .line 57
    :catch_8e
    move-exception v1

    .line 58
    const-string/jumbo v4, "EffectUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IOException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 62
    :cond_ae
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    return-void
.end method

.method private static IE(Ljava/io/File;)V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 67
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 68
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 69
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 65
    return-void
.end method
