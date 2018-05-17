.class public Lcom/android/camera/cameraFamily/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public amj:I

.field public amk:Landroid/widget/ImageView;

.field public aml:Z

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/cameraFamily/k;->amj:I

    .line 8
    iput-object v1, p0, Lcom/android/camera/cameraFamily/k;->amk:Landroid/widget/ImageView;

    .line 9
    iput-object v1, p0, Lcom/android/camera/cameraFamily/k;->mName:Ljava/lang/String;

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/cameraFamily/k;->aml:Z

    .line 6
    return-void
.end method
