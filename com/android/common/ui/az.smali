.class final Lcom/android/common/ui/az;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic Dy:Lcom/android/common/ui/w;

.field final synthetic Dz:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/common/ui/w;Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/common/ui/az;->Dy:Lcom/android/common/ui/w;

    iput-object p2, p0, Lcom/android/common/ui/az;->Dz:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/common/ui/az;->Dy:Lcom/android/common/ui/w;

    invoke-static {v0}, Lcom/android/common/ui/w;->xn(Lcom/android/common/ui/w;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 181
    :try_start_7
    iget-object v0, p0, Lcom/android/common/ui/az;->Dy:Lcom/android/common/ui/w;

    invoke-static {v0}, Lcom/android/common/ui/w;->xn(Lcom/android/common/ui/w;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_55

    .line 182
    iget-object v0, p0, Lcom/android/common/ui/az;->Dy:Lcom/android/common/ui/w;

    iget-object v2, p0, Lcom/android/common/ui/az;->Dz:Landroid/content/res/Resources;

    const v3, 0x7f0202de

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/w;->xp(Lcom/android/common/ui/w;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 183
    iget-object v0, p0, Lcom/android/common/ui/az;->Dy:Lcom/android/common/ui/w;

    iget-object v2, p0, Lcom/android/common/ui/az;->Dz:Landroid/content/res/Resources;

    const v3, 0x7f02019c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/w;->xq(Lcom/android/common/ui/w;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 184
    iget-object v0, p0, Lcom/android/common/ui/az;->Dy:Lcom/android/common/ui/w;

    iget-object v2, p0, Lcom/android/common/ui/az;->Dz:Landroid/content/res/Resources;

    const v3, 0x7f020057

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/w;->xr(Lcom/android/common/ui/w;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 185
    iget-object v0, p0, Lcom/android/common/ui/az;->Dy:Lcom/android/common/ui/w;

    iget-object v2, p0, Lcom/android/common/ui/az;->Dz:Landroid/content/res/Resources;

    const v3, 0x7f0202e3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/w;->xs(Lcom/android/common/ui/w;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 186
    iget-object v0, p0, Lcom/android/common/ui/az;->Dy:Lcom/android/common/ui/w;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/w;->xo(Lcom/android/common/ui/w;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_55
    .catchall {:try_start_7 .. :try_end_55} :catchall_57

    :cond_55
    monitor-exit v1

    .line 179
    return-void

    .line 180
    :catchall_57
    move-exception v0

    monitor-exit v1

    throw v0
.end method
