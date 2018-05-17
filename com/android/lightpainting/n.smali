.class final Lcom/android/lightpainting/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic auy:Lcom/android/lightpainting/e;


# direct methods
.method constructor <init>(Lcom/android/lightpainting/e;)V
    .registers 2

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/lightpainting/n;->auy:Lcom/android/lightpainting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/lightpainting/n;->auy:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGD(Lcom/android/lightpainting/e;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/lightpainting/n;->auy:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGR(Lcom/android/lightpainting/e;)Lcom/android/common/appService/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/z;->lL(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 334
    iget-object v0, p0, Lcom/android/lightpainting/n;->auy:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aHb(Lcom/android/lightpainting/e;)V

    .line 335
    iget-object v0, p0, Lcom/android/lightpainting/n;->auy:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aHc(Lcom/android/lightpainting/e;)V

    .line 332
    :cond_1f
    return-void
.end method
