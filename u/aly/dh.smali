.class public final Lu/aly/dh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:B

.field public final b:B

.field public final c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0, v0}, Lu/aly/dh;-><init>(BBI)V

    .line 29
    return-void
.end method

.method public constructor <init>(BBI)V
    .registers 5

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    int-to-byte v0, p1

    iput-byte v0, p0, Lu/aly/dh;->a:B

    .line 33
    int-to-byte v0, p2

    iput-byte v0, p0, Lu/aly/dh;->b:B

    .line 34
    iput p3, p0, Lu/aly/dh;->c:I

    .line 35
    return-void
.end method
