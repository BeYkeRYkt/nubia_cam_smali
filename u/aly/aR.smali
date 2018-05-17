.class Lu/aly/aR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/r;)V
    .registers 2

    .prologue
    .line 357
    invoke-direct {p0}, Lu/aly/aR;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bL;
    .registers 3

    .prologue
    .line 359
    new-instance v0, Lu/aly/bL;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bL;-><init>(Lu/aly/r;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lu/aly/aR;->a()Lu/aly/bL;

    move-result-object v0

    return-object v0
.end method
