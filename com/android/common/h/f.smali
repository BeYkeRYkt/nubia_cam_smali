.class Lcom/android/common/h/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Yc:J

.field private Yd:J

.field final synthetic Ye:Lcom/android/common/h/e;


# direct methods
.method constructor <init>(Lcom/android/common/h/e;)V
    .registers 4

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/common/h/f;->Ye:Lcom/android/common/h/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/common/h/f;->Yc:J

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/h/f;->Yd:J

    .line 89
    return-void
.end method

.method private abM([Landroid/hardware/Camera$Face;)V
    .registers 11

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 94
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->adW()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 95
    if-eqz p1, :cond_54

    array-length v1, p1

    if-lez v1, :cond_54

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 97
    iget-wide v4, p0, Lcom/android/common/h/f;->Yd:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v1, v6, v4

    if-gez v1, :cond_2e

    .line 98
    iget-wide v4, p0, Lcom/android/common/h/f;->Yd:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x12c

    cmp-long v1, v4, v6

    if-gez v1, :cond_2e

    .line 99
    return-void

    .line 101
    :cond_2e
    iput-wide v2, p0, Lcom/android/common/h/f;->Yd:J

    .line 104
    iget-object v1, p0, Lcom/android/common/h/f;->Ye:Lcom/android/common/h/e;

    aget-object v2, p1, v8

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-static {v1, v2}, Lcom/android/common/h/e;->abJ(Lcom/android/common/h/e;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 111
    :goto_3c
    iget-object v1, p0, Lcom/android/common/h/f;->Ye:Lcom/android/common/h/e;

    invoke-static {v1}, Lcom/android/common/h/e;->abL(Lcom/android/common/h/e;)Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->Mx(Ljava/util/List;)V

    .line 112
    iget-object v0, p0, Lcom/android/common/h/f;->Ye:Lcom/android/common/h/e;

    invoke-static {v0}, Lcom/android/common/h/e;->abK(Lcom/android/common/h/e;)Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/h/f;->Ye:Lcom/android/common/h/e;

    invoke-static {v1}, Lcom/android/common/h/e;->abL(Lcom/android/common/h/e;)Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 92
    :cond_54
    return-void

    .line 107
    :cond_55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v1, Landroid/hardware/Camera$Area;

    aget-object v2, p1, v8

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c
.end method

.method static synthetic abN(Lcom/android/common/h/f;[Landroid/hardware/Camera$Face;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/h/f;->abM([Landroid/hardware/Camera$Face;)V

    return-void
.end method
