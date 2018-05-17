.class final Lcom/android/common/ui/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Ej:Lcom/android/common/ui/S;


# direct methods
.method constructor <init>(Lcom/android/common/ui/S;)V
    .registers 2

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/common/ui/bb;->Ej:Lcom/android/common/ui/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/common/ui/bb;->Ej:Lcom/android/common/ui/S;

    invoke-virtual {v0}, Lcom/android/common/ui/S;->dismiss()V

    .line 196
    iget-object v0, p0, Lcom/android/common/ui/bb;->Ej:Lcom/android/common/ui/S;

    invoke-static {v0}, Lcom/android/common/ui/S;->Cb(Lcom/android/common/ui/S;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 197
    iget-object v0, p0, Lcom/android/common/ui/bb;->Ej:Lcom/android/common/ui/S;

    invoke-static {v0}, Lcom/android/common/ui/S;->Cb(Lcom/android/common/ui/S;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 194
    :cond_16
    return-void
.end method
