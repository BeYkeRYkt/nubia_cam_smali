.class final Lcom/android/e/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aXJ:Lcom/android/e/b;


# direct methods
.method constructor <init>(Lcom/android/e/b;)V
    .registers 2

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/e/l;->aXJ:Lcom/android/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const v5, 0x7f0d00b0

    const/16 v3, 0x11

    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/e/l;->aXJ:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->bot(Lcom/android/e/b;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 267
    return-void

    .line 269
    :cond_f
    iget-object v0, p0, Lcom/android/e/l;->aXJ:Lcom/android/e/b;

    iget-boolean v0, v0, Lcom/android/e/b;->aWh:Z

    if-eqz v0, :cond_41

    .line 270
    iget-object v0, p0, Lcom/android/e/l;->aXJ:Lcom/android/e/b;

    iget-object v0, v0, Lcom/android/e/b;->aWu:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f0201af

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 271
    iget-object v0, p0, Lcom/android/e/l;->aXJ:Lcom/android/e/b;

    iput-boolean v2, v0, Lcom/android/e/b;->aWh:Z

    .line 272
    iget-object v0, p0, Lcom/android/e/l;->aXJ:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boo(Lcom/android/e/b;)Lcom/android/common/appService/W;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/l;->aXJ:Lcom/android/e/b;

    const v4, 0x7f0a000a

    invoke-virtual {v1, v4}, Lcom/android/e/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    iget-object v4, p0, Lcom/android/e/l;->aXJ:Lcom/android/e/b;

    invoke-virtual {v4}, Lcom/android/e/b;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move v4, v2

    .line 272
    invoke-virtual/range {v0 .. v5}, Lcom/android/common/appService/W;->qp(Ljava/lang/CharSequence;IIII)V

    .line 265
    :goto_40
    return-void

    .line 278
    :cond_41
    iget-object v0, p0, Lcom/android/e/l;->aXJ:Lcom/android/e/b;

    iget-object v0, v0, Lcom/android/e/b;->aWu:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f0201b0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 279
    iget-object v0, p0, Lcom/android/e/l;->aXJ:Lcom/android/e/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/e/b;->aWh:Z

    .line 280
    iget-object v0, p0, Lcom/android/e/l;->aXJ:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boo(Lcom/android/e/b;)Lcom/android/common/appService/W;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/l;->aXJ:Lcom/android/e/b;

    const v4, 0x7f0a0009

    invoke-virtual {v1, v4}, Lcom/android/e/b;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    iget-object v4, p0, Lcom/android/e/l;->aXJ:Lcom/android/e/b;

    invoke-virtual {v4}, Lcom/android/e/b;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move v4, v2

    .line 280
    invoke-virtual/range {v0 .. v5}, Lcom/android/common/appService/W;->qp(Ljava/lang/CharSequence;IIII)V

    goto :goto_40
.end method
