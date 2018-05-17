.class final Lcom/android/common/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/j;


# instance fields
.field final synthetic akQ:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/common/X;->akQ:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aU()V
    .registers 5

    .prologue
    .line 616
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "FirstFrameAvailable"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lcom/android/common/X;->akQ:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 619
    iget-object v0, p0, Lcom/android/common/X;->akQ:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hQ()V

    .line 620
    iget-object v0, p0, Lcom/android/common/X;->akQ:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qE(Z)V

    .line 621
    iget-object v0, p0, Lcom/android/common/X;->akQ:Lcom/android/common/ActivityBase;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Lcom/android/common/ActivityBase;->att(J)V

    .line 615
    return-void
.end method
