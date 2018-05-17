.class public Lcn/nubia/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bol:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private bom:Landroid/content/Context;

.field private bon:Landroid/os/CancellationSignal;

.field private boo:Landroid/hardware/fingerprint/FingerprintManager;

.field private bop:Landroid/os/Handler;

.field private boq:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcn/nubia/a/a;->bom:Landroid/content/Context;

    .line 15
    iput-object v0, p0, Lcn/nubia/a/a;->boo:Landroid/hardware/fingerprint/FingerprintManager;

    .line 16
    iput-object v0, p0, Lcn/nubia/a/a;->bon:Landroid/os/CancellationSignal;

    .line 17
    iput-object v0, p0, Lcn/nubia/a/a;->bop:Landroid/os/Handler;

    .line 18
    new-instance v0, Lcn/nubia/a/b;

    invoke-direct {v0, p0}, Lcn/nubia/a/b;-><init>(Lcn/nubia/a/a;)V

    iput-object v0, p0, Lcn/nubia/a/a;->boq:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Lcn/nubia/a/c;

    invoke-direct {v0, p0}, Lcn/nubia/a/c;-><init>(Lcn/nubia/a/a;)V

    iput-object v0, p0, Lcn/nubia/a/a;->bol:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 32
    return-void
.end method

.method private bKJ(I)V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/a/a;->bop:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 118
    const-string/jumbo v0, "Fingerprint"

    const-string/jumbo v1, "onProgress mHandler is null!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void

    .line 121
    :cond_e
    iget-object v0, p0, Lcn/nubia/a/a;->bop:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    return-void
.end method

.method private bKK(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 125
    iget-object v0, p0, Lcn/nubia/a/a;->bop:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 126
    const-string/jumbo v0, "Fingerprint"

    const-string/jumbo v1, "onProgress mHandler is null!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 129
    :cond_e
    iget-object v0, p0, Lcn/nubia/a/a;->bop:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    return-void
.end method

.method private bKL()V
    .registers 5

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/a/a;->bop:Landroid/os/Handler;

    if-nez v0, :cond_e

    .line 55
    const-string/jumbo v0, "Fingerprint"

    const-string/jumbo v1, "startFingerprint failed! mHandler is null."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 58
    :cond_e
    iget-object v0, p0, Lcn/nubia/a/a;->bop:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/a/a;->boq:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    return-void
.end method

.method private bKM()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcn/nubia/a/a;->bon:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcn/nubia/a/a;->bon:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 65
    :cond_d
    :goto_d
    iput-object v1, p0, Lcn/nubia/a/a;->bon:Landroid/os/CancellationSignal;

    .line 61
    return-void

    .line 63
    :cond_10
    iget-object v0, p0, Lcn/nubia/a/a;->bon:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    goto :goto_d
.end method

.method static synthetic bKN(Lcn/nubia/a/a;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .registers 2

    iget-object v0, p0, Lcn/nubia/a/a;->bol:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic bKO(Lcn/nubia/a/a;)Landroid/os/CancellationSignal;
    .registers 2

    iget-object v0, p0, Lcn/nubia/a/a;->bon:Landroid/os/CancellationSignal;

    return-object v0
.end method

.method static synthetic bKP(Lcn/nubia/a/a;)Landroid/hardware/fingerprint/FingerprintManager;
    .registers 2

    iget-object v0, p0, Lcn/nubia/a/a;->boo:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic bKQ(Lcn/nubia/a/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcn/nubia/a/a;->bop:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic bKR(Lcn/nubia/a/a;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .registers 2

    iput-object p1, p0, Lcn/nubia/a/a;->bon:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic bKS(Lcn/nubia/a/a;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/nubia/a/a;->bKK(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic bKT(Lcn/nubia/a/a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/nubia/a/a;->bKJ(I)V

    return-void
.end method

.method static synthetic bKU(Lcn/nubia/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcn/nubia/a/a;->bKL()V

    return-void
.end method


# virtual methods
.method public bKH(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 109
    iget-object v0, p0, Lcn/nubia/a/a;->bop:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 110
    iget-object v0, p0, Lcn/nubia/a/a;->bop:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/a/a;->boq:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    :cond_c
    invoke-direct {p0}, Lcn/nubia/a/a;->bKM()V

    .line 113
    iput-object v2, p0, Lcn/nubia/a/a;->bop:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method public bKI(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .prologue
    .line 36
    const-string/jumbo v0, "Fingerprint"

    const-string/jumbo v1, "open"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcn/nubia/a/a;->bom:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcn/nubia/a/a;->bop:Landroid/os/Handler;

    .line 39
    iget-object v0, p0, Lcn/nubia/a/a;->boo:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_1e

    .line 40
    iget-object v0, p0, Lcn/nubia/a/a;->bom:Landroid/content/Context;

    .line 41
    const-string/jumbo v1, "fingerprint"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcn/nubia/a/a;->boo:Landroid/hardware/fingerprint/FingerprintManager;

    .line 43
    :cond_1e
    iget-object v0, p0, Lcn/nubia/a/a;->boo:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 44
    const/16 v0, 0x6c

    invoke-direct {p0, v0}, Lcn/nubia/a/a;->bKJ(I)V

    .line 45
    return-void

    .line 50
    :cond_2c
    invoke-direct {p0}, Lcn/nubia/a/a;->bKL()V

    .line 35
    return-void
.end method
