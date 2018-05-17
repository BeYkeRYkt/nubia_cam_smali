.class Lu/aly/cR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/dG;)V
    .registers 2

    .prologue
    .line 1089
    invoke-direct {p0}, Lu/aly/cR;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bU;
    .registers 3

    .prologue
    .line 1091
    new-instance v0, Lu/aly/bU;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bU;-><init>(Lu/aly/dG;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 1089
    invoke-virtual {p0}, Lu/aly/cR;->a()Lu/aly/bU;

    move-result-object v0

    return-object v0
.end method
