.class public Lcn/nubia/bigAperture/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bnY:Ljava/io/File;

.field private bnZ:Ljava/io/File;

.field private boa:Ljava/io/File;

.field private bob:Z

.field private final boc:Z

.field private bod:Ljava/io/File;

.field private boe:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/bigAperture/l;->boe:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/bigAperture/l;->bob:Z

    .line 98
    const-string/jumbo v0, "ApertureBackground"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/bigAperture/l;->boc:Z

    .line 27
    iput-object p1, p0, Lcn/nubia/bigAperture/l;->boe:Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1}, Lcn/nubia/bigAperture/l;->bKx(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/bigAperture/l;->bob:Z

    .line 26
    return-void
.end method

.method private bKw(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 100
    iget-boolean v0, p0, Lcn/nubia/bigAperture/l;->boc:Z

    if-eqz v0, :cond_a

    .line 101
    const-string/jumbo v0, "BigAperatureTempFiles"

    invoke-static {v0, p1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_a
    return-void
.end method


# virtual methods
.method public bKp()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcn/nubia/bigAperture/l;->bob:Z

    return v0
.end method

.method public bKq()Ljava/io/File;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/bigAperture/l;->bnZ:Ljava/io/File;

    return-object v0
.end method

.method public bKr()Ljava/io/File;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/bigAperture/l;->bod:Ljava/io/File;

    return-object v0
.end method

.method public bKs()Ljava/io/File;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/bigAperture/l;->boa:Ljava/io/File;

    return-object v0
.end method

.method public bKt([B)V
    .registers 5

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/bigAperture/l;->boe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/depth.yuv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/nubia/bigAperture/a;->bIX(Ljava/lang/String;[B)V

    .line 53
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/bigAperture/l;->boe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/depth.yuv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/bigAperture/l;->boa:Ljava/io/File;

    .line 51
    return-void
.end method

.method public bKu()Ljava/io/File;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/bigAperture/l;->bnY:Ljava/io/File;

    return-object v0
.end method

.method public bKv([B)V
    .registers 5

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/bigAperture/l;->boe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/0.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/nubia/bigAperture/a;->bIX(Ljava/lang/String;[B)V

    .line 58
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/bigAperture/l;->boe:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/0.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/bigAperture/l;->bnY:Ljava/io/File;

    .line 56
    return-void
.end method

.method public bKx(Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    .line 66
    if-eqz v4, :cond_fb

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    move v0, v1

    .line 69
    :goto_1b
    array-length v5, v4

    if-ge v0, v5, :cond_e7

    .line 70
    aget-object v5, v4, v0

    if-eqz v5, :cond_4e

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 71
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/0.yuv"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 73
    aget-object v5, v4, v0

    iput-object v5, p0, Lcn/nubia/bigAperture/l;->bnZ:Ljava/io/File;

    .line 69
    :cond_4e
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_51
    move v0, v1

    .line 85
    :goto_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseBigApertureTmpFiles: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/bigAperture/l;->bKw(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcn/nubia/bigAperture/l;->bnZ:Ljava/io/File;

    if-eqz v2, :cond_7e

    .line 88
    iget-object v2, p0, Lcn/nubia/bigAperture/l;->bod:Ljava/io/File;

    if-nez v2, :cond_ea

    .line 91
    :cond_7e
    const-string/jumbo v0, "BigAperatureTempFiles"

    const-string/jumbo v2, "To be care, color or mono yuv has been deleted"

    invoke-static {v0, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 95
    :goto_88
    return v0

    .line 74
    :cond_89
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/2.yuv"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 75
    aget-object v5, v4, v0

    iput-object v5, p0, Lcn/nubia/bigAperture/l;->bod:Ljava/io/File;

    goto :goto_4e

    .line 76
    :cond_a8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/0.jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c7

    .line 77
    aget-object v5, v4, v0

    iput-object v5, p0, Lcn/nubia/bigAperture/l;->bnY:Ljava/io/File;

    goto :goto_4e

    .line 78
    :cond_c7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/depth.yuv"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 79
    aget-object v5, v4, v0

    iput-object v5, p0, Lcn/nubia/bigAperture/l;->boa:Ljava/io/File;

    goto/16 :goto_4e

    .line 83
    :cond_e7
    const/4 v0, 0x1

    goto/16 :goto_52

    .line 89
    :cond_ea
    iget-object v2, p0, Lcn/nubia/bigAperture/l;->bnZ:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 90
    iget-object v2, p0, Lcn/nubia/bigAperture/l;->bod:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7e

    goto :goto_88

    :cond_fb
    move v0, v1

    goto/16 :goto_52
.end method
