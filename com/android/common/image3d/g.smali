.class public Lcom/android/common/image3d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bU:I

.field bV:I

.field bW:J


# direct methods
.method public constructor <init>(IJI)V
    .registers 5

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/android/common/image3d/g;->bU:I

    .line 10
    iput-wide p2, p0, Lcom/android/common/image3d/g;->bW:J

    .line 11
    iput p4, p0, Lcom/android/common/image3d/g;->bV:I

    .line 8
    return-void
.end method
