.class Lcom/android/funeffect/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/u;


# instance fields
.field final synthetic aTX:Lcom/android/funeffect/d;


# direct methods
.method constructor <init>(Lcom/android/funeffect/d;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/funeffect/e;->aTX:Lcom/android/funeffect/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xf()V
    .registers 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/funeffect/e;->aTX:Lcom/android/funeffect/d;

    invoke-static {v0}, Lcom/android/funeffect/d;->blk(Lcom/android/funeffect/d;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 154
    return-void

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/android/funeffect/e;->aTX:Lcom/android/funeffect/d;

    invoke-virtual {v0}, Lcom/android/funeffect/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    new-instance v1, Lcom/android/funeffect/f;

    iget-object v2, p0, Lcom/android/funeffect/e;->aTX:Lcom/android/funeffect/d;

    invoke-direct {v1, v2}, Lcom/android/funeffect/f;-><init>(Lcom/android/funeffect/d;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->atc(Lcom/android/common/a/c;)V

    .line 152
    return-void
.end method

.method public xg(Z)V
    .registers 2

    .prologue
    .line 146
    return-void
.end method

.method public xh()V
    .registers 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/funeffect/e;->aTX:Lcom/android/funeffect/d;

    invoke-static {v0}, Lcom/android/funeffect/d;->blk(Lcom/android/funeffect/d;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 162
    return-void

    .line 164
    :cond_9
    iget-object v0, p0, Lcom/android/funeffect/e;->aTX:Lcom/android/funeffect/d;

    invoke-virtual {v0}, Lcom/android/funeffect/d;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    new-instance v1, Lcom/android/funeffect/f;

    iget-object v2, p0, Lcom/android/funeffect/e;->aTX:Lcom/android/funeffect/d;

    invoke-direct {v1, v2}, Lcom/android/funeffect/f;-><init>(Lcom/android/funeffect/d;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->atc(Lcom/android/common/a/c;)V

    .line 160
    return-void
.end method
