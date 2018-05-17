.class final Lcom/android/normal/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/b/b;


# instance fields
.field final synthetic bay:Lcom/android/normal/a/i;


# direct methods
.method constructor <init>(Lcom/android/normal/a/i;)V
    .registers 2

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/normal/a/k;->bay:Lcom/android/normal/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aYZ()V
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/normal/a/k;->bay:Lcom/android/normal/a/i;

    invoke-static {v0}, Lcom/android/normal/a/i;->bri(Lcom/android/normal/a/i;)Lcn/nubia/videogenerator/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/d/a;->stop()V

    .line 328
    iget-object v0, p0, Lcom/android/normal/a/k;->bay:Lcom/android/normal/a/i;

    invoke-static {v0}, Lcom/android/normal/a/i;->brj(Lcom/android/normal/a/i;)V

    .line 329
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mlp-ED"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/normal/a/k;->bay:Lcom/android/normal/a/i;

    iget-object v0, v0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqF(Lcom/android/normal/a/b;)Lcom/android/normal/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/normal/a/d;->bqO()V

    .line 331
    iget-object v0, p0, Lcom/android/normal/a/k;->bay:Lcom/android/normal/a/i;

    iget-object v0, v0, Lcom/android/normal/a/i;->baw:Lcom/android/normal/a/b;

    invoke-static {v0}, Lcom/android/normal/a/b;->bqD(Lcom/android/normal/a/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 332
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mlp-ED----"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method
