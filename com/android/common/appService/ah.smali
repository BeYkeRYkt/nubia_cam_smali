.class final Lcom/android/common/appService/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/U;


# instance fields
.field final synthetic nj:Lcom/android/common/appService/q;


# direct methods
.method constructor <init>(Lcom/android/common/appService/q;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/common/appService/ah;->nj:Lcom/android/common/appService/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public oY(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 47
    iget-object v0, p0, Lcom/android/common/appService/ah;->nj:Lcom/android/common/appService/q;

    invoke-virtual {v0}, Lcom/android/common/appService/q;->kt()V

    .line 48
    iget-object v0, p0, Lcom/android/common/appService/ah;->nj:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->ky(Lcom/android/common/appService/q;)Lcom/android/common/ui/ZoomSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/ZoomSeekBar;->zQ(I)V

    .line 49
    iget-object v0, p0, Lcom/android/common/appService/ah;->nj:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->kw(Lcom/android/common/appService/q;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/appService/ah;->nj:Lcom/android/common/appService/q;

    invoke-static {v1, p1}, Lcom/android/common/appService/q;->kA(Lcom/android/common/appService/q;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/android/common/appService/ah;->nj:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->kv(Lcom/android/common/appService/q;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 51
    iget-object v0, p0, Lcom/android/common/appService/ah;->nj:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->kv(Lcom/android/common/appService/q;)Landroid/os/Handler;

    move-result-object v0

    .line 52
    const-wide/16 v2, 0x1388

    .line 51
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 46
    return-void
.end method

.method public oZ()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/common/appService/ah;->nj:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->kv(Lcom/android/common/appService/q;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 55
    return-void
.end method
