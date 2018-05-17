.class public Lcom/android/startrack/j;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aRC:Lcom/android/startrack/h;


# direct methods
.method public constructor <init>(Lcom/android/startrack/h;)V
    .registers 2

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 531
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_98

    .line 530
    :goto_6
    return-void

    .line 533
    :sswitch_7
    iget-object v0, p0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bil(Lcom/android/startrack/h;)Lcom/android/common/f/b;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 534
    iget-object v0, p0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bil(Lcom/android/startrack/h;)Lcom/android/common/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/f/b;->stop()V

    .line 537
    :cond_18
    iget-object v0, p0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bik(Lcom/android/startrack/h;)Lcom/android/common/appService/W;

    move-result-object v0

    new-instance v1, Lcom/android/startrack/m;

    invoke-direct {v1, p0}, Lcom/android/startrack/m;-><init>(Lcom/android/startrack/j;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pP(Lcom/android/common/appService/L;)V

    goto :goto_6

    .line 554
    :sswitch_27
    iget-object v0, p0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bik(Lcom/android/startrack/h;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 555
    iget-object v0, p0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bik(Lcom/android/startrack/h;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-nez v0, :cond_71

    .line 556
    const-string/jumbo v0, "StarTrackFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enough storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v2}, Lcom/android/startrack/h;->bik(Lcom/android/startrack/h;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 557
    const-string/jumbo v2, "; stop capture."

    .line 556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->biu(Lcom/android/startrack/h;)V

    .line 559
    return-void

    .line 561
    :cond_71
    iget-object v0, p0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-virtual {v0}, Lcom/android/startrack/h;->bii()V

    goto :goto_6

    .line 565
    :sswitch_77
    iget-object v0, p0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    iget-object v1, p0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v1}, Lcom/android/startrack/h;->bik(Lcom/android/startrack/h;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qv()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/startrack/h;->biq(Lcom/android/startrack/h;IZ)V

    goto/16 :goto_6

    .line 568
    :sswitch_89
    iget-object v0, p0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bit(Lcom/android/startrack/h;)V

    goto/16 :goto_6

    .line 571
    :sswitch_90
    iget-object v0, p0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->biu(Lcom/android/startrack/h;)V

    goto/16 :goto_6

    .line 531
    nop

    :sswitch_data_98
    .sparse-switch
        -0x3 -> :sswitch_77
        -0x1 -> :sswitch_89
        0x45 -> :sswitch_7
        0x46 -> :sswitch_27
        0x72 -> :sswitch_90
    .end sparse-switch
.end method
