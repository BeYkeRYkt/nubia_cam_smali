.class final Lcom/android/common/ui/as;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic Dp:Lcom/android/common/ui/l;

.field final synthetic Dq:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/common/ui/l;Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/common/ui/as;->Dp:Lcom/android/common/ui/l;

    iput-object p2, p0, Lcom/android/common/ui/as;->Dq:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/common/ui/as;->Dp:Lcom/android/common/ui/l;

    iget-object v1, v0, Lcom/android/common/ui/l;->qh:Ljava/lang/Boolean;

    monitor-enter v1

    .line 111
    :try_start_5
    iget-object v0, p0, Lcom/android/common/ui/as;->Dp:Lcom/android/common/ui/l;

    iget-object v0, v0, Lcom/android/common/ui/l;->qh:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_32

    .line 112
    iget-object v0, p0, Lcom/android/common/ui/as;->Dp:Lcom/android/common/ui/l;

    iget-object v2, p0, Lcom/android/common/ui/as;->Dq:Landroid/content/res/Resources;

    const v3, 0x7f02001f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/ui/l;->qj:Landroid/graphics/Bitmap;

    .line 113
    iget-object v0, p0, Lcom/android/common/ui/as;->Dp:Lcom/android/common/ui/l;

    iget-object v2, p0, Lcom/android/common/ui/as;->Dq:Landroid/content/res/Resources;

    const v3, 0x7f020065

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/ui/l;->qf:Landroid/graphics/Bitmap;

    .line 114
    iget-object v0, p0, Lcom/android/common/ui/as;->Dp:Lcom/android/common/ui/l;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/ui/l;->qh:Ljava/lang/Boolean;
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_34

    :cond_32
    monitor-exit v1

    .line 109
    return-void

    .line 110
    :catchall_34
    move-exception v0

    monitor-exit v1

    throw v0
.end method
