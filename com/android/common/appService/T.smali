.class public Lcom/android/common/appService/T;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static lc:I


# instance fields
.field private ld:Lcom/android/common/appService/W;

.field private le:I

.field private lf:F

.field private lg:Z

.field private lh:Z

.field private li:Z

.field private lj:Lcom/android/common/appService/U;

.field private lk:I

.field private ll:I

.field private lm:F

.field private ln:I

.field private lo:F

.field private lp:F

.field private lq:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/16 v0, 0x1e

    sput v0, Lcom/android/common/appService/T;->lc:I

    .line 14
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v2, p0, Lcom/android/common/appService/T;->ll:I

    .line 22
    iput v0, p0, Lcom/android/common/appService/T;->lo:F

    .line 23
    iput v0, p0, Lcom/android/common/appService/T;->lm:F

    .line 24
    iput v0, p0, Lcom/android/common/appService/T;->lf:F

    .line 25
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/android/common/appService/T;->lp:F

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/common/appService/T;->lq:I

    .line 27
    iput-object v3, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    .line 28
    iput-boolean v1, p0, Lcom/android/common/appService/T;->lg:Z

    .line 29
    iput-object v3, p0, Lcom/android/common/appService/T;->lj:Lcom/android/common/appService/U;

    .line 30
    iput-boolean v1, p0, Lcom/android/common/appService/T;->lh:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/common/appService/T;->li:Z

    .line 32
    iput v2, p0, Lcom/android/common/appService/T;->ln:I

    .line 40
    iput-object p1, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    .line 41
    iget-object v0, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Lw()I

    move-result v0

    iput v0, p0, Lcom/android/common/appService/T;->lk:I

    .line 42
    iget-object v0, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->NE()I

    move-result v0

    iput v0, p0, Lcom/android/common/appService/T;->lq:I

    .line 39
    return-void
.end method

