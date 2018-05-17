.class public Lcom/fotonation/vfb/VfbHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "VfbHandler"

.field private static frameID:I


# instance fields
.field private mEyeCircleLevel:I

.field private mEyeEnlargementLevel:I

.field private mFaceBeautyRenderer:Lcom/android/common/g/c;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mSlimmingLevel:I

.field private mSmartColorLevel:I

.field private mSmartLightLevel:I

.field private mSmoothingLevel:I

.field private mToningLevel:I

.field private mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

.field private mViewHeight:I

.field private mViewWidth:I

.field private vfbConfig:Lcom/fotonation/vfb/VfbConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/fotonation/vfb/VfbHandler;->frameID:I

    .line 28
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    .line 38
    iput v2, p0, Lcom/fotonation/vfb/VfbHandler;->mViewWidth:I

    .line 39
    iput v2, p0, Lcom/fotonation/vfb/VfbHandler;->mViewHeight:I

    .line 41
    iput v2, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewWidth:I

    .line 42
    iput v2, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewHeight:I

    .line 44
    iput v1, p0, Lcom/fotonation/vfb/VfbHandler;->mSmoothingLevel:I

    .line 45
    iput v1, p0, Lcom/fotonation/vfb/VfbHandler;->mToningLevel:I

    .line 46
    iput v1, p0, Lcom/fotonation/vfb/VfbHandler;->mSlimmingLevel:I

    .line 47
    iput v1, p0, Lcom/fotonation/vfb/VfbHandler;->mEyeEnlargementLevel:I

    .line 48
    iput v1, p0, Lcom/fotonation/vfb/VfbHandler;->mEyeCircleLevel:I

    .line 49
    iput v1, p0, Lcom/fotonation/vfb/VfbHandler;->mSmartLightLevel:I

    .line 50
    iput v1, p0, Lcom/fotonation/vfb/VfbHandler;->mSmartColorLevel:I

    .line 28
    return-void
.end method

