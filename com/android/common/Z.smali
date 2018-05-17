.class final Lcom/android/common/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic akS:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 923
    iput-object p1, p0, Lcom/android/common/Z;->akS:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 927
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "mWakeUpView onClick"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/android/common/Z;->akS:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->akr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 929
    iget-object v0, p0, Lcom/android/common/Z;->akS:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avY(Lcom/android/common/ActivityBase;)V

    .line 926
    :cond_18
    return-void
.end method
