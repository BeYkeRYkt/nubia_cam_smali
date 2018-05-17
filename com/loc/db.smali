.class Lcom/loc/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:S

.field protected b:I

.field protected c:B

.field protected d:B

.field protected e:Ljava/util/ArrayList;

.field private f:B


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/loc/db;->f:B

    iput-short v1, p0, Lcom/loc/db;->a:S

    iput v1, p0, Lcom/loc/db;->b:I

    iput-byte v1, p0, Lcom/loc/db;->c:B

    iput-byte v1, p0, Lcom/loc/db;->d:B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/db;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected bvH(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :try_start_5
    iget-byte v2, p0, Lcom/loc/db;->f:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-short v2, p0, Lcom/loc/db;->a:S

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v2, p0, Lcom/loc/db;->b:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-byte v2, p0, Lcom/loc/db;->c:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v2, p0, Lcom/loc/db;->d:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    move v2, v0

    :goto_1f
    iget-byte v0, p0, Lcom/loc/db;->d:B

    if-lt v2, v0, :cond_29

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    iget-object v0, p0, Lcom/loc/db;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cs;

    iget-short v0, v0, Lcom/loc/cs;->a:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/loc/db;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cs;

    iget v0, v0, Lcom/loc/cs;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/loc/db;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/cs;

    iget-byte v0, v0, Lcom/loc/cs;->c:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_50} :catch_54

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1f

    :catch_54
    move-exception v0

    const-string/jumbo v2, "GTWData"

    const-string/jumbo v3, "toBinary"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_28
.end method
