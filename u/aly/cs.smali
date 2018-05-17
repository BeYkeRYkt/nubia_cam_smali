.class Lu/aly/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ac;)V
    .registers 2

    .prologue
    .line 329
    invoke-direct {p0}, Lu/aly/cs;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/dm;
    .registers 3

    .prologue
    .line 331
    new-instance v0, Lu/aly/dm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/dm;-><init>(Lu/aly/ac;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 329
    invoke-virtual {p0}, Lu/aly/cs;->a()Lu/aly/dm;

    move-result-object v0

    return-object v0
.end method
