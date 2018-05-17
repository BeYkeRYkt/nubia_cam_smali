.class public Lcom/android/dualcameracalibration/b;
.super Lcom/android/common/o/a;
.source "SourceFile"


# instance fields
.field private bbA:Lcom/android/dualcameracalibration/d;

.field private bbB:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/android/common/o/a;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/android/dualcameracalibration/b;->bbB:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    .line 27
    iput-object v0, p0, Lcom/android/dualcameracalibration/b;->bbA:Lcom/android/dualcameracalibration/d;

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/common/o/a;-><init>(I)V

    .line 25
    iput-object v0, p0, Lcom/android/dualcameracalibration/b;->bbB:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    .line 27
    iput-object v0, p0, Lcom/android/dualcameracalibration/b;->bbA:Lcom/android/dualcameracalibration/d;

    .line 34
    return-void
.end method

.method public static bsL()Lcom/android/dualcameracalibration/b;
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lcom/android/dualcameracalibration/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/dualcameracalibration/b;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected aiD()[Lcom/android/common/o/l;
    .registers 4

    .prologue
    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/o/l;

    iget-object v1, p0, Lcom/android/dualcameracalibration/b;->bbB:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/dualcameracalibration/b;->abE:Lcom/android/common/o/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected aiR()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 44
    const-string/jumbo v0, "DualCameraCalibration"

    const-string/jumbo v1, "DualCameraCalibrationMemberFragment"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/b;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 47
    invoke-static {v2, v2, v2}, Lcom/android/common/o/e;->akl(Lcom/android/common/ui/u;Ljava/util/List;Ljava/util/List;)Lcom/android/common/o/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dualcameracalibration/b;->abE:Lcom/android/common/o/l;

    .line 48
    iget-object v0, p0, Lcom/android/dualcameracalibration/b;->abE:Lcom/android/common/o/l;

    const v2, 0x7f1000cb

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 50
    iget-object v0, p0, Lcom/android/dualcameracalibration/b;->abE:Lcom/android/common/o/l;

    check-cast v0, Lcom/android/common/o/e;

    invoke-virtual {v0, p0}, Lcom/android/common/o/e;->akm(Lcom/android/common/ui/U;)V

    .line 52
    invoke-static {}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bsX()Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dualcameracalibration/b;->bbB:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    .line 53
    iget-object v0, p0, Lcom/android/dualcameracalibration/b;->bbB:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    const v2, 0x7f1000c9

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 55
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 58
    new-instance v0, Lcom/android/dualcameracalibration/d;

    iget-object v1, p0, Lcom/android/dualcameracalibration/b;->adt:Lcom/android/common/appService/W;

    iget-object v2, p0, Lcom/android/dualcameracalibration/b;->bbB:Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    invoke-direct {v0, v1, v2}, Lcom/android/dualcameracalibration/d;-><init>(Lcom/android/common/appService/W;Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)V

    .line 57
    iput-object v0, p0, Lcom/android/dualcameracalibration/b;->bbA:Lcom/android/dualcameracalibration/d;

    .line 43
    return-void
.end method

.method public nl()Lcom/android/common/appService/V;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/dualcameracalibration/b;->bbA:Lcom/android/dualcameracalibration/d;

    return-object v0
.end method
