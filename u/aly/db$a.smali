.class public Lu/aly/db$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/dk;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lu/aly/db$a;-><init>(ZZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lu/aly/db$a;-><init>(ZZI)V

    .line 64
    return-void
.end method

.method public constructor <init>(ZZI)V
    .registers 5

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/db$a;->a:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/aly/db$a;->b:Z

    .line 67
    iput-boolean p1, p0, Lu/aly/db$a;->a:Z

    .line 68
    iput-boolean p2, p0, Lu/aly/db$a;->b:Z

    .line 69
    iput p3, p0, Lu/aly/db$a;->c:I

    .line 70
    return-void
.end method


# virtual methods
.method public bSZ(Lu/aly/cV;)Lu/aly/dl;
    .registers 5

    .prologue
    .line 73
    new-instance v0, Lu/aly/f;

    iget-boolean v1, p0, Lu/aly/db$a;->a:Z

    iget-boolean v2, p0, Lu/aly/db$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lu/aly/f;-><init>(Lu/aly/cV;ZZ)V

    .line 74
    iget v1, p0, Lu/aly/db$a;->c:I

    if-nez v1, :cond_e

    .line 77
    :goto_d
    return-object v0

    .line 75
    :cond_e
    iget v1, p0, Lu/aly/db$a;->c:I

    invoke-virtual {v0, v1}, Lu/aly/f;->bRs(I)V

    goto :goto_d
.end method
