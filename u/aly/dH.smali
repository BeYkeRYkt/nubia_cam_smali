.class Lu/aly/dH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cD;)V
    .registers 2

    .prologue
    .line 210
    invoke-direct {p0}, Lu/aly/dH;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/dt;
    .registers 3

    .prologue
    .line 212
    new-instance v0, Lu/aly/dt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/dt;-><init>(Lu/aly/cD;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lu/aly/dH;->a()Lu/aly/dt;

    move-result-object v0

    return-object v0
.end method
