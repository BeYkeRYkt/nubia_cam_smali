.class public Lcn/nubia/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private boA:I

.field private boB:Ljava/lang/String;

.field private bot:Lcn/nubia/b/c;

.field private bou:I

.field private bov:Lcn/nubia/bigAperture/BigApertureProcess;

.field private bow:Landroid/content/ContentResolver;

.field private box:Ljava/util/concurrent/ExecutorService;

.field private boy:Lcom/android/common/i;

.field private final boz:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v1, p0, Lcn/nubia/b/b;->boB:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    iput v0, p0, Lcn/nubia/b/b;->bou:I

    .line 48
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v0

    iput v0, p0, Lcn/nubia/b/b;->boA:I

    .line 50
    iput-object v1, p0, Lcn/nubia/b/b;->bov:Lcn/nubia/bigAperture/BigApertureProcess;

    .line 51
    iput-object v1, p0, Lcn/nubia/b/b;->boy:Lcom/android/common/i;

    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/b;->box:Ljava/util/concurrent/ExecutorService;

    .line 396
    const-string/jumbo v0, "ApertureBackground"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/b/b;->boz:Z

    .line 57
    new-instance v0, Lcom/android/common/i;

    const v1, 0x7f0a0279

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/b/b;->boy:Lcom/android/common/i;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/b;->bow:Landroid/content/ContentResolver;

    .line 56
    return-void
.end method

.method private bLa(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 398
    iget-boolean v0, p0, Lcn/nubia/b/b;->boz:Z

    if-eqz v0, :cond_a

    .line 399
    const-string/jumbo v0, "BigAperSaveTasks"

    invoke-static {v0, p1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_a
    return-void
.end method

.method static synthetic bLc(Lcn/nubia/b/b;)I
    .registers 2

    iget v0, p0, Lcn/nubia/b/b;->bou:I

    return v0
.end method

.method static synthetic bLd(Lcn/nubia/b/b;)Lcn/nubia/bigAperture/BigApertureProcess;
    .registers 2

    iget-object v0, p0, Lcn/nubia/b/b;->bov:Lcn/nubia/bigAperture/BigApertureProcess;

    return-object v0
.end method

.method static synthetic bLe(Lcn/nubia/b/b;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcn/nubia/b/b;->bow:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic bLf(Lcn/nubia/b/b;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lcn/nubia/b/b;->box:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic bLg(Lcn/nubia/b/b;)Lcom/android/common/i;
    .registers 2

    iget-object v0, p0, Lcn/nubia/b/b;->boy:Lcom/android/common/i;

    return-object v0
.end method

.method static synthetic bLh(Lcn/nubia/b/b;)I
    .registers 2

    iget v0, p0, Lcn/nubia/b/b;->boA:I

    return v0
.end method

.method static synthetic bLi(Lcn/nubia/b/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcn/nubia/b/b;->boB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bLj(Lcn/nubia/b/b;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/nubia/b/b;->bLa(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bKZ(JILandroid/graphics/Rect;FFLandroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;I[I)Lcn/nubia/b/c;
    .registers 24

    .prologue
    .line 78
    new-instance v0, Lcn/nubia/b/c;

    move-object v1, p0

    move-wide v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcn/nubia/b/c;-><init>(Lcn/nubia/b/b;JILandroid/graphics/Rect;FFLandroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;I[I)V

    iput-object v0, p0, Lcn/nubia/b/b;->bot:Lcn/nubia/b/c;

    .line 80
    iget-object v0, p0, Lcn/nubia/b/b;->bot:Lcn/nubia/b/c;

    return-object v0
.end method

.method public bLb(Lcn/nubia/bigAperture/BigApertureProcess;)V
    .registers 4

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/b/b;->bov:Lcn/nubia/bigAperture/BigApertureProcess;

    .line 64
    :try_start_2
    iget-object v0, p0, Lcn/nubia/b/b;->bov:Lcn/nubia/bigAperture/BigApertureProcess;

    invoke-interface {v0}, Lcn/nubia/bigAperture/BigApertureProcess;->getBigApertureTmpDir()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/b/b;->boB:Ljava/lang/String;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    .line 61
    :goto_a
    return-void

    .line 65
    :catch_b
    move-exception v0

    .line 66
    sget-object v1, Lcn/nubia/bigAperture/BigApertureService;->bnT:Ljava/lang/String;

    iput-object v1, p0, Lcn/nubia/b/b;->boB:Ljava/lang/String;

    .line 67
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_a
.end method

.method public release()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcn/nubia/b/b;->box:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/b/b;->box:Ljava/util/concurrent/ExecutorService;

    .line 71
    return-void
.end method
