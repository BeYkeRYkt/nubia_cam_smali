.class final Lcom/android/trajectory/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic asZ:Lcom/android/trajectory/a;


# direct methods
.method constructor <init>(Lcom/android/trajectory/a;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/trajectory/k;->asZ:Lcom/android/trajectory/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/trajectory/k;->asZ:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEz(Lcom/android/trajectory/a;)[I

    move-result-object v0

    aget v0, v0, p2

    .line 186
    iget-object v1, p0, Lcom/android/trajectory/k;->asZ:Lcom/android/trajectory/a;

    const-string/jumbo v2, "capture_number"

    invoke-static {v1, v2, p2}, Lcom/android/trajectory/a;->aFq(Lcom/android/trajectory/a;Ljava/lang/String;I)V

    .line 187
    iget-object v1, p0, Lcom/android/trajectory/k;->asZ:Lcom/android/trajectory/a;

    invoke-static {v1, v0}, Lcom/android/trajectory/a;->aFs(Lcom/android/trajectory/a;I)V

    .line 188
    iget-object v1, p0, Lcom/android/trajectory/k;->asZ:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aES(Lcom/android/trajectory/a;)Lcom/android/camera/Trajectory/NubiaTrajectory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayx(I)V

    .line 189
    iget-object v1, p0, Lcom/android/trajectory/k;->asZ:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEA(Lcom/android/trajectory/a;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 190
    iget-object v1, p0, Lcom/android/trajectory/k;->asZ:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEB(Lcom/android/trajectory/a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/trajectory/k;->asZ:Lcom/android/trajectory/a;

    invoke-static {v2, v0}, Lcom/android/trajectory/a;->aFg(Lcom/android/trajectory/a;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 179
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 174
    return-void
.end method
