.class final Lcom/android/pretty/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/K;


# instance fields
.field final synthetic aFn:Lcom/android/pretty/p;


# direct methods
.method constructor <init>(Lcom/android/pretty/p;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/pretty/G;->aFn:Lcom/android/pretty/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Am(Z)V
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/pretty/G;->aFn:Lcom/android/pretty/p;

    invoke-static {v0, p1}, Lcom/android/pretty/p;->aTA(Lcom/android/pretty/p;Z)Z

    .line 115
    iget-object v0, p0, Lcom/android/pretty/G;->aFn:Lcom/android/pretty/p;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/pretty/p;->aTz(Lcom/android/pretty/p;Z)Z

    .line 116
    iget-object v0, p0, Lcom/android/pretty/G;->aFn:Lcom/android/pretty/p;

    invoke-static {v0}, Lcom/android/pretty/p;->aTw(Lcom/android/pretty/p;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 117
    iget-object v0, p0, Lcom/android/pretty/G;->aFn:Lcom/android/pretty/p;

    invoke-static {v0}, Lcom/android/pretty/p;->aTv(Lcom/android/pretty/p;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :goto_1f
    return-void

    .line 119
    :cond_20
    iget-object v0, p0, Lcom/android/pretty/G;->aFn:Lcom/android/pretty/p;

    invoke-static {v0}, Lcom/android/pretty/p;->aTv(Lcom/android/pretty/p;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1f
.end method
