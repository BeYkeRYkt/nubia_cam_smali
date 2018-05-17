.class Lcom/android/common/image3d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bF:I

.field public bG:I

.field public bH:I

.field public bI:I

.field final synthetic bJ:Lcom/android/common/image3d/b;

.field public height:I

.field public width:I


# direct methods
.method private constructor <init>(Lcom/android/common/image3d/b;)V
    .registers 3

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/common/image3d/d;->bJ:Lcom/android/common/image3d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x500

    iput v0, p0, Lcom/android/common/image3d/d;->width:I

    .line 26
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/android/common/image3d/d;->height:I

    .line 27
    const v0, 0x989680

    iput v0, p0, Lcom/android/common/image3d/d;->bF:I

    .line 28
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/common/image3d/d;->bG:I

    .line 29
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/common/image3d/d;->bH:I

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/image3d/d;->bI:I

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/image3d/b;Lcom/android/common/image3d/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/image3d/d;-><init>(Lcom/android/common/image3d/b;)V

    return-void
.end method
