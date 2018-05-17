.class public Lcom/android/multiexposure/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field arr:Lcom/android/multiexposure/o;


# direct methods
.method public constructor <init>(Lcom/android/multiexposure/o;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/multiexposure/s;->arr:Lcom/android/multiexposure/o;

    .line 12
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/multiexposure/s;->arr:Lcom/android/multiexposure/o;

    invoke-virtual {v0}, Lcom/android/multiexposure/o;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/android/multiexposure/s;->arr:Lcom/android/multiexposure/o;

    iget-object v0, v0, Lcom/android/multiexposure/o;->aqJ:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/android/multiexposure/s;->arr:Lcom/android/multiexposure/o;

    iget-object v0, v0, Lcom/android/multiexposure/o;->aqG:Lcom/android/multiexposure/ui/MyImageView;

    .line 23
    iget-object v1, p0, Lcom/android/multiexposure/s;->arr:Lcom/android/multiexposure/o;

    iget-object v1, v1, Lcom/android/multiexposure/o;->aqI:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/multiexposure/ui/MyImageView;->setImageAlpha(I)V

    .line 24
    iget-object v0, p0, Lcom/android/multiexposure/s;->arr:Lcom/android/multiexposure/o;

    iget-object v0, v0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    if-eqz v0, :cond_49

    .line 25
    iget-object v0, p0, Lcom/android/multiexposure/s;->arr:Lcom/android/multiexposure/o;

    iget-object v0, v0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0, p2}, Lcom/android/multiexposure/c;->setParameter(I)V

    .line 19
    :cond_49
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 30
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/multiexposure/s;->arr:Lcom/android/multiexposure/o;

    invoke-virtual {v0}, Lcom/android/multiexposure/o;->aCF()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "multi_exposure_parameter"

    iget-object v2, p0, Lcom/android/multiexposure/s;->arr:Lcom/android/multiexposure/o;

    iget-object v2, v2, Lcom/android/multiexposure/o;->aqI:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    return-void
.end method
