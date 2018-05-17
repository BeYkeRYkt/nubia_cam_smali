.class final Lcom/android/common/ui/bg;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic Eo:Lcom/android/common/ui/Z;

.field final synthetic Ep:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/common/ui/Z;Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/common/ui/bg;->Eo:Lcom/android/common/ui/Z;

    iput-object p2, p0, Lcom/android/common/ui/bg;->Ep:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/common/ui/bg;->Eo:Lcom/android/common/ui/Z;

    invoke-static {v0}, Lcom/android/common/ui/Z;->Dp(Lcom/android/common/ui/Z;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 115
    :try_start_7
    iget-object v0, p0, Lcom/android/common/ui/bg;->Eo:Lcom/android/common/ui/Z;

    invoke-static {v0}, Lcom/android/common/ui/Z;->Dp(Lcom/android/common/ui/Z;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 116
    iget-object v0, p0, Lcom/android/common/ui/bg;->Eo:Lcom/android/common/ui/Z;

    iget-object v2, p0, Lcom/android/common/ui/bg;->Ep:Landroid/content/res/Resources;

    const v3, 0x7f0200d0

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/Z;->Dq(Lcom/android/common/ui/Z;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 117
    iget-object v0, p0, Lcom/android/common/ui/bg;->Eo:Lcom/android/common/ui/Z;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/Z;->Dr(Lcom/android/common/ui/Z;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2d

    :cond_2b
    monitor-exit v1

    .line 113
    return-void

    .line 114
    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
