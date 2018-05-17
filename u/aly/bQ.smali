.class Lu/aly/bQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/L;)V
    .registers 2

    .prologue
    .line 257
    invoke-direct {p0}, Lu/aly/bQ;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bD;
    .registers 3

    .prologue
    .line 259
    new-instance v0, Lu/aly/bD;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bD;-><init>(Lu/aly/L;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lu/aly/bQ;->a()Lu/aly/bD;

    move-result-object v0

    return-object v0
.end method
