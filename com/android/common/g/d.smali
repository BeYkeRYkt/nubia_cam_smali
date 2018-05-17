.class public Lcom/android/common/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/b;


# instance fields
.field private WM:Ljava/lang/Object;

.field private WN:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/g/d;->WM:Ljava/lang/Object;

    .line 11
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/g/d;->WN:[F

    .line 49
    return-void
.end method


# virtual methods
.method public S()I
    .registers 2

    .prologue
    .line 78
    const/16 v0, 0x64

    return v0
.end method

.method public T(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 12

    .prologue
    .line 55
    iget-object v8, p0, Lcom/android/common/g/d;->WM:Ljava/lang/Object;

    monitor-enter v8

    .line 56
    :try_start_3
    invoke-virtual {p1}, Lcom/android/common/a/a;->j()Landroid/graphics/Rect;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/g/d;->WN:[F

    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 59
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sb()V

    .line 60
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p2, v1, v2, v3}, Lcom/android/common/gles/e;->Sg(FFF)V

    .line 61
    invoke-virtual {p1}, Lcom/android/common/a/a;->m()Lcom/android/common/gles/a;

    move-result-object v1

    const-string/jumbo v2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvec4 color;\nfloat luminance( in vec3 color ) {\n    return 0.2126 * color.r + 0.7152 * color.g + 0.0722 * color.b;\n}\nvec4 pass2(vec2 pos, float xDistance, float yDistance)\n{\n    float s00 = luminance(texture2D( sTexture, pos + vec2(-xDistance,yDistance) ).rgb);\n\t float s10 = luminance(texture2D( sTexture, pos + vec2(-xDistance,0.0) ).rgb);\n\t float s20 = luminance(texture2D( sTexture, pos + vec2(-xDistance,-yDistance) ).rgb);\n\t float s01 = luminance(texture2D( sTexture, pos + vec2(0.0,yDistance) ).rgb);\n\t float s21 = luminance(texture2D( sTexture, pos + vec2(0.0,-yDistance) ).rgb);\n\t float s02 = luminance(texture2D( sTexture, pos + vec2(xDistance, yDistance) ).rgb);\n\t float s12 = luminance(texture2D( sTexture, pos + vec2(xDistance, 0.0) ).rgb);\n \t float s22 = luminance(texture2D( sTexture, pos + vec2(xDistance, -yDistance) ).rgb);\n    float sx = s00 + 2.0 * s10 + s20 - (s02 + 2.0 * s12 + s22);\n    float sy = s00 + 2.0 * s01 + s02 - (s20 + 2.0 * s21 + s22);\n    float dist = sx * sx + sy * sy;\n\t if( dist > 0.7)\n        return vec4(1.0, 0.0, 0.0, 1.0);\n    else\n    \t return vec4(0.0, 0.0, 0.0, 0.0);\n}\nvoid main() {\n\t float xDistance = 1.0 / 1920.0;\n\t float yDistance = 1.0 / 1080.0;\n\t vec2 pos = vTextureCoord.st;\n\t color = pass2(pos, xDistance, yDistance);\n\t gl_FragColor =color;\n}\n"

    iget-object v3, p0, Lcom/android/common/g/d;->WN:[F

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v0, p2

    .line 61
    invoke-virtual/range {v0 .. v7}, Lcom/android/common/gles/e;->Sm(Lcom/android/common/gles/c;Ljava/lang/String;[FIIII)V

    .line 63
    invoke-virtual {p2}, Lcom/android/common/gles/e;->Sf()V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_39

    .line 65
    const/4 v0, 0x1

    monitor-exit v8

    return v0

    .line 55
    :catchall_39
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public U(Lcom/android/common/a/a;)V
    .registers 2

    .prologue
    .line 82
    return-void
.end method

.method public V(Lcom/android/common/a/a;Lcom/android/common/gles/e;)Z
    .registers 5

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/common/g/d;->WM:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    const/4 v1, 0x1

    monitor-exit v0

    return v1
.end method
