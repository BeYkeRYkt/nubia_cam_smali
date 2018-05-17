.class public Lu/aly/dj;
.super Lu/aly/cp;
.source "SourceFile"


# instance fields
.field protected g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lu/aly/cp;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lu/aly/dj;->g:I

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lu/aly/dj;->g:I

    .line 57
    return-void
.end method
