.class final Lcom/android/common/ui/aD;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic DD:Lcom/android/common/ui/y;

.field final synthetic DE:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/common/ui/y;Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/common/ui/aD;->DD:Lcom/android/common/ui/y;

    iput-object p2, p0, Lcom/android/common/ui/aD;->DE:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/common/ui/aD;->DD:Lcom/android/common/ui/y;

    invoke-static {v0}, Lcom/android/common/ui/y;->xL(Lcom/android/common/ui/y;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 235
    :try_start_7
    iget-object v0, p0, Lcom/android/common/ui/aD;->DD:Lcom/android/common/ui/y;

    invoke-static {v0}, Lcom/android/common/ui/y;->xL(Lcom/android/common/ui/y;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_63

    .line 236
    iget-object v0, p0, Lcom/android/common/ui/aD;->DD:Lcom/android/common/ui/y;

    iget-object v2, p0, Lcom/android/common/ui/aD;->DE:Landroid/content/res/Resources;

    const v3, 0x7f0200ff

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/y;->xO(Lcom/android/common/ui/y;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 237
    iget-object v0, p0, Lcom/android/common/ui/aD;->DD:Lcom/android/common/ui/y;

    iget-object v2, p0, Lcom/android/common/ui/aD;->DE:Landroid/content/res/Resources;

    const v3, 0x7f0200fd

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/y;->xM(Lcom/android/common/ui/y;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 238
    iget-object v0, p0, Lcom/android/common/ui/aD;->DD:Lcom/android/common/ui/y;

    iget-object v2, p0, Lcom/android/common/ui/aD;->DE:Landroid/content/res/Resources;

    const v3, 0x7f020101

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/y;->xQ(Lcom/android/common/ui/y;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 239
    iget-object v0, p0, Lcom/android/common/ui/aD;->DD:Lcom/android/common/ui/y;

    iget-object v2, p0, Lcom/android/common/ui/aD;->DE:Landroid/content/res/Resources;

    const v3, 0x7f0200fe

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/y;->xN(Lcom/android/common/ui/y;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 240
    iget-object v0, p0, Lcom/android/common/ui/aD;->DD:Lcom/android/common/ui/y;

    iget-object v2, p0, Lcom/android/common/ui/aD;->DE:Landroid/content/res/Resources;

    const v3, 0x7f020102

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/y;->xR(Lcom/android/common/ui/y;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 241
    iget-object v0, p0, Lcom/android/common/ui/aD;->DD:Lcom/android/common/ui/y;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/y;->xP(Lcom/android/common/ui/y;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_63
    .catchall {:try_start_7 .. :try_end_63} :catchall_65

    :cond_63
    monitor-exit v1

    .line 233
    return-void

    .line 234
    :catchall_65
    move-exception v0

    monitor-exit v1

    throw v0
.end method
