.class final Lcom/android/common/o/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/S;


# instance fields
.field final synthetic aeG:Lcom/android/common/o/l;


# direct methods
.method constructor <init>(Lcom/android/common/o/l;)V
    .registers 2

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/common/o/E;->aeG:Lcom/android/common/o/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bb()Z
    .registers 2

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public bc(Lcom/android/common/appService/R;IIIIIIII)V
    .registers 16

    .prologue
    .line 496
    if-ne p2, p6, :cond_9

    if-ne p3, p7, :cond_9

    if-ne p4, p8, :cond_9

    .line 497
    if-ne p5, p9, :cond_9

    .line 498
    return-void

    .line 500
    :cond_9
    sub-int v0, p5, p3

    int-to-float v0, v0

    sub-int v1, p4, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 501
    iget-object v1, p0, Lcom/android/common/o/E;->aeG:Lcom/android/common/o/l;

    invoke-static {v1}, Lcom/android/common/o/l;->alQ(Lcom/android/common/o/l;)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v1, v2, v4

    if-gez v1, :cond_27

    .line 502
    return-void

    .line 504
    :cond_27
    iget-object v1, p0, Lcom/android/common/o/E;->aeG:Lcom/android/common/o/l;

    invoke-static {v1, v0}, Lcom/android/common/o/l;->alR(Lcom/android/common/o/l;F)F

    .line 505
    iget-object v0, p0, Lcom/android/common/o/E;->aeG:Lcom/android/common/o/l;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/common/o/l;->aji(IIII)V

    .line 495
    return-void
.end method

.method public bd(IIII)V
    .registers 11

    .prologue
    .line 484
    sub-int v0, p4, p2

    int-to-float v0, v0

    sub-int v1, p3, p1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 485
    iget-object v1, p0, Lcom/android/common/o/E;->aeG:Lcom/android/common/o/l;

    invoke-static {v1}, Lcom/android/common/o/l;->alQ(Lcom/android/common/o/l;)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1e

    .line 486
    return-void

    .line 488
    :cond_1e
    iget-object v1, p0, Lcom/android/common/o/E;->aeG:Lcom/android/common/o/l;

    invoke-static {v1, v0}, Lcom/android/common/o/l;->alR(Lcom/android/common/o/l;F)F

    .line 489
    iget-object v0, p0, Lcom/android/common/o/E;->aeG:Lcom/android/common/o/l;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/common/o/l;->aji(IIII)V

    .line 483
    return-void
.end method
