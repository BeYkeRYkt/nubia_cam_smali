.class Lu/aly/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/aG;)V
    .registers 2

    .prologue
    .line 309
    invoke-direct {p0}, Lu/aly/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/cU;
    .registers 3

    .prologue
    .line 311
    new-instance v0, Lu/aly/cU;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/cU;-><init>(Lu/aly/aG;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 309
    invoke-virtual {p0}, Lu/aly/y;->a()Lu/aly/cU;

    move-result-object v0

    return-object v0
.end method
