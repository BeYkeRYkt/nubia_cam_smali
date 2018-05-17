.class final Lcom/android/common/appService/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/ac;


# instance fields
.field final synthetic nr:Lcom/android/common/appService/t;


# direct methods
.method constructor <init>(Lcom/android/common/appService/t;)V
    .registers 2

    .prologue
    .line 494
    iput-object p1, p0, Lcom/android/common/appService/ap;->nr:Lcom/android/common/appService/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tY(Lcom/android/common/ui/ae;)V
    .registers 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/common/appService/ap;->nr:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 499
    iget-object v0, p0, Lcom/android/common/appService/ap;->nr:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lx(Lcom/android/common/appService/t;)Lcom/android/common/effects/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/effects/e;->IF(Lcom/android/common/ui/ae;)V

    .line 497
    :cond_11
    return-void
.end method
