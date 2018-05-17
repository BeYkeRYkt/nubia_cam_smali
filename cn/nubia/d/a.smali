.class public Lcn/nubia/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bPZ(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 24
    :try_start_3
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v1, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_3b
    .catchall {:try_start_3 .. :try_end_b} :catchall_55

    .line 25
    :try_start_b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_7f
    .catchall {:try_start_b .. :try_end_10} :catchall_77

    .line 26
    :try_start_10
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    .line 27
    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v2, 0x400

    .line 29
    new-array v5, v2, [B

    .line 30
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 31
    :goto_22
    if-lez v2, :cond_2d

    const/4 v8, 0x0

    .line 32
    invoke-virtual {v1, v5, v8, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 33
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_22

    .line 35
    :cond_2d
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const-string/jumbo v2, "nubiaVpfile"

    .line 36
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_36} :catch_81
    .catchall {:try_start_10 .. :try_end_36} :catchall_7a

    .line 43
    if-nez v1, :cond_6a

    .line 46
    :goto_38
    if-nez v3, :cond_73

    .line 54
    :goto_3a
    return v0

    .line 38
    :catch_3b
    move-exception v0

    move-object v1, v2

    .line 40
    :goto_3d
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_7c

    .line 43
    if-nez v1, :cond_46

    .line 46
    :goto_42
    if-nez v2, :cond_50

    move v0, v4

    goto :goto_3a

    .line 44
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_42

    .line 49
    :catch_4a
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4e
    move v0, v4

    goto :goto_3a

    .line 47
    :cond_50
    :try_start_50
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_4a

    move v0, v4

    .line 49
    goto :goto_3a

    .line 51
    :catchall_55
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 43
    :goto_58
    if-nez v1, :cond_5d

    .line 46
    :goto_5a
    if-nez v3, :cond_66

    .line 53
    :goto_5c
    throw v0

    .line 44
    :cond_5d
    :try_start_5d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_5a

    .line 49
    :catch_61
    move-exception v1

    .line 51
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    .line 47
    :cond_66
    :try_start_66
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_61

    goto :goto_5c

    .line 44
    :cond_6a
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_38

    .line 49
    :catch_6e
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 47
    :cond_73
    :try_start_73
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_6e

    goto :goto_3a

    .line 51
    :catchall_77
    move-exception v0

    move-object v3, v2

    goto :goto_58

    :catchall_7a
    move-exception v0

    goto :goto_58

    :catchall_7c
    move-exception v0

    move-object v3, v2

    goto :goto_58

    .line 38
    :catch_7f
    move-exception v0

    goto :goto_3d

    :catch_81
    move-exception v0

    move-object v2, v3

    goto :goto_3d
.end method

.method public static bQa(Ljava/lang/String;)Z
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "r"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_4c
    .catchall {:try_start_2 .. :try_end_a} :catchall_60

    .line 68
    :try_start_a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-string/jumbo v0, "nubiaVpfile"

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v6, v0

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const-string/jumbo v0, ""

    move-object v2, v0

    move v0, v3

    :goto_21
    const-string/jumbo v4, "nubiaVpfile"

    .line 71
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_42

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readChar()C

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_42
    const-string/jumbo v0, "nubiaVpfile"

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_48} :catch_79
    .catchall {:try_start_a .. :try_end_48} :catchall_77

    move-result v0

    .line 79
    if-nez v1, :cond_6e

    .line 87
    :goto_4b
    return v0

    .line 75
    :catch_4c
    move-exception v0

    move-object v1, v2

    .line 76
    :goto_4e
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_77

    .line 79
    if-nez v1, :cond_55

    move v0, v3

    goto :goto_4b

    .line 80
    :cond_55
    :try_start_55
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_5a

    move v0, v3

    .line 83
    goto :goto_4b

    :catch_5a
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v3

    goto :goto_4b

    :catchall_60
    move-exception v0

    move-object v1, v2

    .line 79
    :goto_62
    if-nez v1, :cond_65

    .line 86
    :goto_64
    throw v0

    .line 80
    :cond_65
    :try_start_65
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_64

    .line 83
    :catch_69
    move-exception v1

    .line 84
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_64

    .line 80
    :cond_6e
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_4b

    .line 83
    :catch_72
    move-exception v1

    .line 84
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    :catchall_77
    move-exception v0

    goto :goto_62

    .line 75
    :catch_79
    move-exception v0

    goto :goto_4e
.end method
