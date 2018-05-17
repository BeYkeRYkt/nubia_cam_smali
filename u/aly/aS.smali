.class Lu/aly/aS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/q;)V
    .registers 2

    .prologue
    .line 215
    invoke-direct {p0}, Lu/aly/aS;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/ca;
    .registers 3

    .prologue
    .line 217
    new-instance v0, Lu/aly/ca;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/ca;-><init>(Lu/aly/q;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 215
    invoke-virtual {p0}, Lu/aly/aS;->a()Lu/aly/ca;

    move-result-object v0

    return-object v0
.end method
