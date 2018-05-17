.class Lcom/android/common/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/c;


# instance fields
.field final synthetic VO:Lcom/android/common/f/b;


# direct methods
.method private constructor <init>(Lcom/android/common/f/b;)V
    .registers 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/common/f/c;->VO:Lcom/android/common/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/f/b;Lcom/android/common/f/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/f/c;-><init>(Lcom/android/common/f/b;)V

    return-void
.end method


# virtual methods
.method public W(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V
    .registers 8

    .prologue
    .line 253
    const-string/jumbo v0, "llw"

    const-string/jumbo v1, "tackPicture onPreviewDataCopy"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/common/f/c;->VO:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aau(Lcom/android/common/f/b;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_39

    .line 255
    const-string/jumbo v0, "VideoMakerRender"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDrawHandler is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/f/c;->VO:Lcom/android/common/f/b;

    invoke-static {v2}, Lcom/android/common/f/b;->aau(Lcom/android/common/f/b;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ignore this onPreviewDataCopy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void

    .line 258
    :cond_39
    iget-object v0, p0, Lcom/android/common/f/c;->VO:Lcom/android/common/f/b;

    invoke-static {v0}, Lcom/android/common/f/b;->aau(Lcom/android/common/f/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/android/common/f/c;->VO:Lcom/android/common/f/b;

    invoke-static {v1, p2}, Lcom/android/common/f/b;->aaE(Lcom/android/common/f/b;I)I

    .line 260
    iget-object v1, p0, Lcom/android/common/f/c;->VO:Lcom/android/common/f/b;

    invoke-static {v1, p3}, Lcom/android/common/f/b;->aaB(Lcom/android/common/f/b;I)I

    .line 261
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    iget-object v1, p0, Lcom/android/common/f/c;->VO:Lcom/android/common/f/b;

    invoke-static {v1}, Lcom/android/common/f/b;->aau(Lcom/android/common/f/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    return-void
.end method
