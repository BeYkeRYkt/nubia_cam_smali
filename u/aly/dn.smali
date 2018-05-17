.class Lu/aly/dn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cz;)V
    .registers 2

    .prologue
    .line 638
    invoke-direct {p0}, Lu/aly/dn;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/dz;
    .registers 3

    .prologue
    .line 640
    new-instance v0, Lu/aly/dz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/dz;-><init>(Lu/aly/cz;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 638
    invoke-virtual {p0}, Lu/aly/dn;->a()Lu/aly/dz;

    move-result-object v0

    return-object v0
.end method
