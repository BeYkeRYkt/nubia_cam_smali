.class final Lcom/android/video/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/af;


# instance fields
.field final synthetic aIL:Lcom/android/video/n;


# direct methods
.method constructor <init>(Lcom/android/video/n;)V
    .registers 2

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/video/v;->aIL:Lcom/android/video/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public EU()V
    .registers 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/video/v;->aIL:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXJ(Lcom/android/video/n;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    if-nez v0, :cond_24

    .line 480
    iget-object v0, p0, Lcom/android/video/v;->aIL:Lcom/android/video/n;

    invoke-virtual {v0}, Lcom/android/video/n;->alq()V

    .line 481
    iget-object v0, p0, Lcom/android/video/v;->aIL:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXQ(Lcom/android/video/n;)V

    .line 482
    iget-object v0, p0, Lcom/android/video/v;->aIL:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXL(Lcom/android/video/n;)Lcom/android/video/f;

    move-result-object v0

    if-nez v0, :cond_24

    .line 483
    iget-object v0, p0, Lcom/android/video/v;->aIL:Lcom/android/video/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/video/n;->aXT(Lcom/android/video/n;I)V

    .line 478
    :cond_24
    return-void
.end method