.method private oP(II)[I
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    if-nez p2, :cond_9

    new-array v0, v3, [I

    aput p1, v0, v2

    return-object v0

    .line 70
    :cond_9
    const/4 v0, 0x3

    new-array v0, v0, [I

    sub-int v1, p1, p2

    sub-int/2addr v1, p2

    aput v1, v0, v2

    sub-int v1, p1, p2

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    return-object v0
.end method

.method private oQ()Lcom/android/common/cameradevice/p;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    return-object v0
.end method

.method private oR(Landroid/view/MotionEvent;)F
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 213
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    sub-float/2addr v1, v2

    .line 214
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method private oS()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-object v1, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    if-nez v1, :cond_6

    .line 223
    return v0

    .line 224
    :cond_6
    iget-object v1, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v1, v2, :cond_22

    .line 225
    iget-object v1, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    if-ne v1, v2, :cond_23

    .line 226
    :cond_22
    return v0

    .line 228
    :cond_23
    iget-object v1, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-eq v1, v2, :cond_32

    const/4 v0, 0x1

    :cond_32
    return v0
.end method

.method private oT()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    if-nez v1, :cond_6

    .line 233
    return v0

    .line 235
    :cond_6
    iget-boolean v1, p0, Lcom/android/common/appService/T;->li:Z

    if-eqz v1, :cond_1b

    .line 236
    iget-object v1, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v2

    if-ne v1, v2, :cond_1b

    const/4 v0, 0x1

    .line 235
    :cond_1b
    return v0
.end method

.method private oX(II)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/common/appService/T;->oS()Z

    move-result v1

    if-nez v1, :cond_11

    .line 74
    const-string/jumbo v0, "ZtemtZoomControl"

    const-string/jumbo v1, "Can\'t setZoomIndex because is taking picture."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 77
    :cond_11
    iget v1, p0, Lcom/android/common/appService/T;->ln:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    iget v1, p0, Lcom/android/common/appService/T;->ln:I

    if-ne v1, p1, :cond_24

    .line 78
    const-string/jumbo v0, "ZtemtZoomControl"

    const-string/jumbo v1, "Can\'t setZoomIndex because is same value."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void

    .line 81
    :cond_24
    iput p1, p0, Lcom/android/common/appService/T;->ln:I

    .line 82
    iget v1, p0, Lcom/android/common/appService/T;->lk:I

    if-le p1, v1, :cond_88

    .line 83
    iget p1, p0, Lcom/android/common/appService/T;->lk:I

    .line 87
    :cond_2c
    :goto_2c
    iput p1, p0, Lcom/android/common/appService/T;->le:I

    .line 88
    const-string/jumbo v1, "on"

    iget-object v2, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v2

    .line 89
    const-string/jumbo v3, "pref_big_aperature_key"

    const-string/jumbo v4, "off"

    .line 88
    invoke-virtual {v2, v3, v4}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 90
    iget-object v1, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jf:Lcom/android/common/appService/CameraMember;

    if-ne v1, v2, :cond_8c

    .line 88
    :cond_51
    const/4 v1, 0x1

    .line 94
    :goto_52
    :try_start_52
    invoke-direct {p0}, Lcom/android/common/appService/T;->oQ()Lcom/android/common/cameradevice/p;

    move-result-object v2

    if-eqz v2, :cond_ae

    iget-object v2, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v2

    if-eqz v2, :cond_ae

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/common/appService/T;->oP(II)[I

    move-result-object v2

    .line 96
    :goto_64
    array-length v3, v2

    if-ge v0, v3, :cond_af

    .line 97
    iget-object v3, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v3

    monitor-enter v3
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6e} :catch_aa

    .line 98
    :try_start_6e
    invoke-direct {p0}, Lcom/android/common/appService/T;->oQ()Lcom/android/common/cameradevice/p;

    move-result-object v4

    aget v5, v2, v0

    invoke-interface {v4, v5}, Lcom/android/common/cameradevice/p;->MQ(I)V

    .line 99
    iget-object v4, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v4}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v4

    .line 100
    invoke-direct {p0}, Lcom/android/common/appService/T;->oQ()Lcom/android/common/cameradevice/p;

    move-result-object v5

    .line 99
    invoke-virtual {v4, v5}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V
    :try_end_84
    .catchall {:try_start_6e .. :try_end_84} :catchall_a7

    :try_start_84
    monitor-exit v3
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_85} :catch_aa

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_64

    .line 84
    :cond_88
    if-gez p1, :cond_2c

    move p1, v0

    .line 85
    goto :goto_2c

    .line 91
    :cond_8c
    iget-object v1, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jz:Lcom/android/common/appService/CameraMember;

    if-eq v1, v2, :cond_51

    .line 92
    iget-object v1, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/appService/T;->ld:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/h;->apH(Lcom/android/common/appService/CameraMember;Lcom/android/common/cameradevice/g;)Z

    move-result v1

    goto :goto_52

    .line 97
    :catchall_a7
    move-exception v0

    :try_start_a8
    monitor-exit v3

    throw v0
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_aa} :catch_aa

    .line 106
    :catch_aa
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    :cond_ae
    :goto_ae
    return-void

    .line 102
    :cond_af
    :try_start_af
    iget-object v0, p0, Lcom/android/common/appService/T;->lj:Lcom/android/common/appService/U;

    if-eqz v0, :cond_ae

    if-nez v1, :cond_ae

    .line 103
    iget-object v0, p0, Lcom/android/common/appService/T;->lj:Lcom/android/common/appService/U;

    invoke-interface {v0, p1}, Lcom/android/common/appService/U;->oY(I)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_ba} :catch_aa

    goto :goto_ae
.end method


# virtual methods
.method public oH()V
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/appService/T;->le:I

    .line 55
    iget-object v0, p0, Lcom/android/common/appService/T;->lj:Lcom/android/common/appService/U;

    if-eqz v0, :cond_c

    .line 56
    iget-object v0, p0, Lcom/android/common/appService/T;->lj:Lcom/android/common/appService/U;

    invoke-interface {v0}, Lcom/android/common/appService/U;->oZ()V

    .line 53
    :cond_c
    return-void
.end method

