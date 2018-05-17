.class Lcom/android/common/f/d;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# instance fields
.field final synthetic VP:Lcom/android/common/f/b;


# direct methods
.method public constructor <init>(Lcom/android/common/f/b;)V
    .registers 3

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/common/f/d;->VP:Lcom/android/common/f/b;

    .line 269
    const-string/jumbo v0, "mediacoder_draw"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 268
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 274
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    .line 275
    iget-object v0, p0, Lcom/android/common/f/d;->VP:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aax(Lcom/android/common/f/b;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/common/f/d;->VP:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aar(Lcom/android/common/f/b;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 276
    :cond_13
    const-string/jumbo v0, "VideoMakerRender"

    const-string/jumbo v1, "Save last video when exit"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/common/f/d;->VP:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aaG(Lcom/android/common/f/b;)V

    .line 273
    :cond_21
    return-void
.end method
