.class Lu/aly/aB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/s;)V
    .registers 2

    .prologue
    .line 256
    invoke-direct {p0}, Lu/aly/aB;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bS;
    .registers 3

    .prologue
    .line 258
    new-instance v0, Lu/aly/bS;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bS;-><init>(Lu/aly/s;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lu/aly/aB;->a()Lu/aly/bS;

    move-result-object v0

    return-object v0
.end method