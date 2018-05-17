.class final Lcom/android/videomaker/service/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aKn:Lcom/android/videomaker/service/MakerService;

.field final synthetic aKo:Landroid/content/Intent;

.field final synthetic aKp:Ljava/lang/Object;

.field final synthetic aKq:Ljava/lang/Object;

.field final synthetic aKr:Ljava/lang/Exception;

.field final synthetic aKs:Z


# direct methods
.method constructor <init>(Lcom/android/videomaker/service/MakerService;Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 7

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/videomaker/service/e;->aKn:Lcom/android/videomaker/service/MakerService;

    iput-object p2, p0, Lcom/android/videomaker/service/e;->aKo:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/videomaker/service/e;->aKp:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/videomaker/service/e;->aKq:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/videomaker/service/e;->aKr:Ljava/lang/Exception;

    iput-boolean p6, p0, Lcom/android/videomaker/service/e;->aKs:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/videomaker/service/e;->aKn:Lcom/android/videomaker/service/MakerService;

    iget-object v1, p0, Lcom/android/videomaker/service/e;->aKo:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/videomaker/service/e;->aKp:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/videomaker/service/e;->aKq:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/videomaker/service/e;->aKr:Ljava/lang/Exception;

    iget-boolean v5, p0, Lcom/android/videomaker/service/e;->aKs:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/videomaker/service/MakerService;->aZw(Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V

    .line 314
    return-void
.end method
