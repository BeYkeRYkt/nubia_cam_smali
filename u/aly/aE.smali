.class Lu/aly/aE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bt;)V
    .registers 2

    .prologue
    .line 385
    invoke-direct {p0}, Lu/aly/aE;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/i;
    .registers 3

    .prologue
    .line 387
    new-instance v0, Lu/aly/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/i;-><init>(Lu/aly/bt;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lu/aly/aE;->a()Lu/aly/i;

    move-result-object v0

    return-object v0
.end method
