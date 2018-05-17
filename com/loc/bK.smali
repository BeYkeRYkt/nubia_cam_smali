.class public Lcom/loc/bK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected b:Ljava/util/ArrayList;

.field protected bhP:Ljava/io/File;

.field protected bhQ:[I

.field protected d:Z


# direct methods
.method protected constructor <init>(Ljava/io/File;Ljava/util/ArrayList;[I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bK;->d:Z

    iput-object p1, p0, Lcom/loc/bK;->bhP:Ljava/io/File;

    iput-object p2, p0, Lcom/loc/bK;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/loc/bK;->bhQ:[I

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/loc/bK;->d:Z

    return-void
.end method

.method public a()[B
    .registers 6

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_a
    iget-object v0, p0, Lcom/loc/bK;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_13} :catch_38

    move-result v0

    if-nez v0, :cond_1d

    if-nez v1, :cond_2d

    :cond_18
    :goto_18
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_1d
    :try_start_1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_23} :catch_38

    :try_start_23
    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2a} :catch_38

    goto :goto_10

    :catch_2b
    move-exception v0

    goto :goto_10

    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_35} :catch_36
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_35} :catch_38

    goto :goto_18

    :catch_36
    move-exception v0

    goto :goto_18

    :catch_38
    move-exception v0

    const-string/jumbo v2, "WrapData"

    const-string/jumbo v3, "getReport"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method protected b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/loc/bK;->d:Z

    return v0
.end method

.method protected c()I
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/loc/bK;->b:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_29

    if-eqz v0, :cond_10

    move v1, v2

    move v3, v2

    :goto_7
    :try_start_7
    iget-object v0, p0, Lcom/loc/bK;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_11

    :goto_f
    return v3

    :cond_10
    return v2

    :cond_11
    iget-object v0, p0, Lcom/loc/bK;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1f

    move v0, v2

    :goto_1a
    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_1f
    iget-object v0, p0, Lcom/loc/bK;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_28} :catch_35

    goto :goto_1a

    :catch_29
    move-exception v0

    move v3, v2

    :goto_2b
    const-string/jumbo v1, "WrapData"

    const-string/jumbo v2, "getDataLength"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catch_35
    move-exception v0

    goto :goto_2b
.end method
