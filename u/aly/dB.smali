.class Lu/aly/dB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cl;)V
    .registers 2

    .prologue
    .line 299
    invoke-direct {p0}, Lu/aly/dB;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/dv;
    .registers 3

    .prologue
    .line 301
    new-instance v0, Lu/aly/dv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/dv;-><init>(Lu/aly/cl;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lu/aly/dB;->a()Lu/aly/dv;

    move-result-object v0

    return-object v0
.end method
