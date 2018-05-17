.class final Lcom/android/videomaker/service/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aKA:Lcom/android/videomaker/service/MakerService;

.field final synthetic aKB:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/videomaker/service/MakerService;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 693
    iput-object p1, p0, Lcom/android/videomaker/service/i;->aKA:Lcom/android/videomaker/service/MakerService;

    iput-object p2, p0, Lcom/android/videomaker/service/i;->aKB:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/videomaker/service/i;->aKA:Lcom/android/videomaker/service/MakerService;

    iget-object v1, p0, Lcom/android/videomaker/service/i;->aKB:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/videomaker/service/MakerService;->aZH(Lcom/android/videomaker/service/MakerService;Landroid/content/Intent;)V

    .line 697
    invoke-static {}, Lcom/android/videomaker/service/MakerService;->aZB()Lcom/android/videomaker/service/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videomaker/service/i;->aKB:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/videomaker/service/b;->aZK(Landroid/content/Intent;)V

    .line 695
    return-void
.end method
