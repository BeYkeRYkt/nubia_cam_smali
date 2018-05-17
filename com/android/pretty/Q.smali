.class final Lcom/android/pretty/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/K;


# instance fields
.field final synthetic aFD:Lcom/android/pretty/u;


# direct methods
.method constructor <init>(Lcom/android/pretty/u;)V
    .registers 2

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/pretty/Q;->aFD:Lcom/android/pretty/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Am(Z)V
    .registers 4

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/pretty/Q;->aFD:Lcom/android/pretty/u;

    invoke-static {v0, p1}, Lcom/android/pretty/u;->aUm(Lcom/android/pretty/u;Z)Z

    .line 518
    iget-object v0, p0, Lcom/android/pretty/Q;->aFD:Lcom/android/pretty/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/pretty/u;->aUl(Lcom/android/pretty/u;Z)Z

    .line 519
    iget-object v0, p0, Lcom/android/pretty/Q;->aFD:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUg(Lcom/android/pretty/u;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 520
    iget-object v0, p0, Lcom/android/pretty/Q;->aFD:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUd(Lcom/android/pretty/u;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 516
    :goto_1f
    return-void

    .line 522
    :cond_20
    iget-object v0, p0, Lcom/android/pretty/Q;->aFD:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUd(Lcom/android/pretty/u;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1f
.end method
