.class public Lcom/android/common/gles/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final So:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/common/gles/d;->So:[I

    .line 8
    return-void
.end method


# virtual methods
.method public RX()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 12
    iget-object v0, p0, Lcom/android/common/gles/d;->So:[I

    const/4 v1, 0x1

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 13
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 14
    iget-object v0, p0, Lcom/android/common/gles/d;->So:[I

    aget v0, v0, v2

    return v0
.end method

.method public RY(I[II)V
    .registers 4

    .prologue
    .line 23
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 24
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 22
    return-void
.end method
