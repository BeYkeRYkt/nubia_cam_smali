.class Lcom/android/trajectory/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic asW:Lcom/android/trajectory/a;


# direct methods
.method private constructor <init>(Lcom/android/trajectory/a;)V
    .registers 2

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/android/trajectory/f;->asW:Lcom/android/trajectory/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/trajectory/a;Lcom/android/trajectory/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/trajectory/f;-><init>(Lcom/android/trajectory/a;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1241
    iget-object v0, p0, Lcom/android/trajectory/f;->asW:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEU(Lcom/android/trajectory/a;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    .line 1242
    const-string/jumbo v0, "TrajectoryFragment"

    const-string/jumbo v1, "can\'t SaveButtonClickListener ,because is making"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    return-void

    .line 1245
    :cond_17
    iget-object v0, p0, Lcom/android/trajectory/f;->asW:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEI(Lcom/android/trajectory/a;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1246
    const-string/jumbo v0, "TrajectoryFragment"

    const-string/jumbo v1, "can\'t ChangeButtonClickListener ,because is saving"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    return-void

    .line 1249
    :cond_29
    iget-object v0, p0, Lcom/android/trajectory/f;->asW:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEH(Lcom/android/trajectory/a;)Z

    move-result v0

    if-nez v0, :cond_32

    return-void

    .line 1250
    :cond_32
    iget-object v0, p0, Lcom/android/trajectory/f;->asW:Lcom/android/trajectory/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aEZ(Lcom/android/trajectory/a;Z)Z

    .line 1251
    iget-object v0, p0, Lcom/android/trajectory/f;->asW:Lcom/android/trajectory/a;

    invoke-static {v0, v2}, Lcom/android/trajectory/a;->aEX(Lcom/android/trajectory/a;Z)Z

    .line 1252
    iget-object v0, p0, Lcom/android/trajectory/f;->asW:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aES(Lcom/android/trajectory/a;)Lcom/android/camera/Trajectory/NubiaTrajectory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayw()V

    .line 1253
    iget-object v0, p0, Lcom/android/trajectory/f;->asW:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEw(Lcom/android/trajectory/a;)Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 1240
    return-void
.end method
