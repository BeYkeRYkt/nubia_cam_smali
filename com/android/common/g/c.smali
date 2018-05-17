.class public Lcom/android/common/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/b;


# instance fields
.field final TAG:Ljava/lang/String;

.field private WA:I

.field private WB:Lcom/fotonation/vfb/VfbHandler;

.field private WC:[F

.field private WD:Z

.field private WE:I

.field private WF:I

.field private WG:I

.field private WH:I

.field private WI:Lcom/android/common/gles/j;

.field private WJ:I

.field private WK:I

.field private WL:Z

.field private Wx:Lcom/fotonation/vfb/VfbFaceArray;

.field private Wy:I

.field private Wz:Z


# direct methods
.method public constructor <init>(IIZZ)V
    .registers 12

    .prologue
    const/16 v6, 0x1e

    const/16 v5, 0xa

    const/4 v1, -0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "FaceBeautyRenderer"

    iput-object v0, p0, Lcom/android/common/g/c;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/g/c;->WI:Lcom/android/common/gles/j;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/g/c;->WC:[F

    .line 26
    iput-boolean v4, p0, Lcom/android/common/g/c;->WD:Z

    .line 28
    iput-boolean v4, p0, Lcom/android/common/g/c;->Wz:Z

    .line 30
    iput-boolean v4, p0, Lcom/android/common/g/c;->WL:Z

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/common/g/c;->WG:I

    .line 37
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/common/g/c;->WF:I

    .line 42
    iput v1, p0, Lcom/android/common/g/c;->WK:I

    iput v1, p0, Lcom/android/common/g/c;->Wy:I

    .line 49
    iput p1, p0, Lcom/android/common/g/c;->WK:I

    .line 50
    iput p2, p0, Lcom/android/common/g/c;->Wy:I

    .line 51
    iput-boolean p3, p0, Lcom/android/common/g/c;->Wz:Z

    .line 52
    iput-boolean p4, p0, Lcom/android/common/g/c;->WL:Z

    .line 54
    iget-object v0, p0, Lcom/android/common/g/c;->WC:[F

    iget-object v1, p0, Lcom/android/common/g/c;->WC:[F

    const/16 v2, 0xf

    aput v3, v1, v2

    iget-object v1, p0, Lcom/android/common/g/c;->WC:[F

    aput v3, v1, v5

    aput v3, v0, v4

    .line 56
    iget-object v0, p0, Lcom/android/common/g/c;->WC:[F

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 57
    iget-object v0, p0, Lcom/android/common/g/c;->WC:[F

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 58
    iput v6, p0, Lcom/android/common/g/c;->WJ:I

    iput v6, p0, Lcom/android/common/g/c;->WH:I

    .line 59
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/common/g/c;->WE:I

    .line 62
    new-instance v0, Lcom/fotonation/vfb/VfbFaceArray;

    invoke-direct {v0}, Lcom/fotonation/vfb/VfbFaceArray;-><init>()V

    iput-object v0, p0, Lcom/android/common/g/c;->Wx:Lcom/fotonation/vfb/VfbFaceArray;

    .line 63
    iget-object v0, p0, Lcom/android/common/g/c;->Wx:Lcom/fotonation/vfb/VfbFaceArray;

    invoke-virtual {v0, v5}, Lcom/fotonation/vfb/VfbFaceArray;->allocate(I)V

    .line 48
    return-void
.end method

.method private aaO(Lcom/fotonation/vfb/VfbFaceArray;)V
    .registers 7

    .prologue
    .line 230
    const/4 v0, 0x0

    :goto_1
    iget v1, p1, Lcom/fotonation/vfb/VfbFaceArray;->mFaceCount:I

    if-ge v0, v1, :cond_bb

    .line 231
    iget-object v1, p1, Lcom/fotonation/vfb/VfbFaceArray;->mFaces:[Lcom/fotonation/vfb/VfbFace;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/fotonation/vfb/VfbFace;->boundRect:Lcom/fotonation/utils/Rectangle;

    .line 232
    const-string/jumbo v2, "VFB"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "faces["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]: l:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fotonation/utils/Rectangle;->Left()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " t:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fotonation/utils/Rectangle;->Top()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fotonation/utils/Rectangle;->Width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/fotonation/utils/Rectangle;->Height()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v1, "VFB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "faces["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]: smileLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/fotonation/vfb/VfbFaceArray;->mFaces:[Lcom/fotonation/vfb/VfbFace;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/fotonation/vfb/VfbFace;->smileLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v1, "VFB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "faces["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]: blinkLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/fotonation/vfb/VfbFaceArray;->mFaces:[Lcom/fotonation/vfb/VfbFace;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/fotonation/vfb/VfbFace;->blinkLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 228
    :cond_bb
    return-void
.end method

.method private aaP(Lcom/android/common/a/a;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/common/g/c;->WI:Lcom/android/common/gles/j;

    if-eqz v0, :cond_17

    .line 122
    iget-object v0, p0, Lcom/android/common/g/c;->WI:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->RO()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 123
    iget-object v0, p0, Lcom/android/common/g/c;->WI:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->SM()V

    .line 125
    :cond_12
    iput-object v1, p0, Lcom/android/common/g/c;->WI:Lcom/android/common/gles/j;

    .line 126
    invoke-virtual {p1, v1}, Lcom/android/common/a/a;->H(Lcom/android/common/gles/j;)V

    .line 120
    :cond_17
    return-void
.end method

.method private aaQ(Lcom/fotonation/vfb/VfbHandler;Lcom/android/common/a/a;)V
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 198
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acY()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 199
    :cond_10
    iget v0, p0, Lcom/android/common/g/c;->WK:I

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/android/common/g/c;->Wy:I

    if-ne v0, v1, :cond_22

    .line 200
    :cond_18
    const-string/jumbo v0, "vfb"

    const-string/jumbo v1, "width height is not set"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void

    .line 203
    :cond_22
    iget-object v0, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    .line 204
    iput-object p1, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    .line 205
    iget-object v1, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    if-eqz v1, :cond_83

    .line 206
    const-string/jumbo v0, "FaceBeautyRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "before initializeVfbEngine width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/g/c;->WK:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/g/c;->Wy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    monitor-enter p0

    .line 208
    :try_start_54
    iget-object v0, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    iget-boolean v1, p0, Lcom/android/common/g/c;->Wz:Z

    invoke-virtual {v0, v1, p0}, Lcom/fotonation/vfb/VfbHandler;->initializeVfbEngine(ZLcom/android/common/g/c;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    .line 210
    const-string/jumbo v0, "FaceBeautyRenderer"

    const-string/jumbo v1, "VFB initialization failed !"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_54 .. :try_end_6a} :catchall_80

    :cond_6a
    :goto_6a
    monitor-exit p0

    .line 197
    return-void

    .line 212
    :cond_6c
    :try_start_6c
    invoke-direct {p0, p2}, Lcom/android/common/g/c;->aaP(Lcom/android/common/a/a;)V

    .line 213
    new-instance v0, Lcom/android/common/gles/j;

    iget v1, p0, Lcom/android/common/g/c;->WK:I

    iget v2, p0, Lcom/android/common/g/c;->Wy:I

    invoke-direct {v0, v1, v2}, Lcom/android/common/gles/j;-><init>(II)V

    iput-object v0, p0, Lcom/android/common/g/c;->WI:Lcom/android/common/gles/j;

    .line 214
    iget-object v0, p0, Lcom/android/common/g/c;->WI:Lcom/android/common/gles/j;

    invoke-virtual {p2, v0}, Lcom/android/common/a/a;->H(Lcom/android/common/gles/j;)V
    :try_end_7f
    .catchall {:try_start_6c .. :try_end_7f} :catchall_80

    goto :goto_6a

    .line 207
    :catchall_80
    move-exception v0

    monitor-exit p0

    throw v0

    .line 219
    :cond_83
    monitor-enter p0

    .line 220
    if-eqz v0, :cond_6a

    .line 221
    :try_start_86
    invoke-virtual {v0}, Lcom/fotonation/vfb/VfbHandler;->destroyVfbEngine()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_6a

    .line 219
    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public S()I
    .registers 2

    .prologue
    .line 144
    const/16 v0, -0x64

    return v0
.end method

.method public T(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-virtual {p1}, Lcom/android/common/a/a;->o()I

    move-result v0

    iput v0, p0, Lcom/android/common/g/c;->WA:I

    .line 70
    monitor-enter p0

    .line 71
    :try_start_9
    iget-boolean v0, p0, Lcom/android/common/g/c;->WL:Z

    if-eqz v0, :cond_d4

    .line 72
    iget-object v0, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    if-nez v0, :cond_d4

    .line 73
    const-string/jumbo v0, "FaceBeautyRenderer"

    const-string/jumbo v1, "init vfbHandler"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/fotonation/vfb/VfbHandler;

    invoke-direct {v0}, Lcom/fotonation/vfb/VfbHandler;-><init>()V

    iput-object v0, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    .line 75
    iget-object v0, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    invoke-direct {p0, v0, p1}, Lcom/android/common/g/c;->aaQ(Lcom/fotonation/vfb/VfbHandler;Lcom/android/common/a/a;)V
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_ec

    :cond_26
    :goto_26
    monitor-exit p0

    .line 83
    iget-boolean v0, p0, Lcom/android/common/g/c;->WL:Z

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    if-nez v0, :cond_35

    .line 84
    invoke-direct {p0, p1}, Lcom/android/common/g/c;->aaP(Lcom/android/common/a/a;)V

    .line 85
    invoke-virtual {p1, p0}, Lcom/android/common/a/a;->z(Lcom/android/common/a/b;)V

    .line 88
    :cond_35
    iget-object v0, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    if-eqz v0, :cond_d3

    .line 91
    monitor-enter p0

    .line 92
    :try_start_3a
    iget v0, p0, Lcom/android/common/g/c;->WK:I

    .line 93
    iget v1, p0, Lcom/android/common/g/c;->Wy:I
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_ef

    monitor-exit p0

    .line 95
    iget-object v2, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    invoke-virtual {v2}, Lcom/fotonation/vfb/VfbHandler;->getPreviewWidth()I

    move-result v2

    if-ne v0, v2, :cond_4f

    .line 96
    iget-object v2, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    invoke-virtual {v2}, Lcom/fotonation/vfb/VfbHandler;->getPreviewHeight()I

    move-result v2

    if-eq v1, v2, :cond_91

    .line 97
    :cond_4f
    const-string/jumbo v2, "FaceBeautyRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in Run: mPreviewRect.width="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/common/g/c;->WK:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " height="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/common/g/c;->Wy:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/android/common/g/c;->aaP(Lcom/android/common/a/a;)V

    .line 100
    new-instance v2, Lcom/android/common/gles/j;

    invoke-direct {v2, v0, v1}, Lcom/android/common/gles/j;-><init>(II)V

    iput-object v2, p0, Lcom/android/common/g/c;->WI:Lcom/android/common/gles/j;

    .line 101
    iget-object v2, p0, Lcom/android/common/g/c;->WI:Lcom/android/common/gles/j;

    invoke-virtual {p1, v2}, Lcom/android/common/a/a;->H(Lcom/android/common/gles/j;)V

    .line 102
    iget-object v2, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    invoke-virtual {v2, v0, v1}, Lcom/fotonation/vfb/VfbHandler;->setPreviewSize(II)Z

    .line 103
    iget-object v2, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    invoke-virtual {v2, v0, v1}, Lcom/fotonation/vfb/VfbHandler;->setViewSize(II)V

    .line 105
    :cond_91
    iget-object v0, p0, Lcom/android/common/g/c;->WI:Lcom/android/common/gles/j;

    invoke-virtual {v0}, Lcom/android/common/gles/j;->RO()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 106
    iget-object v0, p0, Lcom/android/common/g/c;->WI:Lcom/android/common/gles/j;

    invoke-virtual {v0, p2}, Lcom/android/common/gles/j;->SK(Lcom/android/common/gles/e;)V

    .line 108
    :cond_9e
    iget-object v0, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    iget v1, p0, Lcom/android/common/g/c;->WH:I

    iget v2, p0, Lcom/android/common/g/c;->WJ:I

    iget v3, p0, Lcom/android/common/g/c;->WE:I

    iget v6, p0, Lcom/android/common/g/c;->WG:I

    iget v7, p0, Lcom/android/common/g/c;->WF:I

    move v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/fotonation/vfb/VfbHandler;->setVfbEffectLevel(IIIIIIIZ)V

    .line 109
    iget-object v0, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    iget-object v1, p0, Lcom/android/common/g/c;->WC:[F

    iget v2, p0, Lcom/android/common/g/c;->WA:I

    iget-object v3, p0, Lcom/android/common/g/c;->WI:Lcom/android/common/gles/j;

    invoke-virtual {v3}, Lcom/android/common/gles/j;->RQ()I

    move-result v3

    const v4, 0x8d65

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/fotonation/vfb/VfbHandler;->process([FIII)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/g/c;->WD:Z

    .line 110
    iget-boolean v0, p0, Lcom/android/common/g/c;->WD:Z

    if-eqz v0, :cond_d3

    .line 111
    iget-object v0, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    iget-object v1, p0, Lcom/android/common/g/c;->Wx:Lcom/fotonation/vfb/VfbFaceArray;

    invoke-virtual {v0, v1}, Lcom/fotonation/vfb/VfbHandler;->getFaces(Lcom/fotonation/vfb/VfbFaceArray;)Z

    .line 113
    iget-object v0, p0, Lcom/android/common/g/c;->Wx:Lcom/fotonation/vfb/VfbFaceArray;

    invoke-direct {p0, v0}, Lcom/android/common/g/c;->aaO(Lcom/fotonation/vfb/VfbFaceArray;)V

    .line 117
    :cond_d3
    return v8

    .line 77
    :cond_d4
    :try_start_d4
    iget-boolean v0, p0, Lcom/android/common/g/c;->WL:Z

    if-nez v0, :cond_26

    .line 78
    iget-object v0, p0, Lcom/android/common/g/c;->WB:Lcom/fotonation/vfb/VfbHandler;

    if-eqz v0, :cond_26

    .line 79
    const-string/jumbo v0, "FaceBeautyRenderer"

    const-string/jumbo v1, "destory vfbHandler"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/common/g/c;->aaQ(Lcom/fotonation/vfb/VfbHandler;Lcom/android/common/a/a;)V
    :try_end_ea
    .catchall {:try_start_d4 .. :try_end_ea} :catchall_ec

    goto/16 :goto_26

    .line 70
    :catchall_ec
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :catchall_ef
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public U(Lcom/android/common/a/a;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0, v0}, Lcom/android/common/g/c;->aaQ(Lcom/fotonation/vfb/VfbHandler;Lcom/android/common/a/a;)V

    .line 136
    return-void
.end method

.method public V(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 4

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public aaK(III)V
    .registers 9

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 168
    const-string/jumbo v0, "FaceBeautyRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVfbParameters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-eq p1, v4, :cond_36

    .line 170
    iput p1, p0, Lcom/android/common/g/c;->WH:I

    .line 173
    :cond_36
    if-eq p2, v4, :cond_3a

    .line 174
    iput p2, p0, Lcom/android/common/g/c;->WJ:I

    .line 177
    :cond_3a
    if-eq p3, v4, :cond_3e

    .line 178
    iput p3, p0, Lcom/android/common/g/c;->WE:I

    .line 180
    :cond_3e
    iget v0, p0, Lcom/android/common/g/c;->WH:I

    if-nez v0, :cond_4f

    iget v0, p0, Lcom/android/common/g/c;->WJ:I

    if-nez v0, :cond_4f

    iget v0, p0, Lcom/android/common/g/c;->WE:I

    if-nez v0, :cond_4f

    .line 181
    iput v3, p0, Lcom/android/common/g/c;->WF:I

    .line 182
    iput v3, p0, Lcom/android/common/g/c;->WG:I

    .line 167
    :goto_4e
    return-void

    .line 184
    :cond_4f
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/common/g/c;->WF:I

    .line 185
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/common/g/c;->WG:I

    goto :goto_4e
.end method

.method public declared-synchronized aaL(II)V
    .registers 6

    .prologue
    monitor-enter p0

    .line 148
    :try_start_1
    const-string/jumbo v0, "FaceBeautyRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVfbSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    if-ge p1, p2, :cond_2e

    .line 150
    iput p2, p0, Lcom/android/common/g/c;->WK:I

    .line 151
    iput p1, p0, Lcom/android/common/g/c;->Wy:I
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_33

    :goto_2c
    monitor-exit p0

    .line 147
    return-void

    .line 154
    :cond_2e
    :try_start_2e
    iput p1, p0, Lcom/android/common/g/c;->WK:I

    .line 155
    iput p2, p0, Lcom/android/common/g/c;->Wy:I
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_33

    goto :goto_2c

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aaM()I
    .registers 2

    .prologue
    .line 164
    iget v0, p0, Lcom/android/common/g/c;->Wy:I

    return v0
.end method

.method public aaN()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/android/common/g/c;->WK:I

    return v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/g/c;->WL:Z

    .line 189
    return-void
.end method
