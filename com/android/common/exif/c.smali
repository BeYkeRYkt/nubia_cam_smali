.class Lcom/android/common/exif/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field OQ:I

.field OR:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    .prologue
    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/exif/c;->OQ:I

    .line 881
    iput p1, p0, Lcom/android/common/exif/c;->OR:I

    .line 879
    return-void
.end method

.method constructor <init>(II)V
    .registers 3

    .prologue
    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput p1, p0, Lcom/android/common/exif/c;->OR:I

    .line 886
    iput p2, p0, Lcom/android/common/exif/c;->OQ:I

    .line 884
    return-void
.end method
