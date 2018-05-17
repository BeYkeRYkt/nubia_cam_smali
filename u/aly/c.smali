.class Lu/aly/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/S;)V
    .registers 2

    .prologue
    .line 702
    invoke-direct {p0}, Lu/aly/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/aX;
    .registers 3

    .prologue
    .line 704
    new-instance v0, Lu/aly/aX;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/aX;-><init>(Lu/aly/S;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 702
    invoke-virtual {p0}, Lu/aly/c;->a()Lu/aly/aX;

    move-result-object v0

    return-object v0
.end method
