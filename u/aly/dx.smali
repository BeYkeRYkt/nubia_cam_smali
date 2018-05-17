.class public Lu/aly/dx;
.super Lu/aly/cp;
.source "SourceFile"


# instance fields
.field protected f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lu/aly/cp;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lu/aly/dx;->f:I

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0}, Lu/aly/cp;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lu/aly/dx;->f:I

    .line 46
    iput p1, p0, Lu/aly/dx;->f:I

    .line 47
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 50
    invoke-direct {p0, p2}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lu/aly/dx;->f:I

    .line 51
    iput p1, p0, Lu/aly/dx;->f:I

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 59
    invoke-direct {p0, p2}, Lu/aly/cp;-><init>(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lu/aly/dx;->f:I

    .line 60
    iput p1, p0, Lu/aly/dx;->f:I

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lu/aly/cp;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lu/aly/dx;->f:I

    .line 56
    return-void
.end method
