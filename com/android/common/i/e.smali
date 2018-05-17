.class public Lcom/android/common/i/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/android/common/a/c;


# instance fields
.field private YN:Lcom/android/common/appService/W;

.field private YO:Lcom/android/common/camerastate/a;

.field private YP:I

.field private YQ:Ljava/lang/Integer;

.field private YR:I

.field private YS:I

.field private YT:Z

.field private YU:Z

.field private YV:Lcom/android/common/i/h;

.field private YW:Lcom/android/common/storagemanager/e;

.field private YX:Lcom/android/common/i/g;

.field public YY:Ljava/lang/String;

.field private YZ:Landroid/hardware/Camera$Size;

.field private Za:I

.field private Zb:J

.field public Zc:Lcom/android/common/m/a;

.field private Zd:I

.field private mFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/android/common/i/e;->Za:I

    .line 52
    iput-boolean v2, p0, Lcom/android/common/i/e;->YU:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/common/i/e;->YT:Z

    .line 54
    iput-object v1, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    .line 55
    new-instance v0, Lcom/android/common/i/g;

    invoke-direct {v0, p0}, Lcom/android/common/i/g;-><init>(Lcom/android/common/i/e;)V

    iput-object v0, p0, Lcom/android/common/i/e;->YX:Lcom/android/common/i/g;

    .line 56
    iput-object v1, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    .line 57
    iput-object v1, p0, Lcom/android/common/i/e;->YO:Lcom/android/common/camerastate/a;

    .line 60
    iput-object v1, p0, Lcom/android/common/i/e;->Zc:Lcom/android/common/m/a;

    .line 62
    iput-object v1, p0, Lcom/android/common/i/e;->YZ:Landroid/hardware/Camera$Size;

    .line 63
    iput v2, p0, Lcom/android/common/i/e;->Zd:I

    .line 64
    iput v2, p0, Lcom/android/common/i/e;->YR:I

    .line 66
    iput-object v1, p0, Lcom/android/common/i/e;->mFileName:Ljava/lang/String;

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/i/e;->Zb:J

    .line 68
    iput v2, p0, Lcom/android/common/i/e;->YS:I

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/i/e;->YQ:Ljava/lang/Integer;

    .line 70
    iput v2, p0, Lcom/android/common/i/e;->YP:I

    .line 74
    iput-object p1, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    .line 75
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/i/e;->YO:Lcom/android/common/camerastate/a;

    .line 76
    new-instance v0, Lcom/android/common/storagemanager/e;

    invoke-virtual {p1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/storagemanager/e;-><init>(Lcom/android/common/storagemanager/f;)V

    iput-object v0, p0, Lcom/android/common/i/e;->YW:Lcom/android/common/storagemanager/e;

    .line 73
    return-void
.end method

.method private afc()Lcom/android/common/cameradevice/j;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method private afd()Landroid/content/ContentValues;
    .registers 7

    .prologue
    .line 314
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 315
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/android/common/i/e;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string/jumbo v1, "_display_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/common/i/e;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v1, "datetaken"

    iget-wide v2, p0, Lcom/android/common/i/e;->Zb:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 318
    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v1, "orientation"

    iget v2, p0, Lcom/android/common/i/e;->YS:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string/jumbo v1, "_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/common/i/e;->YY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/i/e;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string/jumbo v1, "width"

    iget v2, p0, Lcom/android/common/i/e;->Zd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string/jumbo v1, "height"

    iget v2, p0, Lcom/android/common/i/e;->YR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    iget-object v1, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v1

    .line 325
    if-eqz v1, :cond_b5

    .line 326
    const-string/jumbo v2, "latitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 327
    const-string/jumbo v2, "longitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 329
    :cond_b5
    return-object v0
.end method

.method private afe()Landroid/util/SparseArray;
    .registers 4

    .prologue
    .line 306
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 307
    sget v1, Lcom/android/common/exif/o;->PS:I

    iget v2, p0, Lcom/android/common/i/e;->YS:I

    invoke-static {v2}, Lcom/android/common/exif/o;->QR(I)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    sget v1, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    sget v1, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    return-object v0
.end method

.method private aff()V
    .registers 5

    .prologue
    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/common/h;->apn(J)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    const-string/jumbo v2, "/"

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a04b6

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 109
    const/16 v2, 0x2f

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/i/e;->YY:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private afg()Z
    .registers 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/common/i/e;->YT:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agD()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 347
    const/4 v0, 0x1

    return v0

    .line 345
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method private afh()V
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rS()V

    .line 168
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qn(Z)V

    .line 169
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-static {v0}, Lcom/android/common/i/d;->aeX(Lcom/android/common/appService/W;)V

    .line 165
    return-void
.end method

.method private afi()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 173
    iput-boolean v2, p0, Lcom/android/common/i/e;->YT:Z

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/i/e;->YU:Z

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/i/e;->YQ:Ljava/lang/Integer;

    .line 176
    iput v2, p0, Lcom/android/common/i/e;->YP:I

    .line 177
    iget-object v0, p0, Lcom/android/common/i/e;->YO:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amK(Lcom/android/common/camerastate/FunctionState;)V

    .line 178
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/i/e;->YZ:Landroid/hardware/Camera$Size;

    .line 179
    iget-object v0, p0, Lcom/android/common/i/e;->YZ:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/android/common/i/e;->Zd:I

    .line 180
    iget-object v0, p0, Lcom/android/common/i/e;->YZ:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/android/common/i/e;->YR:I

    .line 181
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/m/c;->ahn(Z)V

    .line 182
    invoke-direct {p0}, Lcom/android/common/i/e;->aff()V

    .line 172
    return-void
.end method

.method private afm()V
    .registers 2

    .prologue
    .line 359
    iget v0, p0, Lcom/android/common/i/e;->Za:I

    packed-switch v0, :pswitch_data_16

    .line 358
    :goto_5
    return-void

    .line 361
    :pswitch_6
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-static {v0, p0}, Lcom/android/common/i/d;->aeZ(Lcom/android/common/appService/W;Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_5

    .line 364
    :pswitch_c
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/ActivityBase;->atc(Lcom/android/common/a/c;)V

    goto :goto_5

    .line 359
    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method

.method private afn()V
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Lcom/android/common/i/e;->Za:I

    packed-switch v0, :pswitch_data_1a

    .line 369
    :goto_5
    return-void

    .line 372
    :pswitch_6
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/appService/k;->jK(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_5

    .line 375
    :pswitch_10
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/ActivityBase;->atd(Lcom/android/common/a/c;)Z

    goto :goto_5

    .line 370
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.method static synthetic afo(Lcom/android/common/i/e;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic afp(Lcom/android/common/i/e;)I
    .registers 2

    iget v0, p0, Lcom/android/common/i/e;->YP:I

    return v0
.end method

.method static synthetic afq(Lcom/android/common/i/e;)Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/android/common/i/e;->YQ:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic afr(Lcom/android/common/i/e;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/i/e;->YT:Z

    return v0
.end method

.method static synthetic afs(Lcom/android/common/i/e;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/i/e;->YU:Z

    return v0
.end method

.method static synthetic aft(Lcom/android/common/i/e;)Lcom/android/common/i/h;
    .registers 2

    iget-object v0, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    return-object v0
.end method

.method static synthetic afu(Lcom/android/common/i/e;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/i/e;->YP:I

    return p1
.end method

.method static synthetic afv(Lcom/android/common/i/e;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/i/e;->YT:Z

    return p1
.end method


# virtual methods
.method public W(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .registers 19

    .prologue
    .line 188
    iget-boolean v2, p0, Lcom/android/common/i/e;->YU:Z

    if-eqz v2, :cond_c6

    .line 189
    iget-object v2, p0, Lcom/android/common/i/e;->YW:Lcom/android/common/storagemanager/e;

    invoke-virtual {v2}, Lcom/android/common/storagemanager/e;->agu()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 190
    const-string/jumbo v2, "MultiShoot"

    const-string/jumbo v3, "drop picture"

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/common/ActivityBase;->atc(Lcom/android/common/a/c;)V

    .line 192
    return-void

    .line 194
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/common/i/e;->Zb:J

    .line 195
    iget-wide v2, p0, Lcom/android/common/i/e;->Zb:J

    invoke-static {v2, v3}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/i/e;->mFileName:Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qv()I

    move-result v2

    .line 197
    int-to-float v3, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 198
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/common/i/e;->YS:I

    .line 199
    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_c7

    .line 200
    move/from16 v0, p2

    iput v0, p0, Lcom/android/common/i/e;->Zd:I

    .line 201
    move/from16 v0, p3

    iput v0, p0, Lcom/android/common/i/e;->YR:I

    .line 206
    :goto_48
    new-instance v2, Lcom/android/common/b/b;

    .line 207
    iget-object v3, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/common/i/e;->YY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/common/i/e;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 215
    invoke-direct {p0}, Lcom/android/common/i/e;->afe()Landroid/util/SparseArray;

    move-result-object v11

    .line 216
    invoke-direct {p0}, Lcom/android/common/i/e;->afd()Landroid/content/ContentValues;

    move-result-object v12

    .line 217
    new-instance v13, Lcom/android/common/i/f;

    const/4 v4, 0x0

    invoke-direct {v13, p0, v4}, Lcom/android/common/i/f;-><init>(Lcom/android/common/i/e;Lcom/android/common/i/f;)V

    .line 212
    const/16 v8, 0x3c

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    .line 206
    invoke-direct/range {v2 .. v13}, Lcom/android/common/b/b;-><init>(Lcom/android/common/appService/W;Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;ILjava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/content/ContentValues;Lcom/android/common/b/f;)V

    .line 218
    iget-object v3, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    move-result-object v2

    .line 219
    sget-object v3, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaE:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    if-ne v2, v3, :cond_d1

    .line 220
    iget-object v2, p0, Lcom/android/common/i/e;->YQ:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/i/e;->YQ:Ljava/lang/Integer;

    .line 221
    iget-object v2, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    if-eqz v2, :cond_bd

    .line 222
    iget-object v2, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    iget-object v3, p0, Lcom/android/common/i/e;->YQ:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/common/i/h;->abQ(I)V

    .line 224
    :cond_bd
    iget-object v2, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/common/ActivityBase;->atc(Lcom/android/common/a/c;)V

    .line 187
    :cond_c6
    :goto_c6
    return-void

    .line 203
    :cond_c7
    move/from16 v0, p3

    iput v0, p0, Lcom/android/common/i/e;->Zd:I

    .line 204
    move/from16 v0, p2

    iput v0, p0, Lcom/android/common/i/e;->YR:I

    goto/16 :goto_48

    .line 226
    :cond_d1
    const-string/jumbo v3, "MultiShoot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "storage fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget-object v3, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaF:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    if-ne v2, v3, :cond_fd

    .line 228
    invoke-virtual {p0}, Lcom/android/common/i/e;->afb()V

    .line 230
    iget-object v2, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    goto :goto_c6

    .line 232
    :cond_fd
    iget-object v2, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/common/ActivityBase;->atc(Lcom/android/common/a/c;)V

    goto :goto_c6
.end method

.method public afb()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0, v4}, Lcom/android/common/appService/W;->pM(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    if-eqz v0, :cond_10

    .line 82
    iget-object v0, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/common/i/h;->abR(I)V

    .line 84
    :cond_10
    iget-boolean v0, p0, Lcom/android/common/i/e;->YU:Z

    if-eqz v0, :cond_4c

    .line 85
    const-string/jumbo v0, "MultiShoot"

    const-string/jumbo v1, "stopMultishoot"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput-boolean v4, p0, Lcom/android/common/i/e;->YU:Z

    .line 87
    iget-object v0, p0, Lcom/android/common/i/e;->YO:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 88
    invoke-direct {p0}, Lcom/android/common/i/e;->afn()V

    .line 89
    iget-object v0, p0, Lcom/android/common/i/e;->YQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/common/i/e;->YP:I

    if-ne v0, v1, :cond_36

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/i/e;->YT:Z

    .line 92
    :cond_36
    invoke-static {}, Lcom/android/common/i/d;->afa()V

    .line 93
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0, v4}, Lcom/android/common/appService/W;->qn(Z)V

    .line 94
    iget-object v0, p0, Lcom/android/common/i/e;->YX:Lcom/android/common/i/g;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/common/i/g;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 79
    :cond_4c
    return-void
.end method

.method public afj(Lcom/android/common/i/h;)V
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    if-eqz v0, :cond_b

    if-nez p1, :cond_b

    .line 334
    iget-object v0, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    invoke-interface {v0}, Lcom/android/common/i/h;->abP()V

    .line 336
    :cond_b
    iput-object p1, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    .line 332
    return-void
.end method

.method public afk(I)V
    .registers 2

    .prologue
    .line 101
    iput p1, p0, Lcom/android/common/i/e;->Za:I

    .line 100
    return-void
.end method

.method public afl()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    iget-object v0, p0, Lcom/android/common/i/e;->YO:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 129
    return v4

    .line 132
    :cond_d
    invoke-direct {p0}, Lcom/android/common/i/e;->afg()Z

    move-result v0

    if-nez v0, :cond_27

    .line 133
    const-string/jumbo v0, "MultiShoot"

    const-string/jumbo v1, "last multishoot haven\'t finished"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-static {v0}, Lcom/android/common/i/d;->aeY(Lcom/android/common/appService/W;)V

    .line 135
    iget-object v0, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    invoke-interface {v0, v5}, Lcom/android/common/i/h;->abR(I)V

    .line 136
    return v4

    .line 139
    :cond_27
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rT()V

    .line 141
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-static {v1}, Lcom/android/common/i/d;->aeV(Lcom/android/common/appService/W;)I

    move-result v1

    int-to-long v2, v1

    .line 141
    invoke-virtual {v0, v2, v3}, Lcom/android/common/storagemanager/f;->agC(J)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaD:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    if-eq v0, v1, :cond_5c

    .line 144
    const-string/jumbo v1, "MultiShoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can not add request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return v4

    .line 147
    :cond_5c
    const-string/jumbo v0, "MultiShoot"

    const-string/jumbo v1, "startSpeedMultiShoot"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/android/common/i/e;->afi()V

    .line 152
    invoke-direct {p0}, Lcom/android/common/i/e;->afm()V

    .line 154
    invoke-direct {p0}, Lcom/android/common/i/e;->afh()V

    .line 156
    iget-object v0, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    if-eqz v0, :cond_77

    .line 157
    iget-object v0, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    invoke-interface {v0}, Lcom/android/common/i/h;->abO()V

    .line 159
    :cond_77
    iget-object v0, p0, Lcom/android/common/i/e;->YO:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amK(Lcom/android/common/camerastate/FunctionState;)V

    .line 160
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->ht()V

    .line 161
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0, v5}, Lcom/android/common/appService/W;->pM(Z)V

    .line 162
    return v5
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 17

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/common/i/e;->YU:Z

    if-eqz v0, :cond_b8

    .line 241
    iget-object v0, p0, Lcom/android/common/i/e;->YW:Lcom/android/common/storagemanager/e;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/e;->agu()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 242
    const-string/jumbo v0, "MultiShoot"

    const-string/jumbo v1, "drop picture"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/android/common/i/e;->afc()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/j;->KW([B)V

    .line 244
    return-void

    .line 246
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/i/e;->Zb:J

    .line 247
    iget-wide v0, p0, Lcom/android/common/i/e;->Zb:J

    invoke-static {v0, v1}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/i/e;->mFileName:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pC()I

    move-result v1

    .line 248
    invoke-static {v0, v1}, Lcom/android/common/h;->aoU(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/i/e;->YS:I

    .line 250
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v13

    .line 251
    new-instance v0, Lcom/android/common/b/h;

    .line 252
    iget-object v1, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    .line 254
    iget-object v2, p0, Lcom/android/common/i/e;->YZ:Landroid/hardware/Camera$Size;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    .line 255
    iget-object v2, p0, Lcom/android/common/i/e;->YZ:Landroid/hardware/Camera$Size;

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    .line 256
    invoke-direct {p0}, Lcom/android/common/i/e;->afe()Landroid/util/SparseArray;

    move-result-object v5

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/common/i/e;->YY:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 258
    iget-object v7, p0, Lcom/android/common/i/e;->mFileName:Ljava/lang/String;

    .line 259
    iget v8, p0, Lcom/android/common/i/e;->YS:I

    .line 262
    invoke-direct {p0}, Lcom/android/common/i/e;->afd()Landroid/content/ContentValues;

    move-result-object v11

    .line 263
    new-instance v12, Lcom/android/common/i/f;

    const/4 v2, 0x0

    invoke-direct {v12, p0, v2}, Lcom/android/common/i/f;-><init>(Lcom/android/common/i/e;Lcom/android/common/i/f;)V

    .line 260
    const/4 v9, 0x0

    .line 261
    const/4 v10, 0x0

    move-object v2, p1

    .line 251
    invoke-direct/range {v0 .. v12}, Lcom/android/common/b/h;-><init>(Lcom/android/common/appService/W;[BIILandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;IZZLandroid/content/ContentValues;Lcom/android/common/b/f;)V

    .line 250
    invoke-virtual {v13, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    move-result-object v0

    .line 264
    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaE:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    if-ne v0, v1, :cond_b9

    .line 265
    iget-object v0, p0, Lcom/android/common/i/e;->YQ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/i/e;->YQ:Ljava/lang/Integer;

    .line 266
    iget-object v0, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    if-eqz v0, :cond_a2

    .line 267
    iget-object v0, p0, Lcom/android/common/i/e;->YV:Lcom/android/common/i/h;

    iget-object v1, p0, Lcom/android/common/i/e;->YQ:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/common/i/h;->abQ(I)V

    .line 269
    :cond_a2
    invoke-direct {p0}, Lcom/android/common/i/e;->afc()Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/android/common/i/e;->YZ:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget-object v2, p0, Lcom/android/common/i/e;->YZ:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 269
    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KW([B)V

    .line 239
    :cond_b8
    :goto_b8
    return-void

    .line 272
    :cond_b9
    const-string/jumbo v1, "MultiShoot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "storage fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaF:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    if-eq v0, v1, :cond_db

    .line 274
    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaG:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    if-ne v0, v1, :cond_e9

    .line 275
    :cond_db
    invoke-virtual {p0}, Lcom/android/common/i/e;->afb()V

    .line 277
    iget-object v0, p0, Lcom/android/common/i/e;->YN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    goto :goto_b8

    .line 279
    :cond_e9
    invoke-direct {p0}, Lcom/android/common/i/e;->afc()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/j;->KW([B)V

    goto :goto_b8
.end method
