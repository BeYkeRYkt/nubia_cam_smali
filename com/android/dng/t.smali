.class final Lcom/android/dng/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aBi:Lcom/android/dng/c;


# direct methods
.method constructor <init>(Lcom/android/dng/c;)V
    .registers 2

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/dng/t;->aBi:Lcom/android/dng/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/dng/t;->aBi:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPj(Lcom/android/dng/c;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1f

    .line 215
    iget-object v0, p0, Lcom/android/dng/t;->aBi:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPg(Lcom/android/dng/c;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 216
    iget-object v0, p0, Lcom/android/dng/t;->aBi:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPl(Lcom/android/dng/c;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->start()V

    .line 219
    :cond_1f
    iget-object v0, p0, Lcom/android/dng/t;->aBi:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPg(Lcom/android/dng/c;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 220
    iget-object v0, p0, Lcom/android/dng/t;->aBi:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPl(Lcom/android/dng/c;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->Ak()V

    .line 222
    :cond_30
    iget-object v0, p0, Lcom/android/dng/t;->aBi:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPt(Lcom/android/dng/c;)V

    .line 213
    return-void
.end method
