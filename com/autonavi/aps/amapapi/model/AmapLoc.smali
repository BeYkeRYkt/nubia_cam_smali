.class public Lcom/autonavi/aps/amapapi/model/AmapLoc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final bmp:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:D

.field private blX:F

.field private blY:F

.field private blZ:F

.field private bma:Ljava/lang/String;

.field private bmb:Ljava/lang/String;

.field private bmc:Ljava/lang/String;

.field private bmd:Ljava/lang/String;

.field private bme:Ljava/lang/String;

.field private bmf:Ljava/lang/String;

.field private bmg:Ljava/lang/String;

.field private bmh:Ljava/lang/String;

.field private bmi:I

.field private bmj:Ljava/lang/String;

.field private bmk:Ljava/lang/String;

.field private bml:Ljava/lang/String;

.field private bmm:Z

.field private bmn:Z

.field private bmo:Lorg/json/JSONObject;

.field private c:D

.field private d:D

.field private h:J

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/autonavi/aps/amapapi/model/a;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/a;-><init>()V

    sput-object v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmp:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    iput-wide v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blX:F

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blY:F

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blZ:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    const-string/jumbo v0, "new"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    iput v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    const-string/jumbo v0, "success"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    iput v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bma:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmb:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmc:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmd:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bme:Ljava/lang/String;

    iput-object v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmf:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmg:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmh:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmi:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmj:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmk:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bml:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmm:Z

    iput-boolean v5, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmn:Z

    iput-object v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmo:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 9

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    iput v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blX:F

    iput v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blY:F

    iput v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blZ:F

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    const-string/jumbo v0, "new"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    const-string/jumbo v0, "success"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bma:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmb:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmc:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmd:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bme:Ljava/lang/String;

    iput-object v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmf:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmg:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmh:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmi:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmj:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmk:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bml:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmm:Z

    iput-boolean v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmn:Z

    iput-object v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmo:Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blZ:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blY:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bma:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmb:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmd:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bme:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmf:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmh:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmj:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmk:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_163

    move v0, v1

    :goto_152
    iput-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmm:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_165

    :goto_15a
    iput-boolean v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmn:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bml:Ljava/lang/String;

    return-void

    :cond_163
    move v0, v2

    goto :goto_152

    :cond_165
    move v1, v2

    goto :goto_15a
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 9

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    iput-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blX:F

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blY:F

    iput v1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blZ:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    const-string/jumbo v0, "new"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    iput v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    const-string/jumbo v0, "success"

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    iput v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bma:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmb:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmc:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmd:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bme:Ljava/lang/String;

    iput-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmf:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmg:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmh:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmi:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmj:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmk:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bml:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmm:Z

    iput-boolean v6, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmn:Z

    iput-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmo:Lorg/json/JSONObject;

    if-nez p1, :cond_94

    :cond_93
    :goto_93
    return-void

    :cond_94
    :try_start_94
    const-string/jumbo v0, "provider"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f9

    :goto_9d
    const-string/jumbo v0, "lon"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_205

    :goto_a6
    const-string/jumbo v0, "lat"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_211

    :goto_af
    const-string/jumbo v0, "altitude"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21d

    :goto_b8
    const-string/jumbo v0, "acc"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_229

    :goto_c1
    const-string/jumbo v0, "accuracy"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_235

    :goto_ca
    const-string/jumbo v0, "speed"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_242

    :goto_d3
    const-string/jumbo v0, "dir"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24f

    :goto_dc
    const-string/jumbo v0, "bearing"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25c

    :goto_e5
    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_269

    :goto_ee
    const-string/jumbo v0, "retype"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_275

    :goto_f7
    const-string/jumbo v0, "citycode"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_281

    :goto_100
    const-string/jumbo v0, "desc"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28d

    :goto_109
    const-string/jumbo v0, "adcode"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_299

    :goto_112
    const-string/jumbo v0, "country"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a5

    :goto_11b
    const-string/jumbo v0, "province"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b1

    :goto_124
    const-string/jumbo v0, "city"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2bd

    :goto_12d
    const-string/jumbo v0, "road"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c9

    :goto_136
    const-string/jumbo v0, "street"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d5

    :goto_13f
    const-string/jumbo v0, "number"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e1

    :goto_148
    const-string/jumbo v0, "poiname"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2ed

    :goto_151
    const-string/jumbo v0, "aoiname"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f9

    :goto_15a
    const-string/jumbo v0, "errorCode"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_305

    :goto_163
    const-string/jumbo v0, "errorInfo"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_311

    :goto_16c
    const-string/jumbo v0, "locationType"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31d

    :goto_175
    const-string/jumbo v0, "locationDetail"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_329

    :goto_17e
    const-string/jumbo v0, "cens"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_335

    :goto_187
    const-string/jumbo v0, "poiid"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_341

    :goto_190
    const-string/jumbo v0, "pid"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34d

    :goto_199
    const-string/jumbo v0, "floor"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_359

    :goto_1a2
    const-string/jumbo v0, "flr"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_365

    :goto_1ab
    const-string/jumbo v0, "coord"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_371

    :goto_1b4
    const-string/jumbo v0, "mcell"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37d

    :goto_1bd
    const-string/jumbo v0, "time"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_389

    :goto_1c6
    const-string/jumbo v0, "district"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_395

    :goto_1cf
    const-string/jumbo v0, "isOffset"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a1

    :goto_1d8
    const-string/jumbo v0, "isReversegeo"

    invoke-static {p1, v0}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    const-string/jumbo v0, "isReversegeo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHG(Z)V
    :try_end_1eb
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_1eb} :catch_1ed

    goto/16 :goto_93

    :catch_1ed
    move-exception v0

    const-string/jumbo v1, "AmapLoc"

    const-string/jumbo v2, "AmapLoc"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_93

    :cond_1f9
    :try_start_1f9
    const-string/jumbo v0, "provider"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHH(Ljava/lang/String;)V

    goto/16 :goto_9d

    :cond_205
    const-string/jumbo v0, "lon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHJ(D)V

    goto/16 :goto_a6

    :cond_211
    const-string/jumbo v0, "lat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHM(D)V

    goto/16 :goto_af

    :cond_21d
    const-string/jumbo v0, "altitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHO(D)V

    goto/16 :goto_b8

    :cond_229
    const-string/jumbo v0, "acc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(Ljava/lang/String;)V

    goto/16 :goto_c1

    :cond_235
    const-string/jumbo v0, "accuracy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHP(F)V

    goto/16 :goto_ca

    :cond_242
    const-string/jumbo v0, "speed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHQ(F)V

    goto/16 :goto_d3

    :cond_24f
    const-string/jumbo v0, "dir"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHR(F)V

    goto/16 :goto_dc

    :cond_25c
    const-string/jumbo v0, "bearing"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHR(F)V

    goto/16 :goto_e5

    :cond_269
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHV(Ljava/lang/String;)V

    goto/16 :goto_ee

    :cond_275
    const-string/jumbo v0, "retype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHX(Ljava/lang/String;)V

    goto/16 :goto_f7

    :cond_281
    const-string/jumbo v0, "citycode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIb(Ljava/lang/String;)V

    goto/16 :goto_100

    :cond_28d
    const-string/jumbo v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bId(Ljava/lang/String;)V

    goto/16 :goto_109

    :cond_299
    const-string/jumbo v0, "adcode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIf(Ljava/lang/String;)V

    goto/16 :goto_112

    :cond_2a5
    const-string/jumbo v0, "country"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIh(Ljava/lang/String;)V

    goto/16 :goto_11b

    :cond_2b1
    const-string/jumbo v0, "province"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIj(Ljava/lang/String;)V

    goto/16 :goto_124

    :cond_2bd
    const-string/jumbo v0, "city"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIl(Ljava/lang/String;)V

    goto/16 :goto_12d

    :cond_2c9
    const-string/jumbo v0, "road"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIp(Ljava/lang/String;)V

    goto/16 :goto_136

    :cond_2d5
    const-string/jumbo v0, "street"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIr(Ljava/lang/String;)V

    goto/16 :goto_13f

    :cond_2e1
    const-string/jumbo v0, "number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIt(Ljava/lang/String;)V

    goto/16 :goto_148

    :cond_2ed
    const-string/jumbo v0, "poiname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIv(Ljava/lang/String;)V

    goto/16 :goto_151

    :cond_2f9
    const-string/jumbo v0, "aoiname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIx(Ljava/lang/String;)V

    goto/16 :goto_15a

    :cond_305
    const-string/jumbo v0, "errorCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHy(I)V

    goto/16 :goto_163

    :cond_311
    const-string/jumbo v0, "errorInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHA(Ljava/lang/String;)V

    goto/16 :goto_16c

    :cond_31d
    const-string/jumbo v0, "locationType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHx(I)V

    goto/16 :goto_175

    :cond_329
    const-string/jumbo v0, "locationDetail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHC(Ljava/lang/String;)V

    goto/16 :goto_17e

    :cond_335
    const-string/jumbo v0, "cens"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIy(Ljava/lang/String;)V

    goto/16 :goto_187

    :cond_341
    const-string/jumbo v0, "poiid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIA(Ljava/lang/String;)V

    goto/16 :goto_190

    :cond_34d
    const-string/jumbo v0, "pid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIA(Ljava/lang/String;)V

    goto/16 :goto_199

    :cond_359
    const-string/jumbo v0, "floor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIB(Ljava/lang/String;)V

    goto/16 :goto_1a2

    :cond_365
    const-string/jumbo v0, "flr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIB(Ljava/lang/String;)V

    goto/16 :goto_1ab

    :cond_371
    const-string/jumbo v0, "coord"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bID(Ljava/lang/String;)V

    goto/16 :goto_1b4

    :cond_37d
    const-string/jumbo v0, "mcell"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIG(Ljava/lang/String;)V

    goto/16 :goto_1bd

    :cond_389
    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHT(J)V

    goto/16 :goto_1c6

    :cond_395
    const-string/jumbo v0, "district"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIn(Ljava/lang/String;)V

    goto/16 :goto_1cf

    :cond_3a1
    const-string/jumbo v0, "isOffset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHE(Z)V
    :try_end_3ab
    .catch Ljava/lang/Throwable; {:try_start_1f9 .. :try_end_3ab} :catch_1ed

    goto/16 :goto_1d8
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blX:F

    return-void
