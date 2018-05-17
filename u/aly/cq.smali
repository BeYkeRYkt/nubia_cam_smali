.class Lu/aly/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ds;)V
    .registers 2

    .prologue
    .line 642
    invoke-direct {p0}, Lu/aly/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/aD;
    .registers 3

    .prologue
    .line 644
    new-instance v0, Lu/aly/aD;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/aD;-><init>(Lu/aly/ds;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 642
    invoke-virtual {p0}, Lu/aly/cq;->a()Lu/aly/aD;

    move-result-object v0

    return-object v0
.end method
