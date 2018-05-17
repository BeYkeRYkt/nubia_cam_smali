.class Lcom/loc/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method constructor <init>(Landroid/telephony/CellLocation;)V
    .registers 3

    const v0, 0x7fffffff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/loc/aj;->a:I

    iput v0, p0, Lcom/loc/aj;->b:I

    iput v0, p0, Lcom/loc/aj;->c:I

    iput v0, p0, Lcom/loc/aj;->d:I

    iput v0, p0, Lcom/loc/aj;->e:I

    if-nez p1, :cond_13

    :goto_12
    return-void

    :cond_13
    invoke-direct {p0, p1}, Lcom/loc/aj;->byj(Landroid/telephony/CellLocation;)V

    goto :goto_12
.end method

.method private byj(Landroid/telephony/CellLocation;)V
    .registers 5

    :try_start_0
    instance-of v0, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v0, :cond_9

    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-nez v0, :cond_23

    :goto_8
    return-void

    :cond_9
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    iput v0, p0, Lcom/loc/aj;->e:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, p0, Lcom/loc/aj;->d:I
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_8

    :catch_18
    move-exception v0

    const-string/jumbo v1, "CustomCellLocation"

    const-string/jumbo v2, "load"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_23
    :try_start_23
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    iput v0, p0, Lcom/loc/aj;->c:I

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v0

    iput v0, p0, Lcom/loc/aj;->b:I

    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    iput v0, p0, Lcom/loc/aj;->a:I
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_37} :catch_18

    goto :goto_8
.end method


# virtual methods
.method byk(Lcom/loc/aj;)Z
    .registers 4

    iget v0, p1, Lcom/loc/aj;->e:I

    iget v1, p0, Lcom/loc/aj;->e:I

    if-eq v0, v1, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget v0, p1, Lcom/loc/aj;->d:I

    iget v1, p0, Lcom/loc/aj;->d:I

    if-ne v0, v1, :cond_6

    iget v0, p1, Lcom/loc/aj;->c:I

    iget v1, p0, Lcom/loc/aj;->c:I

    if-ne v0, v1, :cond_6

    iget v0, p1, Lcom/loc/aj;->b:I

    iget v1, p0, Lcom/loc/aj;->b:I

    if-ne v0, v1, :cond_6

    iget v0, p1, Lcom/loc/aj;->a:I

    iget v1, p0, Lcom/loc/aj;->a:I

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_7
.end method
