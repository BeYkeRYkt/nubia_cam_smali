.class public Lcom/android/lightpainting/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic aur:Lcom/android/lightpainting/e;


# direct methods
.method public constructor <init>(Lcom/android/lightpainting/e;)V
    .registers 2

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 737
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGD(Lcom/android/lightpainting/e;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 738
    :cond_b
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    iget-object v1, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v1}, Lcom/android/lightpainting/e;->aGS(Lcom/android/lightpainting/e;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/lightpainting/e;->aGU(Lcom/android/lightpainting/e;J)J

    .line 739
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/lightpainting/e;->aGX(Lcom/android/lightpainting/e;J)J

    .line 740
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGz(Lcom/android/lightpainting/e;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5c

    .line 741
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    iget-object v1, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v1}, Lcom/android/lightpainting/e;->aGS(Lcom/android/lightpainting/e;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v1}, Lcom/android/lightpainting/e;->aGz(Lcom/android/lightpainting/e;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/lightpainting/e;->aGY(Lcom/android/lightpainting/e;J)J

    .line 745
    :goto_3d
    if-nez p1, :cond_66

    .line 746
    const-string/jumbo v0, "LightDrawFragment"

    const-string/jumbo v1, "wq: preveiw data is null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGA(Lcom/android/lightpainting/e;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v1}, Lcom/android/lightpainting/e;->aGC(Lcom/android/lightpainting/e;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KW([B)V

    .line 748
    return-void

    .line 743
    :cond_5c
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {}, Lcom/android/lightpainting/e;->aGx()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/lightpainting/e;->aGY(Lcom/android/lightpainting/e;J)J

    goto :goto_3d

    .line 750
    :cond_66
    const-string/jumbo v0, "LightDrawFragment"

    const-string/jumbo v1, "preview data come"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGD(Lcom/android/lightpainting/e;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    if-eqz v0, :cond_81

    .line 752
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGD(Lcom/android/lightpainting/e;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/common/CameraBufferManager;->putSlowShuttleData(I[B)Z

    .line 756
    :cond_81
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGK(Lcom/android/lightpainting/e;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_9f

    .line 757
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGK(Lcom/android/lightpainting/e;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 758
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGK(Lcom/android/lightpainting/e;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 762
    :cond_9f
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGD(Lcom/android/lightpainting/e;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    if-eqz v0, :cond_e2

    .line 763
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGD(Lcom/android/lightpainting/e;)Lcom/android/common/CameraBufferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/CameraBufferManager;->getNumStored()I

    move-result v0

    .line 764
    iget-object v1, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v1}, Lcom/android/lightpainting/e;->aGI(Lcom/android/lightpainting/e;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v3}, Lcom/android/lightpainting/e;->aGL(Lcom/android/lightpainting/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v1, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    iget v1, v1, Lcom/android/lightpainting/e;->atU:I

    if-ne v1, v0, :cond_e3

    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    iget v0, v0, Lcom/android/lightpainting/e;->atU:I

    if-eqz v0, :cond_e3

    .line 766
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-virtual {v0}, Lcom/android/lightpainting/e;->nD()Z

    .line 735
    :cond_e2
    :goto_e2
    return-void

    .line 768
    :cond_e3
    iget-object v0, p0, Lcom/android/lightpainting/g;->aur:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGA(Lcom/android/lightpainting/e;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/j;->KW([B)V

    goto :goto_e2
.end method
