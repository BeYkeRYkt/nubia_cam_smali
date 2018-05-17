.class public Lcom/android/d/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private aFN:Lcom/android/common/appService/W;

.field private aFO:Lcn/nubia/bigAperture/BigAperAlgorithm;

.field private aFP:Z

.field private aFQ:Lcn/nubia/bigAperture/f;

.field private aFR:I

.field private aFS:Lcom/android/d/g;

.field private aFT:I

.field private aFU:Landroid/os/Handler;

.field private aFV:I

.field private aFW:I

.field private aFX:Lcom/nubia/camera/common/Native/BufferCell;

.field private aFY:I

.field private aFZ:Z

.field private aGa:I

.field private aGb:I

.field private aGc:I

.field private aGd:Lcom/nubia/camera/common/Native/BufferCell;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/d/g;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 54
    const-string/jumbo v0, "Photo3DThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 31
    iput-boolean v1, p0, Lcom/android/d/f;->aFZ:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/d/f;->aFP:Z

    .line 223
    new-instance v0, Lcom/android/d/l;

    invoke-direct {v0, p0}, Lcom/android/d/l;-><init>(Lcom/android/d/f;)V

    iput-object v0, p0, Lcom/android/d/f;->aFU:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcn/nubia/bigAperture/BigAperAlgorithm;

    invoke-direct {v0}, Lcn/nubia/bigAperture/BigAperAlgorithm;-><init>()V

    iput-object v0, p0, Lcom/android/d/f;->aFO:Lcn/nubia/bigAperture/BigAperAlgorithm;

    .line 56
    iput-object p1, p0, Lcom/android/d/f;->aFN:Lcom/android/common/appService/W;

    .line 57
    iput-object p2, p0, Lcom/android/d/f;->aFS:Lcom/android/d/g;

    .line 53
    return-void
.end method

.method private aUH(Ljava/lang/String;Ljava/lang/String;IIII)Landroid/content/ContentValues;
    .registers 13

    .prologue
    .line 193
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 194
    const-string/jumbo v1, "datetaken"

    iget-object v2, p0, Lcom/android/d/f;->aFN:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pS()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string/jumbo v1, "_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v1, "_display_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v1, "orientation"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string/jumbo v1, "_size"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    iget-object v1, p0, Lcom/android/d/f;->aFN:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_84

    .line 204
    const-string/jumbo v2, "latitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 205
    const-string/jumbo v2, "longitude"

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 207
    :cond_84
    return-object v0
.end method

.method private aUK()Landroid/util/SparseArray;
    .registers 4

    .prologue
    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 186
    sget v1, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    sget v1, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    return-object v0
.end method

.method static synthetic aUL(Lcom/android/d/f;)Lcom/android/d/g;
    .registers 2

    iget-object v0, p0, Lcom/android/d/f;->aFS:Lcom/android/d/g;

    return-object v0
.end method

.method private release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/d/f;->aFX:Lcom/nubia/camera/common/Native/BufferCell;

    if-eqz v0, :cond_c

    .line 212
    iget-object v0, p0, Lcom/android/d/f;->aFX:Lcom/nubia/camera/common/Native/BufferCell;

    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 213
    iput-object v1, p0, Lcom/android/d/f;->aFX:Lcom/nubia/camera/common/Native/BufferCell;

    .line 215
    :cond_c
    iget-object v0, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    if-eqz v0, :cond_17

    .line 216
    iget-object v0, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 217
    iput-object v1, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    .line 210
    :cond_17
    return-void
.end method


