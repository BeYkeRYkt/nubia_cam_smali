.class public final Lu/aly/bP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:B

.field public final b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0}, Lu/aly/bP;-><init>(BI)V

    .line 29
    return-void
.end method

.method public constructor <init>(BI)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    int-to-byte v0, p1

    iput-byte v0, p0, Lu/aly/bP;->a:B

    .line 33
    iput p2, p0, Lu/aly/bP;->b:I

    .line 34
    return-void
.end method
