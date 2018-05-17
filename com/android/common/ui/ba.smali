.class final Lcom/android/common/ui/ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Ei:Lcom/android/common/ui/S;


# direct methods
.method constructor <init>(Lcom/android/common/ui/S;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/common/ui/ba;->Ei:Lcom/android/common/ui/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/common/ui/ba;->Ei:Lcom/android/common/ui/S;

    invoke-virtual {v0}, Lcom/android/common/ui/S;->dismiss()V

    .line 183
    iget-object v0, p0, Lcom/android/common/ui/ba;->Ei:Lcom/android/common/ui/S;

    invoke-static {v0}, Lcom/android/common/ui/S;->Cc(Lcom/android/common/ui/S;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 184
    iget-object v0, p0, Lcom/android/common/ui/ba;->Ei:Lcom/android/common/ui/S;

    invoke-static {v0}, Lcom/android/common/ui/S;->Cd(Lcom/android/common/ui/S;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/android/common/ui/ba;->Ei:Lcom/android/common/ui/S;

    invoke-static {v0}, Lcom/android/common/ui/S;->Cc(Lcom/android/common/ui/S;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 181
    :cond_27
    return-void
.end method
