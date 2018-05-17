.class Lcom/loc/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:S

.field protected b:[B

.field protected c:[B

.field protected d:[B

.field protected e:S

.field protected f:S

.field protected g:B

.field protected h:[B

.field protected i:[B

.field protected j:S

.field protected k:Ljava/util/ArrayList;

.field private l:B


# direct methods
.method constructor <init>()V
    .registers 4

    const/16 v2, 0x10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x29

    iput-byte v0, p0, Lcom/loc/de;->l:B

    iput-short v1, p0, Lcom/loc/de;->a:S

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/loc/de;->b:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/loc/de;->c:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/loc/de;->d:[B

    iput-short v1, p0, Lcom/loc/de;->e:S

    iput-short v1, p0, Lcom/loc/de;->f:S

    iput-byte v1, p0, Lcom/loc/de;->g:B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/loc/de;->h:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/loc/de;->i:[B

    iput-short v1, p0, Lcom/loc/de;->j:S

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/de;->k:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected a()[B
    .registers 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v1}, Lcom/loc/de;->bBc(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected bBc(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;
    .registers 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :try_start_6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    iget-object v2, p0, Lcom/loc/de;->b:[B

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v2, p0, Lcom/loc/de;->c:[B

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v2, p0, Lcom/loc/de;->d:[B

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    iget-short v2, p0, Lcom/loc/de;->e:S

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v2, p0, Lcom/loc/de;->f:S

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-byte v2, p0, Lcom/loc/de;->g:B

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v2, p0, Lcom/loc/de;->h:[B

    const/16 v5, 0xf

    const/4 v6, 0x0

    aput-byte v6, v2, v5

    iget-object v2, p0, Lcom/loc/de;->h:[B

    iget-object v5, p0, Lcom/loc/de;->h:[B

    array-length v5, v5

    invoke-static {v2, v5}, Lcom/loc/aw;->bzj([BI)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v2, p0, Lcom/loc/de;->i:[B

    const/16 v5, 0x1f

    const/4 v6, 0x0

    aput-byte v6, v2, v5

    iget-object v2, p0, Lcom/loc/de;->i:[B

    iget-object v5, p0, Lcom/loc/de;->i:[B

    array-length v5, v5

    invoke-static {v2, v5}, Lcom/loc/aw;->bzj([BI)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    iget-short v2, p0, Lcom/loc/de;->j:S

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    move v2, v0

    :goto_5d
    iget-short v0, p0, Lcom/loc/de;->j:S

    if-lt v2, v0, :cond_87

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/loc/de;->a:S

    iget-byte v0, p0, Lcom/loc/de;->l:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-short v0, p0, Lcom/loc/de;->a:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_86
    return-object v1

    :cond_87
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lcom/loc/de;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dc;

    iget-object v7, v0, Lcom/loc/dc;->c:Lcom/loc/dd;

    if-nez v7, :cond_d7

    :cond_a0
    :goto_a0
    iget-object v7, v0, Lcom/loc/dc;->d:Lcom/loc/db;

    if-nez v7, :cond_e9

    :cond_a4
    :goto_a4
    iget-object v7, v0, Lcom/loc/dc;->e:Lcom/loc/cr;

    if-nez v7, :cond_fb

    :cond_a8
    :goto_a8
    iget-object v7, v0, Lcom/loc/dc;->f:Lcom/loc/di;

    if-nez v7, :cond_10d

    :cond_ac
    :goto_ac
    iget-object v7, v0, Lcom/loc/dc;->g:Lcom/loc/dg;

    if-nez v7, :cond_11f

    :cond_b0
    :goto_b0
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->shortValue()S

    move-result v6

    int-to-short v6, v6

    iput-short v6, v0, Lcom/loc/dc;->a:S

    iget-short v6, v0, Lcom/loc/dc;->a:S

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v0, v0, Lcom/loc/dc;->b:I

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/DataOutputStream;->write([B)V

    add-int/lit8 v0, v2, 0x1

    int-to-short v0, v0

    move v2, v0

    goto :goto_5d

    :cond_d7
    iget-object v7, v0, Lcom/loc/dc;->c:Lcom/loc/dd;

    invoke-virtual {v7, v6}, Lcom/loc/dd;->bCw(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_a0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_a0

    :cond_e9
    iget-object v7, v0, Lcom/loc/dc;->d:Lcom/loc/db;

    invoke-virtual {v7, v6}, Lcom/loc/db;->bvH(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_a4

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_a4

    :cond_fb
    iget-object v7, v0, Lcom/loc/dc;->e:Lcom/loc/cr;

    invoke-virtual {v7, v6}, Lcom/loc/cr;->bzW(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_a8

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_a8

    :cond_10d
    iget-object v7, v0, Lcom/loc/dc;->f:Lcom/loc/di;

    invoke-virtual {v7, v6}, Lcom/loc/di;->bFD(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_ac

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_ac

    :cond_11f
    iget-object v7, v0, Lcom/loc/dc;->g:Lcom/loc/dg;

    invoke-virtual {v7, v6}, Lcom/loc/dg;->bFE(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_b0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_12f} :catch_131

    move-result-object v1

    goto :goto_b0

    :catch_131
    move-exception v0

    const-string/jumbo v2, "Record"

    const-string/jumbo v3, "toBinary"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_86
.end method
