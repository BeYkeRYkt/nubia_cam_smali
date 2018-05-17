.class final Lcom/android/videomaker/service/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aKm:Lcom/android/videomaker/service/MakerService;


# direct methods
.method constructor <init>(Lcom/android/videomaker/service/MakerService;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/videomaker/service/d;->aKm:Lcom/android/videomaker/service/MakerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 86
    invoke-static {}, Lcom/android/videomaker/service/MakerService;->aZD()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 87
    iget-object v0, p0, Lcom/android/videomaker/service/d;->aKm:Lcom/android/videomaker/service/MakerService;

    invoke-virtual {v0}, Lcom/android/videomaker/service/MakerService;->stopSelf()V

    .line 85
    :cond_f
    return-void
.end method
