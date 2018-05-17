.class Lu/aly/cQ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/M;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cc;)V
    .registers 2

    .prologue
    .line 353
    invoke-direct {p0}, Lu/aly/cQ;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/R;
    .registers 3

    .prologue
    .line 355
    new-instance v0, Lu/aly/R;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/R;-><init>(Lu/aly/cc;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/cH;
    .registers 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lu/aly/cQ;->a()Lu/aly/R;

    move-result-object v0

    return-object v0
.end method
