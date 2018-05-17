.class Lcom/android/common/j/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/j/b;


# instance fields
.field final synthetic ZD:Lcom/android/common/j/c;


# direct methods
.method private constructor <init>(Lcom/android/common/j/c;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/common/j/g;->ZD:Lcom/android/common/j/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/j/c;Lcom/android/common/j/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/j/g;-><init>(Lcom/android/common/j/c;)V

    return-void
.end method


# virtual methods
.method public afP(Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/common/j/g;->ZD:Lcom/android/common/j/c;

    invoke-static {v0}, Lcom/android/common/j/c;->afQ(Lcom/android/common/j/c;)Lcom/android/common/j/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/j/d;->afZ()V

    .line 150
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .registers 5

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/common/j/g;->ZD:Lcom/android/common/j/c;

    invoke-static {v0}, Lcom/android/common/j/c;->afQ(Lcom/android/common/j/c;)Lcom/android/common/j/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/common/j/d;->afS(FF)V

    .line 145
    return-void
.end method
