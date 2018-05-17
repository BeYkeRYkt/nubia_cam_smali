.class final Lcom/android/pretty/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aFm:Lcom/android/pretty/p;


# direct methods
.method constructor <init>(Lcom/android/pretty/p;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/pretty/F;->aFm:Lcom/android/pretty/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 99
    iget-object v0, p0, Lcom/android/pretty/F;->aFm:Lcom/android/pretty/p;

    invoke-static {v0}, Lcom/android/pretty/p;->aTw(Lcom/android/pretty/p;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 100
    iget-object v0, p0, Lcom/android/pretty/F;->aFm:Lcom/android/pretty/p;

    invoke-static {v0}, Lcom/android/pretty/p;->aTx(Lcom/android/pretty/p;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->start()V

    .line 101
    iget-object v0, p0, Lcom/android/pretty/F;->aFm:Lcom/android/pretty/p;

    invoke-static {v0, v1}, Lcom/android/pretty/p;->aTz(Lcom/android/pretty/p;Z)Z

    .line 98
    :goto_17
    return-void

    .line 103
    :cond_18
    iget-object v0, p0, Lcom/android/pretty/F;->aFm:Lcom/android/pretty/p;

    invoke-static {v0}, Lcom/android/pretty/p;->aTx(Lcom/android/pretty/p;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->Ak()V

    .line 104
    iget-object v0, p0, Lcom/android/pretty/F;->aFm:Lcom/android/pretty/p;

    invoke-static {v0, v1}, Lcom/android/pretty/p;->aTz(Lcom/android/pretty/p;Z)Z

    goto :goto_17
.end method
