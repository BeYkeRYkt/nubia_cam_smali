.class public final Lcom/android/common/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private UV:Lcom/android/common/appService/W;

.field private UW:Ljava/lang/String;

.field private UX:Ljava/lang/String;

.field private UY:J

.field private UZ:I

.field private Va:Ljava/lang/String;

.field private Vb:Landroid/hardware/Camera$Size;

.field private Vc:J

.field private Vd:Ljava/lang/String;

.field private Ve:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    .line 44
    iput-object v1, p0, Lcom/android/common/e/c;->UX:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/common/e/c;->UW:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/common/e/c;->Vd:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/android/common/e/c;->Vb:Landroid/hardware/Camera$Size;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/e/c;->UZ:I

    .line 55
    iput-object v1, p0, Lcom/android/common/e/c;->Va:Ljava/lang/String;

    .line 56
    iput-wide v2, p0, Lcom/android/common/e/c;->Vc:J

    .line 57
    iput-wide v2, p0, Lcom/android/common/e/c;->UY:J

    .line 58
    sget-object v0, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v0}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v0

    iput v0, p0, Lcom/android/common/e/c;->Ve:I

    .line 61
    iput-object p1, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    .line 60
    return-void
.end method

.method static synthetic ZA(Lcom/android/common/e/c;)I
    .registers 2

    iget v0, p0, Lcom/android/common/e/c;->Ve:I

    return v0
.end method

.method private Zg()Landroid/content/ContentValues;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 206
    invoke-direct {p0}, Lcom/android/common/e/c;->Zo()I

    move-result v0

    iget v1, p0, Lcom/android/common/e/c;->UZ:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_d5

    .line 207
    iget-object v0, p0, Lcom/android/common/e/c;->Vb:Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    .line 208
    iget-object v0, p0, Lcom/android/common/e/c;->Vb:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 213
    :goto_14
    iget-object v2, p0, Lcom/android/common/e/c;->Va:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/android/common/e/c;->Va:Ljava/lang/String;

    const-string/jumbo v3, "jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 224
    :cond_23
    :goto_23
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 225
    const-string/jumbo v3, "datetaken"

    iget-wide v4, p0, Lcom/android/common/e/c;->Vc:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 226
    const-string/jumbo v3, "_data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/common/e/c;->UX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/common/e/c;->UW:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string/jumbo v3, "title"

    iget-object v4, p0, Lcom/android/common/e/c;->Vd:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v3, "_display_name"

    iget-object v4, p0, Lcom/android/common/e/c;->UW:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Lcom/android/common/e/c;->Va:Ljava/lang/String;

    const-string/jumbo v4, "jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 230
    const-string/jumbo v3, "mime_type"

    const-string/jumbo v4, "image/jpeg"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_7a
    const-string/jumbo v3, "orientation"

    iget v4, p0, Lcom/android/common/e/c;->UZ:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string/jumbo v3, "_size"

    iget-wide v4, p0, Lcom/android/common/e/c;->UY:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 237
    invoke-direct {p0}, Lcom/android/common/e/c;->Zs()Z

    move-result v3

    if-nez v3, :cond_ac

    .line 238
    const-string/jumbo v3, "width"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    const-string/jumbo v1, "height"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    :cond_ac
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_d4

    .line 243
    const-string/jumbo v1, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 244
    const-string/jumbo v1, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 246
    :cond_d4
    return-object v2

    .line 210
    :cond_d5
    iget-object v0, p0, Lcom/android/common/e/c;->Vb:Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    .line 211
    iget-object v0, p0, Lcom/android/common/e/c;->Vb:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    goto/16 :goto_14

    .line 215
    :cond_df
    iget-object v2, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    const-string/jumbo v3, "raw-size"

    invoke-interface {v2, v3}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    if-eqz v2, :cond_23

    .line 217
    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 218
    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    .line 219
    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 220
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_23

    .line 232
    :cond_10b
    const-string/jumbo v3, "mime_type"

    const-string/jumbo v4, "image/dng"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7a
.end method

.method private Zh()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private Zi()I
    .registers 2

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/android/common/e/c;->Zh()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qd()I

    move-result v0

    return v0
.end method

.method private Zj()Lcom/android/common/camerastate/a;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    return-object v0
.end method

