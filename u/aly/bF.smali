.class public Lu/aly/bF;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lu/aly/bF;->a:Ljava/lang/String;

    .line 9
    iput-wide p2, p0, Lu/aly/bF;->b:J

    .line 10
    return-void
.end method
