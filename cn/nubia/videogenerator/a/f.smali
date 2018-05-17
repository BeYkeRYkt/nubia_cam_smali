.class public Lcn/nubia/videogenerator/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/b/d;


# instance fields
.field protected brj:Lcn/nubia/videogenerator/b/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public bOk(Lcn/nubia/videogenerator/b/e;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcn/nubia/videogenerator/a/f;->brj:Lcn/nubia/videogenerator/b/e;

    .line 24
    return-void
.end method

.method public bOl(Lcn/nubia/videogenerator/a/g;)V
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p1, p0}, Lcn/nubia/videogenerator/a/g;->bNP(Lcn/nubia/videogenerator/b/d;)V

    .line 28
    return-void
.end method

.method public brl(I)Z
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/videogenerator/a/f;->brj:Lcn/nubia/videogenerator/b/e;

    invoke-interface {v0, p1}, Lcn/nubia/videogenerator/b/e;->bNy(I)Z

    move-result v0

    return v0
.end method

.method public brm()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public brn(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/videogenerator/a/f;->brj:Lcn/nubia/videogenerator/b/e;

    if-nez v0, :cond_5

    .line 37
    :goto_4
    return-void

    .line 35
    :cond_5
    iget-object v0, p0, Lcn/nubia/videogenerator/a/f;->brj:Lcn/nubia/videogenerator/b/e;

    invoke-interface {v0, p1, p2}, Lcn/nubia/videogenerator/b/e;->bNA(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto :goto_4
.end method

.method public bro(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    return-void
.end method

.method public brp(Landroid/media/MediaFormat;)V
    .registers 2

    .prologue
    .line 43
    return-void
.end method
