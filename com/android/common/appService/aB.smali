.class final Lcom/android/common/appService/aB;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic nU:Lcom/android/common/appService/W;


# direct methods
.method constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/android/common/appService/aB;->nU:Lcom/android/common/appService/W;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1477
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1478
    iget-object v0, p0, Lcom/android/common/appService/aB;->nU:Lcom/android/common/appService/W;

    invoke-static {v0}, Lcom/android/common/appService/W;->tE(Lcom/android/common/appService/W;)Lcom/android/common/appService/N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/N;->og()V

    .line 1479
    invoke-static {}, Lcom/android/common/appService/W;->tC()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "asy eable orientaion"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    return-void
.end method
