.class final Lcn/nubia/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bor:Lcn/nubia/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/a/a;)V
    .registers 2

    .prologue
    .line 18
    iput-object p1, p0, Lcn/nubia/a/b;->bor:Lcn/nubia/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/a/b;->bor:Lcn/nubia/a/a;

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-static {v0, v1}, Lcn/nubia/a/a;->bKR(Lcn/nubia/a/a;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 24
    :try_start_a
    iget-object v0, p0, Lcn/nubia/a/b;->bor:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->bKP(Lcn/nubia/a/a;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/a/b;->bor:Lcn/nubia/a/a;

    invoke-static {v1}, Lcn/nubia/a/a;->bKO(Lcn/nubia/a/a;)Landroid/os/CancellationSignal;

    move-result-object v2

    .line 25
    iget-object v1, p0, Lcn/nubia/a/b;->bor:Lcn/nubia/a/a;

    invoke-static {v1}, Lcn/nubia/a/a;->bKN(Lcn/nubia/a/a;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v4

    .line 24
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 25
    const/4 v5, 0x0

    .line 24
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_22} :catch_23

    .line 21
    :goto_22
    return-void

    .line 26
    :catch_23
    move-exception v0

    .line 27
    const-string/jumbo v1, "Fingerprint"

    const-string/jumbo v2, "authenticate failed!"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method
