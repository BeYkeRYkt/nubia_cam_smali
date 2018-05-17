.class final Lcom/android/multiexposure/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic arC:Lcom/android/multiexposure/o;


# direct methods
.method constructor <init>(Lcom/android/multiexposure/o;)V
    .registers 2

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/multiexposure/A;->arC:Lcom/android/multiexposure/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/multiexposure/A;->arC:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDu(Lcom/android/multiexposure/o;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 536
    const-string/jumbo v0, "MultiExposureFragment"

    const-string/jumbo v1, "TouchScreen is disabled ignore MultiExposureDoneButton onClick"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    return-void

    .line 539
    :cond_12
    iget-object v0, p0, Lcom/android/multiexposure/A;->arC:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDr(Lcom/android/multiexposure/o;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 540
    iget-object v0, p0, Lcom/android/multiexposure/A;->arC:Lcom/android/multiexposure/o;

    iget-object v0, v0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    if-eqz v0, :cond_32

    .line 541
    iget-object v0, p0, Lcom/android/multiexposure/A;->arC:Lcom/android/multiexposure/o;

    iget-object v0, v0, Lcom/android/multiexposure/o;->aqO:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->aCl()V

    .line 542
    iget-object v0, p0, Lcom/android/multiexposure/A;->arC:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDl(Lcom/android/multiexposure/o;)Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 534
    :cond_32
    return-void
.end method
