.class final Lcom/android/video/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field aHM:Landroid/location/Location;

.field final synthetic aHN:Lcom/android/video/d;


# direct methods
.method public constructor <init>(Lcom/android/video/d;Landroid/location/Location;)V
    .registers 3

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/android/video/i;->aHN:Lcom/android/video/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    iput-object p2, p0, Lcom/android/video/i;->aHM:Landroid/location/Location;

    .line 1072
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 5

    .prologue
    .line 1079
    const-string/jumbo v0, "VideoRecordManager"

    const-string/jumbo v1, "onPictureTaken"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/android/video/i;->aHN:Lcom/android/video/d;

    iget-object v1, p0, Lcom/android/video/i;->aHM:Landroid/location/Location;

    invoke-static {v0, p1, v1}, Lcom/android/video/d;->aWE(Lcom/android/video/d;[BLandroid/location/Location;)V

    .line 1081
    iget-object v0, p0, Lcom/android/video/i;->aHN:Lcom/android/video/d;

    invoke-static {v0}, Lcom/android/video/d;->aWs(Lcom/android/video/d;)Lcom/android/video/e;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1082
    iget-object v0, p0, Lcom/android/video/i;->aHN:Lcom/android/video/d;

    invoke-static {v0}, Lcom/android/video/d;->aWs(Lcom/android/video/d;)Lcom/android/video/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/video/e;->aWL()V

    .line 1084
    :cond_21
    iget-object v0, p0, Lcom/android/video/i;->aHN:Lcom/android/video/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/video/d;->aWx(Lcom/android/video/d;I)I

    .line 1078
    return-void
.end method
