.class public final Lcn/nubia/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private bpA:Ljava/lang/String;

.field private bpB:Ljava/lang/String;

.field private bpC:J

.field private bpD:I

.field private bpE:Ljava/lang/String;

.field private bpF:Landroid/hardware/Camera$Size;

.field private bpG:J

.field private bpH:Ljava/lang/String;

.field private bpI:I

.field private bpx:Lcn/nubia/b/a;

.field private bpy:Lcom/android/common/appService/W;

.field private bpz:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;ILcn/nubia/b/a;)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    .line 56
    iput-object v1, p0, Lcn/nubia/b/i;->bpB:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcn/nubia/b/i;->bpA:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcn/nubia/b/i;->bpH:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcn/nubia/b/i;->bpF:Landroid/hardware/Camera$Size;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/b/i;->bpD:I

    .line 67
    iput-object v1, p0, Lcn/nubia/b/i;->bpE:Ljava/lang/String;

    .line 68
    iput-wide v2, p0, Lcn/nubia/b/i;->bpG:J

    .line 69
    iput-wide v2, p0, Lcn/nubia/b/i;->bpC:J

    .line 70
    sget-object v0, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v0}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v0

    iput v0, p0, Lcn/nubia/b/i;->bpI:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/b/i;->bpz:I

    .line 72
    iput-object v1, p0, Lcn/nubia/b/i;->bpx:Lcn/nubia/b/a;

    .line 75
    iput-object p1, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    .line 76
    iput p2, p0, Lcn/nubia/b/i;->bpz:I

    .line 77
    iput-object p3, p0, Lcn/nubia/b/i;->bpx:Lcn/nubia/b/a;

    .line 74
    return-void
.end method

.method private bLU()Landroid/content/ContentValues;
    .registers 7

    .prologue
    .line 174
    invoke-direct {p0}, Lcn/nubia/b/i;->bMc()I

    move-result v0

    iget v1, p0, Lcn/nubia/b/i;->bpD:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_b4

    .line 175
    iget-object v0, p0, Lcn/nubia/b/i;->bpF:Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    .line 176
    iget-object v0, p0, Lcn/nubia/b/i;->bpF:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 182
    :goto_13
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 183
    const-string/jumbo v3, "datetaken"

    iget-wide v4, p0, Lcn/nubia/b/i;->bpG:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 184
    const-string/jumbo v3, "_data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/nubia/b/i;->bpB:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/b/i;->bpA:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v3, "title"

    iget-object v4, p0, Lcn/nubia/b/i;->bpH:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v3, "_display_name"

    iget-object v4, p0, Lcn/nubia/b/i;->bpA:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v3, "mime_type"

    const-string/jumbo v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v3, "orientation"

    iget v4, p0, Lcn/nubia/b/i;->bpD:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string/jumbo v3, "_size"

    iget-wide v4, p0, Lcn/nubia/b/i;->bpC:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    const-string/jumbo v3, "width"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string/jumbo v1, "height"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    iget-object v0, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_b3

    .line 195
    const-string/jumbo v1, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 196
    const-string/jumbo v1, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 198
    :cond_b3
    return-object v2

    .line 178
    :cond_b4
    iget-object v0, p0, Lcn/nubia/b/i;->bpF:Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    .line 179
    iget-object v0, p0, Lcn/nubia/b/i;->bpF:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    goto/16 :goto_13
.end method

.method private bLV()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private bLW()I
    .registers 2

    .prologue
    .line 238
    invoke-direct {p0}, Lcn/nubia/b/i;->bLV()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qd()I

    move-result v0

    return v0
.end method

.method private bLX()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    return-object v0
.end method

