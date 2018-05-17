.class Lcom/android/common/appService/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/storagemanager/g;


# instance fields
.field final synthetic mY:Lcom/android/common/appService/W;


# direct methods
.method constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/common/appService/X;->mY:Lcom/android/common/appService/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tF(J)V
    .registers 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/common/appService/X;->mY:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/appService/W;->qV(J)V

    .line 288
    return-void
.end method
