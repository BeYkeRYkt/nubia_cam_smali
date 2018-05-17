.class final Lcom/android/gallery3d/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic axF:Lcom/android/gallery3d/b/c;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/b/c;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/gallery3d/b/g;->axF:Lcom/android/gallery3d/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/gallery3d/b/g;->axF:Lcom/android/gallery3d/b/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/b/c;->dismiss()V

    .line 270
    iget-object v0, p0, Lcom/android/gallery3d/b/g;->axF:Lcom/android/gallery3d/b/c;

    invoke-static {v0}, Lcom/android/gallery3d/b/c;->aMF(Lcom/android/gallery3d/b/c;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 271
    iget-object v0, p0, Lcom/android/gallery3d/b/g;->axF:Lcom/android/gallery3d/b/c;

    invoke-static {v0}, Lcom/android/gallery3d/b/c;->aMF(Lcom/android/gallery3d/b/c;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 268
    :cond_16
    return-void
.end method
