.class public Lcom/android/common/cameradevice/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static NA:[Lcom/android/common/cameradevice/n;

.field private static NB:[Lcom/android/common/cameradevice/h;

.field private static NC:Lcom/android/common/cameradevice/m;

.field private static Nv:[Lcom/android/common/cameradevice/j;

.field private static Nw:[Landroid/hardware/Camera$CameraInfo;


# instance fields
.field private Ns:I

.field private Nt:I

.field private final Nu:[Landroid/hardware/Camera$CameraInfo;

.field private Nx:I

.field private final Ny:I

.field private Nz:I


# direct methods
.method private constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v4, p0, Lcom/android/common/cameradevice/m;->Ns:I

    .line 54
    iput v4, p0, Lcom/android/common/cameradevice/m;->Nt:I

    .line 55
    iput v4, p0, Lcom/android/common/cameradevice/m;->Nx:I

    .line 56
    iput v4, p0, Lcom/android/common/cameradevice/m;->Nz:I

    .line 80
    sget-object v0, Lcom/android/common/cameradevice/m;->Nw:[Landroid/hardware/Camera$CameraInfo;

    if-eqz v0, :cond_45

    .line 81
    sget-object v0, Lcom/android/common/cameradevice/m;->Nw:[Landroid/hardware/Camera$CameraInfo;

    array-length v0, v0

    iput v0, p0, Lcom/android/common/cameradevice/m;->Ny:I

    .line 82
    sget-object v0, Lcom/android/common/cameradevice/m;->Nw:[Landroid/hardware/Camera$CameraInfo;

    iput-object v0, p0, Lcom/android/common/cameradevice/m;->Nu:[Landroid/hardware/Camera$CameraInfo;

    .line 92
    :cond_1c
    iget v0, p0, Lcom/android/common/cameradevice/m;->Ny:I

    new-array v0, v0, [Lcom/android/common/cameradevice/n;

    sput-object v0, Lcom/android/common/cameradevice/m;->NA:[Lcom/android/common/cameradevice/n;

    .line 93
    iget v0, p0, Lcom/android/common/cameradevice/m;->Ny:I

    new-array v0, v0, [Lcom/android/common/cameradevice/h;

    sput-object v0, Lcom/android/common/cameradevice/m;->NB:[Lcom/android/common/cameradevice/h;

    .line 96
    :goto_28
    iget v0, p0, Lcom/android/common/cameradevice/m;->Ny:I

    if-ge v1, v0, :cond_ab

    .line 97
    iget v0, p0, Lcom/android/common/cameradevice/m;->Ns:I

    if-ne v0, v4, :cond_69

    iget-object v0, p0, Lcom/android/common/cameradevice/m;->Nu:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, v1

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v0, :cond_69

    .line 98
    iput v1, p0, Lcom/android/common/cameradevice/m;->Ns:I

    .line 109
    :cond_3a
    :goto_3a
    sget-object v0, Lcom/android/common/cameradevice/m;->NA:[Lcom/android/common/cameradevice/n;

    aput-object v5, v0, v1

    .line 110
    sget-object v0, Lcom/android/common/cameradevice/m;->NB:[Lcom/android/common/cameradevice/h;

    aput-object v5, v0, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 84
    :cond_45
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/common/cameradevice/m;->Ny:I

    .line 85
    iget v0, p0, Lcom/android/common/cameradevice/m;->Ny:I

    new-array v0, v0, [Landroid/hardware/Camera$CameraInfo;

    iput-object v0, p0, Lcom/android/common/cameradevice/m;->Nu:[Landroid/hardware/Camera$CameraInfo;

    move v0, v1

    .line 86
    :goto_52
    iget v2, p0, Lcom/android/common/cameradevice/m;->Ny:I

    if-ge v0, v2, :cond_1c

    .line 87
    iget-object v2, p0, Lcom/android/common/cameradevice/m;->Nu:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v0

    .line 88
    iget-object v2, p0, Lcom/android/common/cameradevice/m;->Nu:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v0

    invoke-static {v0, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 99
    :cond_69
    iget v0, p0, Lcom/android/common/cameradevice/m;->Nt:I

    if-ne v0, v4, :cond_78

    iget-object v0, p0, Lcom/android/common/cameradevice/m;->Nu:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, v1

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v6, :cond_78

    .line 100
    iput v1, p0, Lcom/android/common/cameradevice/m;->Nt:I

    goto :goto_3a

    .line 101
    :cond_78
    iget v0, p0, Lcom/android/common/cameradevice/m;->Nx:I

    if-ne v0, v4, :cond_88

    iget-object v0, p0, Lcom/android/common/cameradevice/m;->Nu:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, v1

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_88

    .line 104
    :cond_85
    iput v1, p0, Lcom/android/common/cameradevice/m;->Nx:I

    goto :goto_3a

    .line 102
    :cond_88
    iget v0, p0, Lcom/android/common/cameradevice/m;->Nx:I

    if-ne v0, v4, :cond_98

    iget v0, p0, Lcom/android/common/cameradevice/m;->Ns:I

    if-eq v0, v4, :cond_98

    iget-object v0, p0, Lcom/android/common/cameradevice/m;->Nu:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, v1

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v0, :cond_85

    .line 105
    :cond_98
    iget v0, p0, Lcom/android/common/cameradevice/m;->Nz:I

    if-ne v0, v4, :cond_3a

    iget-object v0, p0, Lcom/android/common/cameradevice/m;->Nu:[Landroid/hardware/Camera$CameraInfo;

    aget-object v0, v0, v1

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v6, :cond_3a

    iget v0, p0, Lcom/android/common/cameradevice/m;->Nt:I

    if-eq v0, v4, :cond_3a

    .line 107
    iput v1, p0, Lcom/android/common/cameradevice/m;->Nz:I

    goto :goto_3a

    .line 79
    :cond_ab
    return-void
.end method

.method public static declared-synchronized MR()Lcom/android/common/cameradevice/m;
    .registers 2

    .prologue
    const-class v1, Lcom/android/common/cameradevice/m;

    monitor-enter v1

    .line 67
    :try_start_3
    sget-object v0, Lcom/android/common/cameradevice/m;->NC:Lcom/android/common/cameradevice/m;

    if-nez v0, :cond_e

    .line 68
    new-instance v0, Lcom/android/common/cameradevice/m;

    invoke-direct {v0}, Lcom/android/common/cameradevice/m;-><init>()V

    sput-object v0, Lcom/android/common/cameradevice/m;->NC:Lcom/android/common/cameradevice/m;

    .line 70
    :cond_e
    sget-object v0, Lcom/android/common/cameradevice/m;->NC:Lcom/android/common/cameradevice/m;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private MZ(I)Lcom/android/common/cameradevice/n;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 150
    sget-object v0, Lcom/android/common/cameradevice/m;->NB:[Lcom/android/common/cameradevice/h;

    aget-object v0, v0, p1

    if-nez v0, :cond_10

    .line 151
    sget-object v0, Lcom/android/common/cameradevice/m;->NB:[Lcom/android/common/cameradevice/h;

    new-instance v1, Lcom/android/common/cameradevice/h;

    invoke-direct {v1, p1}, Lcom/android/common/cameradevice/h;-><init>(I)V

    aput-object v1, v0, p1

    .line 153
    :cond_10
    sget-object v0, Lcom/android/common/cameradevice/m;->NA:[Lcom/android/common/cameradevice/n;

    aget-object v0, v0, p1

    if-nez v0, :cond_23

    .line 154
    sget-object v0, Lcom/android/common/cameradevice/m;->NA:[Lcom/android/common/cameradevice/n;

    new-instance v1, Lcom/android/common/cameradevice/n;

    sget-object v2, Lcom/android/common/cameradevice/m;->NB:[Lcom/android/common/cameradevice/h;

    aget-object v2, v2, p1

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/common/cameradevice/n;-><init>(Lcom/android/common/cameradevice/m;ILcom/android/common/cameradevice/h;Lcom/android/common/cameradevice/n;)V

    aput-object v1, v0, p1

    .line 157
    :cond_23
    sget-object v0, Lcom/android/common/cameradevice/m;->NA:[Lcom/android/common/cameradevice/n;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public MS()[Landroid/hardware/Camera$CameraInfo;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/common/cameradevice/m;->Nu:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public MT(I)Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 123
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/common/cameradevice/m;->MZ(I)Lcom/android/common/cameradevice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/n;->Ne()Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method public MU()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/android/common/cameradevice/m;->Ny:I

    return v0
.end method

.method public MV()I
    .registers 2

    .prologue
    .line 195
    iget v0, p0, Lcom/android/common/cameradevice/m;->Ns:I

    return v0
.end method

.method public MW()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/android/common/cameradevice/m;->Nt:I

    return v0
.end method

.method public declared-synchronized MX(I)Lcom/android/common/cameradevice/j;
    .registers 5

    .prologue
    monitor-enter p0

    .line 138
    :try_start_1
    const-string/jumbo v0, "CameraHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CameraProxy open. mCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v0, -0x1

    if-eq p1, v0, :cond_37

    const/4 v0, 0x1

    :goto_1f
    invoke-static {v0}, Lcom/android/common/h;->apf(Z)V

    .line 141
    sget-object v0, Lcom/android/common/cameradevice/m;->Nw:[Landroid/hardware/Camera$CameraInfo;

    if-nez v0, :cond_39

    .line 142
    invoke-direct {p0, p1}, Lcom/android/common/cameradevice/m;->MZ(I)Lcom/android/common/cameradevice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/n;->Ni()Lcom/android/common/cameradevice/j;

    .line 146
    :goto_2d
    invoke-direct {p0, p1}, Lcom/android/common/cameradevice/m;->MZ(I)Lcom/android/common/cameradevice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/n;->Ne()Lcom/android/common/cameradevice/j;
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_45

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 139
    :cond_37
    const/4 v0, 0x0

    goto :goto_1f

    .line 144
    :cond_39
    :try_start_39
    invoke-direct {p0, p1}, Lcom/android/common/cameradevice/m;->MZ(I)Lcom/android/common/cameradevice/n;

    move-result-object v0

    sget-object v1, Lcom/android/common/cameradevice/m;->Nv:[Lcom/android/common/cameradevice/j;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/n;->Ng(Lcom/android/common/cameradevice/j;)V
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_45

    goto :goto_2d

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public MY()I
    .registers 2

    .prologue
    .line 203
    iget v0, p0, Lcom/android/common/cameradevice/m;->Nx:I

    return v0
.end method

.method public Na(I)Lcom/android/common/cameradevice/p;
    .registers 3

    .prologue
    .line 130
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/common/cameradevice/m;->MZ(I)Lcom/android/common/cameradevice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/n;->Nf()Lcom/android/common/cameradevice/p;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized Nb(I)V
    .registers 3

    .prologue
    monitor-enter p0

    .line 191
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/common/cameradevice/m;->MZ(I)Lcom/android/common/cameradevice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/n;->Nh()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    .line 185
    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public Nc(I)V
    .registers 5

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/android/common/cameradevice/m;->MZ(I)Lcom/android/common/cameradevice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/n;->Ne()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 170
    const-string/jumbo v0, "CameraHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CameraHolder release cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/android/common/cameradevice/m;->MZ(I)Lcom/android/common/cameradevice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/n;->release()V

    .line 168
    :cond_2b
    return-void
.end method

.method public Nd(I)Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/common/cameradevice/m;->MZ(I)Lcom/android/common/cameradevice/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/n;->Nj()Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .registers 5

    .prologue
    .line 177
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/common/cameradevice/m;->NA:[Lcom/android/common/cameradevice/n;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 178
    invoke-direct {p0, v0}, Lcom/android/common/cameradevice/m;->MZ(I)Lcom/android/common/cameradevice/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/n;->Ne()Lcom/android/common/cameradevice/j;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 179
    const-string/jumbo v1, "CameraHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CameraHolder release cameraId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, v0}, Lcom/android/common/cameradevice/m;->MZ(I)Lcom/android/common/cameradevice/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/n;->release()V

    .line 177
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_34
    return-void
.end method