.method private declared-synchronized _destroyVfbEngine()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 360
    :try_start_1
    const-string/jumbo v0, "VfbHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "destroyVfbEngine() - Called from thread id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const/4 v0, -0x1

    iput v0, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewWidth:I

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewHeight:I

    .line 365
    const/4 v0, -0x1

    iput v0, p0, Lcom/fotonation/vfb/VfbHandler;->mViewWidth:I

    .line 366
    const/4 v0, -0x1

    iput v0, p0, Lcom/fotonation/vfb/VfbHandler;->mViewHeight:I

    .line 368
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    if-eqz v0, :cond_4d

    .line 372
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "destroyVfbEngine() - mVfbEngine.destroy()"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    invoke-virtual {v0}, Lcom/fotonation/vfb/VfbEngineCtx;->destroy()V

    .line 375
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "destroyVfbEngine() - after mVfbEngine.destroy()"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    .line 379
    :cond_4d
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "_destroyVfbEngine() - end"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_58

    monitor-exit p0

    .line 358
    return-void

    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized _destroyVfbEngineForPause()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 156
    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewWidth:I

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewHeight:I

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/fotonation/vfb/VfbHandler;->mViewWidth:I

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/fotonation/vfb/VfbHandler;->mViewHeight:I

    .line 162
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    if-eqz v0, :cond_19

    .line 163
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    invoke-virtual {v0}, Lcom/fotonation/vfb/VfbEngineCtx;->destroy()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    .line 155
    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized _initializeVfbEngine(Z)Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    .line 301
    :try_start_3
    const-string/jumbo v0, "VfbHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_initializeVfbEngine() - Called from thread id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    if-eqz v0, :cond_34

    .line 304
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "_initializeVfbEngine() - already initialized!"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_146

    monitor-exit p0

    .line 305
    return v6

    .line 308
    :cond_34
    :try_start_34
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "_initializeVfbEngine() - new VfbEngineCtx()"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v0, Lcom/fotonation/vfb/VfbEngineCtx;

    invoke-direct {v0}, Lcom/fotonation/vfb/VfbEngineCtx;-><init>()V

    iput-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    .line 314
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mFaceBeautyRenderer:Lcom/android/common/g/c;

    invoke-virtual {v0}, Lcom/android/common/g/c;->aaN()I

    move-result v0

    iput v0, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewWidth:I

    .line 315
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mFaceBeautyRenderer:Lcom/android/common/g/c;

    invoke-virtual {v0}, Lcom/android/common/g/c;->aaM()I

    move-result v0

    iput v0, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewHeight:I

    .line 316
    new-instance v0, Lcom/fotonation/utils/Size;

    iget v1, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewWidth:I

    iget v2, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewHeight:I

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/Size;-><init>(II)V

    .line 322
    iget-object v1, p0, Lcom/fotonation/vfb/VfbHandler;->mFaceBeautyRenderer:Lcom/android/common/g/c;

    invoke-virtual {v1}, Lcom/android/common/g/c;->aaN()I

    move-result v1

    iput v1, p0, Lcom/fotonation/vfb/VfbHandler;->mViewWidth:I

    .line 323
    iget-object v1, p0, Lcom/fotonation/vfb/VfbHandler;->mFaceBeautyRenderer:Lcom/android/common/g/c;

    invoke-virtual {v1}, Lcom/android/common/g/c;->aaM()I

    move-result v1

    iput v1, p0, Lcom/fotonation/vfb/VfbHandler;->mViewHeight:I

    .line 324
    new-instance v1, Lcom/fotonation/utils/Size;

    iget v2, p0, Lcom/fotonation/vfb/VfbHandler;->mViewWidth:I

    iget v3, p0, Lcom/fotonation/vfb/VfbHandler;->mViewHeight:I

    invoke-direct {v1, v2, v3}, Lcom/fotonation/utils/Size;-><init>(II)V

    .line 327
    iget v2, v1, Lcom/fotonation/utils/Size;->Width:I

    iput v2, p0, Lcom/fotonation/vfb/VfbHandler;->mViewWidth:I

    .line 328
    iget v2, v1, Lcom/fotonation/utils/Size;->Height:I

    iput v2, p0, Lcom/fotonation/vfb/VfbHandler;->mViewHeight:I

    .line 330
    const-string/jumbo v2, "VfbHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_initializeVfbEngine() - previewSize = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/fotonation/utils/Size;->Width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/fotonation/utils/Size;->Height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/fotonation/vfb/VfbEngineCtx;->create(Lcom/fotonation/utils/Size;Lcom/fotonation/utils/Size;I)Z

    move-result v0

    if-nez v0, :cond_c2

    .line 333
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "_initializeVfbEngine() - error initializing VFB"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_34 .. :try_end_c0} :catchall_146

    monitor-exit p0

    .line 334
    return v5

    .line 336
    :cond_c2
    :try_start_c2
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "_initializeVfbEngine() - mVfbEngine.create"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v0, Lcom/fotonation/vfb/VfbConfig;

    invoke-direct {v0}, Lcom/fotonation/vfb/VfbConfig;-><init>()V

    iput-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    .line 339
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    const/4 v1, 0x0

    iput v1, v0, Lcom/fotonation/vfb/VfbConfig;->smartColor:I

    .line 340
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    const/4 v1, 0x0

    iput v1, v0, Lcom/fotonation/vfb/VfbConfig;->smartLight:I

    .line 341
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    const/4 v1, 0x0

    iput v1, v0, Lcom/fotonation/vfb/VfbConfig;->skinSmoothing:I

    .line 342
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    const/4 v1, 0x0

    iput v1, v0, Lcom/fotonation/vfb/VfbConfig;->skinToning:I

    .line 343
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    const/4 v1, 0x1

    iput v1, v0, Lcom/fotonation/vfb/VfbConfig;->faceCount:I

    .line 344
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fotonation/vfb/VfbConfig;->allocate(I)V

    .line 345
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget-object v0, v0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/fotonation/vfb/VfbFaceStrengths;->faceID:I

    .line 346
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget-object v0, v0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/fotonation/vfb/VfbFaceStrengths;->smoothing:I

    .line 347
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget-object v0, v0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/fotonation/vfb/VfbFaceStrengths;->toning:I

    .line 348
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget-object v0, v0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/fotonation/vfb/VfbFaceStrengths;->slimming:I

    .line 349
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget-object v0, v0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/fotonation/vfb/VfbFaceStrengths;->eyeEnlargement:I

    .line 350
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget-object v0, v0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    iput v1, v0, Lcom/fotonation/vfb/VfbFaceStrengths;->eyeCircles:I

    .line 351
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    iget-object v1, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    invoke-virtual {v0, v1}, Lcom/fotonation/vfb/VfbEngineCtx;->setConfiguration(Lcom/fotonation/vfb/VfbConfig;)V

    .line 352
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fotonation/vfb/VfbEngineCtx;->setShowFaceRectangles(ZZ)V

    .line 353
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "_initializeVfbEngine() - END"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_144
    .catchall {:try_start_c2 .. :try_end_144} :catchall_146

    monitor-exit p0

    .line 355
    return v6

    :catchall_146
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getAdjustedViewSize(IIII)Lcom/fotonation/utils/Size;
    .registers 7

    .prologue
    .line 384
    new-instance v0, Lcom/fotonation/utils/Size;

    invoke-direct {v0, p2, p3}, Lcom/fotonation/utils/Size;-><init>(II)V

    .line 386
    shl-int/lit8 v1, p0, 0x10

    div-int/2addr v1, p1

    shl-int/lit8 v2, p3, 0x10

    div-int/2addr v2, p2

    if-le v1, v2, :cond_16

    .line 387
    shl-int/lit8 v1, p0, 0x10

    div-int/2addr v1, p1

    mul-int/2addr v1, p2

    shr-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/fotonation/utils/Size;->Height:I

    .line 393
    :goto_15
    return-object v0

    .line 391
    :cond_16
    shl-int/lit8 v1, p1, 0x10

    div-int/2addr v1, p0

    mul-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x10

    iput v1, v0, Lcom/fotonation/utils/Size;->Width:I

    goto :goto_15
