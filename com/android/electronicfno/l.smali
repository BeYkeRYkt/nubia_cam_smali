.class public Lcom/android/electronicfno/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic aVU:Lcom/android/electronicfno/i;


# direct methods
.method public constructor <init>(Lcom/android/electronicfno/i;)V
    .registers 2

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/electronicfno/l;->aVU:Lcom/android/electronicfno/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 5

    .prologue
    .line 676
    if-nez p1, :cond_3

    .line 677
    return-void

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/android/electronicfno/l;->aVU:Lcom/android/electronicfno/i;

    invoke-static {v0}, Lcom/android/electronicfno/i;->bnF(Lcom/android/electronicfno/i;)Lcom/android/electronicfno/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/electronicfno/a;->bmt([B)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 680
    const-string/jumbo v0, "ElectronicFnoFragment"

    const-string/jumbo v1, "data is enough, stop putting data to electronic"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/android/electronicfno/l;->aVU:Lcom/android/electronicfno/i;

    invoke-static {v0}, Lcom/android/electronicfno/i;->bnL(Lcom/android/electronicfno/i;)V

    .line 675
    :cond_1d
    return-void
.end method
