.class Lu/aly/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/aQ;)V
    .registers 2

    .prologue
    .line 263
    invoke-direct {p0}, Lu/aly/Q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/cg;
    .registers 3

    .prologue
    .line 265
    new-instance v0, Lu/aly/cg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/cg;-><init>(Lu/aly/aQ;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lu/aly/Q;->a()Lu/aly/cg;

    move-result-object v0

    return-object v0
.end method
