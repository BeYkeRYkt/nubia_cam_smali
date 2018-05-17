.class final Lcom/android/clone/n;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic aTL:Lcom/android/clone/a;


# direct methods
.method constructor <init>(Lcom/android/clone/a;)V
    .registers 2

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/clone/n;->aTL:Lcom/android/clone/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/clone/n;->aTL:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjF(Lcom/android/clone/a;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 607
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "showEditPreview cancle, because is destroy."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    return-void

    .line 610
    :cond_12
    invoke-static {}, Lcom/android/clone/i;->bkN()Lcom/android/clone/i;

    move-result-object v0

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTv:Lcom/android/clone/CloneStatus$Status;

    invoke-virtual {v0, v1}, Lcom/android/clone/i;->bkO(Lcom/android/clone/CloneStatus$Status;)V

    .line 611
    iget-object v0, p0, Lcom/android/clone/n;->aTL:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjs(Lcom/android/clone/a;)Lcom/android/clone/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/clone/n;->aTL:Lcom/android/clone/a;

    invoke-static {v1}, Lcom/android/clone/a;->bjt(Lcom/android/clone/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/clone/j;->bkS(Landroid/graphics/Bitmap;)V

    .line 612
    iget-object v0, p0, Lcom/android/clone/n;->aTL:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjC(Lcom/android/clone/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 613
    invoke-static {}, Lcom/android/clone/i;->bkN()Lcom/android/clone/i;

    move-result-object v0

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTw:Lcom/android/clone/CloneStatus$Status;

    invoke-virtual {v0, v1}, Lcom/android/clone/i;->bkO(Lcom/android/clone/CloneStatus$Status;)V

    .line 605
    return-void
.end method
