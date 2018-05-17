.class final Lcom/android/intervalometer/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/storagemanager/h;


# instance fields
.field final synthetic aQB:Lcom/android/intervalometer/a;


# direct methods
.method constructor <init>(Lcom/android/intervalometer/a;)V
    .registers 2

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/intervalometer/k;->aQB:Lcom/android/intervalometer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public agP(JZ)V
    .registers 8

    .prologue
    .line 313
    if-eqz p3, :cond_3

    .line 314
    return-void

    .line 316
    :cond_3
    const-string/jumbo v0, "IntervalometerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Storage enough: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/intervalometer/k;->aQB:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgy(Lcom/android/intervalometer/a;)V

    .line 318
    iget-object v0, p0, Lcom/android/intervalometer/k;->aQB:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgx(Lcom/android/intervalometer/a;)V

    .line 319
    iget-object v0, p0, Lcom/android/intervalometer/k;->aQB:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgp(Lcom/android/intervalometer/a;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 320
    iget-object v0, p0, Lcom/android/intervalometer/k;->aQB:Lcom/android/intervalometer/a;

    invoke-static {v0}, Lcom/android/intervalometer/a;->bgm(Lcom/android/intervalometer/a;)Lcom/android/common/appService/W;

    move-result-object v0

    iget-object v1, p0, Lcom/android/intervalometer/k;->aQB:Lcom/android/intervalometer/a;

    invoke-static {v1}, Lcom/android/intervalometer/a;->bgm(Lcom/android/intervalometer/a;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qU()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/common/appService/W;->qV(J)V

    .line 312
    :cond_42
    return-void
.end method
