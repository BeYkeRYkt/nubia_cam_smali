.class final Lcom/android/e/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aXM:Lcom/android/e/h;


# direct methods
.method constructor <init>(Lcom/android/e/h;)V
    .registers 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/e/o;->aXM:Lcom/android/e/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/e/o;->aXM:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bpd(Lcom/android/e/h;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 184
    iget-object v0, p0, Lcom/android/e/o;->aXM:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bph(Lcom/android/e/h;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->Ak()V

    .line 186
    :cond_11
    iget-object v0, p0, Lcom/android/e/o;->aXM:Lcom/android/e/h;

    invoke-static {v0}, Lcom/android/e/h;->bpj(Lcom/android/e/h;)V

    .line 182
    return-void
.end method
