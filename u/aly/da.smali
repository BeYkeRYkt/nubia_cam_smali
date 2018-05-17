.class public Lu/aly/da;
.super Lu/aly/cw;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(BLjava/lang/Class;)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lu/aly/cw;-><init>(B)V

    .line 30
    iput-object p2, p0, Lu/aly/da;->a:Ljava/lang/Class;

    .line 31
    return-void
.end method
