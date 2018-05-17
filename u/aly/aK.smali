.class Lu/aly/aK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ak;)V
    .registers 2

    .prologue
    .line 393
    invoke-direct {p0}, Lu/aly/aK;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/U;
    .registers 3

    .prologue
    .line 395
    new-instance v0, Lu/aly/U;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/U;-><init>(Lu/aly/ak;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 393
    invoke-virtual {p0}, Lu/aly/aK;->a()Lu/aly/U;

    move-result-object v0

    return-object v0
.end method
