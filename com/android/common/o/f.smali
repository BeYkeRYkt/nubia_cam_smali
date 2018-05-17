.class Lcom/android/common/o/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field adk:Ljava/util/List;

.field final synthetic adl:Lcom/android/common/o/e;


# direct methods
.method constructor <init>(Lcom/android/common/o/e;Ljava/util/List;)V
    .registers 4

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/common/o/f;->adl:Lcom/android/common/o/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/o/f;->adk:Ljava/util/List;

    .line 432
    iput-object p2, p0, Lcom/android/common/o/f;->adk:Ljava/util/List;

    .line 431
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/common/o/f;->adk:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 437
    iget-object v0, p0, Lcom/android/common/o/f;->adk:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 438
    iget-object v2, p0, Lcom/android/common/o/f;->adl:Lcom/android/common/o/e;

    invoke-virtual {v2}, Lcom/android/common/o/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/common/ui/d;->uL(Landroid/content/res/Resources;)V

    goto :goto_a

    .line 435
    :cond_20
    return-void
.end method
