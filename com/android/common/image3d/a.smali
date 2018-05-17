.class public Lcom/android/common/image3d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bu:I

.field bv:J

.field bw:I

.field bx:I

.field direction:I

.field height:I

.field width:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/image3d/a;->bv:J

    .line 7
    iput v2, p0, Lcom/android/common/image3d/a;->bu:I

    .line 8
    iput v2, p0, Lcom/android/common/image3d/a;->direction:I

    .line 9
    iput v2, p0, Lcom/android/common/image3d/a;->bw:I

    .line 10
    iput v2, p0, Lcom/android/common/image3d/a;->bx:I

    .line 11
    iput v2, p0, Lcom/android/common/image3d/a;->width:I

    .line 12
    iput v2, p0, Lcom/android/common/image3d/a;->height:I

    .line 3
    return-void
.end method
