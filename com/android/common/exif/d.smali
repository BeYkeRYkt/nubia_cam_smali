.class Lcom/android/common/exif/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field OS:I

.field OT:Z


# direct methods
.method constructor <init>(IZ)V
    .registers 3

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput p1, p0, Lcom/android/common/exif/d;->OS:I

    .line 896
    iput-boolean p2, p0, Lcom/android/common/exif/d;->OT:Z

    .line 894
    return-void
.end method
