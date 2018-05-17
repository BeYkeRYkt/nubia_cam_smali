.class public Lcom/umeng/analytics/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Ljava/io/File;

.field private c:Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const-string/jumbo v0, ".um"

    .line 204
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/h$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 200
    iput v0, p0, Lcom/umeng/analytics/h$a;->a:I

    .line 285
    new-instance v0, Lcom/umeng/analytics/h$a$1;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/h$a$1;-><init>(Lcom/umeng/analytics/h$a;)V

    iput-object v0, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    .line 208
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    .line 209
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    .line 210
    :cond_21
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 212
    :goto_26
    return-void

    .line 209
    :cond_27
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_26
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/h$b;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 224
    iget-object v1, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 226
    if-nez v1, :cond_c

    .line 244
    :cond_b
    :goto_b
    return-void

    .line 226
    :cond_c
    array-length v2, v1

    if-lez v2, :cond_b

    .line 227
    iget-object v2, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-interface {p1, v2}, Lcom/umeng/analytics/h$b;->a(Ljava/io/File;)V

    .line 229
    array-length v2, v1

    .line 231
    :goto_15
    if-lt v0, v2, :cond_1d

    .line 242
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-interface {p1, v0}, Lcom/umeng/analytics/h$b;->c(Ljava/io/File;)V

    goto :goto_b

    .line 234
    :cond_1d
    :try_start_1d
    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Lcom/umeng/analytics/h$b;->b(Ljava/io/File;)Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_22} :catch_2e
    .catchall {:try_start_1d .. :try_end_22} :catchall_35

    move-result v3

    .line 238
    if-nez v3, :cond_28

    .line 231
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 239
    :cond_28
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_25

    :catch_2e
    move-exception v3

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_25

    :catchall_35
    move-exception v0

    throw v0
.end method

.method public a([B)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 247
    if-nez p1, :cond_4

    .line 248
    :cond_3
    return-void

    .line 247
    :cond_4
    array-length v1, p1

    if-eqz v1, :cond_3

    .line 250
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "um_cache_%d.env"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 251
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    :try_start_24
    invoke-static {v2, p1}, Lu/aly/bu;->bVX(Ljava/io/File;[B)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_32

    .line 257
    :goto_27
    iget-object v1, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 259
    if-nez v1, :cond_34

    .line 266
    :cond_31
    return-void

    .line 255
    :catch_32
    move-exception v1

    goto :goto_27

    .line 259
    :cond_34
    array-length v2, v1

    const/16 v3, 0xa

    if-lt v2, v3, :cond_31

    .line 260
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 261
    array-length v2, v1

    add-int/lit8 v2, v2, -0xa

    .line 262
    :goto_3f
    if-ge v0, v2, :cond_31

    .line 263
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f
.end method

.method public a()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 216
    if-nez v0, :cond_a

    .line 220
    :cond_9
    return v1

    .line 216
    :cond_a
    array-length v0, v0

    if-lez v0, :cond_9

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 269
    iget-object v1, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v2, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 270
    if-nez v1, :cond_c

    .line 275
    :cond_b
    return-void

    .line 270
    :cond_c
    array-length v2, v1

    if-lez v2, :cond_b

    .line 271
    array-length v2, v1

    :goto_10
    if-ge v0, v2, :cond_b

    aget-object v3, v1, v0

    .line 272
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public c()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/umeng/analytics/h$a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/analytics/h$a;->c:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 279
    if-nez v0, :cond_c

    .line 282
    :cond_b
    return v2

    .line 279
    :cond_c
    array-length v1, v0

    if-lez v1, :cond_b

    .line 280
    array-length v0, v0

    return v0
.end method
