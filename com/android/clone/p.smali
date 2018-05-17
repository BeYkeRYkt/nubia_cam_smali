.class final Lcom/android/clone/p;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic aTN:Lcom/android/clone/a;


# direct methods
.method constructor <init>(Lcom/android/clone/a;)V
    .registers 2

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/clone/p;->aTN:Lcom/android/clone/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/clone/p;->aTN:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjF(Lcom/android/clone/a;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 909
    const-string/jumbo v0, "CloneViewManager"

    const-string/jumbo v1, "handleComposition cancle, because is destroy."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return-void

    .line 912
    :cond_12
    invoke-static {}, Lcom/android/clone/i;->bkN()Lcom/android/clone/i;

    move-result-object v0

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTy:Lcom/android/clone/CloneStatus$Status;

    invoke-virtual {v0, v1}, Lcom/android/clone/i;->bkO(Lcom/android/clone/CloneStatus$Status;)V

    .line 913
    iget-object v0, p0, Lcom/android/clone/p;->aTN:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjt(Lcom/android/clone/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 914
    iget-object v0, p0, Lcom/android/clone/p;->aTN:Lcom/android/clone/a;

    iget-object v1, p0, Lcom/android/clone/p;->aTN:Lcom/android/clone/a;

    invoke-static {v1}, Lcom/android/clone/a;->bjN(Lcom/android/clone/a;)I

    move-result v1

    .line 915
    iget-object v2, p0, Lcom/android/clone/p;->aTN:Lcom/android/clone/a;

    invoke-static {v2}, Lcom/android/clone/a;->bjM(Lcom/android/clone/a;)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 914
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/clone/a;->bjS(Lcom/android/clone/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 917
    :cond_3a
    iget-object v0, p0, Lcom/android/clone/p;->aTN:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjs(Lcom/android/clone/a;)Lcom/android/clone/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/clone/p;->aTN:Lcom/android/clone/a;

    invoke-static {v1}, Lcom/android/clone/a;->bjt(Lcom/android/clone/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/clone/j;->bkX(Landroid/graphics/Bitmap;)V

    .line 918
    iget-object v0, p0, Lcom/android/clone/p;->aTN:Lcom/android/clone/a;

    invoke-static {v0}, Lcom/android/clone/a;->bjC(Lcom/android/clone/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 919
    invoke-static {}, Lcom/android/clone/i;->bkN()Lcom/android/clone/i;

    move-result-object v0

    sget-object v1, Lcom/android/clone/CloneStatus$Status;->aTw:Lcom/android/clone/CloneStatus$Status;

    invoke-virtual {v0, v1}, Lcom/android/clone/i;->bkO(Lcom/android/clone/CloneStatus$Status;)V

    .line 907
    return-void
.end method
