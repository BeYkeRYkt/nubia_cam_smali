.class public Lcom/android/common/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/b;


# instance fields
.field private Wq:Lcom/android/common/appService/W;

.field private Wr:I

.field private Ws:Lcom/android/common/appService/CameraMember;

.field private Wt:Lcom/android/common/setting/ListPreference;

.field private Wu:Ljava/lang/Object;

.field private Wv:Lcom/android/common/setting/ListPreference;

.field private Ww:[F


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/g/b;->Wu:Ljava/lang/Object;

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/g/b;->Ww:[F

    .line 17
    iput-object v1, p0, Lcom/android/common/g/b;->Wt:Lcom/android/common/setting/ListPreference;

    .line 18
    iput-object v1, p0, Lcom/android/common/g/b;->Wv:Lcom/android/common/setting/ListPreference;

    .line 19
    iput-object v1, p0, Lcom/android/common/g/b;->Wq:Lcom/android/common/appService/W;

    .line 20
    iput-object v1, p0, Lcom/android/common/g/b;->Ws:Lcom/android/common/appService/CameraMember;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/g/b;->Wr:I

    .line 24
    iput-object p1, p0, Lcom/android/common/g/b;->Wq:Lcom/android/common/appService/W;

    .line 23
    return-void
.end method


# virtual methods
.method public S()I
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public T(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 11

    .prologue
    .line 68
    iget-object v7, p0, Lcom/android/common/g/b;->Wu:Ljava/lang/Object;

    monitor-enter v7

    .line 71
    :try_start_3
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sb()V

    .line 72
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v0

    .line 73
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/common/gles/e;->Sg(FFF)V

    .line 74
    invoke-virtual {p1}, Lcom/android/common/a/a;->h()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/common/gles/e;->Sh(FFF)V

    .line 75
    invoke-virtual {p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/g/b;->Ww:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 77
    invoke-virtual {p1}, Lcom/android/common/a/a;->s()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p1}, Lcom/android/common/a/a;->p()Lcom/android/common/gles/j;

    move-result-object v1

    .line 78
    :goto_30
    iget-object v2, p0, Lcom/android/common/g/b;->Ww:[F

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v0, p2

    .line 76
    invoke-virtual/range {v0 .. v6}, Lcom/android/common/gles/e;->Sd(Lcom/android/common/gles/c;[FIIII)V

    .line 79
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sf()V
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_4d

    .line 81
    const/4 v0, 0x1

    monitor-exit v7

    return v0

    .line 77
    :cond_48
    :try_start_48
    invoke-virtual {p1}, Lcom/android/common/a/a;->m()Lcom/android/common/gles/a;
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4d

    move-result-object v1

    goto :goto_30

    .line 68
    :catchall_4d
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public U(Lcom/android/common/a/a;)V
    .registers 2

    .prologue
    .line 96
    return-void
.end method

.method public V(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 4

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method
