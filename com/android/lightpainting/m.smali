.class final Lcom/android/lightpainting/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aux:Lcom/android/lightpainting/e;


# direct methods
.method constructor <init>(Lcom/android/lightpainting/e;)V
    .registers 2

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/lightpainting/m;->aux:Lcom/android/lightpainting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/lightpainting/m;->aux:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGy(Lcom/android/lightpainting/e;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 316
    iget-object v0, p0, Lcom/android/lightpainting/m;->aux:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGH(Lcom/android/lightpainting/e;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->start()V

    .line 314
    :goto_11
    return-void

    .line 318
    :cond_12
    iget-object v0, p0, Lcom/android/lightpainting/m;->aux:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGH(Lcom/android/lightpainting/e;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->Ak()V

    goto :goto_11
.end method
