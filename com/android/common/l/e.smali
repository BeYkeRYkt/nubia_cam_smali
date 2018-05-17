.class public Lcom/android/common/l/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ZS:[B

.field public ZT:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/l/e;->ZT:Z

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/l/e;->ZS:[B

    .line 3
    return-void
.end method
