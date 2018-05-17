.class final Lcom/android/video/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aIE:Lcom/android/video/d;


# direct methods
.method constructor <init>(Lcom/android/video/d;)V
    .registers 2

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/video/q;->aIE:Lcom/android/video/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/video/q;->aIE:Lcom/android/video/d;

    invoke-static {v0}, Lcom/android/video/d;->aWs(Lcom/android/video/d;)Lcom/android/video/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 458
    iget-object v0, p0, Lcom/android/video/q;->aIE:Lcom/android/video/d;

    invoke-static {v0}, Lcom/android/video/d;->aWs(Lcom/android/video/d;)Lcom/android/video/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/video/e;->aWO()V

    .line 456
    :cond_11
    return-void
.end method
