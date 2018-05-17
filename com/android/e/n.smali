.class final Lcom/android/e/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aXL:Lcom/android/e/h;


# direct methods
.method constructor <init>(Lcom/android/e/h;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/e/n;->aXL:Lcom/android/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/e/n;->aXL:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bpf(Lcom/android/e/h;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1a

    .line 169
    iget-object v0, p0, Lcom/android/e/n;->aXL:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bpg(Lcom/android/e/h;)Lcom/android/common/ui/MicroSpurAndDngSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/MicroSpurAndDngSeekBar;->BF()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 174
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/android/e/n;->aXL:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bpd(Lcom/android/e/h;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 175
    iget-object v0, p0, Lcom/android/e/n;->aXL:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bph(Lcom/android/e/h;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->Ak()V

    .line 177
    :cond_2b
    iget-object v0, p0, Lcom/android/e/n;->aXL:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bpk(Lcom/android/e/h;)V

    .line 167
    return-void

    .line 170
    :cond_31
    iget-object v0, p0, Lcom/android/e/n;->aXL:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bpd(Lcom/android/e/h;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 171
    iget-object v0, p0, Lcom/android/e/n;->aXL:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bph(Lcom/android/e/h;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->start()V

    goto :goto_1a
.end method
