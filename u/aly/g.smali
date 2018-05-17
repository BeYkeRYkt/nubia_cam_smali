.class Lu/aly/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ac;)V
    .registers 2

    .prologue
    .line 264
    invoke-direct {p0}, Lu/aly/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/dD;
    .registers 3

    .prologue
    .line 266
    new-instance v0, Lu/aly/dD;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/dD;-><init>(Lu/aly/ac;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lu/aly/g;->a()Lu/aly/dD;

    move-result-object v0

    return-object v0
.end method
