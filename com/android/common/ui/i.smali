.class public Lcom/android/common/ui/i;
.super Lcom/android/common/ui/RotateImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private pW:Lcom/android/common/appService/W;

.field private pX:Ljava/util/List;

.field private pY:Lcom/android/common/camerastate/a;

.field private pZ:Ljava/lang/String;

.field private qa:Lcom/android/common/ui/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object v0, p0, Lcom/android/common/ui/i;->pW:Lcom/android/common/appService/W;

    .line 46
    iput-object v0, p0, Lcom/android/common/ui/i;->pY:Lcom/android/common/camerastate/a;

    .line 47
    iput-object v0, p0, Lcom/android/common/ui/i;->pX:Ljava/util/List;

    .line 48
    iput-object v0, p0, Lcom/android/common/ui/i;->pZ:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private vz(I)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 91
    iget-object v1, p0, Lcom/android/common/ui/i;->pX:Ljava/util/List;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/common/ui/i;->pX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_f

    .line 92
    :cond_e
    return v2

    :cond_f
    move v1, v0

    .line 94
    :goto_10
    iget-object v0, p0, Lcom/android/common/ui/i;->pX:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 95
    iget-object v0, p0, Lcom/android/common/ui/i;->pX:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/cameradevice/g;

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/g;->Kg(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 96
    return v1

    .line 94
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 100
    :cond_2b
    return v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/common/ui/i;->pY:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 83
    return-void

    .line 86
    :cond_b
    invoke-static {p0}, Lcom/android/common/c/l;->hC(Lcom/android/common/ui/i;)Lcom/android/common/c/a;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 81
    return-void
.end method

.method public vA(I)V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/common/ui/i;->pW:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qu()Lcom/android/common/setting/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/setting/d;->UI(I)V

    .line 76
    return-void
.end method

.method public vw(Ljava/util/List;ILcom/android/common/appService/W;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/common/ui/i;->pX:Ljava/util/List;

    .line 68
    iput-object p4, p0, Lcom/android/common/ui/i;->pZ:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/android/common/ui/i;->pW:Lcom/android/common/appService/W;

    .line 70
    invoke-virtual {p3}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/i;->pY:Lcom/android/common/camerastate/a;

    .line 71
    invoke-virtual {p0, p2}, Lcom/android/common/ui/i;->setImageResource(I)V

    .line 72
    invoke-virtual {p0, p0}, Lcom/android/common/ui/i;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/i;->setVisibility(I)V

    .line 66
    return-void
.end method

.method public vx(Lcom/android/common/ui/j;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/common/ui/i;->qa:Lcom/android/common/ui/j;

    .line 62
    return-void
.end method

.method public vy()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/common/ui/i;->qa:Lcom/android/common/ui/j;

    if-eqz v0, :cond_8

    .line 105
    iget-object v0, p0, Lcom/android/common/ui/i;->pW:Lcom/android/common/appService/W;

    if-nez v0, :cond_9

    :cond_8
    return-void

    .line 107
    :cond_9
    iget-object v0, p0, Lcom/android/common/ui/i;->pW:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/i;->vz(I)I

    move-result v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/common/ui/i;->pX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 109
    iget-object v1, p0, Lcom/android/common/ui/i;->pX:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/cameradevice/g;

    .line 110
    iget-object v1, p0, Lcom/android/common/ui/i;->qa:Lcom/android/common/ui/j;

    invoke-interface {v1, v0}, Lcom/android/common/ui/j;->vB(Lcom/android/common/cameradevice/g;)V

    .line 103
    return-void
.end method
