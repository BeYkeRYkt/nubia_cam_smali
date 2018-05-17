.class final Lcom/android/normal/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bbr:Lcom/android/normal/b;


# direct methods
.method constructor <init>(Lcom/android/normal/b;)V
    .registers 2

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/normal/q;->bbr:Lcom/android/normal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/normal/q;->bbr:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsd(Lcom/android/normal/b;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 547
    const-string/jumbo v0, "NormalFragment"

    const-string/jumbo v1, "Fragment is paused, ignore showIdleUI"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void

    .line 550
    :cond_12
    iget-object v0, p0, Lcom/android/normal/q;->bbr:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->mJ(Z)V

    .line 551
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 545
    return-void
.end method
