.class final Lcom/android/lightpainting/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/K;


# instance fields
.field final synthetic auw:Lcom/android/lightpainting/e;


# direct methods
.method constructor <init>(Lcom/android/lightpainting/e;)V
    .registers 2

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/lightpainting/l;->auw:Lcom/android/lightpainting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Am(Z)V
    .registers 4

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/lightpainting/l;->auw:Lcom/android/lightpainting/e;

    invoke-static {v0, p1}, Lcom/android/lightpainting/e;->aGT(Lcom/android/lightpainting/e;Z)Z

    .line 285
    iget-object v0, p0, Lcom/android/lightpainting/l;->auw:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGy(Lcom/android/lightpainting/e;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 286
    iget-object v0, p0, Lcom/android/lightpainting/l;->auw:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGB(Lcom/android/lightpainting/e;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    :goto_19
    return-void

    .line 288
    :cond_1a
    iget-object v0, p0, Lcom/android/lightpainting/l;->auw:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGB(Lcom/android/lightpainting/e;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19
.end method
