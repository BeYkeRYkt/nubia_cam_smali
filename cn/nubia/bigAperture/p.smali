.class public abstract Lcn/nubia/bigAperture/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private boh:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/bigAperture/p;->boh:Z

    .line 26
    iput-boolean p1, p0, Lcn/nubia/bigAperture/p;->boh:Z

    .line 25
    return-void
.end method


# virtual methods
.method public abstract bKC(Lcn/nubia/bigAperture/q;)V
.end method

.method public abstract bKD(Lcn/nubia/bigAperture/BigApertureTask;)V
.end method

.method protected bKE(Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-boolean v0, p0, Lcn/nubia/bigAperture/p;->boh:Z

    if-nez v0, :cond_6

    .line 31
    return-void

    .line 33
    :cond_6
    const-string/jumbo v0, "AbstractBigApertureTaskBackup"

    const-string/jumbo v2, "save debug metadata"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :try_start_f
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/metadata.txt"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_32} :catch_10d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_32} :catch_100
    .catchall {:try_start_f .. :try_end_32} :catchall_11a

    .line 38
    :try_start_32
    const-string/jumbo v1, "GalleryURI: "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 39
    iget-object v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 40
    const-string/jumbo v1, "; MainDACValue: "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 41
    iget v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmS:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v1, "; SubDacValue: "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 43
    iget v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bni:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 44
    const-string/jumbo v1, "; DualCamerLayout: "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 45
    iget v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bnc:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v1, "; Color-W: "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 47
    iget v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v1, "; Color-H: "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 49
    iget v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 50
    const-string/jumbo v1, "; Depth-W: "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 51
    iget v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmP:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v1, "; Depth-H: "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 53
    iget v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmQ:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "; FocusX(Rotated): "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 55
    iget v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmT:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v1, "; FocusY(Rotated): "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 57
    iget v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmU:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, "; FocusLength: "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 59
    iget v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmW:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "; BokehLevel: "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 61
    iget v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmV:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "; Rotation: "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    .line 63
    iget v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V
    :try_end_f5
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_f5} :catch_12b
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_f5} :catch_12d
    .catchall {:try_start_32 .. :try_end_f5} :catchall_126

    .line 69
    if-eqz v0, :cond_fa

    .line 71
    :try_start_f7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_fb

    .line 29
    :cond_fa
    :goto_fa
    return-void

    .line 72
    :catch_fb
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_fa

    .line 66
    :catch_100
    move-exception v0

    move-object v0, v1

    .line 69
    :goto_102
    if-eqz v0, :cond_fa

    .line 71
    :try_start_104
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_107} :catch_108

    goto :goto_fa

    .line 72
    :catch_108
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_fa

    .line 64
    :catch_10d
    move-exception v0

    move-object v0, v1

    .line 69
    :goto_10f
    if-eqz v0, :cond_fa

    .line 71
    :try_start_111
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_115

    goto :goto_fa

    .line 72
    :catch_115
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_fa

    .line 68
    :catchall_11a
    move-exception v0

    .line 69
    :goto_11b
    if-eqz v1, :cond_120

    .line 71
    :try_start_11d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_121

    .line 68
    :cond_120
    :goto_120
    throw v0

    .line 72
    :catch_121
    move-exception v1

    .line 73
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_120

    .line 68
    :catchall_126
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_11b

    .line 64
    :catch_12b
    move-exception v1

    goto :goto_10f

    .line 66
    :catch_12d
    move-exception v1

    goto :goto_102
.end method

.method public abstract bKz(Lcn/nubia/bigAperture/BigApertureTask;)V
.end method
