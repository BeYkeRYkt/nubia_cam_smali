.class final Lcom/android/lightpainting/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic auz:Lcom/android/lightpainting/e;


# direct methods
.method constructor <init>(Lcom/android/lightpainting/e;)V
    .registers 2

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/lightpainting/o;->auz:Lcom/android/lightpainting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    .prologue
    .line 374
    const-string/jumbo v0, "LightDrawFragment"

    const-string/jumbo v1, "set number wanted"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/lightpainting/o;->auz:Lcom/android/lightpainting/e;

    iput p2, v0, Lcom/android/lightpainting/e;->atU:I

    .line 376
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 377
    iget-object v0, p0, Lcom/android/lightpainting/o;->auz:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGJ(Lcom/android/lightpainting/e;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lightpainting/o;->auz:Lcom/android/lightpainting/e;

    invoke-static {v2}, Lcom/android/lightpainting/e;->aGQ(Lcom/android/lightpainting/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 369
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 366
    return-void
.end method
