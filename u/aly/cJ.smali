.class Lu/aly/cJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/dG;)V
    .registers 2

    .prologue
    .line 813
    invoke-direct {p0}, Lu/aly/cJ;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/ad;
    .registers 3

    .prologue
    .line 815
    new-instance v0, Lu/aly/ad;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/ad;-><init>(Lu/aly/dG;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 813
    invoke-virtual {p0}, Lu/aly/cJ;->a()Lu/aly/ad;

    move-result-object v0

    return-object v0
.end method
