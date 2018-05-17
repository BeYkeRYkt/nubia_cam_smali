.class final Lcom/android/video/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aIH:Lcom/android/video/d;

.field final synthetic aII:Lcom/android/video/f;


# direct methods
.method constructor <init>(Lcom/android/video/d;Lcom/android/video/f;)V
    .registers 3

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/video/s;->aIH:Lcom/android/video/d;

    iput-object p2, p0, Lcom/android/video/s;->aII:Lcom/android/video/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/video/s;->aIH:Lcom/android/video/d;

    invoke-static {v0}, Lcom/android/video/d;->aWs(Lcom/android/video/d;)Lcom/android/video/e;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 500
    iget-object v0, p0, Lcom/android/video/s;->aIH:Lcom/android/video/d;

    invoke-static {v0}, Lcom/android/video/d;->aWs(Lcom/android/video/d;)Lcom/android/video/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/video/s;->aII:Lcom/android/video/f;

    invoke-interface {v0, v1}, Lcom/android/video/e;->aWJ(Lcom/android/video/f;)V

    .line 498
    :cond_13
    return-void
.end method
