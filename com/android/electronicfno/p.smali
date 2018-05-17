.class final Lcom/android/electronicfno/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aVX:Lcom/android/electronicfno/i;


# direct methods
.method constructor <init>(Lcom/android/electronicfno/i;)V
    .registers 2

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/electronicfno/p;->aVX:Lcom/android/electronicfno/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/electronicfno/p;->aVX:Lcom/android/electronicfno/i;

    invoke-static {v0}, Lcom/android/electronicfno/i;->bnI(Lcom/android/electronicfno/i;)Lcom/android/common/appService/z;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/z;->lL(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 307
    iget-object v0, p0, Lcom/android/electronicfno/p;->aVX:Lcom/android/electronicfno/i;

    invoke-static {v0}, Lcom/android/electronicfno/i;->bnF(Lcom/android/electronicfno/i;)Lcom/android/electronicfno/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/electronicfno/a;->bmu()I

    move-result v0

    if-eqz v0, :cond_22

    .line 308
    iget-object v0, p0, Lcom/android/electronicfno/p;->aVX:Lcom/android/electronicfno/i;

    invoke-static {v0}, Lcom/android/electronicfno/i;->bnF(Lcom/android/electronicfno/i;)Lcom/android/electronicfno/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/electronicfno/a;->cancel()V

    .line 305
    :cond_22
    return-void
.end method
