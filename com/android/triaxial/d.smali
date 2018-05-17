.class public Lcom/android/triaxial/d;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Lcom/android/common/image3d/m;


# instance fields
.field private aIU:I

.field private aIV:J

.field private aIW:Z

.field private aIX:Z

.field private aIY:Ljava/lang/String;

.field private aIZ:I

.field private aJa:Landroid/widget/TextView;

.field private aJb:Ljava/lang/String;

.field private aJc:Ljava/lang/String;

.field private aJd:Z

.field private aJe:I

.field private aJf:Landroid/widget/ProgressBar;

.field private aJg:Landroid/widget/RelativeLayout;

.field private aJh:I

.field private aJi:Lcom/android/common/ui/ZtemtShutterButton;

.field private aJj:Lcom/android/common/image3d/l;

.field private aJk:Lcom/android/common/ui/RotateLayout;

.field private aJl:Lcom/android/common/image3d/h;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 75
    iput-boolean v3, p0, Lcom/android/triaxial/d;->aJd:Z

    .line 77
    iput-object v2, p0, Lcom/android/triaxial/d;->aJj:Lcom/android/common/image3d/l;

    .line 78
    iput-object v2, p0, Lcom/android/triaxial/d;->aJl:Lcom/android/common/image3d/h;

    .line 79
    iput v3, p0, Lcom/android/triaxial/d;->aIU:I

    .line 81
    iput-object v2, p0, Lcom/android/triaxial/d;->aJk:Lcom/android/common/ui/RotateLayout;

    .line 86
    iput-object v2, p0, Lcom/android/triaxial/d;->aJg:Landroid/widget/RelativeLayout;

    .line 87
    iput-object v2, p0, Lcom/android/triaxial/d;->aJa:Landroid/widget/TextView;

    .line 88
    iput-object v2, p0, Lcom/android/triaxial/d;->aJf:Landroid/widget/ProgressBar;

    .line 89
    iput v3, p0, Lcom/android/triaxial/d;->aJh:I

    .line 91
    iput-boolean v3, p0, Lcom/android/triaxial/d;->aIX:Z

    .line 92
    iput-boolean v3, p0, Lcom/android/triaxial/d;->aIW:Z

    .line 94
    iput-object v2, p0, Lcom/android/triaxial/d;->aJb:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/android/triaxial/d;->aJc:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/android/triaxial/d;->aIY:Ljava/lang/String;

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/triaxial/d;->aIV:J

    .line 98
    iput v3, p0, Lcom/android/triaxial/d;->aIZ:I

    .line 100
    iput-object v2, p0, Lcom/android/triaxial/d;->aJi:Lcom/android/common/ui/ZtemtShutterButton;

    .line 105
    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 75
    iput-boolean v3, p0, Lcom/android/triaxial/d;->aJd:Z

    .line 77
    iput-object v2, p0, Lcom/android/triaxial/d;->aJj:Lcom/android/common/image3d/l;

    .line 78
    iput-object v2, p0, Lcom/android/triaxial/d;->aJl:Lcom/android/common/image3d/h;

    .line 79
    iput v3, p0, Lcom/android/triaxial/d;->aIU:I

    .line 81
    iput-object v2, p0, Lcom/android/triaxial/d;->aJk:Lcom/android/common/ui/RotateLayout;

    .line 86
    iput-object v2, p0, Lcom/android/triaxial/d;->aJg:Landroid/widget/RelativeLayout;

    .line 87
    iput-object v2, p0, Lcom/android/triaxial/d;->aJa:Landroid/widget/TextView;

    .line 88
    iput-object v2, p0, Lcom/android/triaxial/d;->aJf:Landroid/widget/ProgressBar;

    .line 89
    iput v3, p0, Lcom/android/triaxial/d;->aJh:I

    .line 91
    iput-boolean v3, p0, Lcom/android/triaxial/d;->aIX:Z

    .line 92
    iput-boolean v3, p0, Lcom/android/triaxial/d;->aIW:Z

    .line 94
    iput-object v2, p0, Lcom/android/triaxial/d;->aJb:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/android/triaxial/d;->aJc:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/android/triaxial/d;->aIY:Ljava/lang/String;

    .line 97
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/triaxial/d;->aIV:J

    .line 98
    iput v3, p0, Lcom/android/triaxial/d;->aIZ:I

    .line 100
    iput-object v2, p0, Lcom/android/triaxial/d;->aJi:Lcom/android/common/ui/ZtemtShutterButton;

    .line 102
    return-void
