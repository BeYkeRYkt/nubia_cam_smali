.class Lcom/android/multiexposure/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field aqv:Landroid/app/Activity;

.field aqw:[B

.field aqx:I

.field final synthetic aqy:Lcom/android/multiexposure/c;


# direct methods
.method constructor <init>(Lcom/android/multiexposure/c;)V
    .registers 3

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/multiexposure/f;->aqy:Lcom/android/multiexposure/c;

    .line 341
    const-string/jumbo v0, "FinalDataThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 340
    return-void
.end method


# virtual methods
.method aCo([BI)V
    .registers 4

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/multiexposure/f;->aqw:[B

    .line 346
    iput p2, p0, Lcom/android/multiexposure/f;->aqx:I

    .line 347
    iget-object v0, p0, Lcom/android/multiexposure/f;->aqy:Lcom/android/multiexposure/c;

    iget-object v0, v0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/multiexposure/f;->aqv:Landroid/app/Activity;

    .line 348
    iget-object v0, p0, Lcom/android/multiexposure/f;->aqy:Lcom/android/multiexposure/c;

    invoke-virtual {v0}, Lcom/android/multiexposure/c;->onPreExecute()V

    .line 349
    invoke-virtual {p0}, Lcom/android/multiexposure/f;->start()V

    .line 344
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 354
    iget-object v1, p0, Lcom/android/multiexposure/f;->aqy:Lcom/android/multiexposure/c;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/multiexposure/f;->aqw:[B

    aput-object v3, v2, v0

    iget-object v3, p0, Lcom/android/multiexposure/f;->aqw:[B

    if-nez v3, :cond_2d

    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/multiexposure/f;->aqx:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/multiexposure/c;->doInBackground([Ljava/lang/Object;)[B

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/android/multiexposure/f;->aqv:Landroid/app/Activity;

    new-instance v2, Lcom/android/multiexposure/u;

    invoke-direct {v2, p0, v0}, Lcom/android/multiexposure/u;-><init>(Lcom/android/multiexposure/f;[B)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 353
    return-void

    .line 354
    :cond_2d
    iget-object v0, p0, Lcom/android/multiexposure/f;->aqw:[B

    array-length v0, v0

    goto :goto_e
.end method