.method private bLY(JILjava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 167
    invoke-static {p1, p2}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/i;->bpH:Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/nubia/b/i;->bpH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bLZ(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 157
    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/common/appService/CameraMember;->me(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 161
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 162
    :cond_2a
    return-object v0
.end method

.method private bMa()Lcom/android/common/cameradevice/p;
    .registers 2

    .prologue
    .line 242
    invoke-direct {p0}, Lcn/nubia/b/i;->bLV()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    return-object v0
.end method

.method private bMb()I
    .registers 2

    .prologue
    .line 234
    invoke-direct {p0}, Lcn/nubia/b/i;->bLV()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qc()I

    move-result v0

    return v0
.end method

.method private bMc()I
    .registers 2

    .prologue
    .line 246
    invoke-direct {p0}, Lcn/nubia/b/i;->bLV()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pV()I

    move-result v0

    return v0
.end method

.method private bMd([B)V
    .registers 11

    .prologue
    .line 122
    invoke-direct {p0}, Lcn/nubia/b/i;->bMa()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/i;->bpF:Landroid/hardware/Camera$Size;

    .line 123
    invoke-static {p1}, Lcom/android/common/c;->aob([B)I

    move-result v0

    iput v0, p0, Lcn/nubia/b/i;->bpD:I

    .line 124
    iget-object v0, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/i;->bpE:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pS()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/b/i;->bpG:J

    .line 126
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/nubia/b/i;->bpC:J

    .line 127
    iget-object v0, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pR()I

    move-result v0

    iput v0, p0, Lcn/nubia/b/i;->bpI:I

    .line 128
    iget v0, p0, Lcn/nubia/b/i;->bpI:I

    iget-object v1, p0, Lcn/nubia/b/i;->bpE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcn/nubia/b/i;->bLZ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/i;->bpB:Ljava/lang/String;

    .line 129
    iget-wide v0, p0, Lcn/nubia/b/i;->bpG:J

    iget v2, p0, Lcn/nubia/b/i;->bpI:I

    iget-object v3, p0, Lcn/nubia/b/i;->bpE:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcn/nubia/b/i;->bLY(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/i;->bpA:Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/android/common/b/c;

    .line 132
    iget-object v1, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    .line 134
    invoke-direct {p0}, Lcn/nubia/b/i;->bMf()Landroid/util/SparseArray;

    move-result-object v3

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/b/i;->bpB:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    iget-object v5, p0, Lcn/nubia/b/i;->bpA:Ljava/lang/String;

    .line 137
    invoke-direct {p0}, Lcn/nubia/b/i;->bLU()Landroid/content/ContentValues;

    move-result-object v6

    .line 138
    iget v7, p0, Lcn/nubia/b/i;->bpD:I

    .line 139
    new-instance v8, Lcn/nubia/b/j;

    const/4 v2, 0x0

    invoke-direct {v8, p0, v2}, Lcn/nubia/b/j;-><init>(Lcn/nubia/b/i;Lcn/nubia/b/j;)V

    move-object v2, p1

    .line 131
    invoke-direct/range {v0 .. v8}, Lcom/android/common/b/c;-><init>(Lcom/android/common/appService/W;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 140
    iget-object v1, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 121
    return-void
.end method

.method private bMe([B)V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcn/nubia/b/i;->bpx:Lcn/nubia/b/a;

    invoke-interface {v0, p1}, Lcn/nubia/b/a;->bKV([B)V

    .line 273
    return-void
.end method

.method private bMf()Landroid/util/SparseArray;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 203
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agd:Z

    if-eqz v0, :cond_6f

    .line 204
    :cond_9
    iget-object v0, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Nl()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_13
    iget-object v2, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v2

    .line 208
    if-eqz v2, :cond_21

    .line 209
    if-nez v0, :cond_22

    .line 211
    :cond_21
    return-object v1

    .line 210
    :cond_22
    const-string/jumbo v3, "auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const-string/jumbo v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 208
    if-nez v3, :cond_21

    .line 214
    :cond_34
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 215
    const-string/jumbo v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 216
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 217
    sget v3, Lcom/android/common/exif/o;->PK:I

    new-instance v4, Lcom/android/common/exif/m;

    const v5, 0x3c23d70a    # 0.01f

    invoke-direct {v4, v2, v5}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    :cond_53
    const-string/jumbo v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 220
    sget v2, Lcom/android/common/exif/o;->PJ:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    :cond_6e
    return-object v1

    :cond_6f
    move-object v0, v1

    goto :goto_13
.end method

.method static synthetic bMg(Lcn/nubia/b/i;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    return-object v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    const-string/jumbo v2, "DualCameraJpegPictureCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPictureTaken CameraId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/b/i;->bpz:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-nez p1, :cond_29

    .line 85
    const-string/jumbo v2, "DualCameraJpegPictureCallback"

    const-string/jumbo v3, "onPictureTaken data is null"

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_29
    iget-object v2, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v2, v0}, Lcom/android/common/appService/W;->qb(I)V

    .line 90
    const-string/jumbo v2, "DualCameraJpegPictureCallback"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ReceivedSnapNum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v4}, Lcom/android/common/appService/W;->qc()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    const-string/jumbo v4, " BurstSnapNum "

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    iget-object v4, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v4}, Lcom/android/common/appService/W;->qd()I

    move-result v4

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget v2, p0, Lcn/nubia/b/i;->bpz:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v3

    if-ne v2, v3, :cond_85

    .line 95
    :goto_6b
    invoke-direct {p0}, Lcn/nubia/b/i;->bLX()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->hb:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v2, v3, :cond_b8

    .line 96
    const-string/jumbo v2, "DualCameraJpegPictureCallback"

    const-string/jumbo v3, "DualCameraMode: Fusion mode"

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z

    move-result v2

    if-eqz v2, :cond_87

    .line 98
    return-void

    :cond_85
    move v0, v1

    .line 93
    goto :goto_6b

    .line 100
    :cond_87
    if-eqz v0, :cond_8e

    if-eqz p1, :cond_8e

    .line 101
    invoke-direct {p0, p1}, Lcn/nubia/b/i;->bMd([B)V

    .line 103
    :cond_8e
    iget-object v0, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qc()I

    move-result v0

    iget-object v2, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qd()I

    move-result v2

    if-ne v0, v2, :cond_b7

    .line 104
    iget-object v0, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->mJ(Z)V

    .line 105
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 106
    iget-object v0, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 81
    :cond_b7
    :goto_b7
    return-void

    .line 108
    :cond_b8
    invoke-direct {p0}, Lcn/nubia/b/i;->bLX()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v1, v2, :cond_b7

    .line 109
    const-string/jumbo v1, "DualCameraJpegPictureCallback"

    const-string/jumbo v2, "DualCameraMode: Aperture mode"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    if-eqz v0, :cond_d0

    if-eqz p1, :cond_d0

    .line 112
    invoke-direct {p0, p1}, Lcn/nubia/b/i;->bMe([B)V

    .line 114
    :cond_d0
    invoke-direct {p0}, Lcn/nubia/b/i;->bMb()I

    move-result v0

    invoke-direct {p0}, Lcn/nubia/b/i;->bLW()I

    move-result v1

    if-ne v0, v1, :cond_b7

    .line 115
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 116
    iget-object v0, p0, Lcn/nubia/b/i;->bpy:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    goto :goto_b7
.end method