.end method

.method public static aYb()Lcom/android/triaxial/d;
    .registers 2

    .prologue
    .line 155
    new-instance v0, Lcom/android/triaxial/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/triaxial/d;-><init>(I)V

    .line 156
    return-object v0
.end method

.method private aYd()Landroid/content/ContentValues;
    .registers 7

    .prologue
    .line 365
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 366
    const-string/jumbo v1, "_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/triaxial/d;->aJc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/triaxial/d;->aIY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/android/triaxial/d;->aIY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v1, "_display_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/triaxial/d;->aIY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v1, "orientation"

    iget v2, p0, Lcom/android/triaxial/d;->aIZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 372
    const-string/jumbo v1, "datetaken"

    iget-wide v2, p0, Lcom/android/triaxial/d;->aIV:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 373
    const-string/jumbo v1, "width"

    iget-object v2, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string/jumbo v1, "height"

    iget-object v2, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    iget-object v1, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v1

    .line 376
    if-eqz v1, :cond_c9

    .line 377
    const-string/jumbo v2, "latitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 378
    const-string/jumbo v2, "longitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 380
    :cond_c9
    return-object v0
.end method

.method private aYe(Z)V
    .registers 2

    .prologue
    .line 198
    if-eqz p1, :cond_6

    .line 199
    invoke-virtual {p0}, Lcom/android/triaxial/d;->aly()V

    .line 197
    :goto_5
    return-void

    .line 201
    :cond_6
    invoke-virtual {p0}, Lcom/android/triaxial/d;->alz()V

    goto :goto_5
.end method

