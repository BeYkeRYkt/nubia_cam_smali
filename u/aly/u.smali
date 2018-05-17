.class Lu/aly/u;
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

.method synthetic constructor <init>(Lu/aly/aI;)V
    .registers 2

    .prologue
    .line 257
    invoke-direct {p0}, Lu/aly/u;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/dq;
    .registers 3

    .prologue
    .line 259
    new-instance v0, Lu/aly/dq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/dq;-><init>(Lu/aly/aI;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lu/aly/u;->a()Lu/aly/dq;

    move-result-object v0

    return-object v0
.end method