.end method


# virtual methods
.method public destroyVfbEngine()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mFaceBeautyRenderer:Lcom/android/common/g/c;

    if-nez v0, :cond_f

    .line 102
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "destroyVfbEngine: mRootView is null. vfb engone already destroyed."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void

    .line 108
    :cond_f
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "destroyVfbEngine() - executeAndWait() - before"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/fotonation/vfb/VfbHandler;->_destroyVfbEngine()V

    .line 125
    iput-object v2, p0, Lcom/fotonation/vfb/VfbHandler;->mFaceBeautyRenderer:Lcom/android/common/g/c;

    .line 127
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "destroyVfbEngine() - executeAndWait() - after"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public destroyVfbEngineForPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mFaceBeautyRenderer:Lcom/android/common/g/c;

    if-nez v0, :cond_6

    .line 133
    return-void

    .line 151
    :cond_6
    invoke-direct {p0}, Lcom/fotonation/vfb/VfbHandler;->_destroyVfbEngineForPause()V

    .line 152
    iput-object v1, p0, Lcom/fotonation/vfb/VfbHandler;->mFaceBeautyRenderer:Lcom/android/common/g/c;

    .line 130
    return-void
.end method

.method public enableFaceRectangles(ZZ)V
    .registers 4

    .prologue
    .line 461
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    if-eqz v0, :cond_9

    .line 472
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    invoke-virtual {v0, p1, p2}, Lcom/fotonation/vfb/VfbEngineCtx;->setShowFaceRectangles(ZZ)V

    .line 460
    :cond_9
    return-void
.end method

