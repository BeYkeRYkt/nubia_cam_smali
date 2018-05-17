.class public abstract Lu/aly/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/cj;


# static fields
.field private static final a:Ljava/util/Map;


# instance fields
.field protected b:Ljava/lang/Object;

.field protected c:Lu/aly/aF;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ct;->a:Ljava/util/Map;

    .line 52
    sget-object v0, Lu/aly/ct;->a:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/dH;

    invoke-direct {v2, v3}, Lu/aly/dH;-><init>(Lu/aly/cD;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lu/aly/ct;->a:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/ch;

    invoke-direct {v2, v3}, Lu/aly/ch;-><init>(Lu/aly/cD;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lu/aly/ct;->c:Lu/aly/aF;

    .line 47
    iput-object v0, p0, Lu/aly/ct;->b:Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 141
    sget-object v0, Lu/aly/ct;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 142
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 155
    sget-object v0, Lu/aly/ct;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 156
    return-void
.end method

.method protected abstract bUG(Lu/aly/dl;Lu/aly/cB;)Ljava/lang/Object;
.end method

.method protected abstract bUH(Lu/aly/dl;)V
.end method

.method protected abstract bUI(Lu/aly/dl;S)Ljava/lang/Object;
.end method

.method protected abstract bUJ(Lu/aly/dl;)V
.end method

.method protected abstract bUK(Lu/aly/aF;)Lu/aly/cB;
.end method

.method protected abstract bUL(S)Lu/aly/aF;
.end method

.method protected abstract c()Lu/aly/aO;
.end method

.method public i()Lu/aly/aF;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lu/aly/ct;->c:Lu/aly/aF;

    return-object v0
.end method

.method public j()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lu/aly/ct;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lu/aly/ct;->c:Lu/aly/aF;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "<"

    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, " "

    .line 189
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p0}, Lu/aly/ct;->i()Lu/aly/aF;

    move-result-object v0

    if-nez v0, :cond_2d

    :goto_22
    const-string/jumbo v0, ">"

    .line 201
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_2d
    invoke-virtual {p0}, Lu/aly/ct;->j()Ljava/lang/Object;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lu/aly/ct;->i()Lu/aly/aF;

    move-result-object v2

    invoke-virtual {p0, v2}, Lu/aly/ct;->bUK(Lu/aly/aF;)Lu/aly/cB;

    move-result-object v2

    iget-object v2, v2, Lu/aly/cB;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ":"

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    instance-of v2, v0, Ljava/nio/ByteBuffer;

    if-nez v2, :cond_50

    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 196
    :cond_50
    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lu/aly/p;->bRC(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    goto :goto_22
.end method
