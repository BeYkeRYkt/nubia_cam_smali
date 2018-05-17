.class public Lcom/loc/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:S

.field public bdC:Ljava/lang/String;

.field public bdD:Ljava/lang/String;

.field public bdE:Ljava/lang/String;

.field public bdF:Ljava/lang/String;

.field public bdG:Ljava/lang/String;

.field public bdH:Ljava/lang/String;

.field public bdI:Ljava/lang/String;

.field public bdJ:Ljava/lang/String;

.field public bdK:Ljava/lang/String;

.field public bdL:Ljava/lang/String;

.field public bdM:Ljava/lang/String;

.field public bdN:Ljava/lang/String;

.field public bdO:[B

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/loc/t;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/loc/t;->b:S

    iput-object v1, p0, Lcom/loc/t;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->bdC:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->bdD:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->bdE:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->bdF:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->bdG:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->bdH:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->bdI:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->bdJ:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->bdK:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->bdL:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->bdM:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->bdN:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/t;->bdO:[B

    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .registers 9

    const/4 v6, 0x2

    const/4 v4, 0x6

    const/4 v2, 0x0

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [B

    if-nez v0, :cond_1a

    :cond_e
    const/4 v0, 0x6

    :try_start_f
    new-array v0, v0, [Ljava/lang/String;

    move v3, v2

    :goto_12
    array-length v4, v0

    if-lt v3, v4, :cond_1e

    :goto_15
    array-length v3, v0

    if-lt v2, v3, :cond_26

    move-object v0, v1

    :goto_19
    return-object v0

    :cond_1a
    array-length v3, v0

    if-ne v3, v4, :cond_e

    goto :goto_15

    :cond_1e
    const-string/jumbo v4, "0"

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_26
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_3d

    :goto_2e
    aget-object v3, v0, v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_3d
    aget-object v3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_47} :catch_48

    goto :goto_2e

    :catch_48
    move-exception v0

    const-string/jumbo v1, "Req"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMacBa "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "00:00:00:00:00:00"

    invoke-direct {p0, v0}, Lcom/loc/t;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_19
.end method

.method private bwo(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/t;->bdJ:Ljava/lang/String;

    const-string/jumbo v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "lac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string/jumbo v1, "cellid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string/jumbo v1, "signal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v0, 0x0

    return-object v0

    :cond_30
    aget-object v0, v0, v2

    return-object v0

    :cond_33
    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_37
    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static bwp([BI)V
    .registers 2

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/loc/t;->bdI:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/loc/t;->bdI:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/loc/t;->bdI:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/loc/t;->bdI:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5e
    const-string/jumbo v0, "0"

    return-object v0
.end method

.method public a()[B
    .registers 13

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/16 v10, 0x7f

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/loc/t;->b()V

    const/16 v0, 0xc00

    iget-object v1, p0, Lcom/loc/t;->bdO:[B

    if-nez v1, :cond_25d

    :goto_e
    new-array v5, v0, [B

    iget-object v0, p0, Lcom/loc/t;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    iget-short v0, p0, Lcom/loc/t;->b:S

    invoke-static {v0}, Lcom/loc/X;->bxt(I)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v2, v5, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    :try_start_26
    iget-object v0, p0, Lcom/loc/t;->c:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_3c} :catch_266

    add-int/2addr v1, v0

    :goto_3d
    :try_start_3d
    iget-object v0, p0, Lcom/loc/t;->d:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_53} :catch_276

    add-int/2addr v1, v0

    :goto_54
    :try_start_54
    iget-object v0, p0, Lcom/loc/t;->o:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_6a} :catch_286

    add-int/2addr v1, v0

    :goto_6b
    :try_start_6b
    iget-object v0, p0, Lcom/loc/t;->e:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_81} :catch_296

    add-int/2addr v1, v0

    :goto_82
    :try_start_82
    iget-object v0, p0, Lcom/loc/t;->f:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_98} :catch_2a6

    add-int/2addr v1, v0

    :goto_99
    :try_start_99
    iget-object v0, p0, Lcom/loc/t;->g:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_af} :catch_2b6

    add-int/2addr v1, v0

    :goto_b0
    :try_start_b0
    iget-object v0, p0, Lcom/loc/t;->bdC:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_c6} :catch_2c6

    add-int/2addr v1, v0

    :goto_c7
    :try_start_c7
    iget-object v0, p0, Lcom/loc/t;->h:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_dd} :catch_2d6

    add-int/2addr v1, v0

    :goto_de
    :try_start_de
    iget-object v0, p0, Lcom/loc/t;->p:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_f4
    .catch Ljava/lang/Throwable; {:try_start_de .. :try_end_f4} :catch_2e6

    add-int/2addr v1, v0

    :goto_f5
    :try_start_f5
    iget-object v0, p0, Lcom/loc/t;->q:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_10b} :catch_2f6

    add-int/2addr v1, v0

    :goto_10c
    :try_start_10c
    iget-object v0, p0, Lcom/loc/t;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_306

    iget-object v0, p0, Lcom/loc/t;->t:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/loc/t;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_10c .. :try_end_127} :catch_30d

    add-int/2addr v0, v1

    :goto_128
    move v1, v0

    :goto_129
    :try_start_129
    iget-object v0, p0, Lcom/loc/t;->bdD:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_13f
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_13f} :catch_31d

    add-int/2addr v1, v0

    :goto_140
    :try_start_140
    iget-object v0, p0, Lcom/loc/t;->bdE:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_156
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_156} :catch_32d

    add-int/2addr v1, v0

    :goto_157
    :try_start_157
    iget-object v0, p0, Lcom/loc/t;->bdF:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v6, v0

    invoke-static {v0, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_16d
    .catch Ljava/lang/Throwable; {:try_start_157 .. :try_end_16d} :catch_33d

    add-int/2addr v0, v1

    :goto_16e
    iget-object v1, p0, Lcom/loc/t;->bdG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/loc/t;->j:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/loc/t;->bdH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/loc/t;->bdH:Ljava/lang/String;

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34d

    iget-object v1, p0, Lcom/loc/t;->bdH:Ljava/lang/String;

    const-string/jumbo v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_403

    :cond_1a5
    :goto_1a5
    iget-object v1, p0, Lcom/loc/t;->bdK:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_482

    aput-byte v11, v5, v0

    add-int/lit8 v1, v0, 0x1

    :try_start_1b1
    iget-object v0, p0, Lcom/loc/t;->bdK:Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-direct {p0, v0}, Lcom/loc/t;->b(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_1c7
    .catch Ljava/lang/Throwable; {:try_start_1b1 .. :try_end_1c7} :catch_49c

    add-int/2addr v1, v0

    const/4 v0, 0x2

    :try_start_1c9
    aget-object v0, v3, v0

    const-string/jumbo v6, "GBK"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v6, v0

    int-to-byte v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x0

    array-length v7, v0

    invoke-static {v0, v6, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_1df
    .catch Ljava/lang/Throwable; {:try_start_1c9 .. :try_end_1df} :catch_488
    .catch Ljava/lang/Throwable; {:try_start_1c9 .. :try_end_1df} :catch_49c

    add-int/2addr v1, v0

    :goto_1e0
    const/4 v0, 0x1

    :try_start_1e1
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v10, :cond_499

    :goto_1e9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, v5, v1
    :try_end_1f4
    .catch Ljava/lang/Throwable; {:try_start_1e1 .. :try_end_1f4} :catch_49c

    add-int/lit8 v0, v1, 0x1

    :goto_1f6
    iget-object v1, p0, Lcom/loc/t;->bdL:Ljava/lang/String;

    const-string/jumbo v3, "\\*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/loc/t;->bdL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c2

    :cond_207
    aput-byte v2, v5, v0

    add-int/lit8 v1, v0, 0x1

    :goto_20b
    :try_start_20b
    iget-object v0, p0, Lcom/loc/t;->bdN:Ljava/lang/String;

    const-string/jumbo v3, "GBK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    if-gt v3, v10, :cond_54c

    :goto_217
    if-eqz v0, :cond_54f

    array-length v3, v0

    int-to-byte v3, v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_226
    .catch Ljava/lang/Throwable; {:try_start_20b .. :try_end_226} :catch_556

    add-int/2addr v0, v1

    :goto_227
    iget-object v1, p0, Lcom/loc/t;->bdO:[B

    if-nez v1, :cond_563

    move v1, v2

    :goto_22c
    invoke-static {v1}, Lcom/loc/X;->bxt(I)[B

    move-result-object v3

    array-length v4, v3

    invoke-static {v3, v2, v5, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v0, v3

    if-gtz v1, :cond_568

    :goto_238
    new-array v1, v0, [B

    invoke-static {v5, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/loc/X;->a(J)[B

    move-result-object v3

    array-length v4, v3

    add-int/2addr v4, v0

    new-array v4, v4, [B

    invoke-static {v1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v3

    invoke-static {v3, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3

    invoke-static {v4, v2}, Lcom/loc/t;->bwp([BI)V

    return-object v4

    :cond_25d
    iget-object v0, p0, Lcom/loc/t;->bdO:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit16 v0, v0, 0xc00

    goto/16 :goto_e

    :catch_266
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot2"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3d

    :catch_276
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot21"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_54

    :catch_286
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot22"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6b

    :catch_296
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot23"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_82

    :catch_2a6
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot24"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_99

    :catch_2b6
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot25"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b0

    :catch_2c6
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot26"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c7

    :catch_2d6
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot27"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_de

    :catch_2e6
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot28"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f5

    :catch_2f6
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot29"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_10c

    :cond_306
    const/4 v0, 0x0

    :try_start_307
    aput-byte v0, v5, v1
    :try_end_309
    .catch Ljava/lang/Throwable; {:try_start_307 .. :try_end_309} :catch_30d

    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_128

    :catch_30d
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot219"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_129

    :catch_31d
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot211"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_140

    :catch_32d
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot212"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_157

    :catch_33d
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot213"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_16e

    :cond_34d
    const-string/jumbo v1, "mcc"

    invoke-virtual {p0, v1}, Lcom/loc/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/X;->bxs(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "mnc"

    invoke-virtual {p0, v1}, Lcom/loc/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/X;->bxs(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "lac"

    invoke-virtual {p0, v1}, Lcom/loc/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/X;->bxs(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "cellid"

    invoke-virtual {p0, v1}, Lcom/loc/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/X;->bxx(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v1, v0

    const-string/jumbo v0, "signal"

    invoke-virtual {p0, v0}, Lcom/loc/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v10, :cond_3f9

    :goto_39e
    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/loc/t;->bdJ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3fb

    iget-object v1, p0, Lcom/loc/t;->bdJ:Ljava/lang/String;

    const-string/jumbo v3, "\\*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    int-to-byte v1, v6

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    :goto_3bd
    if-ge v1, v6, :cond_1a5

    const-string/jumbo v3, "lac"

    invoke-direct {p0, v3, v1}, Lcom/loc/t;->bwo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/X;->bxs(Ljava/lang/String;)[B

    move-result-object v3

    array-length v7, v3

    invoke-static {v3, v2, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v0, v3

    const-string/jumbo v3, "cellid"

    invoke-direct {p0, v3, v1}, Lcom/loc/t;->bwo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/X;->bxx(Ljava/lang/String;)[B

    move-result-object v3

    array-length v7, v3

    invoke-static {v3, v2, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v3, v0

    const-string/jumbo v0, "signal"

    invoke-direct {p0, v0, v1}, Lcom/loc/t;->bwo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v10, :cond_401

    :goto_3ee
    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_3bd

    :cond_3f9
    move v0, v2

    goto :goto_39e

    :cond_3fb
    aput-byte v2, v5, v0

    :goto_3fd
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1a5

    :cond_401
    move v0, v2

    goto :goto_3ee

    :cond_403
    const-string/jumbo v1, "mcc"

    invoke-virtual {p0, v1}, Lcom/loc/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/X;->bxs(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "sid"

    invoke-virtual {p0, v1}, Lcom/loc/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/X;->bxs(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "nid"

    invoke-virtual {p0, v1}, Lcom/loc/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/X;->bxs(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "bid"

    invoke-virtual {p0, v1}, Lcom/loc/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/X;->bxs(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "lon"

    invoke-virtual {p0, v1}, Lcom/loc/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/X;->bxx(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    const-string/jumbo v1, "lat"

    invoke-virtual {p0, v1}, Lcom/loc/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/X;->bxx(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v1

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v1, v0

    const-string/jumbo v0, "signal"

    invoke-virtual {p0, v0}, Lcom/loc/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v10, :cond_480

    :goto_476
    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    aput-byte v2, v5, v0

    goto/16 :goto_3fd

    :cond_480
    move v0, v2

    goto :goto_476

    :cond_482
    aput-byte v2, v5, v0

    :goto_484
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1f6

    :catch_488
    move-exception v0

    :try_start_489
    const-string/jumbo v6, "Req"

    const-string/jumbo v7, "buildV4Dot214"

    invoke-static {v0, v6, v7}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-byte v0, v5, v1
    :try_end_495
    .catch Ljava/lang/Throwable; {:try_start_489 .. :try_end_495} :catch_49c

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1e0

    :cond_499
    move v0, v2

    goto/16 :goto_1e9

    :catch_49c
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v6, "buildV4Dot216"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "00:00:00:00:00:00"

    invoke-direct {p0, v0}, Lcom/loc/t;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v1

    aput-byte v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "0"

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    goto :goto_484

    :cond_4c2
    array-length v1, v6

    if-eqz v1, :cond_207

    array-length v1, v6

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    move v0, v2

    :goto_4ce
    array-length v3, v6

    if-lt v0, v3, :cond_4e3

    iget-object v0, p0, Lcom/loc/t;->bdM:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/loc/X;->bxt(I)[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v0, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v1, v0

    goto/16 :goto_20b

    :cond_4e3
    aget-object v3, v6, v0

    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    :try_start_4ed
    aget-object v3, v7, v3

    invoke-direct {p0, v3}, Lcom/loc/t;->b(Ljava/lang/String;)[B
    :try_end_4f2
    .catch Ljava/lang/Throwable; {:try_start_4ed .. :try_end_4f2} :catch_529

    move-result-object v3

    :goto_4f3
    array-length v8, v3

    invoke-static {v3, v2, v5, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v3

    add-int/2addr v3, v1

    const/4 v1, 0x2

    :try_start_4fa
    aget-object v1, v7, v1

    const-string/jumbo v8, "GBK"

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v8, v1

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v5, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1
    :try_end_510
    .catch Ljava/lang/Throwable; {:try_start_4fa .. :try_end_510} :catch_53b

    add-int/2addr v1, v3

    :goto_511
    aget-object v3, v7, v11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v10, :cond_54a

    :goto_519
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4ce

    :catch_529
    move-exception v3

    const-string/jumbo v8, "Req"

    const-string/jumbo v9, "buildV4Dot2110"

    invoke-static {v3, v8, v9}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "00:00:00:00:00:00"

    invoke-direct {p0, v3}, Lcom/loc/t;->b(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_4f3

    :catch_53b
    move-exception v1

    const-string/jumbo v8, "Req"

    const-string/jumbo v9, "buildV4Dot217"

    invoke-static {v1, v8, v9}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v3

    add-int/lit8 v1, v3, 0x1

    goto :goto_511

    :cond_54a
    move v3, v2

    goto :goto_519

    :cond_54c
    move-object v0, v4

    goto/16 :goto_217

    :cond_54f
    const/4 v0, 0x0

    :try_start_550
    aput-byte v0, v5, v1
    :try_end_552
    .catch Ljava/lang/Throwable; {:try_start_550 .. :try_end_552} :catch_556

    :goto_552
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_227

    :catch_556
    move-exception v0

    const-string/jumbo v3, "Req"

    const-string/jumbo v4, "buildV4Dot218"

    invoke-static {v0, v3, v4}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v2, v5, v1

    goto :goto_552

    :cond_563
    iget-object v1, p0, Lcom/loc/t;->bdO:[B

    array-length v1, v1

    goto/16 :goto_22c

    :cond_568
    iget-object v1, p0, Lcom/loc/t;->bdO:[B

    iget-object v3, p0, Lcom/loc/t;->bdO:[B

    array-length v3, v3

    invoke-static {v1, v2, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/loc/t;->bdO:[B

    array-length v1, v1

    add-int/2addr v0, v1

    goto/16 :goto_238
.end method

.method public b()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/loc/t;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12a

    :goto_9
    iget-object v0, p0, Lcom/loc/t;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_131

    :goto_11
    iget-object v0, p0, Lcom/loc/t;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_138

    :goto_19
    iget-object v0, p0, Lcom/loc/t;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13f

    :goto_21
    iget-object v0, p0, Lcom/loc/t;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_146

    :goto_29
    iget-object v0, p0, Lcom/loc/t;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14d

    :goto_31
    iget-object v0, p0, Lcom/loc/t;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_154

    :goto_39
    iget-object v0, p0, Lcom/loc/t;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15b

    :goto_41
    iget-object v0, p0, Lcom/loc/t;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_162

    iget-object v0, p0, Lcom/loc/t;->j:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_169

    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/loc/t;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_178

    iget-object v0, p0, Lcom/loc/t;->k:Ljava/lang/String;

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/loc/t;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18e

    :goto_6f
    iget-object v0, p0, Lcom/loc/t;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_195

    :goto_77
    iget-object v0, p0, Lcom/loc/t;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19c

    :goto_7f
    iget-object v0, p0, Lcom/loc/t;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a3

    :goto_87
    iget-object v0, p0, Lcom/loc/t;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1aa

    :goto_8f
    iget-object v0, p0, Lcom/loc/t;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b1

    :goto_97
    iget-object v0, p0, Lcom/loc/t;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b8

    :goto_9f
    iget-object v0, p0, Lcom/loc/t;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1bf

    :goto_a7
    iget-object v0, p0, Lcom/loc/t;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c6

    :goto_af
    iget-object v0, p0, Lcom/loc/t;->bdC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1cd

    :goto_b7
    iget-object v0, p0, Lcom/loc/t;->bdD:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d4

    :goto_bf
    iget-object v0, p0, Lcom/loc/t;->bdE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1db

    :goto_c7
    iget-object v0, p0, Lcom/loc/t;->bdF:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e2

    :goto_cf
    iget-object v0, p0, Lcom/loc/t;->bdG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e9

    iget-object v0, p0, Lcom/loc/t;->bdG:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f0

    :cond_e2
    :goto_e2
    iget-object v0, p0, Lcom/loc/t;->bdH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1ff

    iget-object v0, p0, Lcom/loc/t;->bdH:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_206

    :cond_f5
    :goto_f5
    iget-object v0, p0, Lcom/loc/t;->bdI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_215

    :goto_fd
    iget-object v0, p0, Lcom/loc/t;->bdJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21c

    :goto_105
    iget-object v0, p0, Lcom/loc/t;->bdK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_223

    :goto_10d
    iget-object v0, p0, Lcom/loc/t;->bdL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22a

    :goto_115
    iget-object v0, p0, Lcom/loc/t;->bdM:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_231

    :goto_11d
    iget-object v0, p0, Lcom/loc/t;->bdN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_238

    :goto_125
    iget-object v0, p0, Lcom/loc/t;->bdO:[B

    if-eqz v0, :cond_23f

    :goto_129
    return-void

    :cond_12a
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->a:Ljava/lang/String;

    goto/16 :goto_9

    :cond_131
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->c:Ljava/lang/String;

    goto/16 :goto_11

    :cond_138
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->d:Ljava/lang/String;

    goto/16 :goto_19

    :cond_13f
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->e:Ljava/lang/String;

    goto/16 :goto_21

    :cond_146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->f:Ljava/lang/String;

    goto/16 :goto_29

    :cond_14d
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->g:Ljava/lang/String;

    goto/16 :goto_31

    :cond_154
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->h:Ljava/lang/String;

    goto/16 :goto_39

    :cond_15b
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->i:Ljava/lang/String;

    goto/16 :goto_41

    :cond_162
    const-string/jumbo v0, "0"

    :goto_165
    iput-object v0, p0, Lcom/loc/t;->j:Ljava/lang/String;

    goto/16 :goto_54

    :cond_169
    iget-object v0, p0, Lcom/loc/t;->j:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string/jumbo v0, "0"

    goto :goto_165

    :cond_178
    const-string/jumbo v0, "0"

    :goto_17b
    iput-object v0, p0, Lcom/loc/t;->k:Ljava/lang/String;

    goto/16 :goto_67

    :cond_17f
    iget-object v0, p0, Lcom/loc/t;->k:Ljava/lang/String;

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string/jumbo v0, "0"

    goto :goto_17b

    :cond_18e
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->l:Ljava/lang/String;

    goto/16 :goto_6f

    :cond_195
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->m:Ljava/lang/String;

    goto/16 :goto_77

    :cond_19c
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->n:Ljava/lang/String;

    goto/16 :goto_7f

    :cond_1a3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->o:Ljava/lang/String;

    goto/16 :goto_87

    :cond_1aa
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->p:Ljava/lang/String;

    goto/16 :goto_8f

    :cond_1b1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->q:Ljava/lang/String;

    goto/16 :goto_97

    :cond_1b8
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->r:Ljava/lang/String;

    goto/16 :goto_9f

    :cond_1bf
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->s:Ljava/lang/String;

    goto/16 :goto_a7

    :cond_1c6
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->t:Ljava/lang/String;

    goto/16 :goto_af

    :cond_1cd
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->bdC:Ljava/lang/String;

    goto/16 :goto_b7

    :cond_1d4
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->bdD:Ljava/lang/String;

    goto/16 :goto_bf

    :cond_1db
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->bdE:Ljava/lang/String;

    goto/16 :goto_c7

    :cond_1e2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->bdF:Ljava/lang/String;

    goto/16 :goto_cf

    :cond_1e9
    const-string/jumbo v0, "0"

    :goto_1ec
    iput-object v0, p0, Lcom/loc/t;->bdG:Ljava/lang/String;

    goto/16 :goto_e2

    :cond_1f0
    iget-object v0, p0, Lcom/loc/t;->bdG:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e2

    const-string/jumbo v0, "0"

    goto :goto_1ec

    :cond_1ff
    const-string/jumbo v0, "0"

    :goto_202
    iput-object v0, p0, Lcom/loc/t;->bdH:Ljava/lang/String;

    goto/16 :goto_f5

    :cond_206
    iget-object v0, p0, Lcom/loc/t;->bdH:Ljava/lang/String;

    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    const-string/jumbo v0, "0"

    goto :goto_202

    :cond_215
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->bdI:Ljava/lang/String;

    goto/16 :goto_fd

    :cond_21c
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->bdJ:Ljava/lang/String;

    goto/16 :goto_105

    :cond_223
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->bdK:Ljava/lang/String;

    goto/16 :goto_10d

    :cond_22a
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->bdL:Ljava/lang/String;

    goto/16 :goto_115

    :cond_231
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->bdM:Ljava/lang/String;

    goto/16 :goto_11d

    :cond_238
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/t;->bdN:Ljava/lang/String;

    goto/16 :goto_125

    :cond_23f
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/loc/t;->bdO:[B

    goto/16 :goto_129
.end method
