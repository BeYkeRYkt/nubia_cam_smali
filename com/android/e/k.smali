.class final Lcom/android/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aXI:Lcom/android/e/b;


# direct methods
.method constructor <init>(Lcom/android/e/b;)V
    .registers 2

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/e/k;->aXI:Lcom/android/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/e/k;->aXI:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->bot(Lcom/android/e/b;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 248
    return-void

    .line 250
    :cond_9
    iget-object v0, p0, Lcom/android/e/k;->aXI:Lcom/android/e/b;

    iget-boolean v0, v0, Lcom/android/e/b;->aWf:Z

    if-eqz v0, :cond_32

    .line 251
    iget-object v0, p0, Lcom/android/e/k;->aXI:Lcom/android/e/b;

    iget-object v0, v0, Lcom/android/e/b;->aWv:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f0201ad

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 252
    iget-object v0, p0, Lcom/android/e/k;->aXI:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boo(Lcom/android/e/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/k;->aXI:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->bop(Lcom/android/e/b;)Lcom/android/e/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->at(Lcom/android/common/a/b;)V

    .line 253
    iget-object v0, p0, Lcom/android/e/k;->aXI:Lcom/android/e/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/e/b;->aWf:Z

    .line 246
    :goto_31
    return-void

    .line 255
    :cond_32
    iget-object v0, p0, Lcom/android/e/k;->aXI:Lcom/android/e/b;

    iget-object v0, v0, Lcom/android/e/b;->aWv:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f0201ae

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 256
    iget-object v0, p0, Lcom/android/e/k;->aXI:Lcom/android/e/b;

    invoke-static {v0}, Lcom/android/e/b;->boo(Lcom/android/e/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/k;->aXI:Lcom/android/e/b;

    invoke-static {v1}, Lcom/android/e/b;->bop(Lcom/android/e/b;)Lcom/android/e/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->al(Lcom/android/common/a/b;)V

    .line 257
    iget-object v0, p0, Lcom/android/e/k;->aXI:Lcom/android/e/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/e/b;->aWf:Z

    goto :goto_31
.end method
