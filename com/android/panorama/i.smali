.class public Lcom/android/panorama/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private aPF:I

.field final synthetic aPG:Lcom/android/panorama/d;


# direct methods
.method public constructor <init>(Lcom/android/panorama/d;)V
    .registers 3

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 803
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/panorama/i;->aPF:I

    .line 802
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 807
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "still in --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    :goto_23
    iget-object v0, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfC(Lcom/android/panorama/d;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 809
    iget-object v0, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    iget-object v0, v0, Lcom/android/panorama/d;->aPj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_fd

    .line 810
    iget-object v0, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    iget-object v0, v0, Lcom/android/panorama/d;->aPj:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/panorama/f;

    .line 811
    const-string/jumbo v1, "MorphoPanoramaAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " run attachStillImageExt() start :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/panorama/f;->aPr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    invoke-static {v1}, Lcom/android/panorama/d;->bfJ(Lcom/android/panorama/d;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 814
    iget-object v1, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    invoke-static {v1}, Lcom/android/panorama/d;->bfF(Lcom/android/panorama/d;)Lcom/morpho/core/MorphoPanoramaGP;

    move-result-object v1

    iget-object v2, v0, Lcom/android/panorama/f;->aPs:Ljava/nio/ByteBuffer;

    iget v3, v0, Lcom/android/panorama/f;->aPr:I

    iget-object v4, v0, Lcom/android/panorama/f;->aPt:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3, v4}, Lcom/morpho/core/MorphoPanoramaGP;->buj(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v1

    .line 819
    :goto_73
    iget v2, p0, Lcom/android/panorama/i;->aPF:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/panorama/i;->aPF:I

    .line 820
    iget-object v2, v0, Lcom/android/panorama/f;->aPs:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/android/panorama/PanoramaJni;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 821
    iget-object v0, v0, Lcom/android/panorama/f;->aPt:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/panorama/PanoramaJni;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 822
    iget-object v0, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfw(Lcom/android/panorama/d;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/android/panorama/d;->bfK(Lcom/android/panorama/d;I)I

    .line 824
    if-eqz v1, :cond_fd

    .line 825
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "attachStillImageExt failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfB(Lcom/android/panorama/d;)Lcom/android/panorama/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/panorama/e;->sendEmptyMessage(I)Z

    .line 837
    :cond_b3
    :goto_b3
    iget-object v0, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfx(Lcom/android/panorama/d;)I

    move-result v0

    iget-object v1, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    invoke-static {v1}, Lcom/android/panorama/d;->bfw(Lcom/android/panorama/d;)I

    move-result v1

    if-le v0, v1, :cond_10a

    .line 838
    iget-object v0, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    iget-object v0, v0, Lcom/android/panorama/d;->aPj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b3

    .line 839
    iget-object v0, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    iget-object v0, v0, Lcom/android/panorama/d;->aPj:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/panorama/f;

    .line 840
    iget-object v1, v0, Lcom/android/panorama/f;->aPs:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/android/panorama/PanoramaJni;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 841
    iget-object v0, v0, Lcom/android/panorama/f;->aPt:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/android/panorama/PanoramaJni;->freeBuffer(Ljava/nio/ByteBuffer;)V

    .line 842
    iget-object v0, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    invoke-static {v0}, Lcom/android/panorama/d;->bfw(Lcom/android/panorama/d;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/panorama/d;->bfK(Lcom/android/panorama/d;I)I

    goto :goto_b3

    .line 816
    :cond_eb
    iget-object v1, p0, Lcom/android/panorama/i;->aPG:Lcom/android/panorama/d;

    invoke-static {v1}, Lcom/android/panorama/d;->bfF(Lcom/android/panorama/d;)Lcom/morpho/core/MorphoPanoramaGP;

    move-result-object v1

    iget-object v2, v0, Lcom/android/panorama/f;->aPs:Ljava/nio/ByteBuffer;

    .line 817
    iget v3, v0, Lcom/android/panorama/f;->aPr:I

    iget-object v4, v0, Lcom/android/panorama/f;->aPt:Ljava/nio/ByteBuffer;

    .line 816
    invoke-virtual {v1, v2, v3, v4}, Lcom/morpho/core/MorphoPanoramaGP;->buk(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)I

    move-result v1

    goto/16 :goto_73

    .line 831
    :cond_fd
    const-wide/16 v0, 0x64

    :try_start_ff
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_102
    .catch Ljava/lang/InterruptedException; {:try_start_ff .. :try_end_102} :catch_104

    goto/16 :goto_23

    .line 832
    :catch_104
    move-exception v0

    .line 833
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_23

    .line 845
    :cond_10a
    const-string/jumbo v0, "MorphoPanoramaAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "still exit --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    return-void
.end method
