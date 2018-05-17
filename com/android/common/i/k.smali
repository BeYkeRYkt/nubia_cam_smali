.class public final Lcom/android/common/i/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private Zk:Lcom/android/common/appService/W;

.field private Zl:Ljava/lang/String;

.field private Zm:Ljava/lang/String;

.field private Zn:J

.field private Zo:J

.field private Zp:Ljava/lang/String;

.field private Zq:Z

.field private Zr:Lcom/android/common/storagemanager/e;

.field private Zs:I

.field private Zt:Landroid/hardware/Camera$Size;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    .line 31
    iput-wide v2, p0, Lcom/android/common/i/k;->Zo:J

    .line 32
    iput-object v0, p0, Lcom/android/common/i/k;->Zt:Landroid/hardware/Camera$Size;

    .line 33
    iput v1, p0, Lcom/android/common/i/k;->Zs:I

    .line 34
    iput-object v0, p0, Lcom/android/common/i/k;->Zm:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/android/common/i/k;->Zl:Ljava/lang/String;

    .line 36
    iput-wide v2, p0, Lcom/android/common/i/k;->Zn:J

    .line 37
    iput-object v0, p0, Lcom/android/common/i/k;->Zp:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lcom/android/common/i/k;->Zq:Z

    .line 43
    iput-object p1, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    .line 44
    new-instance v0, Lcom/android/common/storagemanager/e;

    invoke-virtual {p1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/storagemanager/e;-><init>(Lcom/android/common/storagemanager/f;)V

    iput-object v0, p0, Lcom/android/common/i/k;->Zr:Lcom/android/common/storagemanager/e;

    .line 42
    return-void
.end method

.method private afD()Landroid/content/ContentValues;
    .registers 7

    .prologue
    .line 135
    new-instance v2, Landroid/content/ContentValues;

    const/16 v0, 0xb

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 136
    const-string/jumbo v0, "datetaken"

    iget-wide v4, p0, Lcom/android/common/i/k;->Zo:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const-string/jumbo v0, "_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/common/i/k;->Zm:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/common/i/k;->Zl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/android/common/i/k;->Zl:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v0, "_display_name"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/common/i/k;->Zl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, "mime_type"

    const-string/jumbo v1, "image/jpeg"

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, "orientation"

    iget v1, p0, Lcom/android/common/i/k;->Zs:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string/jumbo v0, "_size"

    iget-wide v4, p0, Lcom/android/common/i/k;->Zn:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    invoke-direct {p0}, Lcom/android/common/i/k;->afF()I

    move-result v0

    iget v1, p0, Lcom/android/common/i/k;->Zs:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_d1

    .line 147
    iget-object v0, p0, Lcom/android/common/i/k;->Zt:Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    .line 148
    iget-object v0, p0, Lcom/android/common/i/k;->Zt:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 153
    :goto_94
    const-string/jumbo v3, "width"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string/jumbo v1, "height"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    iget-object v0, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_d0

    .line 157
    const-string/jumbo v1, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 158
    const-string/jumbo v1, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 160
    :cond_d0
    return-object v2

    .line 150
    :cond_d1
    iget-object v0, p0, Lcom/android/common/i/k;->Zt:Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    .line 151
    iget-object v0, p0, Lcom/android/common/i/k;->Zt:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    goto :goto_94
.end method

.method private afE()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private afF()I
    .registers 2

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/common/i/k;->afE()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pV()I

    move-result v0

    return v0
.end method

.method private afG()Ljava/lang/String;
    .registers 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/common/i/k;->Zp:Ljava/lang/String;

    if-nez v0, :cond_4a

    .line 126
    const-string/jumbo v0, "LongShotJpegPictureCallback"

    const-string/jumbo v1, "Warning!!!Longshot ImagePath is null"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    const-string/jumbo v1, "/"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a04b6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    const/16 v1, 0x2f

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/common/h;->apn(J)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/i/k;->Zp:Ljava/lang/String;

    .line 131
    :cond_4a
    iget-object v0, p0, Lcom/android/common/i/k;->Zp:Ljava/lang/String;

    return-object v0
.end method

.method private afH()J
    .registers 3

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/common/i/k;->afE()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rx()J

    move-result-wide v0

    return-wide v0
.end method

.method private afI()J
    .registers 3

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/android/common/i/k;->afE()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rw()J

    move-result-wide v0

    return-wide v0
.end method

.method private afJ()J
    .registers 3

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/common/i/k;->afE()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qO()J

    move-result-wide v0

    return-wide v0
.end method

.method private afK()Z
    .registers 2

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/common/i/k;->afE()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    return v0
.end method

.method private afL([BJ)V
    .registers 14

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 98
    iput-wide p2, p0, Lcom/android/common/i/k;->Zo:J

    .line 99
    iget-object v0, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/i/k;->Zt:Landroid/hardware/Camera$Size;

    .line 100
    invoke-static {p1}, Lcom/android/common/c;->aob([B)I

    move-result v0

    iput v0, p0, Lcom/android/common/i/k;->Zs:I

    .line 101
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/common/i/k;->Zn:J

    .line 102
    iget-wide v0, p0, Lcom/android/common/i/k;->Zo:J

    invoke-static {v0, v1}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/i/k;->Zl:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/android/common/i/k;->afG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/i/k;->Zm:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/android/common/b/c;

    .line 105
    iget-object v1, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/common/i/k;->Zm:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/common/i/k;->Zl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-direct {p0}, Lcom/android/common/i/k;->afD()Landroid/content/ContentValues;

    move-result-object v6

    .line 111
    iget v7, p0, Lcom/android/common/i/k;->Zs:I

    .line 112
    new-instance v8, Lcom/android/common/i/l;

    invoke-direct {v8, p0, v3}, Lcom/android/common/i/l;-><init>(Lcom/android/common/i/k;Lcom/android/common/i/l;)V

    move-object v2, p1

    .line 104
    invoke-direct/range {v0 .. v8}, Lcom/android/common/b/c;-><init>(Lcom/android/common/appService/W;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 113
    invoke-virtual {v0, v9}, Lcom/android/common/b/c;->be(Z)V

    .line 114
    iget-object v1, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/common/storagemanager/f;->agG(Lcom/android/common/b/g;Z)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    move-result-object v0

    .line 115
    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaE:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    if-ne v0, v1, :cond_8d

    .line 116
    iget-object v0, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_8c

    .line 117
    iget-object v0, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    invoke-virtual {v0, v9}, Lcom/android/common/appService/W;->qb(I)V

    .line 97
    :cond_8c
    :goto_8c
    return-void

    .line 120
    :cond_8d
    const-string/jumbo v1, "LongShotJpegPictureCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Quality multishoot storageStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8c
.end method

.method static synthetic afM(Lcom/android/common/i/k;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    return-object v0
.end method


# virtual methods
.method public afB(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/common/i/k;->Zp:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public afC(Z)V
    .registers 2

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/common/i/k;->Zq:Z

    .line 56
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 12

    .prologue
    const-wide/16 v2, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/common/i/k;->afK()Z

    move-result v0

    if-nez v0, :cond_16

    .line 63
    iget-object v0, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_48

    .line 65
    :cond_16
    const-string/jumbo v0, "LongShotJpegPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Abort continous pictures, beacause functionSate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66
    const-string/jumbo v2, "; ContinousShotStarted: "

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66
    iget-boolean v2, p0, Lcom/android/common/i/k;->Zq:Z

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 64
    :cond_48
    iget-boolean v0, p0, Lcom/android/common/i/k;->Zq:Z

    if-eqz v0, :cond_16

    .line 71
    const-string/jumbo v0, "off"

    iget-object v1, p0, Lcom/android/common/i/k;->Zk:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Nm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 72
    const-string/jumbo v0, "LongShotJpegPictureCallback"

    const-string/jumbo v1, "In Non-Zsl mode. Error occur in longshot!!!"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void

    .line 76
    :cond_69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 79
    invoke-direct {p0}, Lcom/android/common/i/k;->afH()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e2

    .line 80
    invoke-direct {p0}, Lcom/android/common/i/k;->afH()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/common/i/k;->afJ()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 81
    invoke-direct {p0}, Lcom/android/common/i/k;->afH()J

    move-result-wide v2

    sub-long v2, v4, v2

    .line 86
    :goto_84
    const-string/jumbo v6, "LongShotJpegPictureCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shutter to picture display = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "; picture display to jpeg = "

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string/jumbo v1, "ms"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/common/i/k;->Zr:Lcom/android/common/storagemanager/e;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/e;->agu()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 90
    invoke-direct {p0, p1, v4, v5}, Lcom/android/common/i/k;->afL([BJ)V

    .line 94
    :goto_bb
    const-string/jumbo v0, "LongShotJpegPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "jpegCallbackFinishTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 83
    :cond_e2
    invoke-direct {p0}, Lcom/android/common/i/k;->afI()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/common/i/k;->afJ()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 84
    invoke-direct {p0}, Lcom/android/common/i/k;->afI()J

    move-result-wide v2

    sub-long v2, v4, v2

    goto :goto_84

    .line 92
    :cond_f2
    const-string/jumbo v0, "LongShotJpegPictureCallback"

    const-string/jumbo v1, "drop picture"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bb
.end method