.method public oI(I)V
    .registers 3

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/common/appService/T;->oX(II)V

    .line 64
    return-void
.end method

.method public oJ()V
    .registers 3

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/common/appService/T;->oS()Z

    move-result v0

    if-nez v0, :cond_10

    .line 120
    const-string/jumbo v0, "ZtemtZoomControl"

    const-string/jumbo v1, "Can\'t zoomIn because is taking picture."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void

    .line 123
    :cond_10
    iget v0, p0, Lcom/android/common/appService/T;->le:I

    iget v1, p0, Lcom/android/common/appService/T;->lk:I

    if-ne v0, v1, :cond_17

    return-void

    .line 124
    :cond_17
    iget-boolean v0, p0, Lcom/android/common/appService/T;->lh:Z

    if-eqz v0, :cond_3f

    .line 125
    iget v0, p0, Lcom/android/common/appService/T;->le:I

    iget v1, p0, Lcom/android/common/appService/T;->lq:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/appService/T;->le:I

    .line 126
    iget v0, p0, Lcom/android/common/appService/T;->le:I

    sget v1, Lcom/android/common/appService/T;->lc:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2e

    .line 127
    sget v0, Lcom/android/common/appService/T;->lc:I

    iput v0, p0, Lcom/android/common/appService/T;->le:I

    .line 132
    :cond_2e
    :goto_2e
    iget v0, p0, Lcom/android/common/appService/T;->le:I

    iget v1, p0, Lcom/android/common/appService/T;->lk:I

    if-le v0, v1, :cond_38

    .line 133
    iget v0, p0, Lcom/android/common/appService/T;->lk:I

    iput v0, p0, Lcom/android/common/appService/T;->le:I

    .line 135
    :cond_38
    iget v0, p0, Lcom/android/common/appService/T;->le:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/common/appService/T;->oX(II)V

    .line 118
    return-void

    .line 130
    :cond_3f
    iget v0, p0, Lcom/android/common/appService/T;->le:I

    iget v1, p0, Lcom/android/common/appService/T;->lq:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/appService/T;->le:I

    goto :goto_2e
.end method

.method public oK()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Lcom/android/common/appService/T;->oS()Z

    move-result v0

    if-nez v0, :cond_11

    .line 140
    const-string/jumbo v0, "ZtemtZoomControl"

    const-string/jumbo v1, "Can\'t zoomOut because is taking picture."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    .line 143
    :cond_11
    iget v0, p0, Lcom/android/common/appService/T;->le:I

    if-nez v0, :cond_16

    .line 144
    return-void

    .line 146
    :cond_16
    iget v0, p0, Lcom/android/common/appService/T;->le:I

    iget v1, p0, Lcom/android/common/appService/T;->lq:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/appService/T;->le:I

    .line 147
    iget v0, p0, Lcom/android/common/appService/T;->le:I

    if-gez v0, :cond_23

    .line 148
    iput v2, p0, Lcom/android/common/appService/T;->le:I

    .line 150
    :cond_23
    iget v0, p0, Lcom/android/common/appService/T;->le:I

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/common/appService/T;->oX(II)V

    .line 138
    return-void
.end method

.method public oL(Z)V
    .registers 2

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/common/appService/T;->li:Z

    .line 60
    return-void
.end method

