.class public Lcom/android/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private apW:Lcom/android/clone/a;

.field private apX:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/clone/a;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/a/d;->apW:Lcom/android/clone/a;

    .line 14
    iput-object v0, p0, Lcom/android/a/d;->apX:Landroid/view/View;

    .line 17
    iput-object p1, p0, Lcom/android/a/d;->apW:Lcom/android/clone/a;

    .line 16
    return-void
.end method


# virtual methods
.method public aBM()V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/a/d;->apW:Lcom/android/clone/a;

    if-nez v0, :cond_e

    .line 30
    const-string/jumbo v0, "CloneBottomListener"

    const-string/jumbo v1, "mContext is null."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void

    .line 33
    :cond_e
    iget-object v0, p0, Lcom/android/a/d;->apW:Lcom/android/clone/a;

    iget-object v1, p0, Lcom/android/a/d;->apX:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/clone/a;->biF(Landroid/view/View;)V

    .line 28
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 22
    const-string/jumbo v0, "CloneBottomListener"

    const-string/jumbo v1, "onClick"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/android/a/d;->apX:Landroid/view/View;

    .line 24
    new-instance v0, Lcom/android/a/b;

    invoke-direct {v0, p0}, Lcom/android/a/b;-><init>(Lcom/android/a/d;)V

    .line 25
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 21
    return-void
.end method
