.class final Lcom/android/gallery3d/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic avu:Lcom/android/gallery3d/a/d;

.field final synthetic avv:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/d;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/gallery3d/a/s;->avu:Lcom/android/gallery3d/a/d;

    iput-object p2, p0, Lcom/android/gallery3d/a/s;->avv:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/gallery3d/a/s;->avv:Landroid/app/Activity;

    const v1, 0x7f0a046b

    invoke-static {v0, v1}, Lcom/android/common/j;->aqr(Landroid/app/Activity;I)V

    .line 690
    return-void
.end method
