.class final Lcom/android/clone/o;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic aTM:Lcom/android/clone/a;


# direct methods
.method constructor <init>(Lcom/android/clone/a;)V
    .registers 2

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/clone/o;->aTM:Lcom/android/clone/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/clone/o;->aTM:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjF(Lcom/android/clone/a;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 635
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "composeConfirm cancle, because is destroy."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void

    .line 638
    :cond_12
    invoke-static {}, Lcom/android/clone/i;->bkN()Lcom/android/clone/i;

    move-result-object v0

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTx:Lcom/android/clone/CloneStatus$Status;

    invoke-virtual {v0, v1}, Lcom/android/clone/i;->bkO(Lcom/android/clone/CloneStatus$Status;)V

    .line 639
    iget-object v0, p0, Lcom/android/clone/o;->aTM:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjs(Lcom/android/clone/a;)Lcom/android/clone/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/clone/j;->bkT()[B

    move-result-object v0

    .line 640
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 641
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 642
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 643
    iget-object v0, p0, Lcom/android/clone/o;->aTM:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjC(Lcom/android/clone/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 644
    invoke-static {}, Lcom/android/clone/i;->bkN()Lcom/android/clone/i;

    move-result-object v0

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTw:Lcom/android/clone/CloneStatus$Status;

    invoke-virtual {v0, v1}, Lcom/android/clone/i;->bkO(Lcom/android/clone/CloneStatus$Status;)V

    .line 633
    return-void
.end method
