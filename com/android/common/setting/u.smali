.class final Lcom/android/common/setting/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic US:Lcom/android/common/setting/l;


# direct methods
.method constructor <init>(Lcom/android/common/setting/l;)V
    .registers 2

    .prologue
    .line 1117
    iput-object p1, p0, Lcom/android/common/setting/u;->US:Lcom/android/common/setting/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/android/common/setting/u;->US:Lcom/android/common/setting/l;

    iget-object v0, v0, Lcom/android/common/setting/l;->Ur:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/p;

    .line 1121
    if-eqz v0, :cond_8

    .line 1122
    iget-object v2, p0, Lcom/android/common/setting/u;->US:Lcom/android/common/setting/l;

    invoke-static {v2}, Lcom/android/common/setting/l;->Ys(Lcom/android/common/setting/l;)Lcom/android/common/setting/n;

    move-result-object v2

    iget-object v2, v2, Lcom/android/common/setting/n;->Ut:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/common/setting/u;->US:Lcom/android/common/setting/l;

    invoke-static {v3}, Lcom/android/common/setting/l;->Ys(Lcom/android/common/setting/l;)Lcom/android/common/setting/n;

    move-result-object v3

    iget v3, v3, Lcom/android/common/setting/n;->Uu:I

    invoke-interface {v0, v2, v3}, Lcom/android/common/setting/p;->Yt([Ljava/lang/String;I)V

    goto :goto_8

    .line 1119
    :cond_2a
    return-void
.end method
