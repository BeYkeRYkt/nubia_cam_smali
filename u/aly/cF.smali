.class Lu/aly/cF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/dJ;)V
    .registers 2

    .prologue
    .line 413
    invoke-direct {p0}, Lu/aly/cF;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/F;
    .registers 3

    .prologue
    .line 415
    new-instance v0, Lu/aly/F;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/F;-><init>(Lu/aly/dJ;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lu/aly/cF;->a()Lu/aly/F;

    move-result-object v0

    return-object v0
.end method
