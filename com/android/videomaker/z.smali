.class final Lcom/android/videomaker/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aNE:Lcom/android/videomaker/r;


# direct methods
.method constructor <init>(Lcom/android/videomaker/r;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/videomaker/z;->aNE:Lcom/android/videomaker/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 210
    const-string/jumbo v0, "VideoMakerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mVideoMakerCancelButton click, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/videomaker/z;->aNE:Lcom/android/videomaker/r;

    invoke-static {v2}, Lcom/android/videomaker/r;->bdH(Lcom/android/videomaker/r;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/android/videomaker/z;->aNE:Lcom/android/videomaker/r;

    invoke-static {v0}, Lcom/android/videomaker/r;->bdI(Lcom/android/videomaker/r;)V

    .line 209
    return-void
.end method
