.class final Lcom/android/common/appService/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/cameradevice/a;


# instance fields
.field final synthetic nb:Lcom/android/common/appService/g;


# direct methods
.method constructor <init>(Lcom/android/common/appService/g;)V
    .registers 2

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/common/appService/ab;->nb:Lcom/android/common/appService/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tJ()V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/common/appService/ab;->nb:Lcom/android/common/appService/g;

    invoke-static {v0}, Lcom/android/common/appService/g;->iI(Lcom/android/common/appService/g;)Lcom/android/common/appService/SmileShot$State;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/SmileShot$State;->hz:Lcom/android/common/appService/SmileShot$State;

    if-eq v0, v1, :cond_14

    .line 151
    const-string/jumbo v0, "SmileShot"

    const-string/jumbo v1, "[onSmile]gesture callback in error state, please check"

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void

    .line 156
    :cond_14
    iget-object v0, p0, Lcom/android/common/appService/ab;->nb:Lcom/android/common/appService/g;

    invoke-static {v0}, Lcom/android/common/appService/g;->iH(Lcom/android/common/appService/g;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qT()V

    .line 149
    return-void
.end method
