.class Lu/aly/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/aM;)V
    .registers 2

    .prologue
    .line 543
    invoke-direct {p0}, Lu/aly/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/G;
    .registers 3

    .prologue
    .line 545
    new-instance v0, Lu/aly/G;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/G;-><init>(Lu/aly/aM;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 543
    invoke-virtual {p0}, Lu/aly/ab;->a()Lu/aly/G;

    move-result-object v0

    return-object v0
.end method
