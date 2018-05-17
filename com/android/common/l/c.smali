.class public Lcom/android/common/l/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static agh(Ljava/lang/String;[B)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 15
    const/4 v0, 0x1

    .line 17
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_d} :catch_47
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_25
    .catchall {:try_start_3 .. :try_end_d} :catchall_68

    .line 18
    :try_start_d
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_10} :catch_80
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_83
    .catchall {:try_start_d .. :try_end_10} :catchall_7d

    .line 29
    if-eqz v1, :cond_15

    .line 30
    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    .line 38
    :cond_15
    :goto_15
    return v0

    .line 32
    :catch_16
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 34
    const-string/jumbo v0, "SaveImage"

    const-string/jumbo v1, "Exception:IOException"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    move v0, v3

    goto :goto_15

    .line 23
    :catch_25
    move-exception v0

    move-object v1, v2

    .line 24
    :goto_27
    :try_start_27
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 25
    const-string/jumbo v0, "SaveImage"

    const-string/jumbo v2, "Exception:IOException"

    invoke-static {v0, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_7d

    .line 29
    if-eqz v1, :cond_23

    .line 30
    :try_start_35
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_23

    .line 32
    :catch_39
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 34
    const-string/jumbo v0, "SaveImage"

    const-string/jumbo v1, "Exception:IOException"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 19
    :catch_47
    move-exception v0

    .line 20
    :goto_48
    :try_start_48
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 21
    const-string/jumbo v0, "SaveImage"

    const-string/jumbo v1, "Exception:FileNotFoundException"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_68

    .line 29
    if-eqz v2, :cond_23

    .line 30
    :try_start_56
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_23

    .line 32
    :catch_5a
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 34
    const-string/jumbo v0, "SaveImage"

    const-string/jumbo v1, "Exception:IOException"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 27
    :catchall_68
    move-exception v0

    .line 29
    :goto_69
    if-eqz v2, :cond_6e

    .line 30
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 27
    :cond_6e
    :goto_6e
    throw v0

    .line 32
    :catch_6f
    move-exception v1

    .line 33
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 34
    const-string/jumbo v1, "SaveImage"

    const-string/jumbo v2, "Exception:IOException"

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 27
    :catchall_7d
    move-exception v0

    move-object v2, v1

    goto :goto_69

    .line 19
    :catch_80
    move-exception v0

    move-object v2, v1

    goto :goto_48

    .line 23
    :catch_83
    move-exception v0

    goto :goto_27
.end method

.method public static agi(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 42
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 46
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method
