.class final Lcom/android/gallery3d/ui/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic awF:Lcom/android/gallery3d/ui/a;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/a;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/gallery3d/ui/p;->awF:Lcom/android/gallery3d/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 13

    .prologue
    .line 156
    sub-int v0, p4, p2

    .line 157
    sub-int v1, p5, p3

    .line 158
    iget-object v2, p0, Lcom/android/gallery3d/ui/p;->awF:Lcom/android/gallery3d/ui/a;

    invoke-static {v2}, Lcom/android/gallery3d/ui/a;->aIC(Lcom/android/gallery3d/ui/a;)I

    move-result v2

    if-ne v2, v1, :cond_14

    iget-object v2, p0, Lcom/android/gallery3d/ui/p;->awF:Lcom/android/gallery3d/ui/a;

    invoke-static {v2}, Lcom/android/gallery3d/ui/a;->aID(Lcom/android/gallery3d/ui/a;)I

    move-result v2

    if-eq v2, v0, :cond_1e

    .line 159
    :cond_14
    iget-object v2, p0, Lcom/android/gallery3d/ui/p;->awF:Lcom/android/gallery3d/ui/a;

    invoke-static {v2, v0}, Lcom/android/gallery3d/ui/a;->aIF(Lcom/android/gallery3d/ui/a;I)I

    .line 160
    iget-object v0, p0, Lcom/android/gallery3d/ui/p;->awF:Lcom/android/gallery3d/ui/a;

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/a;->aIE(Lcom/android/gallery3d/ui/a;I)I

    .line 155
    :cond_1e
    return-void
.end method
