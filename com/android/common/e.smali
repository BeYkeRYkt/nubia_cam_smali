.class public Lcom/android/common/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TAG:Ljava/lang/String;

.field private agL:Lcom/android/common/appService/W;

.field private agM:Landroid/widget/RelativeLayout;

.field private agN:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/common/appService/W;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/common/e;->agM:Landroid/widget/RelativeLayout;

    .line 22
    const-string/jumbo v0, "HdrHintManager"

    iput-object v0, p0, Lcom/android/common/e;->TAG:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/android/common/e;->agL:Lcom/android/common/appService/W;

    .line 24
    iput-object v1, p0, Lcom/android/common/e;->agN:Landroid/widget/TextView;

    .line 27
    invoke-direct {p0, p1}, Lcom/android/common/e;->aoj(Landroid/view/View;)V

    .line 28
    iput-object p2, p0, Lcom/android/common/e;->agL:Lcom/android/common/appService/W;

    .line 26
    return-void
.end method

.method private aoj(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 32
    const v0, 0x7f1000f1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/e;->agM:Landroid/widget/RelativeLayout;

    .line 33
    const v0, 0x7f1000f2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/e;->agN:Landroid/widget/TextView;

    .line 31
    return-void
.end method


# virtual methods
.method public aok(Z)V
    .registers 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 38
    iget-object v0, p0, Lcom/android/common/e;->agM:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_8

    .line 39
    return-void

    .line 41
    :cond_8
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acR()Z

    move-result v0

    if-eqz v0, :cond_36

    if-eqz p1, :cond_36

    .line 45
    iget-object v0, p0, Lcom/android/common/e;->agL:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XB()Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 47
    iget-object v0, p0, Lcom/android/common/e;->agM:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/android/common/e;->agL:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->qs(Z)V

    .line 36
    :goto_35
    return-void

    .line 42
    :cond_36
    iget-object v0, p0, Lcom/android/common/e;->agM:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 43
    return-void

    .line 49
    :cond_3c
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/common/e;->agL:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qt()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 50
    iget-object v0, p0, Lcom/android/common/e;->agL:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afm:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_61

    .line 51
    iget-object v0, p0, Lcom/android/common/e;->agM:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_35

    .line 53
    :cond_61
    iget-object v0, p0, Lcom/android/common/e;->agM:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/android/common/e;->agL:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->qs(Z)V

    goto :goto_35
.end method