.method public oM(Lcom/android/common/appService/U;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/common/appService/T;->lj:Lcom/android/common/appService/U;

    .line 45
    return-void
.end method

.method public oN()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/android/common/appService/T;->lk:I

    return v0
.end method

.method public oO()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcom/android/common/appService/T;->le:I

    return v0
.end method

.method public oU(Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    if-nez p1, :cond_6

    .line 159
    return v1

    .line 160
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    packed-switch v3, :pswitch_data_9c

    :pswitch_13
    move v0, v1

    .line 208
    :cond_14
    :goto_14
    return v0

    .line 166
    :pswitch_15
    if-ne v2, v4, :cond_2d

    iget-boolean v2, p0, Lcom/android/common/appService/T;->lg:Z

    if-eqz v2, :cond_2d

    .line 167
    iput v1, p0, Lcom/android/common/appService/T;->ll:I

    .line 168
    invoke-direct {p0, p1}, Lcom/android/common/appService/T;->oR(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, Lcom/android/common/appService/T;->lo:F

    .line 169
    invoke-direct {p0}, Lcom/android/common/appService/T;->oT()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-boolean v2, p0, Lcom/android/common/appService/T;->lh:Z

    if-eqz v2, :cond_33

    .line 174
    :cond_2d
    :goto_2d
    iget v2, p0, Lcom/android/common/appService/T;->ll:I

    if-eqz v2, :cond_14

    move v0, v1

    goto :goto_14

    .line 170
    :cond_33
    iget v2, p0, Lcom/android/common/appService/T;->le:I

    sget v3, Lcom/android/common/appService/T;->lc:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2d

    .line 171
    iput-boolean v0, p0, Lcom/android/common/appService/T;->lh:Z

    goto :goto_2d

    .line 178
    :pswitch_3e
    iget v3, p0, Lcom/android/common/appService/T;->ll:I

    if-nez v3, :cond_6a

    if-ne v2, v4, :cond_6a

    .line 179
    invoke-direct {p0}, Lcom/android/common/appService/T;->oT()Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-boolean v2, p0, Lcom/android/common/appService/T;->lh:Z

    if-eqz v2, :cond_70

    .line 183
    :cond_4e
    :goto_4e
    invoke-direct {p0, p1}, Lcom/android/common/appService/T;->oR(Landroid/view/MotionEvent;)F

    move-result v2

    iput v2, p0, Lcom/android/common/appService/T;->lm:F

    .line 184
    iget v2, p0, Lcom/android/common/appService/T;->lm:F

    iget v3, p0, Lcom/android/common/appService/T;->lo:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/common/appService/T;->lf:F

    .line 185
    iget v2, p0, Lcom/android/common/appService/T;->lf:F

    iget v3, p0, Lcom/android/common/appService/T;->lp:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_7b

    .line 186
    invoke-virtual {p0}, Lcom/android/common/appService/T;->oJ()V

    .line 187
    iget v2, p0, Lcom/android/common/appService/T;->lm:F

    iput v2, p0, Lcom/android/common/appService/T;->lo:F

    .line 193
    :cond_6a
    :goto_6a
    iget v2, p0, Lcom/android/common/appService/T;->ll:I

    if-eqz v2, :cond_14

    move v0, v1

    goto :goto_14

    .line 180
    :cond_70
    iget v2, p0, Lcom/android/common/appService/T;->le:I

    sget v3, Lcom/android/common/appService/T;->lc:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4e

    .line 181
    iput-boolean v0, p0, Lcom/android/common/appService/T;->lh:Z

    goto :goto_4e

    .line 188
    :cond_7b
    iget v2, p0, Lcom/android/common/appService/T;->lf:F

    iget v3, p0, Lcom/android/common/appService/T;->lp:F

    neg-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6a

    .line 189
    invoke-virtual {p0}, Lcom/android/common/appService/T;->oK()V

    .line 190
    iget v2, p0, Lcom/android/common/appService/T;->lm:F

    iput v2, p0, Lcom/android/common/appService/T;->lo:F

    goto :goto_6a

    .line 199
    :pswitch_8c
    iget v2, p0, Lcom/android/common/appService/T;->ll:I

    if-nez v2, :cond_99

    .line 200
    :goto_90
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/common/appService/T;->ll:I

    .line 201
    iput-boolean v1, p0, Lcom/android/common/appService/T;->lg:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/common/appService/T;->lh:Z

    goto/16 :goto_14

    :cond_99
    move v0, v1

    .line 199
    goto :goto_90

    .line 164
    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_3e
        :pswitch_8c
        :pswitch_13
        :pswitch_15
    .end packed-switch
.end method

.method public oV()V
    .registers 2

    .prologue
    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/appService/T;->ll:I

    .line 153
    return-void
.end method

.method public oW(Z)V
    .registers 2

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/android/common/appService/T;->lg:Z

    .line 217
    return-void
.end method
