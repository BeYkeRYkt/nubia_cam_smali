.class final Lcom/android/common/ui/ar;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic Dn:Lcom/android/common/ui/g;

.field final synthetic Do:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/common/ui/g;Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/common/ui/ar;->Dn:Lcom/android/common/ui/g;

    iput-object p2, p0, Lcom/android/common/ui/ar;->Do:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/common/ui/ar;->Dn:Lcom/android/common/ui/g;

    iget-object v1, v0, Lcom/android/common/ui/g;->pJ:Ljava/lang/Boolean;

    monitor-enter v1

    .line 125
    :try_start_5
    iget-object v0, p0, Lcom/android/common/ui/ar;->Dn:Lcom/android/common/ui/g;

    iget-object v0, v0, Lcom/android/common/ui/g;->pJ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 126
    iget-object v0, p0, Lcom/android/common/ui/ar;->Dn:Lcom/android/common/ui/g;

    iget-object v2, p0, Lcom/android/common/ui/ar;->Do:Landroid/content/res/Resources;

    const v3, 0x7f020024

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/ui/g;->pM:Landroid/graphics/Bitmap;

    .line 127
    iget-object v0, p0, Lcom/android/common/ui/ar;->Dn:Lcom/android/common/ui/g;

    iget-object v2, p0, Lcom/android/common/ui/ar;->Do:Landroid/content/res/Resources;

    const v3, 0x7f020022

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/ui/g;->pK:Landroid/graphics/Bitmap;

    .line 128
    iget-object v0, p0, Lcom/android/common/ui/ar;->Dn:Lcom/android/common/ui/g;

    iget-object v2, p0, Lcom/android/common/ui/ar;->Do:Landroid/content/res/Resources;

    const v3, 0x7f020020

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/ui/g;->pI:Landroid/graphics/Bitmap;

    .line 129
    iget-object v0, p0, Lcom/android/common/ui/ar;->Dn:Lcom/android/common/ui/g;

    iget-object v2, p0, Lcom/android/common/ui/ar;->Do:Landroid/content/res/Resources;

    const v3, 0x7f020057

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/ui/g;->pE:Landroid/graphics/Bitmap;

    .line 130
    iget-object v0, p0, Lcom/android/common/ui/ar;->Dn:Lcom/android/common/ui/g;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/ui/g;->pJ:Ljava/lang/Boolean;
    :try_end_4c
    .catchall {:try_start_5 .. :try_end_4c} :catchall_4e

    :cond_4c
    monitor-exit v1

    .line 123
    return-void

    .line 124
    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0
.end method
