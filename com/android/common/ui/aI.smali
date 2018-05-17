.class final Lcom/android/common/ui/aI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic DJ:Lcom/android/common/ui/MyVideoView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/MyVideoView;)V
    .registers 2

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/common/ui/aI;->DJ:Lcom/android/common/ui/MyVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 314
    iget-object v0, p0, Lcom/android/common/ui/aI;->DJ:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yM(Lcom/android/common/ui/MyVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/android/common/ui/aI;->DJ:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0, v3}, Lcom/android/common/ui/MyVideoView;->za(Lcom/android/common/ui/MyVideoView;I)I

    .line 316
    iget-object v0, p0, Lcom/android/common/ui/aI;->DJ:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0, v3}, Lcom/android/common/ui/MyVideoView;->ze(Lcom/android/common/ui/MyVideoView;I)I

    .line 319
    iget-object v0, p0, Lcom/android/common/ui/aI;->DJ:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yQ(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 320
    iget-object v0, p0, Lcom/android/common/ui/aI;->DJ:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yQ(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/aI;->DJ:Lcom/android/common/ui/MyVideoView;

    invoke-static {v1}, Lcom/android/common/ui/MyVideoView;->yO(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 321
    return v4

    .line 330
    :cond_4f
    iget-object v0, p0, Lcom/android/common/ui/aI;->DJ:Lcom/android/common/ui/MyVideoView;

    invoke-virtual {v0}, Lcom/android/common/ui/MyVideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 331
    iget-object v0, p0, Lcom/android/common/ui/aI;->DJ:Lcom/android/common/ui/MyVideoView;

    invoke-static {v0}, Lcom/android/common/ui/MyVideoView;->yN(Lcom/android/common/ui/MyVideoView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 334
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_8b

    .line 335
    const v0, 0x1040015

    .line 340
    :goto_67
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/common/ui/aI;->DJ:Lcom/android/common/ui/MyVideoView;

    invoke-static {v2}, Lcom/android/common/ui/MyVideoView;->yN(Lcom/android/common/ui/MyVideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 343
    new-instance v1, Lcom/android/common/ui/aJ;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aJ;-><init>(Lcom/android/common/ui/aI;)V

    .line 342
    const v2, 0x1040010

    .line 340
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 353
    const/4 v1, 0x0

    .line 340
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 356
    :cond_8a
    return v4

    .line 337
    :cond_8b
    const v0, 0x1040011

    goto :goto_67
.end method
