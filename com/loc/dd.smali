.class Lcom/loc/dd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:S

.field protected g:B

.field protected h:B

.field protected i:J

.field protected j:J

.field private k:B


# direct methods
.method constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/loc/dd;->k:B

    iput v1, p0, Lcom/loc/dd;->a:I

    iput v1, p0, Lcom/loc/dd;->b:I

    iput v1, p0, Lcom/loc/dd;->c:I

    iput v1, p0, Lcom/loc/dd;->d:I

    iput v1, p0, Lcom/loc/dd;->e:I

    iput-short v1, p0, Lcom/loc/dd;->f:S

    iput-byte v1, p0, Lcom/loc/dd;->g:B

    iput-byte v1, p0, Lcom/loc/dd;->h:B

    iput-wide v2, p0, Lcom/loc/dd;->i:J

    iput-wide v2, p0, Lcom/loc/dd;->j:J

    return-void
.end method


# virtual methods
.method protected bCw(Ljava/io/DataOutputStream;)Ljava/lang/Boolean;
    .registers 6

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p1, :cond_44

    :try_start_7
    iget-byte v0, p0, Lcom/loc/dd;->k:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v0, p0, Lcom/loc/dd;->a:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/loc/dd;->b:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/loc/dd;->c:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/loc/dd;->d:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v0, p0, Lcom/loc/dd;->e:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-short v0, p0, Lcom/loc/dd;->f:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-byte v0, p0, Lcom/loc/dd;->g:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p0, Lcom/loc/dd;->h:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-wide v2, p0, Lcom/loc/dd;->i:J

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v2, p0, Lcom/loc/dd;->j:J

    invoke-virtual {p1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_42} :catch_45

    move-result-object v0

    :goto_43
    return-object v0

    :cond_44
    return-object v1

    :catch_45
    move-exception v0

    const-string/jumbo v2, "PositionData"

    const-string/jumbo v3, "toBinary"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_43
.end method
