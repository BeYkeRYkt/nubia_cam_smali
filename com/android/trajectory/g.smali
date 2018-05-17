.class Lcom/android/trajectory/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic asX:Lcom/android/trajectory/a;


# direct methods
.method private constructor <init>(Lcom/android/trajectory/a;)V
    .registers 2

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/android/trajectory/g;->asX:Lcom/android/trajectory/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/trajectory/a;Lcom/android/trajectory/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/trajectory/g;-><init>(Lcom/android/trajectory/a;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1262
    iget-object v0, p0, Lcom/android/trajectory/g;->asX:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEU(Lcom/android/trajectory/a;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    .line 1263
    const-string/jumbo v0, "TrajectoryFragment"

    const-string/jumbo v1, "can\'t RestartButtonClickListener ,because is making"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    return-void

    .line 1266
    :cond_17
    iget-object v0, p0, Lcom/android/trajectory/g;->asX:Lcom/android/trajectory/a;

    invoke-static {v0, v1}, Lcom/android/trajectory/a;->aFi(Lcom/android/trajectory/a;Z)V

    .line 1261
    return-void
.end method