.method private Zk(JILjava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 194
    invoke-static {p1, p2}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/e/c;->Vd:Ljava/lang/String;

    .line 195
    if-eqz p4, :cond_11

    const-string/jumbo v0, "jpeg"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 196
    :cond_11
    const-string/jumbo v0, ".jpg"

    .line 200
    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/common/e/c;->Vd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_28
    const-string/jumbo v0, ".raw"

    goto :goto_14
.end method

.method private Zl(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 175
    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v0

    .line 176
    if-eqz p2, :cond_f

    const-string/jumbo v1, "jpeg"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 179
    :cond_f
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2c

    .line 180
    invoke-static {}, Lcom/android/common/n;->aqP()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_16
    return-object v0

    .line 177
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 182
    :cond_2c
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 183
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    const v1, 0x7f0a04b7

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 186
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/common/appService/CameraMember;->mf(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method private Zm()Lcom/android/common/cameradevice/p;
    .registers 2

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/android/common/e/c;->Zh()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    return-object v0
.end method

.method private Zn()I
    .registers 2

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/common/e/c;->Zh()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qc()I

    move-result v0

    return v0
.end method

.method private Zo()I
    .registers 2

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/common/e/c;->Zh()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pV()I

    move-result v0

    return v0
.end method

.method private Zp()J
    .registers 3

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/android/common/e/c;->Zh()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rx()J

    move-result-wide v0

    return-wide v0
.end method

.method private Zq()J
    .registers 3

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/common/e/c;->Zh()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rw()J

    move-result-wide v0

    return-wide v0
.end method

.method private Zr()J
    .registers 3

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/android/common/e/c;->Zh()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qO()J

    move-result-wide v0

    return-wide v0
.end method

.method private Zs()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    iget-object v2, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    if-nez v2, :cond_7

    .line 251
    return v1

    .line 253
    :cond_7
    invoke-direct {p0}, Lcom/android/common/e/c;->Zm()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->LJ()I

    move-result v2

    if-ne v2, v0, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11
.end method

.method private Zt()Z
    .registers 2

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/common/e/c;->Zh()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    return v0
.end method

.method private Zu(I)V
    .registers 3

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/common/e/c;->Zh()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->rb(I)V

    .line 324
    return-void
.end method

.method private Zv()V
    .registers 2

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/android/common/e/c;->Zh()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 308
    return-void
.end method

.method private Zw()Landroid/util/SparseArray;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 258
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agd:Z

    if-eqz v0, :cond_87

    .line 259
    :cond_9
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Nl()Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_13
    iget-object v2, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v2

    .line 263
    if-eqz v2, :cond_21

    if-nez v0, :cond_22

    .line 265
    :cond_21
    return-object v1

    .line 264
    :cond_22
    const-string/jumbo v3, "auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const-string/jumbo v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 263
    if-nez v3, :cond_21

    .line 268
    :cond_34
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 269
    const-string/jumbo v3, "-1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 270
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 271
    sget v3, Lcom/android/common/exif/o;->PK:I

    new-instance v4, Lcom/android/common/exif/m;

    const v5, 0x3c23d70a    # 0.01f

    invoke-direct {v4, v2, v5}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    :cond_53
    const-string/jumbo v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    .line 274
    const-string/jumbo v2, "ISO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_74

    .line 275
    sget v2, Lcom/android/common/exif/o;->PJ:I

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    :cond_73
    :goto_73
    return-object v1

    .line 277
    :cond_74
    sget v2, Lcom/android/common/exif/o;->PJ:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_73

    :cond_87
    move-object v0, v1

    goto :goto_13
.end method

.method static synthetic Zx(Lcom/android/common/e/c;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic Zy(Lcom/android/common/e/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/common/e/c;->UW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Zz(Lcom/android/common/e/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/common/e/c;->UX:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 15

    .prologue
    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/common/e/c;->Zt()Z

    move-result v0

    if-nez v0, :cond_b

    if-nez p1, :cond_c

    .line 67
    :cond_b
    return-void

    .line 70
    :cond_c
    const-string/jumbo v0, "on"

    invoke-direct {p0}, Lcom/android/common/e/c;->Zm()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Nm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 71
    const-string/jumbo v0, "JpegPictureCallback"

    const-string/jumbo v1, "In onPictureTaken , in zslmode"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->WJ()V

    .line 73
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rv()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/common/e/c;->Zu(I)V

    .line 76
    :cond_38
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qb(I)V

    .line 77
    const-string/jumbo v0, "JpegPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JpegPictureCallback arrived, receivedSnapNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-direct {p0}, Lcom/android/common/e/c;->Zn()I

    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    const-string/jumbo v2, "; burstSnapNum = "

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-direct {p0}, Lcom/android/common/e/c;->Zi()I

    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 86
    invoke-direct {p0}, Lcom/android/common/e/c;->Zp()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_dd

    .line 87
    invoke-direct {p0}, Lcom/android/common/e/c;->Zp()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/common/e/c;->Zr()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 88
    invoke-direct {p0}, Lcom/android/common/e/c;->Zp()J

    move-result-wide v2

    sub-long v2, v10, v2

    .line 93
    :goto_86
    const-string/jumbo v4, "JpegPictureCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "shutter to picture display = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "ms; picture display to jpeg = "

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "ms"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v0, "off"

    invoke-direct {p0}, Lcom/android/common/e/c;->Zm()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Nm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 97
    invoke-direct {p0}, Lcom/android/common/e/c;->Zn()I

    move-result v0

    invoke-direct {p0}, Lcom/android/common/e/c;->Zi()I

    move-result v1

    if-ne v0, v1, :cond_ed

    .line 98
    invoke-direct {p0}, Lcom/android/common/e/c;->Zv()V

    .line 105
    :cond_d0
    :goto_d0
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/H;->mY([B)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 106
    return-void

    .line 90
    :cond_dd
    invoke-direct {p0}, Lcom/android/common/e/c;->Zq()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/common/e/c;->Zr()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 91
    invoke-direct {p0}, Lcom/android/common/e/c;->Zq()J

    move-result-wide v2

    sub-long v2, v10, v2

    goto :goto_86

    .line 99
    :cond_ed
    invoke-direct {p0}, Lcom/android/common/e/c;->Zn()I

    move-result v0

    invoke-direct {p0}, Lcom/android/common/e/c;->Zi()I

    move-result v1

    if-ne v0, v1, :cond_d0

    .line 100
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qe()V

    .line 101
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->mJ(Z)V

    .line 102
    invoke-direct {p0}, Lcom/android/common/e/c;->Zj()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    goto :goto_d0

    .line 109
    :cond_110
    invoke-direct {p0}, Lcom/android/common/e/c;->Zm()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/e/c;->Vb:Landroid/hardware/Camera$Size;

    .line 110
    invoke-static {p1}, Lcom/android/common/c;->aob([B)I

    move-result v0

    iput v0, p0, Lcom/android/common/e/c;->UZ:I

    .line 111
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/e/c;->Va:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pS()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/e/c;->Vc:J

    .line 113
    array-length v0, p1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/common/e/c;->UY:J

    .line 114
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pR()I

    move-result v0

    iput v0, p0, Lcom/android/common/e/c;->Ve:I

    .line 115
    iget v0, p0, Lcom/android/common/e/c;->Ve:I

    iget-object v1, p0, Lcom/android/common/e/c;->Va:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/common/e/c;->Zl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/e/c;->UX:Ljava/lang/String;

    .line 116
    iget-wide v0, p0, Lcom/android/common/e/c;->Vc:J

    iget v2, p0, Lcom/android/common/e/c;->Ve:I

    iget-object v3, p0, Lcom/android/common/e/c;->Va:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/common/e/c;->Zk(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/e/c;->UW:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/android/common/b/c;

    .line 118
    iget-object v1, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    .line 120
    invoke-direct {p0}, Lcom/android/common/e/c;->Zw()Landroid/util/SparseArray;

    move-result-object v3

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/common/e/c;->UX:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 122
    iget-object v5, p0, Lcom/android/common/e/c;->UW:Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Lcom/android/common/e/c;->Zg()Landroid/content/ContentValues;

    move-result-object v6

    .line 124
    iget v7, p0, Lcom/android/common/e/c;->UZ:I

    .line 125
    new-instance v8, Lcom/android/common/e/d;

    invoke-direct {v8, p0, v9}, Lcom/android/common/e/d;-><init>(Lcom/android/common/e/c;Lcom/android/common/e/d;)V

    move-object v2, p1

    .line 117
    invoke-direct/range {v0 .. v8}, Lcom/android/common/b/c;-><init>(Lcom/android/common/appService/W;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 126
    iget-object v1, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 128
    iget-object v0, p0, Lcom/android/common/e/c;->UV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    if-nez v0, :cond_1a7

    .line 129
    invoke-direct {p0}, Lcom/android/common/e/c;->Zn()I

    move-result v0

    invoke-direct {p0}, Lcom/android/common/e/c;->Zi()I

    move-result v1

    if-ne v0, v1, :cond_1a7

    .line 130
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 133
    :cond_1a7
    const-string/jumbo v0, "JpegPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JpegCallbackFinishTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
