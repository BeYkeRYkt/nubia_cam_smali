.class final Lcom/android/gallery3d/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic axK:Lcom/android/gallery3d/b/a;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/b/a;)V
    .registers 2

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/gallery3d/b/l;->axK:Lcom/android/gallery3d/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 412
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_e

    .line 413
    iget-object v0, p0, Lcom/android/gallery3d/b/l;->axK:Lcom/android/gallery3d/b/a;

    invoke-static {v0, v2}, Lcom/android/gallery3d/b/a;->aMt(Lcom/android/gallery3d/b/a;Z)Z

    .line 417
    :cond_d
    :goto_d
    return v1

    .line 414
    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_d

    .line 415
    iget-object v0, p0, Lcom/android/gallery3d/b/l;->axK:Lcom/android/gallery3d/b/a;

    invoke-static {v0, v1}, Lcom/android/gallery3d/b/a;->aMt(Lcom/android/gallery3d/b/a;Z)Z

    goto :goto_d
.end method
