.class public Lcom/android/common/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private W:I

.field private X:J

.field private Y:Z

.field private Z:J

.field private aa:Lcom/android/common/a/j;

.field private ab:Z

.field private final ac:Lcom/android/common/a/g;


# direct methods
.method public constructor <init>(Lcom/android/common/a/g;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/android/common/a/i;->Y:Z

    .line 16
    iput v0, p0, Lcom/android/common/a/i;->W:I

    .line 20
    iput-wide v2, p0, Lcom/android/common/a/i;->Z:J

    .line 21
    iput-wide v2, p0, Lcom/android/common/a/i;->X:J

    .line 22
    iput-boolean v0, p0, Lcom/android/common/a/i;->ab:Z

    .line 28
    iput-object p1, p0, Lcom/android/common/a/i;->ac:Lcom/android/common/a/g;

    .line 27
    return-void
.end method


# virtual methods
.method public aP()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/common/a/i;->Y:Z

    return v0
.end method

.method public aQ()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/android/common/a/i;->Y:Z

    .line 49
    iput v0, p0, Lcom/android/common/a/i;->W:I

    .line 47
    return-void
.end method

.method public aR(Lcom/android/common/a/j;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/common/a/i;->aa:Lcom/android/common/a/j;

    .line 31
    return-void
.end method

.method public aS()J
    .registers 3

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/android/common/a/i;->X:J

    return-wide v0
.end method

.method public aT(Z)V
    .registers 4

    .prologue
    const-wide/16 v0, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/android/common/a/i;->ab:Z

    .line 37
    if-nez p1, :cond_a

    .line 38
    iput-wide v0, p0, Lcom/android/common/a/i;->Z:J

    .line 39
    iput-wide v0, p0, Lcom/android/common/a/i;->X:J

    .line 35
    :cond_a
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/a/i;->Y:Z

    .line 60
    iget-object v0, p0, Lcom/android/common/a/i;->aa:Lcom/android/common/a/j;

    if-eqz v0, :cond_f

    .line 61
    iget-object v0, p0, Lcom/android/common/a/i;->aa:Lcom/android/common/a/j;

    invoke-interface {v0}, Lcom/android/common/a/j;->aU()V

    .line 62
    iput-object v1, p0, Lcom/android/common/a/i;->aa:Lcom/android/common/a/j;

    .line 65
    :cond_f
    iget-object v0, p0, Lcom/android/common/a/i;->ac:Lcom/android/common/a/g;

    invoke-virtual {v0}, Lcom/android/common/a/g;->aw()V

    .line 67
    iget-boolean v0, p0, Lcom/android/common/a/i;->ab:Z

    if-eqz v0, :cond_32

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 69
    iget-wide v2, p0, Lcom/android/common/a/i;->Z:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_30

    .line 70
    iget-wide v2, p0, Lcom/android/common/a/i;->Z:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/android/common/a/i;->X:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/common/a/i;->X:J

    .line 73
    :cond_30
    iput-wide v0, p0, Lcom/android/common/a/i;->Z:J

    .line 57
    :cond_32
    return-void
.end method
