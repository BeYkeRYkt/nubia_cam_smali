.class final Lcn/nubia/a/c;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "SourceFile"


# instance fields
.field final synthetic bos:Lcn/nubia/a/a;


# direct methods
.method constructor <init>(Lcn/nubia/a/a;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcn/nubia/a/c;->bos:Lcn/nubia/a/a;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationAcquired(I)V
    .registers 5

    .prologue
    .line 103
    const-string/jumbo v0, "Fingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationAcquired acquiredInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcn/nubia/a/c;->bos:Lcn/nubia/a/a;

    const/16 v1, 0x67

    invoke-static {v0, v1}, Lcn/nubia/a/a;->bKT(Lcn/nubia/a/a;I)V

    .line 102
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 6

    .prologue
    .line 85
    const-string/jumbo v0, "Fingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationError errMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    const-string/jumbo v2, "; errString = "

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/a/c;->bos:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->bKQ(Lcn/nubia/a/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 88
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 89
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 90
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lcn/nubia/a/c;->bos:Lcn/nubia/a/a;

    invoke-static {v1, v0}, Lcn/nubia/a/a;->bKS(Lcn/nubia/a/a;Landroid/os/Message;)V

    .line 92
    iget-object v0, p0, Lcn/nubia/a/c;->bos:Lcn/nubia/a/a;

    invoke-static {v0}, Lcn/nubia/a/a;->bKU(Lcn/nubia/a/a;)V

    .line 84
    :cond_42
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 3

    .prologue
    .line 79
    const-string/jumbo v0, "Fingerprint"

    const-string/jumbo v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 6

    .prologue
    .line 98
    const-string/jumbo v0, "Fingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationHelp helpMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    const-string/jumbo v2, "; helpString = "

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .registers 5

    .prologue
    .line 72
    const-string/jumbo v0, "Fingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticationSucceeded result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
