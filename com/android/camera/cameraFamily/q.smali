.class final Lcom/android/camera/cameraFamily/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/c/d;


# instance fields
.field final synthetic amz:Lcom/android/camera/cameraFamily/a;


# direct methods
.method constructor <init>(Lcom/android/camera/cameraFamily/a;)V
    .registers 2

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ayk(Lcom/android/camera/cameraFamily/k;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awD(Lcom/android/camera/cameraFamily/a;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 317
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awE(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    .line 316
    if-nez v0, :cond_1d

    .line 318
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/a;->aws()Z

    move-result v0

    .line 316
    if-eqz v0, :cond_64

    .line 319
    :cond_1d
    const-string/jumbo v0, "CameraFamilyFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSwitchMember: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v2}, Lcom/android/camera/cameraFamily/a;->awD(Lcom/android/camera/cameraFamily/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    const-string/jumbo v2, "; ActivityPause: "

    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    iget-object v2, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v2}, Lcom/android/camera/cameraFamily/a;->awE(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z

    move-result v2

    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    const-string/jumbo v2, "; CameraFamilyAnimating: "

    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    iget-object v2, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v2}, Lcom/android/camera/cameraFamily/a;->aws()Z

    move-result v2

    .line 319
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void

    .line 324
    :cond_64
    iget v0, p1, Lcom/android/camera/cameraFamily/k;->amj:I

    sget-object v1, Lcom/android/common/appService/CameraMember;->jP:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    if-ne v0, v1, :cond_74

    .line 325
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->axa(Lcom/android/camera/cameraFamily/a;)V

    .line 326
    return-void

    .line 328
    :cond_74
    iget v0, p1, Lcom/android/camera/cameraFamily/k;->amj:I

    sget-object v1, Lcom/android/common/appService/CameraMember;->jQ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    if-ne v0, v1, :cond_84

    .line 329
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->axb(Lcom/android/camera/cameraFamily/a;)V

    .line 330
    return-void

    .line 332
    :cond_84
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/cameraFamily/a;->awT(Lcom/android/camera/cameraFamily/a;Z)Z

    .line 333
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awI(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/k;

    move-result-object v0

    if-eq v0, p1, :cond_ec

    .line 334
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awI(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/k;

    move-result-object v0

    if-eqz v0, :cond_c2

    .line 335
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awI(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/k;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/cameraFamily/k;->amk:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awP(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/ui/RotateImageView;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    iget-object v2, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v2}, Lcom/android/camera/cameraFamily/a;->awI(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/k;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/cameraFamily/k;->amj:I

    invoke-static {v2}, Lcom/android/common/appService/CameraMember;->md(I)Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/cameraFamily/a;->awh(Lcom/android/common/appService/CameraMember;)I

    move-result v1

    .line 336
    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 339
    :cond_c2
    iget-object v0, p1, Lcom/android/camera/cameraFamily/k;->amk:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    iget-object v1, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v1}, Lcom/android/camera/cameraFamily/a;->awI(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/k;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/cameraFamily/a;->awV(Lcom/android/camera/cameraFamily/a;Lcom/android/camera/cameraFamily/k;)Lcom/android/camera/cameraFamily/k;

    .line 341
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0, p1}, Lcom/android/camera/cameraFamily/a;->awU(Lcom/android/camera/cameraFamily/a;Lcom/android/camera/cameraFamily/k;)Lcom/android/camera/cameraFamily/k;

    .line 343
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    iget v1, p1, Lcom/android/camera/cameraFamily/k;->amj:I

    invoke-static {v0, v1}, Lcom/android/camera/cameraFamily/a;->axe(Lcom/android/camera/cameraFamily/a;I)V

    .line 344
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "camera_family"

    iget-object v2, p1, Lcom/android/camera/cameraFamily/k;->mName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_ec
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->axd(Lcom/android/camera/cameraFamily/a;)V

    .line 348
    iget-object v0, p0, Lcom/android/camera/cameraFamily/q;->amz:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0, v3}, Lcom/android/camera/cameraFamily/a;->awT(Lcom/android/camera/cameraFamily/a;Z)Z

    .line 315
    return-void
.end method
