.class final Lcom/android/videomaker/service/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic aKt:Lcom/android/videomaker/service/MakerService;

.field final synthetic aKu:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/videomaker/service/MakerService;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/videomaker/service/f;->aKt:Lcom/android/videomaker/service/MakerService;

    iput-object p2, p0, Lcom/android/videomaker/service/f;->aKu:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v3, -0x1

    .line 598
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "exportMovie"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/android/videomaker/service/f;->aKu:Landroid/content/Intent;

    const-string/jumbo v1, "filename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 600
    iget-object v0, p0, Lcom/android/videomaker/service/f;->aKu:Landroid/content/Intent;

    const-string/jumbo v2, "height"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 601
    iget-object v0, p0, Lcom/android/videomaker/service/f;->aKu:Landroid/content/Intent;

    const-string/jumbo v2, "bitrate"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 602
    iget-object v0, p0, Lcom/android/videomaker/service/f;->aKu:Landroid/content/Intent;

    const-string/jumbo v2, "fps"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 606
    :try_start_2d
    invoke-static {}, Lcom/android/videomaker/service/MakerService;->aZE()Lcom/android/videomaker/b/b;

    move-result-object v0

    new-instance v3, Lcom/android/videomaker/service/g;

    iget-object v4, p0, Lcom/android/videomaker/service/f;->aKu:Landroid/content/Intent;

    invoke-direct {v3, p0, v1, v4}, Lcom/android/videomaker/service/g;-><init>(Lcom/android/videomaker/service/f;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v0, v3}, Lcom/android/videomaker/b/b;->aYu(Lcom/android/videomaker/b/c;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3b} :catch_48

    .line 640
    :goto_3b
    :try_start_3b
    invoke-static {}, Lcom/android/videomaker/service/MakerService;->aZE()Lcom/android/videomaker/b/b;

    move-result-object v0

    new-instance v3, Lcom/android/videomaker/service/h;

    invoke-direct {v3, p0, v1}, Lcom/android/videomaker/service/h;-><init>(Lcom/android/videomaker/service/f;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/videomaker/b/b;->aYv(Ljava/lang/String;ILcom/android/videomaker/b/d;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_47} :catch_67

    .line 597
    :goto_47
    return-void

    .line 633
    :catch_48
    move-exception v0

    .line 634
    const-string/jumbo v3, "MakerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Export exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b

    .line 653
    :catch_67
    move-exception v0

    .line 654
    const-string/jumbo v1, "MakerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Export exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method
