.class final Lcom/android/e/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/K;


# instance fields
.field final synthetic aXK:Lcom/android/e/h;


# direct methods
.method constructor <init>(Lcom/android/e/h;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/e/m;->aXK:Lcom/android/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Am(Z)V
    .registers 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/e/m;->aXK:Lcom/android/e/h;

    invoke-static {v0, p1}, Lcom/android/e/h;->bpi(Lcom/android/e/h;Z)Z

    .line 62
    iget-object v0, p0, Lcom/android/e/m;->aXK:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bpd(Lcom/android/e/h;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 63
    iget-object v0, p0, Lcom/android/e/m;->aXK:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bpe(Lcom/android/e/h;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    :goto_19
    return-void

    .line 65
    :cond_1a
    iget-object v0, p0, Lcom/android/e/m;->aXK:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bpe(Lcom/android/e/h;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19
.end method
