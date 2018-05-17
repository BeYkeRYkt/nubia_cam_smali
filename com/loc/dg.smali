.class Lcom/loc/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:B

.field protected b:Ljava/util/ArrayList;

.field private c:B


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/loc/dg;->c:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/loc/dg;->a:B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/dg;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected bFE(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;
    .registers 11

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :try_start_5
    iget-byte v2, p0, Lcom/loc/dg;->c:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v2, p0, Lcom/loc/dg;->a:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    move v3, v0

    :goto_10
    iget-object v0, p0, Lcom/loc/dg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_1e

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/loc/dg;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dh;

    iget-byte v2, v0, Lcom/loc/dh;->a:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v2, v0, Lcom/loc/dh;->a:B

    new-array v4, v2, [B

    iget-object v5, v0, Lcom/loc/dh;->b:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-byte v2, v0, Lcom/loc/dh;->a:B

    iget-object v8, v0, Lcom/loc/dh;->b:[B

    array-length v8, v8

    if-lt v2, v8, :cond_82

    iget-object v2, v0, Lcom/loc/dh;->b:[B

    array-length v2, v2

    :goto_3d
    invoke-static {v5, v6, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->write([B)V

    iget-wide v4, v0, Lcom/loc/dh;->c:D

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget v2, v0, Lcom/loc/dh;->d:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v2, v0, Lcom/loc/dh;->e:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v4, v0, Lcom/loc/dh;->f:D

    invoke-virtual {p1, v4, v5}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-byte v2, v0, Lcom/loc/dh;->g:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v2, v0, Lcom/loc/dh;->h:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v2, v0, Lcom/loc/dh;->h:B

    new-array v4, v2, [B

    iget-object v5, v0, Lcom/loc/dh;->i:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-byte v2, v0, Lcom/loc/dh;->h:B

    iget-object v8, v0, Lcom/loc/dh;->i:[B

    array-length v8, v8

    if-lt v2, v8, :cond_85

    iget-object v2, v0, Lcom/loc/dh;->i:[B

    array-length v2, v2

    :goto_73
    invoke-static {v5, v6, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->write([B)V

    iget-byte v0, v0, Lcom/loc/dh;->j:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_10

    :cond_82
    iget-byte v2, v0, Lcom/loc/dh;->a:B

    goto :goto_3d

    :cond_85
    iget-byte v2, v0, Lcom/loc/dh;->h:B
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_87} :catch_88

    goto :goto_73

    :catch_88
    move-exception v0

    const-string/jumbo v2, "SensorData"

    const-string/jumbo v3, "toBinary"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1d
.end method
