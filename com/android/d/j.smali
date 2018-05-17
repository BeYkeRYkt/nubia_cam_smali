.class Lcom/android/d/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/u;


# instance fields
.field final synthetic aGi:Lcom/android/d/h;


# direct methods
.method constructor <init>(Lcom/android/d/h;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/d/j;->aGi:Lcom/android/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public xf()V
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/d/j;->aGi:Lcom/android/d/h;

    invoke-static {v0}, Lcom/android/d/h;->aUQ(Lcom/android/d/h;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 165
    iget-object v0, p0, Lcom/android/d/j;->aGi:Lcom/android/d/h;

    invoke-static {v0}, Lcom/android/d/h;->aUP(Lcom/android/d/h;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 166
    iget-object v0, p0, Lcom/android/d/j;->aGi:Lcom/android/d/h;

    invoke-static {v0}, Lcom/android/d/h;->aUR(Lcom/android/d/h;)Lcom/android/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/d/f;->aUJ()Z

    move-result v0

    .line 164
    if-eqz v0, :cond_6b

    .line 167
    :cond_20
    const-string/jumbo v0, "Photo3DMemberFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsPaused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/d/j;->aGi:Lcom/android/d/h;

    invoke-static {v2}, Lcom/android/d/h;->aUQ(Lcom/android/d/h;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string/jumbo v2, " isStorageLeftEnough "

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/android/d/j;->aGi:Lcom/android/d/h;

    invoke-static {v2}, Lcom/android/d/h;->aUP(Lcom/android/d/h;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    const-string/jumbo v2, " Photo3DThread Busy "

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/android/d/j;->aGi:Lcom/android/d/h;

    invoke-static {v2}, Lcom/android/d/h;->aUR(Lcom/android/d/h;)Lcom/android/d/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/d/f;->aUJ()Z

    move-result v2

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 173
    :cond_6b
    iget-object v0, p0, Lcom/android/d/j;->aGi:Lcom/android/d/h;

    invoke-static {v0}, Lcom/android/d/h;->aUP(Lcom/android/d/h;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 163
    return-void
.end method

.method public xg(Z)V
    .registers 2

    .prologue
    .line 157
    return-void
.end method

.method public xh()V
    .registers 1

    .prologue
    .line 177
    return-void
.end method
