.class final Lcom/android/objectclear/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/objectclear/d;


# instance fields
.field final synthetic aUU:Lcom/android/objectclear/i;


# direct methods
.method constructor <init>(Lcom/android/objectclear/i;)V
    .registers 2

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/objectclear/o;->aUU:Lcom/android/objectclear/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blA(I)V
    .registers 5

    .prologue
    .line 781
    const-string/jumbo v0, "NubiaObjectClearFragment"

    const-string/jumbo v1, "onGetData"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/android/objectclear/o;->aUU:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bme(Lcom/android/objectclear/i;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 780
    return-void
.end method

.method public bly()V
    .registers 3

    .prologue
    .line 776
    const-string/jumbo v0, "NubiaObjectClearFragment"

    const-string/jumbo v1, "onDataFinish"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/android/objectclear/o;->aUU:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bme(Lcom/android/objectclear/i;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 775
    return-void
.end method

.method public blz()V
    .registers 3

    .prologue
    .line 788
    const-string/jumbo v0, "NubiaObjectClearFragment"

    const-string/jumbo v1, "onDataStart"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/android/objectclear/o;->aUU:Lcom/android/objectclear/i;

    invoke-static {v0}, Lcom/android/objectclear/i;->bme(Lcom/android/objectclear/i;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 787
    return-void
.end method
