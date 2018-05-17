.class Lcom/android/video/o;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic aIC:Lcom/android/video/n;


# direct methods
.method public constructor <init>(Lcom/android/video/n;)V
    .registers 3

    .prologue
    .line 560
    iput-object p1, p0, Lcom/android/video/o;->aIC:Lcom/android/video/n;

    .line 561
    const-string/jumbo v0, "Stop Video"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 560
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/video/o;->aIC:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXM(Lcom/android/video/n;)Lcom/android/video/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/video/d;->aWl(Z)V

    .line 565
    return-void
.end method
