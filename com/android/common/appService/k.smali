.class public Lcom/android/common/appService/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hJ:[Landroid/hardware/Camera$PreviewCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MU()I

    move-result v0

    new-array v0, v0, [Landroid/hardware/Camera$PreviewCallback;

    .line 18
    iput-object v0, p0, Lcom/android/common/appService/k;->hJ:[Landroid/hardware/Camera$PreviewCallback;

    .line 16
    return-void
.end method

.method private jL(Landroid/hardware/Camera$PreviewCallback;)I
    .registers 4

    .prologue
    .line 93
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/common/appService/k;->hJ:[Landroid/hardware/Camera$PreviewCallback;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 94
    iget-object v1, p0, Lcom/android/common/appService/k;->hJ:[Landroid/hardware/Camera$PreviewCallback;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_d

    .line 95
    return v0

    .line 93
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_10
    const/4 v0, -0x1

    return v0
.end method

.method private jM(I)Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 89
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public jF(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/common/appService/k;->jL(Landroid/hardware/Camera$PreviewCallback;)I

    move-result v0

    .line 60
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 61
    iget-object v1, p0, Lcom/android/common/appService/k;->hJ:[Landroid/hardware/Camera$PreviewCallback;

    aput-object v2, v1, v0

    .line 62
    invoke-direct {p0, v0}, Lcom/android/common/appService/k;->jM(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_15

    .line 64
    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KT(Landroid/hardware/Camera$PreviewCallback;)V

    .line 58
    :cond_15
    return-void
.end method

.method public jG(Landroid/hardware/Camera$PreviewCallback;I)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lcom/android/common/appService/k;->jM(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/j;->KT(Landroid/hardware/Camera$PreviewCallback;)V

    .line 23
    iget-object v0, p0, Lcom/android/common/appService/k;->hJ:[Landroid/hardware/Camera$PreviewCallback;

    aput-object p1, v0, p2

    .line 21
    return-void
.end method

.method public jH(I)V
    .registers 4

    .prologue
    .line 77
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 78
    iget-object v0, p0, Lcom/android/common/appService/k;->hJ:[Landroid/hardware/Camera$PreviewCallback;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 76
    :cond_8
    return-void
.end method

.method public jI(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 70
    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    .line 71
    invoke-direct {p0, p1}, Lcom/android/common/appService/k;->jM(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KU(Landroid/hardware/Camera$PreviewCallback;)V

    .line 72
    iget-object v0, p0, Lcom/android/common/appService/k;->hJ:[Landroid/hardware/Camera$PreviewCallback;

    aput-object v1, v0, p1

    .line 69
    :cond_f
    return-void
.end method

.method public jJ(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/common/appService/k;->jL(Landroid/hardware/Camera$PreviewCallback;)I

    move-result v0

    .line 38
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 39
    iget-object v1, p0, Lcom/android/common/appService/k;->hJ:[Landroid/hardware/Camera$PreviewCallback;

    aput-object v2, v1, v0

    .line 40
    invoke-direct {p0, v0}, Lcom/android/common/appService/k;->jM(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_15

    .line 42
    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KU(Landroid/hardware/Camera$PreviewCallback;)V

    .line 36
    :cond_15
    return-void
.end method

.method public jK(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/common/appService/k;->jL(Landroid/hardware/Camera$PreviewCallback;)I

    move-result v0

    .line 49
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 50
    iget-object v1, p0, Lcom/android/common/appService/k;->hJ:[Landroid/hardware/Camera$PreviewCallback;

    aput-object v2, v1, v0

    .line 51
    invoke-direct {p0, v0}, Lcom/android/common/appService/k;->jM(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_15

    .line 53
    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KV(Landroid/hardware/Camera$PreviewCallback;)V

    .line 47
    :cond_15
    return-void
.end method

.method public jN(I)V
    .registers 4

    .prologue
    .line 83
    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    .line 84
    iget-object v0, p0, Lcom/android/common/appService/k;->hJ:[Landroid/hardware/Camera$PreviewCallback;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 82
    :cond_8
    return-void
.end method

.method public jO(Landroid/hardware/Camera$PreviewCallback;I)V
    .registers 4

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lcom/android/common/appService/k;->jM(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/j;->KU(Landroid/hardware/Camera$PreviewCallback;)V

    .line 28
    iget-object v0, p0, Lcom/android/common/appService/k;->hJ:[Landroid/hardware/Camera$PreviewCallback;

    aput-object p1, v0, p2

    .line 26
    return-void
.end method

.method public jP(Landroid/hardware/Camera$PreviewCallback;I)V
    .registers 4

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcom/android/common/appService/k;->jM(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/j;->KV(Landroid/hardware/Camera$PreviewCallback;)V

    .line 33
    iget-object v0, p0, Lcom/android/common/appService/k;->hJ:[Landroid/hardware/Camera$PreviewCallback;

    aput-object p1, v0, p2

    .line 31
    return-void
.end method
