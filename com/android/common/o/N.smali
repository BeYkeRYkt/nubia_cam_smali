.class final Lcom/android/common/o/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/A;


# instance fields
.field final synthetic aeP:Lcom/android/common/o/p;


# direct methods
.method constructor <init>(Lcom/android/common/o/p;)V
    .registers 2

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/common/o/N;->aeP:Lcom/android/common/o/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xV()Z
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/common/o/N;->aeP:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amr(Lcom/android/common/o/p;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 298
    invoke-static {}, Lcom/android/common/o/p;->ami()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Animating, interrupt more setting click"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v0, 0x1

    return v0

    .line 301
    :cond_14
    const/4 v0, 0x0

    return v0
.end method
