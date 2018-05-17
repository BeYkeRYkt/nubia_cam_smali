.class final Lcom/android/panorama/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aOy:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/panorama/c;->aOy:I

    .line 526
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/panorama/c;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/panorama/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bfa()V
    .registers 2

    .prologue
    .line 537
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/panorama/c;->aOy:I

    .line 536
    return-void
.end method

.method public bfb(I)V
    .registers 4

    .prologue
    .line 534
    iget v0, p0, Lcom/android/panorama/c;->aOy:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/panorama/c;->aOy:I

    .line 533
    return-void
.end method

.method public bfc(I)V
    .registers 3

    .prologue
    .line 531
    iget v0, p0, Lcom/android/panorama/c;->aOy:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/panorama/c;->aOy:I

    .line 530
    return-void
.end method

.method public bfd(I)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 540
    iget v1, p0, Lcom/android/panorama/c;->aOy:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method
