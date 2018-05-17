.class final Lcom/android/videomaker/service/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/videomaker/b/c;


# instance fields
.field final synthetic aKv:Lcom/android/videomaker/service/f;

.field final synthetic aKw:Ljava/lang/String;

.field final synthetic aKx:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/videomaker/service/f;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/videomaker/service/g;->aKv:Lcom/android/videomaker/service/f;

    iput-object p2, p0, Lcom/android/videomaker/service/g;->aKw:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/videomaker/service/g;->aKx:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aYX(Lcom/android/videomaker/b/b;I)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 611
    invoke-static {}, Lcom/android/videomaker/service/MakerService;->aZB()Lcom/android/videomaker/service/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/videomaker/service/b;->aZL()Landroid/content/Intent;

    move-result-object v0

    .line 612
    const-string/jumbo v1, "op"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    const-string/jumbo v1, "filename"

    iget-object v2, p0, Lcom/android/videomaker/service/g;->aKw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const-string/jumbo v1, "req_intent"

    iget-object v2, p0, Lcom/android/videomaker/service/g;->aKx:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 616
    const-string/jumbo v1, "cancelled"

    invoke-static {}, Lcom/android/videomaker/service/MakerService;->aZA()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 617
    invoke-static {}, Lcom/android/videomaker/service/MakerService;->aZA()Z

    move-result v1

    if-nez v1, :cond_51

    iget-object v1, p0, Lcom/android/videomaker/service/g;->aKw:Ljava/lang/String;

    if-eqz v1, :cond_51

    .line 618
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/videomaker/service/g;->aKw:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 619
    const-string/jumbo v1, "uri"

    iget-object v2, p0, Lcom/android/videomaker/service/g;->aKv:Lcom/android/videomaker/service/f;

    iget-object v2, v2, Lcom/android/videomaker/service/f;->aKt:Lcom/android/videomaker/service/MakerService;

    iget-object v3, p0, Lcom/android/videomaker/service/g;->aKw:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/videomaker/service/MakerService;->aZG(Lcom/android/videomaker/service/MakerService;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 628
    :cond_51
    const-string/jumbo v1, "ex"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 629
    const-string/jumbo v1, "MakerService"

    const-string/jumbo v2, "submit statusIntent!"

    invoke-static {v1, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lcom/android/videomaker/service/g;->aKv:Lcom/android/videomaker/service/f;

    iget-object v1, v1, Lcom/android/videomaker/service/f;->aKt:Lcom/android/videomaker/service/MakerService;

    invoke-static {v1}, Lcom/android/videomaker/service/MakerService;->aZF(Lcom/android/videomaker/service/MakerService;)Lcom/android/videomaker/service/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/videomaker/service/a;->aZI(Landroid/content/Intent;)V

    .line 609
    return-void
.end method
