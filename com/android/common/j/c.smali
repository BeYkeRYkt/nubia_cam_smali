.class public Lcom/android/common/j/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ZA:Landroid/view/ScaleGestureDetector;

.field private final Zx:Lcom/android/common/j/a;

.field private final Zy:Landroid/view/GestureDetector;

.field private final Zz:Lcom/android/common/j/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/common/j/d;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/android/common/j/c;->Zz:Lcom/android/common/j/d;

    .line 53
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/common/j/e;

    invoke-direct {v1, p0, v3}, Lcom/android/common/j/e;-><init>(Lcom/android/common/j/c;Lcom/android/common/j/e;)V

    .line 54
    const/4 v2, 0x1

    .line 53
    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/common/j/c;->Zy:Landroid/view/GestureDetector;

    .line 55
    new-instance v0, Landroid/view/ScaleGestureDetector;

    .line 56
    new-instance v1, Lcom/android/common/j/f;

    invoke-direct {v1, p0, v3}, Lcom/android/common/j/f;-><init>(Lcom/android/common/j/c;Lcom/android/common/j/f;)V

    .line 55
    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/common/j/c;->ZA:Landroid/view/ScaleGestureDetector;

    .line 57
    new-instance v0, Lcom/android/common/j/a;

    new-instance v1, Lcom/android/common/j/g;

    invoke-direct {v1, p0, v3}, Lcom/android/common/j/g;-><init>(Lcom/android/common/j/c;Lcom/android/common/j/g;)V

    invoke-direct {v0, v1}, Lcom/android/common/j/a;-><init>(Lcom/android/common/j/b;)V

    iput-object v0, p0, Lcom/android/common/j/c;->Zx:Lcom/android/common/j/a;

    .line 51
    return-void
.end method

.method static synthetic afQ(Lcom/android/common/j/c;)Lcom/android/common/j/d;
    .registers 2

    iget-object v0, p0, Lcom/android/common/j/c;->Zz:Lcom/android/common/j/d;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/common/j/c;->Zy:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 63
    :try_start_5
    iget-object v0, p0, Lcom/android/common/j/c;->ZA:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_a} :catch_10

    .line 67
    :goto_a
    iget-object v0, p0, Lcom/android/common/j/c;->Zx:Lcom/android/common/j/a;

    invoke-virtual {v0, p1}, Lcom/android/common/j/a;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 60
    return-void

    .line 64
    :catch_10
    move-exception v0

    .line 65
    const-string/jumbo v1, "GestureRecognizer"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method
