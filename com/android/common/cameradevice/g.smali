.class public Lcom/android/common/cameradevice/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static MV:I

.field private static MW:I

.field private static MX:I

.field private static Na:I


# instance fields
.field private MY:[I

.field private MZ:I

.field private Nb:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@14
    nop

    move-result v0

    sput v0, Lcom/android/common/cameradevice/g;->MW:I

    .line 19
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@15
    nop

    move-result v0

    sput v0, Lcom/android/common/cameradevice/g;->MX:I

    .line 20
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result v0

    sput v0, Lcom/android/common/cameradevice/g;->Na:I

    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/android/common/cameradevice/g;->MV:I

    .line 17
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(II)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget v0, Lcom/android/common/cameradevice/g;->MV:I

    iput v0, p0, Lcom/android/common/cameradevice/g;->MZ:I

    .line 24
    sget v0, Lcom/android/common/cameradevice/g;->MV:I

    iput v0, p0, Lcom/android/common/cameradevice/g;->Nb:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/cameradevice/g;->MY:[I

    .line 28
    iput p1, p0, Lcom/android/common/cameradevice/g;->MZ:I

    .line 29
    iput p2, p0, Lcom/android/common/cameradevice/g;->Nb:I

    .line 31
    iget v0, p0, Lcom/android/common/cameradevice/g;->MZ:I

    sget v1, Lcom/android/common/cameradevice/g;->MV:I

    if-eq v0, v1, :cond_2e

    .line 32
    iget v0, p0, Lcom/android/common/cameradevice/g;->Nb:I

    sget v1, Lcom/android/common/cameradevice/g;->MV:I

    if-eq v0, v1, :cond_2e

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/common/cameradevice/g;->MZ:I

    aput v1, v0, v2

    iget v1, p0, Lcom/android/common/cameradevice/g;->Nb:I

    aput v1, v0, v3

    iput-object v0, p0, Lcom/android/common/cameradevice/g;->MY:[I

    .line 27
    :cond_2d
    :goto_2d
    return-void

    .line 34
    :cond_2e
    iget v0, p0, Lcom/android/common/cameradevice/g;->MZ:I

    sget v1, Lcom/android/common/cameradevice/g;->MV:I

    if-eq v0, v1, :cond_2d

    .line 35
    new-array v0, v3, [I

    iget v1, p0, Lcom/android/common/cameradevice/g;->MZ:I

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/common/cameradevice/g;->MY:[I

    goto :goto_2d
.end method


# virtual methods
.method public Kf()Z
    .registers 3

    .prologue
    .line 60
    iget v0, p0, Lcom/android/common/cameradevice/g;->Nb:I

    sget v1, Lcom/android/common/cameradevice/g;->MV:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public Kg(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 44
    iget v1, p0, Lcom/android/common/cameradevice/g;->MZ:I

    if-eq v1, p1, :cond_9

    iget v1, p0, Lcom/android/common/cameradevice/g;->Nb:I

    if-ne v1, p1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public Kh()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Lcom/android/common/cameradevice/g;->MZ:I

    return v0
.end method

.method public Ki()[I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/common/cameradevice/g;->MY:[I

    return-object v0
.end method

.method public Kj()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/android/common/cameradevice/g;->Nb:I

    return v0
.end method

.method public Kk()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    iget v2, p0, Lcom/android/common/cameradevice/g;->MZ:I

    sget v3, Lcom/android/common/cameradevice/g;->MV:I

    if-eq v2, v3, :cond_f

    iget v2, p0, Lcom/android/common/cameradevice/g;->MZ:I

    sget v3, Lcom/android/common/cameradevice/g;->MW:I

    if-ne v2, v3, :cond_f

    :cond_e
    :goto_e
    return v0

    .line 65
    :cond_f
    iget v2, p0, Lcom/android/common/cameradevice/g;->Nb:I

    sget v3, Lcom/android/common/cameradevice/g;->MV:I

    if-eq v2, v3, :cond_1b

    iget v2, p0, Lcom/android/common/cameradevice/g;->Nb:I

    sget v3, Lcom/android/common/cameradevice/g;->MW:I

    if-eq v2, v3, :cond_e

    :cond_1b
    move v0, v1

    goto :goto_e
.end method

.method public Kl()Z
    .registers 3

    .prologue
    .line 56
    iget v0, p0, Lcom/android/common/cameradevice/g;->MZ:I

    sget v1, Lcom/android/common/cameradevice/g;->MV:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public Km()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    iget v2, p0, Lcom/android/common/cameradevice/g;->MZ:I

    sget v3, Lcom/android/common/cameradevice/g;->MV:I

    if-eq v2, v3, :cond_f

    iget v2, p0, Lcom/android/common/cameradevice/g;->MZ:I

    sget v3, Lcom/android/common/cameradevice/g;->Na:I

    if-ne v2, v3, :cond_f

    :cond_e
    :goto_e
    return v0

    .line 75
    :cond_f
    iget v2, p0, Lcom/android/common/cameradevice/g;->Nb:I

    sget v3, Lcom/android/common/cameradevice/g;->MV:I

    if-eq v2, v3, :cond_1b

    iget v2, p0, Lcom/android/common/cameradevice/g;->Nb:I

    sget v3, Lcom/android/common/cameradevice/g;->Na:I

    if-eq v2, v3, :cond_e

    :cond_1b
    move v0, v1

    goto :goto_e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 80
    if-ne p1, p0, :cond_4

    .line 81
    return v2

    .line 82
    :cond_4
    instance-of v0, p1, Lcom/android/common/cameradevice/g;

    if-eqz v0, :cond_17

    .line 83
    check-cast p1, Lcom/android/common/cameradevice/g;

    .line 84
    iget v0, p1, Lcom/android/common/cameradevice/g;->Nb:I

    iget v1, p0, Lcom/android/common/cameradevice/g;->Nb:I

    if-ne v0, v1, :cond_17

    .line 85
    iget v0, p1, Lcom/android/common/cameradevice/g;->MZ:I

    iget v1, p0, Lcom/android/common/cameradevice/g;->MZ:I

    if-ne v0, v1, :cond_17

    .line 86
    return v2

    .line 89
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 94
    const-string/jumbo v0, ""

    .line 95
    iget v1, p0, Lcom/android/common/cameradevice/g;->MZ:I

    sget v2, Lcom/android/common/cameradevice/g;->MV:I

    if-eq v1, v2, :cond_2a

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "MainCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/common/cameradevice/g;->MZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_2a
    iget v1, p0, Lcom/android/common/cameradevice/g;->Nb:I

    sget v2, Lcom/android/common/cameradevice/g;->MV:I

    if-eq v1, v2, :cond_4a

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "SubCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/common/cameradevice/g;->Nb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_4a
    return-object v0
.end method
