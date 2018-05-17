.class final Lcom/android/video/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/f;


# instance fields
.field final synthetic aIJ:Lcom/android/video/d;


# direct methods
.method constructor <init>(Lcom/android/video/d;)V
    .registers 2

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/video/t;->aIJ:Lcom/android/video/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V
    .registers 6

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/video/t;->aIJ:Lcom/android/video/d;

    invoke-static {v0}, Lcom/android/video/d;->aWq(Lcom/android/video/d;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 805
    iget-object v0, p0, Lcom/android/video/t;->aIJ:Lcom/android/video/d;

    invoke-static {v0}, Lcom/android/video/d;->aWs(Lcom/android/video/d;)Lcom/android/video/e;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 806
    new-instance v0, Lcom/android/video/f;

    invoke-direct {v0}, Lcom/android/video/f;-><init>()V

    .line 807
    iget-object v1, p0, Lcom/android/video/t;->aIJ:Lcom/android/video/d;

    invoke-static {v1}, Lcom/android/video/d;->aWu(Lcom/android/video/d;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/video/f;->aHG:Landroid/os/ParcelFileDescriptor;

    .line 808
    iget-object v1, p0, Lcom/android/video/t;->aIJ:Lcom/android/video/d;

    invoke-static {v1}, Lcom/android/video/d;->aWr(Lcom/android/video/d;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/video/f;->aHI:Ljava/lang/String;

    .line 809
    iput-object p1, v0, Lcom/android/video/f;->aHJ:Landroid/net/Uri;

    .line 810
    iget-object v1, p0, Lcom/android/video/t;->aIJ:Lcom/android/video/d;

    iget-object v2, p0, Lcom/android/video/t;->aIJ:Lcom/android/video/d;

    invoke-static {v2}, Lcom/android/video/d;->aWt(Lcom/android/video/d;)Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-static {v1, v2}, Lcom/android/video/d;->aWB(Lcom/android/video/d;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/video/f;->aHH:Ljava/lang/String;

    .line 811
    iget-object v1, p0, Lcom/android/video/t;->aIJ:Lcom/android/video/d;

    invoke-static {v1}, Lcom/android/video/d;->aWt(Lcom/android/video/d;)Landroid/media/CamcorderProfile;

    move-result-object v1

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v1, v0, Lcom/android/video/f;->width:I

    .line 812
    iget-object v1, p0, Lcom/android/video/t;->aIJ:Lcom/android/video/d;

    invoke-static {v1, v0}, Lcom/android/video/d;->aWD(Lcom/android/video/d;Lcom/android/video/f;)V

    .line 802
    :cond_4a
    return-void
.end method
