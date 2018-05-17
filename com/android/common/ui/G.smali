.class Lcom/android/common/ui/G;
.super Lcom/android/common/c/d;
.source "SourceFile"


# instance fields
.field private vr:I

.field private vs:Landroid/view/View;

.field private vt:Lcom/android/common/ui/F;

.field final synthetic vu:Lcom/android/common/ui/F;


# direct methods
.method public constructor <init>(Lcom/android/common/ui/F;Lcom/android/common/ui/F;Landroid/view/View;I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 479
    iput-object p1, p0, Lcom/android/common/ui/G;->vu:Lcom/android/common/ui/F;

    invoke-direct {p0}, Lcom/android/common/c/d;-><init>()V

    .line 475
    iput-object v0, p0, Lcom/android/common/ui/G;->vt:Lcom/android/common/ui/F;

    .line 476
    iput-object v0, p0, Lcom/android/common/ui/G;->vs:Landroid/view/View;

    .line 480
    iput-object p2, p0, Lcom/android/common/ui/G;->vt:Lcom/android/common/ui/F;

    .line 481
    iput-object p3, p0, Lcom/android/common/ui/G;->vs:Landroid/view/View;

    .line 482
    iput p4, p0, Lcom/android/common/ui/G;->vr:I

    .line 479
    return-void
.end method


# virtual methods
.method public hn()V
    .registers 4

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/common/ui/G;->vt:Lcom/android/common/ui/F;

    iget-object v1, p0, Lcom/android/common/ui/G;->vs:Landroid/view/View;

    iget v2, p0, Lcom/android/common/ui/G;->vr:I

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ui/F;->zo(Landroid/view/View;I)V

    .line 486
    return-void
.end method

.method public ho()I
    .registers 2

    .prologue
    .line 496
    const/16 v0, 0x64

    return v0
.end method
