.class Lu/aly/dA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cn;)V
    .registers 2

    .prologue
    .line 212
    invoke-direct {p0}, Lu/aly/dA;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/x;
    .registers 3

    .prologue
    .line 214
    new-instance v0, Lu/aly/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/x;-><init>(Lu/aly/cn;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lu/aly/dA;->a()Lu/aly/x;

    move-result-object v0

    return-object v0
.end method
