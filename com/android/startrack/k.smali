.class Lcom/android/startrack/k;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field final synthetic aRD:Lcom/android/startrack/h;


# direct methods
.method public constructor <init>(Lcom/android/startrack/h;JJ)V
    .registers 6

    .prologue
    .line 608
    iput-object p1, p0, Lcom/android/startrack/k;->aRD:Lcom/android/startrack/h;

    .line 609
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 608
    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/startrack/k;->aRD:Lcom/android/startrack/h;

    invoke-virtual {v0}, Lcom/android/startrack/h;->isVisible()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 616
    :cond_9
    iget-object v0, p0, Lcom/android/startrack/k;->aRD:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bip(Lcom/android/startrack/h;)Z

    .line 617
    iget-object v0, p0, Lcom/android/startrack/k;->aRD:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bis(Lcom/android/startrack/h;)V

    .line 613
    return-void
.end method

.method public onTick(J)V
    .registers 8

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/startrack/k;->aRD:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bim(Lcom/android/startrack/h;)Lcom/android/startrack/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/startrack/a;->bhj(Ljava/lang/CharSequence;)V

    .line 622
    return-void
.end method
