.class Lcom/loc/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:S

.field protected d:S

.field protected e:I

.field protected f:B

.field private g:B


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/loc/cr;->g:B

    iput v1, p0, Lcom/loc/cr;->a:I

    iput v1, p0, Lcom/loc/cr;->b:I

    iput-short v1, p0, Lcom/loc/cr;->c:S

    iput-short v1, p0, Lcom/loc/cr;->d:S

    iput v1, p0, Lcom/loc/cr;->e:I

    iput-byte v1, p0, Lcom/loc/cr;->f:B

    return-void
.end method


# virtual methods
.method protected bzW(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :try_start_5
    iget-byte v1, p0, Lcom/loc/cr;->g:B

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v1, p0, Lcom/loc/cr;->a:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lcom/loc/cr;->b:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-short v1, p0, Lcom/loc/cr;->c:S

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-short v1, p0, Lcom/loc/cr;->d:S

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v1, p0, Lcom/loc/cr;->e:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-byte v1, p0, Lcom/loc/cr;->f:B

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2c} :catch_2e

    move-result-object v0

    :goto_2d
    return-object v0

    :catch_2e
    move-exception v1

    goto :goto_2d
.end method
