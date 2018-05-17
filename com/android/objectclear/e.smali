.class Lcom/android/objectclear/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private aUi:I

.field final synthetic aUj:Lcom/android/objectclear/c;

.field private data:[B


# direct methods
.method public constructor <init>(Lcom/android/objectclear/c;I[B)V
    .registers 7

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/objectclear/e;->aUj:Lcom/android/objectclear/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 60
    const-string/jumbo v0, "NubiaObjectClearDataProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SaveData i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iput p2, p0, Lcom/android/objectclear/e;->aUi:I

    .line 62
    iput-object p3, p0, Lcom/android/objectclear/e;->data:[B

    .line 58
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/objectclear/e;->aUj:Lcom/android/objectclear/c;

    invoke-static {v0}, Lcom/android/objectclear/c;->blt(Lcom/android/objectclear/c;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 68
    return-void

    .line 69
    :cond_9
    iget-object v0, p0, Lcom/android/objectclear/e;->aUj:Lcom/android/objectclear/c;

    invoke-static {v0}, Lcom/android/objectclear/c;->blu(Lcom/android/objectclear/c;)Lcom/android/objectclear/d;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 70
    iget-object v0, p0, Lcom/android/objectclear/e;->aUj:Lcom/android/objectclear/c;

    invoke-static {v0}, Lcom/android/objectclear/c;->blu(Lcom/android/objectclear/c;)Lcom/android/objectclear/d;

    move-result-object v0

    iget v1, p0, Lcom/android/objectclear/e;->aUi:I

    invoke-interface {v0, v1}, Lcom/android/objectclear/d;->blA(I)V

    .line 71
    :cond_1c
    iget-object v0, p0, Lcom/android/objectclear/e;->aUj:Lcom/android/objectclear/c;

    iget v1, p0, Lcom/android/objectclear/e;->aUi:I

    iget-object v2, p0, Lcom/android/objectclear/e;->data:[B

    invoke-static {v0, v1, v2}, Lcom/android/objectclear/c;->blx(Lcom/android/objectclear/c;I[B)V

    .line 72
    iget v0, p0, Lcom/android/objectclear/e;->aUi:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3b

    iget-object v0, p0, Lcom/android/objectclear/e;->aUj:Lcom/android/objectclear/c;

    invoke-static {v0}, Lcom/android/objectclear/c;->blu(Lcom/android/objectclear/c;)Lcom/android/objectclear/d;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 73
    iget-object v0, p0, Lcom/android/objectclear/e;->aUj:Lcom/android/objectclear/c;

    invoke-static {v0}, Lcom/android/objectclear/c;->blu(Lcom/android/objectclear/c;)Lcom/android/objectclear/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/objectclear/d;->bly()V

    .line 66
    :cond_3b
    return-void
.end method
