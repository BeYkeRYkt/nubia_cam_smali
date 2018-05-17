.class Lcom/loc/di;
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

    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/loc/di;->c:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/loc/di;->a:B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loc/di;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected bFD(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :try_start_5
    iget-byte v2, p0, Lcom/loc/di;->c:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v2, p0, Lcom/loc/di;->a:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    move v2, v0

    :goto_10
    iget-byte v0, p0, Lcom/loc/di;->a:B

    if-lt v2, v0, :cond_1a

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/loc/di;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/dj;

    iget-object v3, v0, Lcom/loc/dj;->a:[B

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->write([B)V

    iget-short v3, v0, Lcom/loc/dj;->b:S

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v3, v0, Lcom/loc/dj;->c:[B

    iget-object v0, v0, Lcom/loc/dj;->c:[B

    array-length v0, v0

    invoke-static {v3, v0}, Lcom/loc/aw;->bzj([BI)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_38} :catch_3c

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10

    :catch_3c
    move-exception v0

    const-string/jumbo v2, "WifiData"

    const-string/jumbo v3, "toBinary"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_19
.end method
