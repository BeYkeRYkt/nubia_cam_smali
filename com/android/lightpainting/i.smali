.class Lcom/android/lightpainting/i;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field final synthetic aut:Lcom/android/lightpainting/e;


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/android/lightpainting/i;->aut:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGZ(Lcom/android/lightpainting/e;)Z

    .line 1048
    iget-object v0, p0, Lcom/android/lightpainting/i;->aut:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aHl(Lcom/android/lightpainting/e;)V

    .line 1046
    return-void
.end method

.method public onTick(J)V
    .registers 8

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/android/lightpainting/i;->aut:Lcom/android/lightpainting/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/lightpainting/e;->aHi(Lcom/android/lightpainting/e;Ljava/lang/CharSequence;)V

    .line 1051
    return-void
.end method
