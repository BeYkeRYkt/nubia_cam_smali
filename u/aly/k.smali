.class Lu/aly/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/q;)V
    .registers 2

    .prologue
    .line 268
    invoke-direct {p0}, Lu/aly/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bA;
    .registers 3

    .prologue
    .line 270
    new-instance v0, Lu/aly/bA;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bA;-><init>(Lu/aly/q;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lu/aly/k;->a()Lu/aly/bA;

    move-result-object v0

    return-object v0
.end method