.method public declared-synchronized getFaceCount()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    if-eqz v0, :cond_d

    .line 215
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    invoke-virtual {v0}, Lcom/fotonation/vfb/VfbEngineCtx;->getFacesCnt()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    .line 217
    :cond_d
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFaces(Lcom/fotonation/vfb/VfbFaceArray;)Z
    .registers 3

    .prologue
    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    invoke-virtual {v0, p1}, Lcom/fotonation/vfb/VfbEngineCtx;->getFaces(Lcom/fotonation/vfb/VfbFaceArray;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPreviewHeight()I
    .registers 2

    .prologue
    .line 235
    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewWidth:I

    return v0
.end method

.method public getViewHeight()I
    .registers 2

    .prologue
    .line 481
    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mViewHeight:I

    return v0
.end method

.method public getViewWidth()I
    .registers 2

    .prologue
    .line 477
    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mViewWidth:I

    return v0
.end method

.method public initializeVfbEngine(ZLcom/android/common/g/c;)Z
    .registers 6

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    if-nez p2, :cond_d

    .line 62
    const-string/jumbo v1, "VfbHandler"

    const-string/jumbo v2, "rootView == null"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return v0

    .line 74
    :cond_d
    iput-object p2, p0, Lcom/fotonation/vfb/VfbHandler;->mFaceBeautyRenderer:Lcom/android/common/g/c;

    .line 80
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "initializeVfbEngine() - queueEvent() - before"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/fotonation/vfb/VfbHandler;->_initializeVfbEngine(Z)Z

    move-result v0

    .line 93
    const-string/jumbo v1, "VfbHandler"

    const-string/jumbo v2, "initializeVfbEngine() - queueEvent() - after"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return v0
.end method

.method public declared-synchronized isRunning()Z
    .registers 2

    .prologue
    monitor-enter p0

    .line 227
    :try_start_1
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized process([FIII)Z
    .registers 13

    .prologue
    monitor-enter p0

    .line 208
    :try_start_1
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    sget v1, Lcom/fotonation/vfb/VfbHandler;->frameID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/fotonation/vfb/VfbHandler;->frameID:I

    const/16 v4, -0xb4

    .line 209
    const/4 v5, 0x0

    move v2, p2

    move v3, p3

    move-object v6, p1

    move v7, p4

    .line 208
    invoke-virtual/range {v0 .. v7}, Lcom/fotonation/vfb/VfbEngineCtx;->processTexture(IIIILcom/fotonation/vfb/VfbFaceArray;[FI)Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_16

    move-result v0

    monitor-exit p0

    return v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPreviewSize(II)Z
    .registers 6

    .prologue
    monitor-enter p0

    .line 187
    :try_start_1
    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewWidth:I

    if-ne p1, v0, :cond_15

    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewHeight:I

    if-ne p2, v0, :cond_15

    .line 189
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "setPreviewSize() - called with the same parameters"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_33

    .line 190
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 193
    :cond_15
    :try_start_15
    iput p1, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewWidth:I

    .line 194
    iput p2, p0, Lcom/fotonation/vfb/VfbHandler;->mPreviewHeight:I

    .line 196
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "setPreviewSize() - before"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    invoke-virtual {v0, p1, p2}, Lcom/fotonation/vfb/VfbEngineCtx;->setPreviewSize(II)Z

    move-result v0

    .line 198
    const-string/jumbo v1, "VfbHandler"

    const-string/jumbo v2, "setPreviewSize() - after"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_33

    monitor-exit p0

    .line 200
    return v0

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVfbEffectLevel(IIIIIIIZ)V
    .registers 13

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 408
    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mSmoothingLevel:I

    if-ne p1, v0, :cond_1f

    .line 409
    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mToningLevel:I

    if-ne p2, v0, :cond_1f

    .line 410
    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mSlimmingLevel:I

    if-ne p3, v0, :cond_1f

    .line 411
    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mEyeEnlargementLevel:I

    if-ne p4, v0, :cond_1f

    .line 412
    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mEyeCircleLevel:I

    if-ne p5, v0, :cond_1f

    .line 413
    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mSmartLightLevel:I

    if-ne p6, v0, :cond_1f

    .line 414
    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mSmartColorLevel:I

    if-ne p7, v0, :cond_1f

    .line 415
    return-void

    .line 419
    :cond_1f
    if-eq p1, v1, :cond_23

    .line 420
    iput p1, p0, Lcom/fotonation/vfb/VfbHandler;->mSmoothingLevel:I

    .line 421
    :cond_23
    if-eq p2, v1, :cond_27

    .line 422
    iput p2, p0, Lcom/fotonation/vfb/VfbHandler;->mToningLevel:I

    .line 423
    :cond_27
    if-eq p3, v1, :cond_2b

    .line 424
    iput p3, p0, Lcom/fotonation/vfb/VfbHandler;->mSlimmingLevel:I

    .line 425
    :cond_2b
    if-eq p4, v1, :cond_2f

    .line 426
    iput p4, p0, Lcom/fotonation/vfb/VfbHandler;->mEyeEnlargementLevel:I

    .line 427
    :cond_2f
    if-eq p5, v1, :cond_33

    .line 428
    iput p5, p0, Lcom/fotonation/vfb/VfbHandler;->mEyeCircleLevel:I

    .line 429
    :cond_33
    if-eq p6, v1, :cond_37

    .line 430
    iput p6, p0, Lcom/fotonation/vfb/VfbHandler;->mSmartLightLevel:I

    .line 431
    :cond_37
    if-eq p7, v1, :cond_3b

    .line 432
    iput p7, p0, Lcom/fotonation/vfb/VfbHandler;->mSmartColorLevel:I

    .line 434
    :cond_3b
    const-string/jumbo v0, "VfbHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVfbEffectLevel(), mSmoothingLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fotonation/vfb/VfbHandler;->mSmoothingLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string/jumbo v0, "VfbHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVfbEffectLevel(), mToningLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fotonation/vfb/VfbHandler;->mToningLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string/jumbo v0, "VfbHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVfbEffectLevel(), mSlimmingLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fotonation/vfb/VfbHandler;->mSlimmingLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string/jumbo v0, "VfbHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVfbEffectLevel(), mEyeEnlargementLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fotonation/vfb/VfbHandler;->mEyeEnlargementLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string/jumbo v0, "VfbHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVfbEffectLevel(), mEyeCircleLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fotonation/vfb/VfbHandler;->mEyeCircleLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string/jumbo v0, "VfbHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVfbEffectLevel(), mSmartLightLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fotonation/vfb/VfbHandler;->mSmartLightLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string/jumbo v0, "VfbHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVfbEffectLevel(), mSmartColorLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fotonation/vfb/VfbHandler;->mSmartColorLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    if-eqz p8, :cond_162

    .line 443
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    if-eqz v0, :cond_162

    .line 444
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget v1, p0, Lcom/fotonation/vfb/VfbHandler;->mSmartColorLevel:I

    iput v1, v0, Lcom/fotonation/vfb/VfbConfig;->smartColor:I

    .line 445
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget v1, p0, Lcom/fotonation/vfb/VfbHandler;->mSmartLightLevel:I

    iput v1, v0, Lcom/fotonation/vfb/VfbConfig;->smartLight:I

    .line 446
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget v1, p0, Lcom/fotonation/vfb/VfbHandler;->mSmoothingLevel:I

    iput v1, v0, Lcom/fotonation/vfb/VfbConfig;->skinSmoothing:I

    .line 447
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget v1, p0, Lcom/fotonation/vfb/VfbHandler;->mToningLevel:I

    iput v1, v0, Lcom/fotonation/vfb/VfbConfig;->skinToning:I

    .line 448
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget-object v0, v0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/fotonation/vfb/VfbHandler;->mSmoothingLevel:I

    iput v1, v0, Lcom/fotonation/vfb/VfbFaceStrengths;->smoothing:I

    .line 449
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget-object v0, v0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/fotonation/vfb/VfbHandler;->mToningLevel:I

    iput v1, v0, Lcom/fotonation/vfb/VfbFaceStrengths;->toning:I

    .line 450
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget-object v0, v0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    aget-object v0, v0, v3

    iget v1, p0, Lcom/fotonation/vfb/VfbHandler;->mSlimmingLevel:I

    iput v1, v0, Lcom/fotonation/vfb/VfbFaceStrengths;->slimming:I

    .line 451
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget-object v0, v0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/fotonation/vfb/VfbFaceStrengths;->eyeEnlargement:I

    .line 452
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget-object v0, v0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/fotonation/vfb/VfbFaceStrengths;->eyeCircles:I

    .line 453
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget-object v0, v0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/fotonation/vfb/VfbFaceStrengths;->eyeEnhancement:I

    .line 454
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    iget-object v0, v0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    aget-object v0, v0, v3

    iput v3, v0, Lcom/fotonation/vfb/VfbFaceStrengths;->threeDLook:I

    .line 455
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    iget-object v1, p0, Lcom/fotonation/vfb/VfbHandler;->vfbConfig:Lcom/fotonation/vfb/VfbConfig;

    invoke-virtual {v0, v1}, Lcom/fotonation/vfb/VfbEngineCtx;->setConfiguration(Lcom/fotonation/vfb/VfbConfig;)V

    .line 404
    :cond_162
    return-void
.end method

.method public declared-synchronized setViewSize(II)V
    .registers 5

    .prologue
    monitor-enter p0

    .line 171
    :try_start_1
    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mViewWidth:I

    if-ne p1, v0, :cond_14

    iget v0, p0, Lcom/fotonation/vfb/VfbHandler;->mViewHeight:I

    if-ne p2, v0, :cond_14

    .line 173
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "setViewSize() - called with the same parameters"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_31

    monitor-exit p0

    .line 174
    return-void

    .line 177
    :cond_14
    :try_start_14
    iput p1, p0, Lcom/fotonation/vfb/VfbHandler;->mViewWidth:I

    .line 178
    iput p2, p0, Lcom/fotonation/vfb/VfbHandler;->mViewHeight:I

    .line 180
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "setViewSize() - before"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/fotonation/vfb/VfbHandler;->mVfbEngine:Lcom/fotonation/vfb/VfbEngineCtx;

    invoke-virtual {v0, p1, p2}, Lcom/fotonation/vfb/VfbEngineCtx;->setViewSize(II)Z

    .line 182
    const-string/jumbo v0, "VfbHandler"

    const-string/jumbo v1, "setViewSize() - after"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_31

    monitor-exit p0

    .line 169
    return-void

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method
