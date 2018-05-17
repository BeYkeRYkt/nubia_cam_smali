.class Lu/aly/dE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bG;)V
    .registers 2

    .prologue
    .line 406
    invoke-direct {p0}, Lu/aly/dE;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/dy;
    .registers 3

    .prologue
    .line 408
    new-instance v0, Lu/aly/dy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/dy;-><init>(Lu/aly/bG;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 406
    invoke-virtual {p0}, Lu/aly/dE;->a()Lu/aly/dy;

    move-result-object v0

    return-object v0
.end method
