.class Lu/aly/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ds;)V
    .registers 2

    .prologue
    .line 819
    invoke-direct {p0}, Lu/aly/dc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/cG;
    .registers 3

    .prologue
    .line 821
    new-instance v0, Lu/aly/cG;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/cG;-><init>(Lu/aly/ds;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 819
    invoke-virtual {p0}, Lu/aly/dc;->a()Lu/aly/cG;

    move-result-object v0

    return-object v0
.end method
