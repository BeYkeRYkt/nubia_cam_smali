.class Lcom/android/common/gles/g;
.super Lcom/android/common/gles/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/common/gles/f;-><init>(Ljava/lang/String;)V

    .line 144
    return-void
.end method


# virtual methods
.method public SC(I)V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/common/gles/g;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/gles/g;->ST:I

    .line 151
    invoke-static {}, Lcom/android/common/gles/e;->Si()V

    .line 149
    return-void
.end method
