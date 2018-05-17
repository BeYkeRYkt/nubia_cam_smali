.class final Lcom/android/video/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aIF:Lcom/android/video/d;

.field final synthetic aIG:I


# direct methods
.method constructor <init>(Lcom/android/video/d;I)V
    .registers 3

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/video/r;->aIF:Lcom/android/video/d;

    iput p2, p0, Lcom/android/video/r;->aIG:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/android/video/r;->aIF:Lcom/android/video/d;

    invoke-static {v0}, Lcom/android/video/d;->aWs(Lcom/android/video/d;)Lcom/android/video/e;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 479
    iget-object v0, p0, Lcom/android/video/r;->aIF:Lcom/android/video/d;

    invoke-static {v0}, Lcom/android/video/d;->aWs(Lcom/android/video/d;)Lcom/android/video/e;

    move-result-object v0

    iget v1, p0, Lcom/android/video/r;->aIG:I

    invoke-interface {v0, v1}, Lcom/android/video/e;->aWN(I)V

    .line 477
    :cond_13
    return-void
.end method
