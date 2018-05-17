.class Lu/aly/cZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/dJ;)V
    .registers 2

    .prologue
    .line 564
    invoke-direct {p0}, Lu/aly/cZ;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bI;
    .registers 3

    .prologue
    .line 566
    new-instance v0, Lu/aly/bI;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bI;-><init>(Lu/aly/dJ;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 564
    invoke-virtual {p0}, Lu/aly/cZ;->a()Lu/aly/bI;

    move-result-object v0

    return-object v0
.end method
