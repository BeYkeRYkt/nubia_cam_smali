.class Lu/aly/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/l;)V
    .registers 2

    .prologue
    .line 382
    invoke-direct {p0}, Lu/aly/bv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/aP;
    .registers 3

    .prologue
    .line 384
    new-instance v0, Lu/aly/aP;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/aP;-><init>(Lu/aly/l;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lu/aly/bv;->a()Lu/aly/aP;

    move-result-object v0

    return-object v0
.end method