.end method


# virtual methods
.method public bHA(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    return-void
.end method

.method public bHB()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    return-object v0
.end method

.method public bHC(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    if-nez v0, :cond_7

    :cond_4
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    return-void

    :cond_7
    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    return-void
.end method

.method public bHD()Z
    .registers 2

    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmm:Z

    return v0
.end method

.method public bHE(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmm:Z

    return-void
.end method

.method public bHF()Z
    .registers 2

    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmn:Z

    return v0
.end method

.method public bHG(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmn:Z

    return-void
.end method

.method public bHH(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    return-void
.end method

.method public bHI()D
    .registers 3

    iget-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    return-wide v0
.end method

.method public bHJ(D)V
    .registers 6

    invoke-static {p1, p2}, Lcom/loc/X;->bxz(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    return-void
.end method

.method public bHK(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    return-void
.end method

.method public bHL()D
    .registers 3

    iget-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    return-wide v0
.end method

.method public bHM(D)V
    .registers 6

    invoke-static {p1, p2}, Lcom/loc/X;->bxz(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    return-void
.end method

.method public bHN(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    return-void
.end method

.method public bHO(D)V
    .registers 4

    iput-wide p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    return-void
.end method

.method public bHP(F)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bHQ(F)V
    .registers 2

    iput p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blY:F

    return-void
.end method

.method public bHR(F)V
    .registers 2

    iput p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blZ:F

    return-void
.end method

.method public bHS()J
    .registers 3

    iget-wide v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    return-wide v0
.end method

.method public bHT(J)V
    .registers 4

    iput-wide p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    return-void
.end method

.method public bHU()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    return-object v0
.end method

.method public bHV(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    return-void
.end method

.method public bHW()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    return-object v0
.end method

.method public bHX(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    return-void
.end method

.method public bHY()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    return-object v0
.end method

.method public bHZ(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    return-void
.end method

.method public bHv()I
    .registers 2

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    return v0
.end method

.method public bHw()I
    .registers 2

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    return v0
.end method

.method public bHx(I)V
    .registers 2

    iput p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    return-void
.end method

.method public bHy(I)V
    .registers 3

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    if-nez v0, :cond_a

    packed-switch p1, :pswitch_data_42

    :goto_7
    iput p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    return-void

    :cond_a
    return-void

    :pswitch_b
    const-string/jumbo v0, "success"

    :goto_e
    iput-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    goto :goto_7

    :pswitch_11
    const-string/jumbo v0, "\u91cd\u8981\u53c2\u6570\u4e3a\u7a7a"

    goto :goto_e

    :pswitch_15
    const-string/jumbo v0, "WIFI\u4fe1\u606f\u4e0d\u8db3"

    goto :goto_e

    :pswitch_19
    const-string/jumbo v0, "\u8bf7\u6c42\u53c2\u6570\u83b7\u53d6\u51fa\u73b0\u5f02\u5e38"

    goto :goto_e

    :pswitch_1d
    const-string/jumbo v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    goto :goto_e

    :pswitch_21
    const-string/jumbo v0, "\u89e3\u6790XML\u51fa\u9519"

    goto :goto_e

    :pswitch_25
    const-string/jumbo v0, "\u5b9a\u4f4d\u7ed3\u679c\u9519\u8bef"

    goto :goto_e

    :pswitch_29
    const-string/jumbo v0, "KEY\u9519\u8bef"

    goto :goto_e

    :pswitch_2d
    const-string/jumbo v0, "\u5176\u4ed6\u9519\u8bef"

    goto :goto_e

    :pswitch_31
    const-string/jumbo v0, "\u521d\u59cb\u5316\u5f02\u5e38"

    goto :goto_e

    :pswitch_35
    const-string/jumbo v0, "\u5b9a\u4f4d\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    goto :goto_e

    :pswitch_39
    const-string/jumbo v0, "\u7f3a\u5c11\u5b9a\u4f4d\u6743\u9650"

    goto :goto_e

    :pswitch_3d
    const-string/jumbo v0, "\u9519\u8bef\u7684\u57fa\u7ad9\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u63d2\u5165SIM\u5361"

    goto :goto_e

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_b
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_31
        :pswitch_35
        :pswitch_3d
        :pswitch_39
    .end packed-switch
.end method

.method public bHz()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    return-object v0
.end method

.method public bIA(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmg:Ljava/lang/String;

    return-void
.end method

.method public bIB(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_6
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmh:Ljava/lang/String;

    return-void

    :cond_9
    const-string/jumbo v0, "F"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :try_start_13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_6

    :catch_17
    move-exception v0

    const/4 p1, 0x0

    const-string/jumbo v1, "AmapLoc"

    const-string/jumbo v2, "setFloor"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public bIC()I
    .registers 2

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmi:I

    return v0
.end method

.method public bID(Ljava/lang/String;)V
    .registers 6

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_25
    iput v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmi:I

    :goto_27
    return-void

    :cond_28
    iput v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmi:I

    goto :goto_27

    :cond_2b
    const/4 v0, 0x1

    iput v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmi:I

    goto :goto_27
.end method

.method public bIE()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmj:Ljava/lang/String;

    return-object v0
.end method

.method public bIF()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7c

    new-instance v1, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHH(Ljava/lang/String;)V

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHK(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHN(Ljava/lang/String;)V

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHP(F)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIa()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIb(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIf(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIh(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIj(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHS()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHT(J)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHU()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHV(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIC()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bID(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v0

    if-eqz v0, :cond_7d

    return-object v1

    :cond_7b
    return-object v4

    :cond_7c
    return-object v4

    :cond_7d
    return-object v4
.end method

.method public bIG(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmj:Ljava/lang/String;

    return-void
.end method

.method public bIH()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public bII(Lorg/json/JSONObject;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmo:Lorg/json/JSONObject;

    return-void
.end method

.method public bIJ()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIK(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bIK(I)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_121

    packed-switch p1, :pswitch_data_14a

    :goto_9
    if-eqz v0, :cond_147

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    return-object v0

    :pswitch_10
    :try_start_10
    const-string/jumbo v2, "altitude"

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "speed"

    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blY:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "bearing"

    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blZ:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "retype"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "citycode"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "desc"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "adcode"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "country"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "province"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "city"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bma:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "district"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmb:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "road"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmc:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "street"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmd:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "number"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmk:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "poiname"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bme:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "cens"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmf:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "poiid"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "floor"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmh:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "coord"

    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmi:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "mcell"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmj:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "errorCode"

    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "errorInfo"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "locationType"

    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "locationDetail"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "aoiname"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bml:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmo:Lorg/json/JSONObject;

    if-nez v2, :cond_12e

    :cond_de
    :goto_de
    :pswitch_de
    const-string/jumbo v2, "time"

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :pswitch_e6
    const-string/jumbo v2, "provider"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "lon"

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "lat"

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "accuracy"

    iget v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blX:F

    float-to-double v4, v3

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "isOffset"

    iget-boolean v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmm:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "isReversegeo"

    iget-boolean v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmn:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_11f
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_11f} :catch_121

    goto/16 :goto_9

    :catch_121
    move-exception v0

    const-string/jumbo v2, "AmapLoc"

    const-string/jumbo v3, "toStr"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_9

    :cond_12e
    :try_start_12e
    const-string/jumbo v2, "offpct"

    invoke-static {v0, v2}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_de

    const-string/jumbo v2, "offpct"

    iget-object v3, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmo:Lorg/json/JSONObject;

    const-string/jumbo v4, "offpct"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_146
    .catch Ljava/lang/Throwable; {:try_start_12e .. :try_end_146} :catch_121

    goto :goto_de

    :cond_147
    move-object v0, v1

    goto/16 :goto_f

    :pswitch_data_14a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_de
        :pswitch_e6
    .end packed-switch
.end method

.method public bIa()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    return-object v0
.end method

.method public bIb(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    return-void
.end method

.method public bIc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    return-object v0
.end method

.method public bId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    return-void
.end method

.method public bIe()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    return-object v0
.end method

.method public bIf(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    return-void
.end method

.method public bIg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    return-object v0
.end method

.method public bIh(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    return-void
.end method

.method public bIi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    return-object v0
.end method

.method public bIj(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    return-void
.end method

.method public bIk()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bma:Ljava/lang/String;

    return-object v0
.end method

.method public bIl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bma:Ljava/lang/String;

    return-void
.end method

.method public bIm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmb:Ljava/lang/String;

    return-object v0
.end method

.method public bIn(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmb:Ljava/lang/String;

    return-void
.end method

.method public bIo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmc:Ljava/lang/String;

    return-object v0
.end method

.method public bIp(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmc:Ljava/lang/String;

    return-void
.end method

.method public bIq()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmd:Ljava/lang/String;

    return-object v0
.end method

.method public bIr(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmd:Ljava/lang/String;

    return-void
.end method

.method public bIs()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmk:Ljava/lang/String;

    return-object v0
.end method

.method public bIt(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmk:Ljava/lang/String;

    return-void
.end method

.method public bIu()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bme:Ljava/lang/String;

    return-object v0
.end method

.method public bIv(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bme:Ljava/lang/String;

    return-void
.end method

.method public bIw()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bml:Ljava/lang/String;

    return-object v0
.end method

.method public bIx(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bml:Ljava/lang/String;

    return-void
.end method

.method public bIy(Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "\\*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_10
    if-lt v0, v3, :cond_16

    :goto_12
    iput-object p1, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmf:Ljava/lang/String;

    return-void

    :cond_15
    return-void

    :cond_16
    aget-object v4, v2, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_44

    const-string/jumbo v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHJ(D)V

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHM(D)V

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHP(F)V

    goto :goto_12

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public bIz()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmg:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .registers 2

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blX:F

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blZ:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->blX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->b:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->c:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->d:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v4, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->h:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bma:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmh:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmm:Z

    if-nez v0, :cond_b2

    move v0, v1

    :goto_a2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bmn:Z

    if-nez v0, :cond_b4

    :goto_a9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bml:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_b2
    move v0, v2

    goto :goto_a2

    :cond_b4
    move v1, v2

    goto :goto_a9
.end method
