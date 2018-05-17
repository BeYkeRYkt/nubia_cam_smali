.class public Lcom/android/common/GalleryAppImpl;
.super Landroid/app/Application;
.source "SourceFile"


# instance fields
.field private akv:Landroid/app/KeyguardManager$KeyguardLock;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/GalleryAppImpl;->akv:Landroid/app/KeyguardManager$KeyguardLock;

    .line 26
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 31
    invoke-static {p0}, Lcom/android/common/independentutil/IndependenceUtil;->anx(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/android/common/cameradevice/d;->JO()Lcom/android/common/cameradevice/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/common/cameradevice/d;->JS(Landroid/content/Context;)V

    .line 29
    return-void
.end method
