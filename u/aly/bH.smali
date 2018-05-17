.class public Lu/aly/bH;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final bxP:Ljava/io/ByteArrayOutputStream;

.field private final bxQ:Lu/aly/du;

.field private bxR:Lu/aly/dl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    new-instance v0, Lu/aly/dc$a;

    invoke-direct {v0}, Lu/aly/dc$a;-><init>()V

    invoke-direct {p0, v0}, Lu/aly/bH;-><init>(Lu/aly/dk;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lu/aly/dk;)V
    .registers 4

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lu/aly/bH;->bxP:Ljava/io/ByteArrayOutputStream;

    .line 47
    new-instance v0, Lu/aly/du;

    iget-object v1, p0, Lu/aly/bH;->bxP:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lu/aly/du;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lu/aly/bH;->bxQ:Lu/aly/du;

    .line 68
    iget-object v0, p0, Lu/aly/bH;->bxQ:Lu/aly/du;

    invoke-interface {p1, v0}, Lu/aly/dk;->bSZ(Lu/aly/cV;)Lu/aly/dl;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bH;->bxR:Lu/aly/dl;

    .line 69
    return-void
.end method


# virtual methods
.method public bWn(Lu/aly/cj;)[B
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lu/aly/bH;->bxP:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 82
    iget-object v0, p0, Lu/aly/bH;->bxR:Lu/aly/dl;

    invoke-interface {p1, v0}, Lu/aly/cj;->bQL(Lu/aly/dl;)V

    .line 83
    iget-object v0, p0, Lu/aly/bH;->bxP:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
