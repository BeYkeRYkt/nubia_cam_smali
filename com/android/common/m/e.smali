.class Lcom/android/common/m/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic abj:Lcom/android/common/m/c;


# direct methods
.method private constructor <init>(Lcom/android/common/m/c;)V
    .registers 2

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/common/m/e;->abj:Lcom/android/common/m/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/m/c;Lcom/android/common/m/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/m/e;-><init>(Lcom/android/common/m/c;)V

    return-void
.end method


# virtual methods
.method protected varargs ahI([Lcom/android/common/d/e;)Lcom/android/common/m/a;
    .registers 3

    .prologue
    .line 222
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p1, v0

    .line 223
    invoke-interface {v0}, Lcom/android/common/d/e;->Jl()Lcom/android/common/m/a;

    move-result-object v0

    return-object v0
.end method

.method protected ahJ(Lcom/android/common/m/a;)V
    .registers 7

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/common/m/e;->abj:Lcom/android/common/m/c;

    invoke-virtual {v0, p1}, Lcom/android/common/m/c;->ahj(Lcom/android/common/m/a;)V

    .line 229
    iget-object v0, p0, Lcom/android/common/m/e;->abj:Lcom/android/common/m/c;

    invoke-static {v0}, Lcom/android/common/m/c;->ahB(Lcom/android/common/m/c;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 230
    :try_start_c
    iget-object v0, p0, Lcom/android/common/m/e;->abj:Lcom/android/common/m/c;

    invoke-static {v0}, Lcom/android/common/m/c;->ahE(Lcom/android/common/m/c;)Lcom/android/common/d/e;

    move-result-object v0

    if-nez v0, :cond_20

    .line 231
    iget-object v0, p0, Lcom/android/common/m/e;->abj:Lcom/android/common/m/c;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/m/c;->ahF(Lcom/android/common/m/c;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_3d

    :goto_1e
    monitor-exit v1

    .line 227
    return-void

    .line 233
    :cond_20
    :try_start_20
    new-instance v0, Lcom/android/common/m/e;

    iget-object v2, p0, Lcom/android/common/m/e;->abj:Lcom/android/common/m/c;

    invoke-direct {v0, v2}, Lcom/android/common/m/e;-><init>(Lcom/android/common/m/c;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/common/d/e;

    iget-object v3, p0, Lcom/android/common/m/e;->abj:Lcom/android/common/m/c;

    invoke-static {v3}, Lcom/android/common/m/c;->ahE(Lcom/android/common/m/c;)Lcom/android/common/d/e;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/common/m/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 234
    iget-object v0, p0, Lcom/android/common/m/e;->abj:Lcom/android/common/m/c;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/common/m/c;->ahG(Lcom/android/common/m/c;Lcom/android/common/d/e;)Lcom/android/common/d/e;
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3d

    goto :goto_1e

    .line 229
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 221
    check-cast p1, [Lcom/android/common/d/e;

    invoke-virtual {p0, p1}, Lcom/android/common/m/e;->ahI([Lcom/android/common/d/e;)Lcom/android/common/m/a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 227
    check-cast p1, Lcom/android/common/m/a;

    invoke-virtual {p0, p1}, Lcom/android/common/m/e;->ahJ(Lcom/android/common/m/a;)V

    return-void
.end method
