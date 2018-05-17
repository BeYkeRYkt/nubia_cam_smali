.class final Lcom/android/trajectory/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic ata:Lcom/android/trajectory/a;


# direct methods
.method constructor <init>(Lcom/android/trajectory/a;)V
    .registers 2

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/trajectory/l;->ata:Lcom/android/trajectory/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    .prologue
    .line 213
    add-int/lit8 v0, p2, 0x1

    mul-int/lit8 v0, v0, 0xa

    .line 214
    iget-object v1, p0, Lcom/android/trajectory/l;->ata:Lcom/android/trajectory/a;

    const-string/jumbo v2, "capture_interval"

    invoke-static {v1, v2, v0}, Lcom/android/trajectory/a;->aFq(Lcom/android/trajectory/a;Ljava/lang/String;I)V

    .line 215
    iget-object v1, p0, Lcom/android/trajectory/l;->ata:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aES(Lcom/android/trajectory/a;)Lcom/android/camera/Trajectory/NubiaTrajectory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayy(I)V

    .line 216
    iget-object v1, p0, Lcom/android/trajectory/l;->ata:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEx(Lcom/android/trajectory/a;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 217
    iget-object v1, p0, Lcom/android/trajectory/l;->ata:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEy(Lcom/android/trajectory/a;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/trajectory/l;->ata:Lcom/android/trajectory/a;

    invoke-static {v2, v0}, Lcom/android/trajectory/a;->aFf(Lcom/android/trajectory/a;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 207
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 202
    return-void
.end method
