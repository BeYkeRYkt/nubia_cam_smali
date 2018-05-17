.class public Lcom/android/common/j/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/j/d;


# instance fields
.field private ZE:Lcom/android/common/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/common/j/h;->ZE:Lcom/android/common/ActivityBase;

    .line 11
    return-void
.end method


# virtual methods
.method public afR(FF)Z
    .registers 4

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public afS(FF)V
    .registers 3

    .prologue
    .line 56
    return-void
.end method

.method public afT(FF)V
    .registers 6

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 22
    iget-object v0, p0, Lcom/android/common/j/h;->ZE:Lcom/android/common/ActivityBase;

    add-float v1, p1, v2

    float-to-int v1, v1

    add-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ActivityBase;->ato(II)V

    .line 21
    return-void
.end method

.method public afU(FFF)Z
    .registers 5

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public afV(FF)Z
    .registers 4

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public afW()V
    .registers 1

    .prologue
    .line 51
    return-void
.end method

.method public afX(FFFF)Z
    .registers 6

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/common/j/h;->ZE:Lcom/android/common/ActivityBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/common/ActivityBase;->atp(FFFF)Z

    move-result v0

    return v0
.end method

.method public afY(FF)Z
    .registers 6

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 17
    iget-object v0, p0, Lcom/android/common/j/h;->ZE:Lcom/android/common/ActivityBase;

    add-float v1, p1, v2

    float-to-int v1, v1

    add-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ActivityBase;->atn(II)Z

    move-result v0

    return v0
.end method

.method public afZ()V
    .registers 1

    .prologue
    .line 61
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/common/j/h;->ZE:Lcom/android/common/ActivityBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/common/ActivityBase;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
