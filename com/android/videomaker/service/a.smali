.class Lcom/android/videomaker/service/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final aKj:Ljava/util/concurrent/BlockingQueue;

.field final synthetic aKk:Lcom/android/videomaker/service/MakerService;


# direct methods
.method public constructor <init>(Lcom/android/videomaker/service/MakerService;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/videomaker/service/a;->aKk:Lcom/android/videomaker/service/MakerService;

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IntentProcessor-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 901
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/service/a;->aKj:Ljava/util/concurrent/BlockingQueue;

    .line 899
    return-void
.end method


# virtual methods
.method public aZI(Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/android/videomaker/service/a;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 922
    iget-object v0, p0, Lcom/android/videomaker/service/a;->aKj:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 920
    :goto_b
    return-void

    .line 924
    :cond_c
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/videomaker/service/a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " should be started before submitting tasks."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public quit()V
    .registers 5

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/videomaker/service/a;->aKj:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    .line 946
    if-lez v0, :cond_27

    .line 947
    const-string/jumbo v1, "MakerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Thread queue is not empty. Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Lcom/android/videomaker/service/a;->aKj:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 950
    :cond_27
    invoke-virtual {p0}, Lcom/android/videomaker/service/a;->interrupt()V

    .line 943
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 908
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/videomaker/service/a;->aKk:Lcom/android/videomaker/service/MakerService;

    iget-object v0, p0, Lcom/android/videomaker/service/a;->aKj:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/videomaker/service/MakerService;->aZx(Landroid/content/Intent;)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_0

    .line 910
    :catch_e
    move-exception v0

    .line 911
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Terminating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/videomaker/service/a;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    return-void
.end method
