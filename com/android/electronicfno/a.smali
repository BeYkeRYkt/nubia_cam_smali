.class public Lcom/android/electronicfno/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aUV:Z

.field private aUW:Lcom/nubia/camera/common/Native/EletronicAlgorithm;

.field private aUX:Landroid/os/Handler;

.field private aUY:I

.field private aUZ:Lcom/android/electronicfno/b;

.field private aVa:I

.field private aVb:I

.field private aVc:Lcom/android/electronicfno/c;

.field private aVd:I

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/android/electronicfno/a;->mState:I

    .line 38
    iput v0, p0, Lcom/android/electronicfno/a;->aVb:I

    .line 39
    iput-boolean v0, p0, Lcom/android/electronicfno/a;->aUV:Z

    .line 40
    new-instance v0, Lcom/android/electronicfno/n;

    invoke-direct {v0, p0}, Lcom/android/electronicfno/n;-><init>(Lcom/android/electronicfno/a;)V

    iput-object v0, p0, Lcom/android/electronicfno/a;->aUX:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method static synthetic bmA(Lcom/android/electronicfno/a;)Lcom/android/electronicfno/b;
    .registers 2

    iget-object v0, p0, Lcom/android/electronicfno/a;->aUZ:Lcom/android/electronicfno/b;

    return-object v0
.end method

.method static synthetic bmB(Lcom/android/electronicfno/a;)I
    .registers 2

    iget v0, p0, Lcom/android/electronicfno/a;->aVa:I

    return v0
.end method

.method static synthetic bmC(Lcom/android/electronicfno/a;)I
    .registers 2

    iget v0, p0, Lcom/android/electronicfno/a;->aVb:I

    return v0
.end method

.method static synthetic bmD(Lcom/android/electronicfno/a;)I
    .registers 2

    iget v0, p0, Lcom/android/electronicfno/a;->mState:I

    return v0
.end method

.method static synthetic bmE(Lcom/android/electronicfno/a;Lcom/nubia/camera/common/Native/EletronicAlgorithm;)Lcom/nubia/camera/common/Native/EletronicAlgorithm;
    .registers 2

    iput-object p1, p0, Lcom/android/electronicfno/a;->aUW:Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    return-object p1
.end method

.method static synthetic bmF(Lcom/android/electronicfno/a;I)I
    .registers 2

    iput p1, p0, Lcom/android/electronicfno/a;->mState:I

    return p1
.end method

.method static synthetic bmx(Lcom/android/electronicfno/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/electronicfno/a;->aUV:Z

    return v0
.end method

.method static synthetic bmy(Lcom/android/electronicfno/a;)Lcom/nubia/camera/common/Native/EletronicAlgorithm;
    .registers 2

    iget-object v0, p0, Lcom/android/electronicfno/a;->aUW:Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    return-object v0
.end method

.method static synthetic bmz(Lcom/android/electronicfno/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/electronicfno/a;->aUX:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public bmt([B)Z
    .registers 6

    .prologue
    .line 125
    iget v0, p0, Lcom/android/electronicfno/a;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/electronicfno/a;->aUW:Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    if-nez v0, :cond_b

    .line 126
    :cond_9
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_b
    iget-object v0, p0, Lcom/android/electronicfno/a;->aUW:Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    invoke-virtual {v0, p1}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->btK([B)I

    move-result v0

    .line 129
    const-string/jumbo v1, "ElectronicOjbect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "asyncAddYuvData,num wanted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/electronicfno/a;->aVa:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " num put "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget v1, p0, Lcom/android/electronicfno/a;->aVa:I

    if-lt v0, v1, :cond_3f

    iget-boolean v0, p0, Lcom/android/electronicfno/a;->aUV:Z

    :goto_3e
    return v0

    :cond_3f
    const/4 v0, 0x1

    goto :goto_3e
.end method

.method public bmu()I
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/electronicfno/a;->aUW:Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    if-nez v0, :cond_6

    .line 87
    const/4 v0, 0x0

    return v0

    .line 90
    :cond_6
    iget v0, p0, Lcom/android/electronicfno/a;->mState:I

    return v0
.end method

.method public bmv(IIIIIZII)V
    .registers 19

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/electronicfno/a;->aUW:Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    if-eqz v1, :cond_f

    .line 98
    iget-object v1, p0, Lcom/android/electronicfno/a;->aUZ:Lcom/android/electronicfno/b;

    if-eqz v1, :cond_e

    .line 99
    iget-object v1, p0, Lcom/android/electronicfno/a;->aUZ:Lcom/android/electronicfno/b;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/electronicfno/b;->bmK(I)V

    .line 101
    :cond_e
    return-void

    .line 103
    :cond_f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/electronicfno/a;->aUV:Z

    .line 104
    iput p3, p0, Lcom/android/electronicfno/a;->aVa:I

    .line 105
    const/4 v1, -0x1

    if-ne p3, v1, :cond_39

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/electronicfno/a;->aUV:Z

    .line 111
    :cond_1a
    :goto_1a
    iput p1, p0, Lcom/android/electronicfno/a;->aVd:I

    .line 112
    iput p2, p0, Lcom/android/electronicfno/a;->aUY:I

    .line 113
    move/from16 v0, p7

    iput v0, p0, Lcom/android/electronicfno/a;->aVb:I

    .line 114
    new-instance v1, Lcom/android/electronicfno/c;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/android/electronicfno/c;-><init>(Lcom/android/electronicfno/a;IIIIIZI)V

    iput-object v1, p0, Lcom/android/electronicfno/a;->aVc:Lcom/android/electronicfno/c;

    .line 116
    iget-object v1, p0, Lcom/android/electronicfno/a;->aVc:Lcom/android/electronicfno/c;

    invoke-virtual {v1}, Lcom/android/electronicfno/c;->start()V

    .line 96
    return-void

    .line 107
    :cond_39
    const/16 v1, 0x8

    if-lt p3, v1, :cond_1a

    .line 108
    add-int/lit8 v1, p4, 0xa

    mul-int/2addr v1, p3

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/electronicfno/a;->aVa:I

    goto :goto_1a
.end method

.method public bmw(Lcom/android/electronicfno/b;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/electronicfno/a;->aUZ:Lcom/android/electronicfno/b;

    .line 79
    return-void
.end method

.method public cancel()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/electronicfno/a;->aUW:Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    if-nez v0, :cond_5

    .line 120
    return-void

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/android/electronicfno/a;->aVc:Lcom/android/electronicfno/c;

    invoke-virtual {v0}, Lcom/android/electronicfno/c;->bmM()V

    .line 118
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/electronicfno/a;->aUW:Lcom/nubia/camera/common/Native/EletronicAlgorithm;

    if-nez v0, :cond_5

    .line 142
    return-void

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/android/electronicfno/a;->aVc:Lcom/android/electronicfno/c;

    invoke-virtual {v0}, Lcom/android/electronicfno/c;->bmN()V

    .line 140
    return-void
.end method
