.class final Lcom/android/common/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field final synthetic akw:Lcom/android/common/d;


# direct methods
.method constructor <init>(Lcom/android/common/d;)V
    .registers 2

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/common/E;->akw:Lcom/android/common/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 276
    if-nez p3, :cond_1c

    .line 277
    iget-object v0, p0, Lcom/android/common/E;->akw:Lcom/android/common/d;

    invoke-static {v0}, Lcom/android/common/d;->aoh(Lcom/android/common/d;)I

    move-result v0

    if-ne v0, p2, :cond_1b

    move-object v0, p1

    move v1, p2

    move v3, v2

    move v5, v4

    move v6, v2

    .line 278
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 279
    iget-object v0, p0, Lcom/android/common/E;->akw:Lcom/android/common/d;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/common/d;->aoi(Lcom/android/common/d;I)I

    .line 275
    :cond_1b
    :goto_1b
    return-void

    .line 282
    :cond_1c
    const-string/jumbo v0, "MediaActionSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to load sound for playback (status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    const-string/jumbo v2, ")"

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method
