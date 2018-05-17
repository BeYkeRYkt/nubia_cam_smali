.class final Lcom/android/common/ui/bn;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic Ey:Lcom/android/common/ui/am;

.field final synthetic Ez:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/common/ui/am;Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/common/ui/bn;->Ey:Lcom/android/common/ui/am;

    iput-object p2, p0, Lcom/android/common/ui/bn;->Ez:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/common/ui/bn;->Ey:Lcom/android/common/ui/am;

    iget-object v1, v0, Lcom/android/common/ui/am;->BW:Ljava/lang/Boolean;

    monitor-enter v1

    .line 129
    :try_start_5
    iget-object v0, p0, Lcom/android/common/ui/bn;->Ey:Lcom/android/common/ui/am;

    iget-object v0, v0, Lcom/android/common/ui/am;->BW:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 130
    iget-object v0, p0, Lcom/android/common/ui/bn;->Ey:Lcom/android/common/ui/am;

    iget-object v2, p0, Lcom/android/common/ui/bn;->Ez:Landroid/content/res/Resources;

    const v3, 0x7f020020

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/ui/am;->BZ:Landroid/graphics/Bitmap;

    .line 131
    iget-object v0, p0, Lcom/android/common/ui/bn;->Ey:Lcom/android/common/ui/am;

    iget-object v2, p0, Lcom/android/common/ui/bn;->Ez:Landroid/content/res/Resources;

    const v3, 0x7f020023

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/ui/am;->Ca:Landroid/graphics/Bitmap;

    .line 132
    iget-object v0, p0, Lcom/android/common/ui/bn;->Ey:Lcom/android/common/ui/am;

    iget-object v2, p0, Lcom/android/common/ui/bn;->Ez:Landroid/content/res/Resources;

    const v3, 0x7f020021

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/ui/am;->BY:Landroid/graphics/Bitmap;

    .line 133
    iget-object v0, p0, Lcom/android/common/ui/bn;->Ey:Lcom/android/common/ui/am;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/ui/am;->BW:Ljava/lang/Boolean;
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_41

    :cond_3f
    monitor-exit v1

    .line 127
    return-void

    .line 128
    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
.end method
