.class Lu/aly/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bt;)V
    .registers 2

    .prologue
    .line 305
    invoke-direct {p0}, Lu/aly/B;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/dd;
    .registers 3

    .prologue
    .line 307
    new-instance v0, Lu/aly/dd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/dd;-><init>(Lu/aly/bt;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lu/aly/B;->a()Lu/aly/dd;

    move-result-object v0

    return-object v0
.end method
