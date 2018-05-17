.class final Lcom/android/pretty/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aFy:Lcom/android/pretty/u;


# direct methods
.method constructor <init>(Lcom/android/pretty/u;)V
    .registers 2

    .prologue
    .line 362
    iput-object p1, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 366
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUc(Lcom/android/pretty/u;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_27

    .line 367
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUc(Lcom/android/pretty/u;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_95

    .line 370
    :cond_27
    const-string/jumbo v0, "PortraitPrettySettingLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "State limit, can\'t enable bokeh tab. (DeviceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v2}, Lcom/android/pretty/u;->aUc(Lcom/android/pretty/u;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v2

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 372
    const-string/jumbo v2, "; FunctionState: "

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 372
    iget-object v2, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v2}, Lcom/android/pretty/u;->aUc(Lcom/android/pretty/u;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 373
    const-string/jumbo v2, "; UIState: "

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 373
    iget-object v2, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v2}, Lcom/android/pretty/u;->aUc(Lcom/android/pretty/u;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v2

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    const-string/jumbo v2, "; isCommandEnable: "

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/c/e;->hq()Z

    move-result v2

    .line 370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void

    .line 368
    :cond_95
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUc(Lcom/android/pretty/u;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_27

    .line 369
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hq()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 377
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUf(Lcom/android/pretty/u;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_be

    .line 378
    return-void

    .line 380
    :cond_be
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUj(Lcom/android/pretty/u;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_109

    .line 381
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUf(Lcom/android/pretty/u;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0201bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 382
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUj(Lcom/android/pretty/u;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0201ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 383
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUf(Lcom/android/pretty/u;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v1}, Lcom/android/pretty/u;->aTZ(Lcom/android/pretty/u;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 384
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUj(Lcom/android/pretty/u;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v1}, Lcom/android/pretty/u;->aUa(Lcom/android/pretty/u;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 385
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUi(Lcom/android/pretty/u;)Lcom/android/pretty/WaterDropSeekbar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 388
    :cond_109
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUe(Lcom/android/pretty/u;)Lcom/android/pretty/WaterDropSeekbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/pretty/WaterDropSeekbar;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUj(Lcom/android/pretty/u;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_127

    .line 390
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUg(Lcom/android/pretty/u;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 365
    :goto_126
    return-void

    .line 391
    :cond_127
    iget-object v0, p0, Lcom/android/pretty/L;->aFy:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUn(Lcom/android/pretty/u;)V

    goto :goto_126
.end method
