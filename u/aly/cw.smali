.class public Lu/aly/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Z

.field public final b:B

.field private final c:Ljava/lang/String;

.field private final d:Z


# direct methods
.method public constructor <init>(B)V
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lu/aly/cw;-><init>(BZ)V

    .line 45
    return-void
.end method

.method public constructor <init>(BZ)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    int-to-byte v0, p1

    iput-byte v0, p0, Lu/aly/cw;->b:B

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/cw;->a:Z

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lu/aly/cw;->c:Ljava/lang/String;

    .line 40
    iput-boolean p2, p0, Lu/aly/cw;->d:Z

    .line 41
    return-void
.end method
