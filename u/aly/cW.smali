.class Lu/aly/cW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cL;)V
    .registers 2

    .prologue
    .line 795
    invoke-direct {p0}, Lu/aly/cW;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/cI;
    .registers 3

    .prologue
    .line 797
    new-instance v0, Lu/aly/cI;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/cI;-><init>(Lu/aly/cL;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 795
    invoke-virtual {p0}, Lu/aly/cW;->a()Lu/aly/cI;

    move-result-object v0

    return-object v0
.end method