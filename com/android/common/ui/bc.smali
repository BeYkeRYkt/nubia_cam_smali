.class final Lcom/android/common/ui/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Ek:Lcom/android/common/ui/R;


# direct methods
.method constructor <init>(Lcom/android/common/ui/R;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/common/ui/bc;->Ek:Lcom/android/common/ui/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/android/common/ui/bc;->Ek:Lcom/android/common/ui/R;

    invoke-static {v1, v0}, Lcom/android/common/ui/R;->BW(Lcom/android/common/ui/R;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/common/ui/bc;->Ek:Lcom/android/common/ui/R;

    invoke-static {v0, p1}, Lcom/android/common/ui/R;->BV(Lcom/android/common/ui/R;Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/android/common/ui/bc;->Ek:Lcom/android/common/ui/R;

    invoke-static {v0}, Lcom/android/common/ui/R;->BU(Lcom/android/common/ui/R;)Lcom/android/common/appService/M;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 114
    iget-object v0, p0, Lcom/android/common/ui/bc;->Ek:Lcom/android/common/ui/R;

    invoke-static {v0}, Lcom/android/common/ui/R;->BU(Lcom/android/common/ui/R;)Lcom/android/common/appService/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/M;->notifyDataSetChanged()V

    .line 109
    :cond_21
    return-void
.end method
