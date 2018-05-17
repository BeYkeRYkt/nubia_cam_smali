.class final Lcom/android/e/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aXN:Lcom/android/e/h;


# direct methods
.method constructor <init>(Lcom/android/e/h;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/e/p;->aXN:Lcom/android/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/e/p;->aXN:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bpg(Lcom/android/e/h;)Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BF()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 194
    :cond_d
    iget-object v0, p0, Lcom/android/e/p;->aXN:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bpd(Lcom/android/e/h;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 195
    iget-object v0, p0, Lcom/android/e/p;->aXN:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bph(Lcom/android/e/h;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->start()V

    .line 192
    :goto_1e
    return-void

    .line 197
    :cond_1f
    iget-object v0, p0, Lcom/android/e/p;->aXN:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bph(Lcom/android/e/h;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->Ak()V

    goto :goto_1e
.end method
