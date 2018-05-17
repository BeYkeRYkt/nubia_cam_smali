.class final Lcom/android/normal/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/b/d;


# instance fields
.field final synthetic bax:Lcom/android/normal/a/i;


# direct methods
.method constructor <init>(Lcom/android/normal/a/i;)V
    .registers 2

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/normal/a/j;->bax:Lcom/android/normal/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public brl(I)Z
    .registers 3

    .prologue
    .line 490
    const/4 v0, 0x0

    return v0
.end method

.method public brm()Z
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/normal/a/j;->bax:Lcom/android/normal/a/i;

    invoke-static {v0}, Lcom/android/normal/a/i;->bri(Lcom/android/normal/a/i;)Lcn/nubia/videogenerator/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/d/a;->bPr()Z

    move-result v0

    return v0
.end method

.method public brn(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/normal/a/j;->bax:Lcom/android/normal/a/i;

    invoke-static {v0}, Lcom/android/normal/a/i;->bri(Lcom/android/normal/a/i;)Lcn/nubia/videogenerator/d/a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 457
    iget-object v0, p0, Lcom/android/normal/a/j;->bax:Lcom/android/normal/a/i;

    invoke-static {v0}, Lcom/android/normal/a/i;->bri(Lcom/android/normal/a/i;)Lcn/nubia/videogenerator/d/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/videogenerator/d/a;->bPp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    .line 454
    :cond_11
    return-void
.end method

.method public bro(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/normal/a/j;->bax:Lcom/android/normal/a/i;

    invoke-static {v0}, Lcom/android/normal/a/i;->bri(Lcom/android/normal/a/i;)Lcn/nubia/videogenerator/d/a;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 476
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Writer oc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/android/normal/a/j;->bax:Lcom/android/normal/a/i;

    invoke-static {v0}, Lcom/android/normal/a/i;->bri(Lcom/android/normal/a/i;)Lcn/nubia/videogenerator/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/d/a;->bPw(Ljava/lang/String;)V

    .line 473
    :cond_2c
    return-void
.end method

.method public brp(Landroid/media/MediaFormat;)V
    .registers 5

    .prologue
    .line 465
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fmt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/android/normal/a/j;->bax:Lcom/android/normal/a/i;

    invoke-static {v0}, Lcom/android/normal/a/i;->brg(Lcom/android/normal/a/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/android/normal/a/j;->bax:Lcom/android/normal/a/i;

    invoke-static {v0}, Lcom/android/normal/a/i;->bri(Lcom/android/normal/a/i;)Lcn/nubia/videogenerator/d/a;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 467
    iget-object v0, p0, Lcom/android/normal/a/j;->bax:Lcom/android/normal/a/i;

    invoke-static {v0}, Lcom/android/normal/a/i;->brg(Lcom/android/normal/a/i;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v0, p0, Lcom/android/normal/a/j;->bax:Lcom/android/normal/a/i;

    invoke-static {v0}, Lcom/android/normal/a/i;->bri(Lcom/android/normal/a/i;)Lcn/nubia/videogenerator/d/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/d/a;->bPq(Landroid/media/MediaFormat;)V

    .line 463
    :cond_41
    return-void
.end method
