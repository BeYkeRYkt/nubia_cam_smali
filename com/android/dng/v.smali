.class final Lcom/android/dng/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aBk:Lcom/android/dng/c;


# direct methods
.method constructor <init>(Lcom/android/dng/c;)V
    .registers 2

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/dng/v;->aBk:Lcom/android/dng/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/dng/v;->aBk:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPg(Lcom/android/dng/c;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 238
    iget-object v0, p0, Lcom/android/dng/v;->aBk:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPl(Lcom/android/dng/c;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->start()V

    .line 236
    :goto_11
    return-void

    .line 240
    :cond_12
    iget-object v0, p0, Lcom/android/dng/v;->aBk:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPl(Lcom/android/dng/c;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->Ak()V

    goto :goto_11
.end method
