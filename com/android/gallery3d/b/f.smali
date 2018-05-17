.class final Lcom/android/gallery3d/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic axE:Lcom/android/gallery3d/b/c;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/b/c;)V
    .registers 2

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/gallery3d/b/f;->axE:Lcom/android/gallery3d/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/gallery3d/b/f;->axE:Lcom/android/gallery3d/b/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/b/c;->dismiss()V

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/b/f;->axE:Lcom/android/gallery3d/b/c;

    invoke-static {v0}, Lcom/android/gallery3d/b/c;->aMG(Lcom/android/gallery3d/b/c;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/b/f;->axE:Lcom/android/gallery3d/b/c;

    invoke-static {v0}, Lcom/android/gallery3d/b/c;->aMG(Lcom/android/gallery3d/b/c;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 257
    :cond_16
    return-void
.end method