.method private aYf(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 350
    const v0, 0x7f1001eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/triaxial/d;->aJk:Lcom/android/common/ui/RotateLayout;

    .line 355
    const v0, 0x7f1001ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/triaxial/d;->aJg:Landroid/widget/RelativeLayout;

    .line 356
    const v0, 0x7f1001e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/triaxial/d;->aJf:Landroid/widget/ProgressBar;

    .line 357
    iget-object v0, p0, Lcom/android/triaxial/d;->aJf:Landroid/widget/ProgressBar;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 358
    const v0, 0x7f1001e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/triaxial/d;->aJa:Landroid/widget/TextView;

    .line 359
    const v0, 0x7f1001e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/triaxial/d;->aJi:Lcom/android/common/ui/ZtemtShutterButton;

    .line 360
    iget-object v0, p0, Lcom/android/triaxial/d;->aJi:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {p0}, Lcom/android/triaxial/d;->alw()Lcom/android/common/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/h/l;->acb()Lcom/android/common/h/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->xa(Lcom/android/common/ui/u;)V

    .line 361
    iget-object v0, p0, Lcom/android/triaxial/d;->aJi:Lcom/android/common/ui/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 349
    return-void
.end method

.method private aYg()Landroid/util/SparseArray;
    .registers 4

    .prologue
    .line 384
    const-string/jumbo v0, "image3d"

    .line 385
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 386
    sget v2, Lcom/android/common/exif/o;->PI:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 387
    sget v0, Lcom/android/common/exif/o;->PS:I

    iget v2, p0, Lcom/android/triaxial/d;->aIZ:I

    invoke-static {v2}, Lcom/android/common/exif/o;->QR(I)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    return-object v1
.end method

.method private declared-synchronized start()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 206
    :try_start_1
    invoke-virtual {p0}, Lcom/android/triaxial/d;->alr()V

    .line 207
    iget-object v0, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/triaxial/d;->aJi:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_14

    .line 209
    iget-object v0, p0, Lcom/android/triaxial/d;->aJi:Lcom/android/common/ui/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 211
    :cond_14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/triaxial/d;->aYe(Z)V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/triaxial/d;->aIW:Z

    .line 213
    iget-boolean v0, p0, Lcom/android/triaxial/d;->aIX:Z

    if-nez v0, :cond_e7

    .line 214
    iget-object v0, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 215
    iget-object v0, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    iget-object v1, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pC()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/h;->aoU(II)I

    move-result v0

    iput v0, p0, Lcom/android/triaxial/d;->aIZ:I

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/triaxial/d;->aIX:Z

    .line 217
    iget-object v0, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    iget-object v1, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/common/appService/k;->jP(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 218
    iget-object v0, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    .line 219
    iget-object v1, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    .line 218
    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/triaxial/d;->aJe:I

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/triaxial/d;->aIU:I

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/triaxial/d;->aIV:J

    .line 223
    iget-object v0, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pF()I

    move-result v0

    invoke-static {v0}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/triaxial/d;->aJc:Ljava/lang/String;

    .line 224
    iget-wide v0, p0, Lcom/android/triaxial/d;->aIV:J

    invoke-static {v0, v1}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/triaxial/d;->aIY:Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/triaxial/d;->aJc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/triaxial/d;->aIY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/triaxial/d;->aJb:Ljava/lang/String;

    .line 226
    new-instance v0, Lcom/android/common/image3d/h;

    invoke-direct {v0}, Lcom/android/common/image3d/h;-><init>()V

    iput-object v0, p0, Lcom/android/triaxial/d;->aJl:Lcom/android/common/image3d/h;

    .line 227
    iget-object v0, p0, Lcom/android/triaxial/d;->aJl:Lcom/android/common/image3d/h;

    iget-object v1, p0, Lcom/android/triaxial/d;->aJb:Ljava/lang/String;

    .line 228
    iget-object v2, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    .line 229
    iget-object v3, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    .line 227
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/common/image3d/h;->bD(Ljava/lang/String;II)V

    .line 230
    iget-object v0, p0, Lcom/android/triaxial/d;->aJl:Lcom/android/common/image3d/h;

    invoke-virtual {v0}, Lcom/android/common/image3d/h;->start()V

    .line 231
    iget-object v0, p0, Lcom/android/triaxial/d;->aJj:Lcom/android/common/image3d/l;

    invoke-virtual {v0}, Lcom/android/common/image3d/l;->start()V

    .line 232
    iget-object v0, p0, Lcom/android/triaxial/d;->aJf:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/triaxial/d;->aIU:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 233
    iget-object v0, p0, Lcom/android/triaxial/d;->aJg:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_e7
    .catchall {:try_start_1 .. :try_end_e7} :catchall_e9

    :cond_e7
    monitor-exit p0

    .line 205
    return-void

    :catchall_e9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stop()V
    .registers 10

    .prologue
    monitor-enter p0

    .line 238
    :try_start_1
    invoke-virtual {p0}, Lcom/android/triaxial/d;->alq()V

    .line 239
    iget-object v0, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/triaxial/d;->aJi:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_15

    .line 241
    iget-object v0, p0, Lcom/android/triaxial/d;->aJi:Lcom/android/common/ui/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 243
    :cond_15
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/triaxial/d;->aYe(Z)V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/triaxial/d;->aIW:Z

    .line 245
    iget-boolean v0, p0, Lcom/android/triaxial/d;->aIX:Z

    if-eqz v0, :cond_db

    .line 246
    iget-object v0, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 247
    iget-object v0, p0, Lcom/android/triaxial/d;->aJj:Lcom/android/common/image3d/l;

    invoke-virtual {v0}, Lcom/android/common/image3d/l;->stop()V

    .line 248
    iget-object v0, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/appService/k;->jK(Landroid/hardware/Camera$PreviewCallback;)V

    .line 249
    iget-object v0, p0, Lcom/android/triaxial/d;->aJl:Lcom/android/common/image3d/h;

    iget v1, p0, Lcom/android/triaxial/d;->aIZ:I

    invoke-virtual {v0, v1}, Lcom/android/common/image3d/h;->bE(I)V

    .line 250
    iget-object v0, p0, Lcom/android/triaxial/d;->aJl:Lcom/android/common/image3d/h;

    iget-object v1, p0, Lcom/android/triaxial/d;->aJj:Lcom/android/common/image3d/l;

    invoke-virtual {v1}, Lcom/android/common/image3d/l;->bV()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/image3d/h;->bF(I)V

    .line 251
    iget-object v0, p0, Lcom/android/triaxial/d;->aJl:Lcom/android/common/image3d/h;

    iget-object v1, p0, Lcom/android/triaxial/d;->aJj:Lcom/android/common/image3d/l;

    invoke-virtual {v1}, Lcom/android/common/image3d/l;->bW()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/common/image3d/h;->bG(I)V

    .line 252
    iget-object v0, p0, Lcom/android/triaxial/d;->aJl:Lcom/android/common/image3d/h;

    invoke-virtual {v0}, Lcom/android/common/image3d/h;->stop()V

    .line 253
    iget-object v0, p0, Lcom/android/triaxial/d;->aJl:Lcom/android/common/image3d/h;

    invoke-virtual {v0}, Lcom/android/common/image3d/h;->release()V

    .line 258
    iget-object v0, p0, Lcom/android/triaxial/d;->aJa:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/android/triaxial/d;->aJg:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/android/triaxial/d;->aJk:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 262
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/triaxial/d;->aJb:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_7a
    .catchall {:try_start_1 .. :try_end_7a} :catchall_e2

    move-result v0

    if-eqz v0, :cond_d8

    .line 265
    :try_start_7d
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/triaxial/d;->aJb:Ljava/lang/String;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v2, v1, [B

    .line 267
    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 268
    new-instance v0, Lcom/android/common/b/c;

    iget-object v1, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-direct {p0}, Lcom/android/triaxial/d;->aYg()Landroid/util/SparseArray;

    move-result-object v3

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/triaxial/d;->aJc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/triaxial/d;->aIY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/triaxial/d;->aYd()Landroid/content/ContentValues;

    move-result-object v6

    iget v7, p0, Lcom/android/triaxial/d;->aIZ:I

    const/4 v8, 0x0

    .line 268
    invoke-direct/range {v0 .. v8}, Lcom/android/common/b/c;-><init>(Lcom/android/common/appService/W;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 270
    iget-object v1, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    :try_end_d8
    .catch Ljava/io/FileNotFoundException; {:try_start_7d .. :try_end_d8} :catch_e5
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_d8} :catch_dd
    .catchall {:try_start_7d .. :try_end_d8} :catchall_e2

    .line 280
    :cond_d8
    :goto_d8
    const/4 v0, 0x0

    :try_start_d9
    iput-boolean v0, p0, Lcom/android/triaxial/d;->aIX:Z
    :try_end_db
    .catchall {:try_start_d9 .. :try_end_db} :catchall_e2

    :cond_db
    monitor-exit p0

    .line 237
    return-void

    .line 274
    :catch_dd
    move-exception v0

    .line 276
    :try_start_de
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_e2

    goto :goto_d8

    :catchall_e2
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :catch_e5
    move-exception v0

    .line 273
    :try_start_e6
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_e2

    goto :goto_d8
.end method


# virtual methods
.method public aYc()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/triaxial/d;->aJi:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_14

    .line 402
    iget-object v0, p0, Lcom/android/triaxial/d;->aJi:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 403
    iget-object v0, p0, Lcom/android/triaxial/d;->aJi:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    .line 404
    const/4 v0, 0x1

    return v0

    .line 406
    :cond_14
    return v1
.end method

.method protected alq()V
    .registers 1

    .prologue
    .line 392
    invoke-super {p0}, Lcom/android/common/o/l;->alq()V

    .line 391
    return-void
.end method

.method protected alr()V
    .registers 1

    .prologue
    .line 397
    invoke-super {p0}, Lcom/android/common/o/l;->alr()V

    .line 396
    return-void
.end method

.method protected aly()V
    .registers 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/common/o/l;->aly()V

    .line 194
    iget-object v0, p0, Lcom/android/triaxial/d;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 192
    return-void
.end method

.method protected alz()V
    .registers 5

    .prologue
    .line 182
    invoke-super {p0}, Lcom/android/common/o/l;->alz()V

    .line 183
    iget-object v0, p0, Lcom/android/triaxial/d;->adx:Lcom/android/common/camerastate/a;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/common/camerastate/b;

    .line 184
    sget-object v2, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 185
    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 186
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 187
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 183
    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amM([Lcom/android/common/camerastate/b;)V

    .line 181
    return-void
.end method

.method public ca(I)V
    .registers 4

    .prologue
    .line 311
    packed-switch p1, :pswitch_data_16

    .line 309
    :goto_3
    :pswitch_3
    return-void

    .line 320
    :pswitch_4
    iget-object v0, p0, Lcom/android/triaxial/d;->aJa:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/triaxial/d;->aJk:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    goto :goto_3

    .line 345
    :pswitch_12
    invoke-direct {p0}, Lcom/android/triaxial/d;->stop()V

    goto :goto_3

    .line 311
    :pswitch_data_16
    .packed-switch -0x1
        :pswitch_12
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public cb()V
    .registers 3

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/triaxial/d;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget v1, p0, Lcom/android/triaxial/d;->aJe:I

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KW([B)V

    .line 303
    return-void
.end method

.method public nD()Z
    .registers 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/triaxial/d;->aIW:Z

    if-nez v0, :cond_9

    .line 162
    invoke-direct {p0}, Lcom/android/triaxial/d;->start()V

    .line 166
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_9
    invoke-direct {p0}, Lcom/android/triaxial/d;->stop()V

    goto :goto_7
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/triaxial/d;->aIX:Z

    if-eqz v0, :cond_9

    .line 173
    invoke-direct {p0}, Lcom/android/triaxial/d;->stop()V

    .line 174
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_9
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 125
    iget-boolean v0, p0, Lcom/android/triaxial/d;->adu:Z

    if-eqz v0, :cond_8

    .line 126
    return-void

    .line 123
    :cond_8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 113
    iget-boolean v0, p0, Lcom/android/triaxial/d;->adu:Z

    if-eqz v0, :cond_9

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 117
    :cond_9
    const v0, 0x7f04009e

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 118
    invoke-direct {p0, v0}, Lcom/android/triaxial/d;->aYf(Landroid/view/View;)V

    .line 119
    return-object v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/triaxial/d;->adu:Z

    if-eqz v0, :cond_8

    .line 147
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 148
    return-void

    .line 150
    :cond_8
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 151
    invoke-direct {p0}, Lcom/android/triaxial/d;->stop()V

    .line 145
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 7

    .prologue
    .line 286
    array-length v0, p1

    iget v1, p0, Lcom/android/triaxial/d;->aJe:I

    if-ne v0, v1, :cond_2f

    .line 287
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 288
    array-length v1, p1

    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 289
    const/4 v1, 0x0

    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 291
    iget v1, p0, Lcom/android/triaxial/d;->aIU:I

    const v2, 0x80e8

    mul-int/2addr v1, v2

    int-to-long v2, v1

    iput-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 292
    iget v1, p0, Lcom/android/triaxial/d;->aIU:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/triaxial/d;->aIU:I

    .line 293
    iget-object v1, p0, Lcom/android/triaxial/d;->aJl:Lcom/android/common/image3d/h;

    const/16 v2, 0x1f40

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/common/image3d/h;->bH(Landroid/media/MediaCodec$BufferInfo;[BI)V

    .line 294
    iget v0, p0, Lcom/android/triaxial/d;->aIU:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_30

    .line 295
    invoke-direct {p0}, Lcom/android/triaxial/d;->stop()V

    .line 285
    :cond_2f
    :goto_2f
    return-void

    .line 297
    :cond_30
    iget-object v0, p0, Lcom/android/triaxial/d;->aJf:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/triaxial/d;->aIU:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2f
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 133
    iget-boolean v0, p0, Lcom/android/triaxial/d;->adu:Z

    if-eqz v0, :cond_8

    .line 134
    return-void

    .line 136
    :cond_8
    iget-object v0, p0, Lcom/android/triaxial/d;->aJj:Lcom/android/common/image3d/l;

    if-nez v0, :cond_22

    .line 137
    new-instance v0, Lcom/android/common/image3d/l;

    iget-object v1, p0, Lcom/android/triaxial/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/image3d/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/triaxial/d;->aJj:Lcom/android/common/image3d/l;

    .line 139
    iget-object v0, p0, Lcom/android/triaxial/d;->aJj:Lcom/android/common/image3d/l;

    invoke-virtual {v0, p0}, Lcom/android/common/image3d/l;->bU(Lcom/android/common/image3d/m;)V

    .line 141
    :cond_22
    invoke-virtual {p0}, Lcom/android/triaxial/d;->alq()V

    .line 131
    return-void
.end method
