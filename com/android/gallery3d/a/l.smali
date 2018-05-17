.class Lcom/android/gallery3d/a/l;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field avp:Landroid/content/Context;

.field final synthetic avq:Lcom/android/gallery3d/a/j;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/j;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/gallery3d/a/l;->avq:Lcom/android/gallery3d/a/j;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 430
    iput-object p2, p0, Lcom/android/gallery3d/a/l;->avp:Landroid/content/Context;

    .line 429
    return-void
.end method


# virtual methods
.method protected varargs aIm([Lcom/android/gallery3d/a/h;)Ljava/lang/Void;
    .registers 6

    .prologue
    .line 435
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_34

    .line 436
    aget-object v1, p1, v0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/gallery3d/a/h;->aHB(I)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 437
    const-string/jumbo v1, "CameraDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Deletion is not supported:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 440
    :cond_2c
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/android/gallery3d/a/l;->avp:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/gallery3d/a/h;->aHp(Landroid/content/Context;)Z

    goto :goto_29

    .line 442
    :cond_34
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 434
    check-cast p1, [Lcom/android/gallery3d/a/h;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/l;->aIm([Lcom/android/gallery3d/a/h;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