# virtual methods
.method public declared-synchronized aUF([BIIIII)V
    .registers 10

    .prologue
    monitor-enter p0

    .line 62
    :try_start_1
    iget-boolean v0, p0, Lcom/android/d/f;->aFZ:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/d/f;->aFP:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/d/f;->aFX:Lcom/nubia/camera/common/Native/BufferCell;

    if-eqz v0, :cond_45

    .line 63
    :cond_d
    const-string/jumbo v0, "Photo3DThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMainCameraYUV fail: mStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/d/f;->aFZ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mBusy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/d/f;->aFP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/d/f;->aFX:Lcom/nubia/camera/common/Native/BufferCell;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_5b

    monitor-exit p0

    .line 64
    return-void

    .line 66
    :cond_45
    :try_start_45
    new-instance v0, Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {v0, p1}, Lcom/nubia/camera/common/Native/BufferCell;-><init>([B)V

    iput-object v0, p0, Lcom/android/d/f;->aFX:Lcom/nubia/camera/common/Native/BufferCell;

    .line 67
    iput p2, p0, Lcom/android/d/f;->aFW:I

    .line 68
    iput p3, p0, Lcom/android/d/f;->aFV:I

    .line 69
    iput p4, p0, Lcom/android/d/f;->aFT:I

    .line 70
    iput p5, p0, Lcom/android/d/f;->aFR:I

    .line 71
    iput p6, p0, Lcom/android/d/f;->aFY:I

    .line 72
    invoke-virtual {p0}, Lcom/android/d/f;->notify()V
    :try_end_59
    .catchall {:try_start_45 .. :try_end_59} :catchall_5b

    monitor-exit p0

    .line 61
    return-void

    :catchall_5b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aUG([BIIILcn/nubia/bigAperture/f;)V
    .registers 9

    .prologue
    monitor-enter p0

    .line 76
    :try_start_1
    iget-boolean v0, p0, Lcom/android/d/f;->aFZ:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/d/f;->aFP:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    if-eqz v0, :cond_45

    .line 77
    :cond_d
    const-string/jumbo v0, "Photo3DThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSubCameraYUV fail: mStop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/d/f;->aFZ:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mBusy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/d/f;->aFP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_59

    monitor-exit p0

    .line 78
    return-void

    .line 80
    :cond_45
    :try_start_45
    new-instance v0, Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {v0, p1}, Lcom/nubia/camera/common/Native/BufferCell;-><init>([B)V

    iput-object v0, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    .line 81
    iput p2, p0, Lcom/android/d/f;->aGc:I

    .line 82
    iput p3, p0, Lcom/android/d/f;->aGb:I

    .line 83
    iput p4, p0, Lcom/android/d/f;->aGa:I

    .line 84
    iput-object p5, p0, Lcom/android/d/f;->aFQ:Lcn/nubia/bigAperture/f;

    .line 85
    invoke-virtual {p0}, Lcom/android/d/f;->notify()V
    :try_end_57
    .catchall {:try_start_45 .. :try_end_57} :catchall_59

    monitor-exit p0

    .line 75
    return-void

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aUI()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 93
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/d/f;->aFZ:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/d/f;->notify()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 92
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aUJ()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 89
    :try_start_3
    iget-boolean v2, p0, Lcom/android/d/f;->aFP:Z

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/d/f;->aFX:Lcom/nubia/camera/common/Native/BufferCell;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    if-eqz v2, :cond_11

    :cond_f
    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    move v0, v1

    goto :goto_f

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 16

    .prologue
    .line 99
    const-string/jumbo v0, "Photo3DThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/d/f;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_25
    iget-boolean v0, p0, Lcom/android/d/f;->aFZ:Z

    if-nez v0, :cond_218

    .line 101
    monitor-enter p0

    .line 102
    :try_start_2a
    iget-object v0, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    if-eqz v0, :cond_32

    .line 103
    iget-object v0, p0, Lcom/android/d/f;->aFX:Lcom/nubia/camera/common/Native/BufferCell;
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_3c

    if-nez v0, :cond_3f

    .line 105
    :cond_32
    :try_start_32
    invoke-virtual {p0}, Lcom/android/d/f;->wait()V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_37
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    :goto_35
    monitor-exit p0

    goto :goto_25

    .line 106
    :catch_37
    move-exception v0

    .line 107
    :try_start_38
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_35

    .line 101
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_3f
    const/4 v0, 0x1

    :try_start_40
    iput-boolean v0, p0, Lcom/android/d/f;->aFP:Z
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_3c

    monitor-exit p0

    .line 114
    iget-object v0, p0, Lcom/android/d/f;->aFU:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    iget-object v0, p0, Lcom/android/d/f;->aFQ:Lcn/nubia/bigAperture/f;

    if-eqz v0, :cond_df

    .line 117
    iget v0, p0, Lcom/android/d/f;->aGc:I

    iget-object v1, p0, Lcom/android/d/f;->aFQ:Lcn/nubia/bigAperture/f;

    invoke-virtual {v1}, Lcn/nubia/bigAperture/f;->bJq()I

    move-result v1

    if-ne v0, v1, :cond_61

    iget v0, p0, Lcom/android/d/f;->aGb:I

    iget-object v1, p0, Lcom/android/d/f;->aFQ:Lcn/nubia/bigAperture/f;

    invoke-virtual {v1}, Lcn/nubia/bigAperture/f;->bJr()I

    move-result v1

    if-eq v0, v1, :cond_df

    .line 118
    :cond_61
    const-string/jumbo v0, "Photo3DThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cropYUV E "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/d/f;->aGc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/d/f;->aGb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object v0

    iget v1, p0, Lcom/android/d/f;->aGc:I

    iget v2, p0, Lcom/android/d/f;->aGb:I

    iget-object v3, p0, Lcom/android/d/f;->aFQ:Lcn/nubia/bigAperture/f;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/bigAperture/a;->bIO([BIILcn/nubia/bigAperture/f;)[B

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    invoke-virtual {v1}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 121
    new-instance v1, Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {v1, v0}, Lcom/nubia/camera/common/Native/BufferCell;-><init>([B)V

    iput-object v1, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    .line 122
    iget-object v0, p0, Lcom/android/d/f;->aFQ:Lcn/nubia/bigAperture/f;

    invoke-virtual {v0}, Lcn/nubia/bigAperture/f;->bJq()I

    move-result v0

    iput v0, p0, Lcom/android/d/f;->aGc:I

    .line 123
    iget-object v0, p0, Lcom/android/d/f;->aFQ:Lcn/nubia/bigAperture/f;

    invoke-virtual {v0}, Lcn/nubia/bigAperture/f;->bJr()I

    move-result v0

    iput v0, p0, Lcom/android/d/f;->aGb:I

    .line 124
    const-string/jumbo v0, "Photo3DThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cropYUV X "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/d/f;->aGc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/d/f;->aGb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_df
    const-string/jumbo v0, "Photo3DThread"

    const-string/jumbo v1, "generateAltekDepth E"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/d/f;->aFO:Lcn/nubia/bigAperture/BigAperAlgorithm;

    .line 128
    iget-object v1, p0, Lcom/android/d/f;->aFX:Lcom/nubia/camera/common/Native/BufferCell;

    iget-object v2, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    .line 129
    iget v3, p0, Lcom/android/d/f;->aFW:I

    iget v4, p0, Lcom/android/d/f;->aFV:I

    .line 130
    iget v5, p0, Lcom/android/d/f;->aGc:I

    iget v6, p0, Lcom/android/d/f;->aGb:I

    .line 132
    iget v9, p0, Lcom/android/d/f;->aFT:I

    iget v10, p0, Lcom/android/d/f;->aFR:I

    iget v11, p0, Lcom/android/d/f;->aGa:I

    .line 131
    const/16 v7, 0x320

    const/16 v8, 0x258

    .line 127
    invoke-virtual/range {v0 .. v11}, Lcn/nubia/bigAperture/BigAperAlgorithm;->bJu(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;IIIIIIIII)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v4

    .line 133
    const-string/jumbo v0, "Photo3DThread"

    const-string/jumbo v1, "generateAltekDepth X"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/d/f;->aGd:Lcom/nubia/camera/common/Native/BufferCell;

    .line 137
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 138
    new-instance v9, Lcom/nubia/camera/common/Native/BufferCell;

    iget v0, p0, Lcom/android/d/f;->aFW:I

    iget v1, p0, Lcom/android/d/f;->aFV:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v9, v0}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(I)V

    .line 140
    const-string/jumbo v0, "Photo3DThread"

    const-string/jumbo v1, "generate3DPhoto E"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/d/f;->aFO:Lcn/nubia/bigAperture/BigAperAlgorithm;

    iget-object v1, p0, Lcom/android/d/f;->aFX:Lcom/nubia/camera/common/Native/BufferCell;

    iget v2, p0, Lcom/android/d/f;->aFW:I

    iget v3, p0, Lcom/android/d/f;->aFV:I

    .line 142
    iget v7, p0, Lcom/android/d/f;->aFY:I

    const/16 v5, 0x320

    const/16 v6, 0x258

    const/16 v8, 0xc8

    .line 141
    invoke-virtual/range {v0 .. v10}, Lcn/nubia/bigAperture/BigAperAlgorithm;->bJt(Lcom/nubia/camera/common/Native/BufferCell;IILcom/nubia/camera/common/Native/BufferCell;IIIILcom/nubia/camera/common/Native/BufferCell;[I)V

    .line 143
    const-string/jumbo v0, "Photo3DThread"

    const-string/jumbo v1, "generate3DPhoto X"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v4}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 147
    iget-object v0, p0, Lcom/android/d/f;->aFX:Lcom/nubia/camera/common/Native/BufferCell;

    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/d/f;->aFX:Lcom/nubia/camera/common/Native/BufferCell;

    .line 150
    iget-object v0, p0, Lcom/android/d/f;->aFN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Lq()I

    move-result v6

    .line 151
    new-instance v0, Landroid/graphics/YuvImage;

    invoke-virtual {v9}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object v1

    .line 152
    const/4 v2, 0x0

    aget v3, v10, v2

    const/4 v2, 0x1

    aget v4, v10, v2

    .line 151
    const/16 v2, 0x11

    .line 152
    const/4 v5, 0x0

    .line 151
    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 153
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v10, v2

    const/4 v3, 0x1

    aget v3, v10, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v6, v8}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 155
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 157
    invoke-virtual {v9}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 161
    sget-object v2, Lcom/android/common/appService/CameraMember;->jz:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    iget-object v3, p0, Lcom/android/d/f;->aFN:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pv()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/common/appService/CameraMember;->mf(II)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/d/f;->aFN:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pS()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 163
    const/4 v5, 0x0

    .line 164
    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    aget v4, v10, v4

    .line 165
    array-length v6, v0

    move-object v0, p0

    .line 164
    invoke-direct/range {v0 .. v6}, Lcom/android/d/f;->aUH(Ljava/lang/String;Ljava/lang/String;IIII)Landroid/content/ContentValues;

    move-result-object v12

    .line 167
    new-instance v6, Lcom/android/common/b/c;

    iget-object v7, p0, Lcom/android/d/f;->aFN:Lcom/android/common/appService/W;

    .line 168
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .line 169
    invoke-direct {p0}, Lcom/android/d/f;->aUK()Landroid/util/SparseArray;

    move-result-object v9

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 174
    const/4 v14, 0x0

    move-object v11, v2

    move v13, v5

    .line 167
    invoke-direct/range {v6 .. v14}, Lcom/android/common/b/c;-><init>(Lcom/android/common/appService/W;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 175
    iget-object v0, p0, Lcom/android/d/f;->aFN:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/d/f;->aFP:Z

    .line 178
    iget-object v0, p0, Lcom/android/d/f;->aFU:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_25

    .line 180
    :cond_218
    invoke-direct {p0}, Lcom/android/d/f;->release()V

    .line 181
    const-string/jumbo v0, "Photo3DThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/d/f;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method
