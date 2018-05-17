.class public Lcom/android/common/ui/E;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private ue:I

.field private uf:I

.field private ug:I


# direct methods
.method public constructor <init>(IIILandroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 13
    iput v0, p0, Lcom/android/common/ui/E;->ug:I

    .line 14
    iput v0, p0, Lcom/android/common/ui/E;->uf:I

    .line 15
    iput v0, p0, Lcom/android/common/ui/E;->ue:I

    .line 45
    iput p2, p0, Lcom/android/common/ui/E;->ug:I

    .line 46
    iput p1, p0, Lcom/android/common/ui/E;->uf:I

    .line 47
    iput p3, p0, Lcom/android/common/ui/E;->ue:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 13
    iput v0, p0, Lcom/android/common/ui/E;->ug:I

    .line 14
    iput v0, p0, Lcom/android/common/ui/E;->uf:I

    .line 15
    iput v0, p0, Lcom/android/common/ui/E;->ue:I

    .line 32
    iput p3, p0, Lcom/android/common/ui/E;->ug:I

    .line 33
    iput p2, p0, Lcom/android/common/ui/E;->uf:I

    .line 30
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x1

    .line 58
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iget v0, p0, Lcom/android/common/ui/E;->ug:I

    if-ne v0, v1, :cond_14

    .line 60
    invoke-virtual {p0, v1}, Lcom/android/common/ui/E;->requestWindowFeature(I)Z

    .line 61
    invoke-virtual {p0}, Lcom/android/common/ui/E;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 64
    :cond_14
    iget v0, p0, Lcom/android/common/ui/E;->ue:I

    if-eqz v0, :cond_21

    .line 65
    invoke-virtual {p0}, Lcom/android/common/ui/E;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/android/common/ui/E;->ue:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 67
    :cond_21
    iget v0, p0, Lcom/android/common/ui/E;->uf:I

    invoke-virtual {p0, v0}, Lcom/android/common/ui/E;->setContentView(I)V

    .line 57
    return-void
.end method
