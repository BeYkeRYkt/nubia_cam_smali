.class public Lcom/android/clone/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aTG:Landroid/content/Context;

.field private aTH:Lcom/android/common/ui/E;

.field private aTI:Landroid/view/View;

.field private aTJ:Lcom/android/common/ui/MyVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/clone/k;->aTH:Lcom/android/common/ui/E;

    .line 19
    iput-object v0, p0, Lcom/android/clone/k;->aTJ:Lcom/android/common/ui/MyVideoView;

    .line 20
    iput-object v0, p0, Lcom/android/clone/k;->aTI:Landroid/view/View;

    .line 21
    iput-object v0, p0, Lcom/android/clone/k;->aTG:Landroid/content/Context;

    .line 33
    iput-object p1, p0, Lcom/android/clone/k;->aTG:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/android/common/ui/E;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1, p3, p1}, Lcom/android/common/ui/E;-><init>(IIILandroid/content/Context;)V

    iput-object v0, p0, Lcom/android/clone/k;->aTH:Lcom/android/common/ui/E;

    .line 32
    return-void
.end method

.method static synthetic bla(Lcom/android/clone/k;)Lcom/android/common/ui/E;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/k;->aTH:Lcom/android/common/ui/E;

    return-object v0
.end method

.method static synthetic blb(Lcom/android/clone/k;)Lcom/android/common/ui/MyVideoView;
    .registers 2

    iget-object v0, p0, Lcom/android/clone/k;->aTJ:Lcom/android/common/ui/MyVideoView;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/clone/k;->aTH:Lcom/android/common/ui/E;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/clone/k;->aTH:Lcom/android/common/ui/E;

    invoke-virtual {v0}, Lcom/android/common/ui/E;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 68
    iget-object v0, p0, Lcom/android/clone/k;->aTH:Lcom/android/common/ui/E;

    invoke-virtual {v0}, Lcom/android/common/ui/E;->cancel()V

    .line 66
    :cond_11
    return-void
.end method

.method public show()V
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/clone/k;->aTH:Lcom/android/common/ui/E;

    if-nez v0, :cond_5

    .line 40
    return-void

    .line 42
    :cond_5
    iget-object v0, p0, Lcom/android/clone/k;->aTH:Lcom/android/common/ui/E;

    invoke-virtual {v0}, Lcom/android/common/ui/E;->show()V

    .line 43
    iget-object v0, p0, Lcom/android/clone/k;->aTH:Lcom/android/common/ui/E;

    const v1, 0x7f1000a7

    invoke-virtual {v0, v1}, Lcom/android/common/ui/E;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/clone/k;->aTI:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/android/clone/k;->aTH:Lcom/android/common/ui/E;

    const v1, 0x7f1000a6

    invoke-virtual {v0, v1}, Lcom/android/common/ui/E;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MyVideoView;

    iput-object v0, p0, Lcom/android/clone/k;->aTJ:Lcom/android/common/ui/MyVideoView;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/clone/k;->aTG:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    const v1, 0x7f090014

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/android/clone/k;->aTJ:Lcom/android/common/ui/MyVideoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/common/ui/MyVideoView;->setZOrderOnTop(Z)V

    .line 48
    iget-object v1, p0, Lcom/android/clone/k;->aTJ:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/ui/MyVideoView;->yK(Landroid/net/Uri;)V

    .line 49
    iget-object v0, p0, Lcom/android/clone/k;->aTJ:Lcom/android/common/ui/MyVideoView;

    new-instance v1, Lcom/android/clone/s;

    invoke-direct {v1, p0}, Lcom/android/clone/s;-><init>(Lcom/android/clone/k;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MyVideoView;->yJ(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/clone/k;->aTJ:Lcom/android/common/ui/MyVideoView;

    invoke-virtual {v0}, Lcom/android/common/ui/MyVideoView;->start()V

    .line 57
    iget-object v0, p0, Lcom/android/clone/k;->aTI:Landroid/view/View;

    new-instance v1, Lcom/android/clone/t;

    invoke-direct {v1, p0}, Lcom/android/clone/t;-><init>(Lcom/android/clone/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method
