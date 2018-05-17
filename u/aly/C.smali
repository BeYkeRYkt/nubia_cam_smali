.class Lu/aly/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/analytics/h$b;


# instance fields
.field final synthetic buS:Lu/aly/bR;


# direct methods
.method constructor <init>(Lu/aly/bR;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lu/aly/C;->buS:Lu/aly/bR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 91
    return-void
.end method

.method public b(Ljava/io/File;)Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 99
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_2f

    .line 100
    :try_start_8
    invoke-static {v1}, Lu/aly/bu;->bVW(Ljava/io/InputStream;)[B
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_51

    move-result-object v0

    .line 102
    :try_start_c
    invoke-static {v1}, Lu/aly/bu;->bVZ(Ljava/io/InputStream;)V

    .line 106
    iget-object v1, p0, Lu/aly/C;->buS:Lu/aly/bR;

    invoke-static {v1}, Lu/aly/bR;->bXL(Lu/aly/bR;)Lu/aly/aY;

    move-result-object v1

    invoke-virtual {v1, v0}, Lu/aly/aY;->a([B)[B

    move-result-object v0

    .line 107
    if-eqz v0, :cond_37

    .line 110
    iget-object v1, p0, Lu/aly/C;->buS:Lu/aly/bR;

    invoke-static {v1, v0}, Lu/aly/bR;->bXM(Lu/aly/bR;[B)I

    move-result v0

    :goto_21
    const/4 v1, 0x2

    .line 113
    if-eq v0, v1, :cond_39

    .line 117
    :cond_24
    :goto_24
    iget-object v1, p0, Lu/aly/C;->buS:Lu/aly/bR;

    invoke-static {v1}, Lu/aly/bR;->bXO(Lu/aly/bR;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 121
    if-eq v0, v3, :cond_50

    .line 125
    return v3

    .line 103
    :catchall_2f
    move-exception v0

    move-object v1, v2

    .line 102
    :goto_31
    invoke-static {v1}, Lu/aly/bu;->bVZ(Ljava/io/InputStream;)V

    throw v0

    .line 125
    :catch_35
    move-exception v0

    .line 130
    return v4

    :cond_37
    move v0, v3

    .line 108
    goto :goto_21

    .line 113
    :cond_39
    iget-object v1, p0, Lu/aly/C;->buS:Lu/aly/bR;

    invoke-static {v1}, Lu/aly/bR;->bXN(Lu/aly/bR;)Lu/aly/aA;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/aA;->m()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 114
    iget-object v1, p0, Lu/aly/C;->buS:Lu/aly/bR;

    invoke-static {v1}, Lu/aly/bR;->bXN(Lu/aly/bR;)Lu/aly/aA;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/aA;->l()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4e} :catch_35

    goto :goto_24

    .line 118
    :cond_4f
    return v3

    .line 122
    :cond_50
    return v4

    .line 103
    :catchall_51
    move-exception v0

    goto :goto_31
.end method

.method public c(Ljava/io/File;)V
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lu/aly/C;->buS:Lu/aly/bR;

    invoke-static {v0}, Lu/aly/bR;->bXN(Lu/aly/bR;)Lu/aly/aA;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/aA;->k()V

    .line 136
    return-void
.end method
