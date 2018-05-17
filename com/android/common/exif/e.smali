.class Lcom/android/common/exif/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field OU:Z

.field OV:Lcom/android/common/exif/k;


# direct methods
.method constructor <init>(Lcom/android/common/exif/k;Z)V
    .registers 3

    .prologue
    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-object p1, p0, Lcom/android/common/exif/e;->OV:Lcom/android/common/exif/k;

    .line 906
    iput-boolean p2, p0, Lcom/android/common/exif/e;->OU:Z

    .line 904
    return-void
.end method
