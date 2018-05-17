.class final Lcom/android/dng/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aBj:Lcom/android/dng/c;


# direct methods
.method constructor <init>(Lcom/android/dng/c;)V
    .registers 2

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/dng/u;->aBj:Lcom/android/dng/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/dng/u;->aBj:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPg(Lcom/android/dng/c;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 229
    iget-object v0, p0, Lcom/android/dng/u;->aBj:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPl(Lcom/android/dng/c;)Lcom/android/common/ui/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/J;->Ak()V

    .line 231
    :cond_11
    iget-object v0, p0, Lcom/android/dng/u;->aBj:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPs(Lcom/android/dng/c;)V

    .line 227
    return-void
.end method
