.class Lcom/android/gallery3d/a/k;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field avm:Ljava/util/ArrayList;

.field avn:Ljava/util/ArrayList;

.field final synthetic avo:Lcom/android/gallery3d/a/j;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/a/j;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/gallery3d/a/k;->avo:Lcom/android/gallery3d/a/j;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 359
    iput-object p2, p0, Lcom/android/gallery3d/a/k;->avm:Ljava/util/ArrayList;

    .line 360
    iput-object p3, p0, Lcom/android/gallery3d/a/k;->avn:Ljava/util/ArrayList;

    .line 358
    return-void
.end method


# virtual methods
.method protected varargs aIk([Landroid/content/ContentResolver;)Lcom/android/gallery3d/a/q;
    .registers 12

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 372
    new-instance v6, Lcom/android/gallery3d/a/q;

    invoke-direct {v6}, Lcom/android/gallery3d/a/q;-><init>()V

    .line 374
    iget-object v0, p0, Lcom/android/gallery3d/a/k;->avm:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 375
    aget-object v0, p1, v8

    .line 377
    sget-object v2, Lcom/android/gallery3d/a/b;->auP:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 375
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_35

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 380
    invoke-static {v0}, Lcom/android/gallery3d/a/b;->aHG(Landroid/database/Cursor;)Lcom/android/gallery3d/a/b;

    move-result-object v1

    .line 381
    if-eqz v1, :cond_3b

    .line 382
    invoke-virtual {v6, v1}, Lcom/android/gallery3d/a/q;->aIt(Lcom/android/gallery3d/a/h;)V

    .line 388
    :cond_35
    :goto_35
    if-eqz v0, :cond_e

    .line 389
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_e

    .line 384
    :cond_3b
    const-string/jumbo v1, "CameraDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading data:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 385
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 384
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 393
    :cond_5a
    iget-object v0, p0, Lcom/android/gallery3d/a/k;->avn:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_60
    :goto_60
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 394
    aget-object v0, p1, v8

    .line 396
    sget-object v2, Lcom/android/gallery3d/a/d;->auY:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 394
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_87

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 399
    invoke-static {v0}, Lcom/android/gallery3d/a/d;->aHO(Landroid/database/Cursor;)Lcom/android/gallery3d/a/d;

    move-result-object v1

    .line 400
    if-eqz v1, :cond_8d

    .line 401
    invoke-virtual {v6, v1}, Lcom/android/gallery3d/a/q;->aIt(Lcom/android/gallery3d/a/h;)V

    .line 407
    :cond_87
    :goto_87
    if-eqz v0, :cond_60

    .line 408
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_60

    .line 403
    :cond_8d
    const-string/jumbo v1, "CameraDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error loading data:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 404
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 403
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 412
    :cond_ac
    invoke-virtual {v6}, Lcom/android/gallery3d/a/q;->aIu()I

    move-result v0

    if-eqz v0, :cond_ba

    .line 413
    new-instance v0, Lcom/android/gallery3d/a/i;

    invoke-direct {v0}, Lcom/android/gallery3d/a/i;-><init>()V

    invoke-virtual {v6, v0}, Lcom/android/gallery3d/a/q;->aIv(Ljava/util/Comparator;)V

    .line 416
    :cond_ba
    return-object v6
.end method

.method protected aIl(Lcom/android/gallery3d/a/q;)V
    .registers 4

    .prologue
    .line 421
    const-string/jumbo v0, "CameraDataAdapter"

    const-string/jumbo v1, "AssignQueryTask onPostExecute"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/android/gallery3d/a/k;->avo:Lcom/android/gallery3d/a/j;

    invoke-static {v0, p1}, Lcom/android/gallery3d/a/j;->aIj(Lcom/android/gallery3d/a/j;Lcom/android/gallery3d/a/q;)V

    .line 420
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 371
    check-cast p1, [Landroid/content/ContentResolver;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/k;->aIk([Landroid/content/ContentResolver;)Lcom/android/gallery3d/a/q;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 420
    check-cast p1, Lcom/android/gallery3d/a/q;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/a/k;->aIl(Lcom/android/gallery3d/a/q;)V

    return-void
.end method
