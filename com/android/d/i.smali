.class Lcom/android/d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/d/g;


# instance fields
.field final synthetic aGh:Lcom/android/d/h;


# direct methods
.method constructor <init>(Lcom/android/d/h;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/d/i;->aGh:Lcom/android/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aUM()V
    .registers 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/d/i;->aGh:Lcom/android/d/h;

    invoke-static {v0}, Lcom/android/d/h;->aUQ(Lcom/android/d/h;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 146
    const-string/jumbo v0, "Photo3DMemberFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTaskEnd mIsPaused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/d/i;->aGh:Lcom/android/d/h;

    invoke-static {v2}, Lcom/android/d/h;->aUQ(Lcom/android/d/h;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_28
    iget-object v0, p0, Lcom/android/d/i;->aGh:Lcom/android/d/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/d/h;->mJ(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/d/i;->aGh:Lcom/android/d/h;

    invoke-static {v0}, Lcom/android/d/h;->aUT(Lcom/android/d/h;)V

    .line 144
    return-void
.end method

.method public aUN()V
    .registers 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/d/i;->aGh:Lcom/android/d/h;

    invoke-static {v0}, Lcom/android/d/h;->aUQ(Lcom/android/d/h;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 137
    const-string/jumbo v0, "Photo3DMemberFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTaskStart mIsPaused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/d/i;->aGh:Lcom/android/d/h;

    invoke-static {v2}, Lcom/android/d/h;->aUQ(Lcom/android/d/h;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_28
    iget-object v0, p0, Lcom/android/d/i;->aGh:Lcom/android/d/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/d/h;->mJ(Z)V

    .line 140
    iget-object v0, p0, Lcom/android/d/i;->aGh:Lcom/android/d/h;

    invoke-static {v0}, Lcom/android/d/h;->aUS(Lcom/android/d/h;)V

    .line 135
    return-void
.end method
