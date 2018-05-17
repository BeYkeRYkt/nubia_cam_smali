.class public Lcom/android/camera/cameraFamily/j;
.super Lcom/android/common/c/d;
.source "SourceFile"


# instance fields
.field private ami:Lcom/android/camera/cameraFamily/a;


# direct methods
.method public constructor <init>(Lcom/android/camera/cameraFamily/a;)V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/common/c/d;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/cameraFamily/j;->ami:Lcom/android/camera/cameraFamily/a;

    .line 9
    iput-object p1, p0, Lcom/android/camera/cameraFamily/j;->ami:Lcom/android/camera/cameraFamily/a;

    .line 8
    return-void
.end method


# virtual methods
.method public hn()V
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/camera/cameraFamily/j;->ami:Lcom/android/camera/cameraFamily/a;

    if-eqz v0, :cond_9

    .line 15
    iget-object v0, p0, Lcom/android/camera/cameraFamily/j;->ami:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/a;->awf()V

    .line 13
    :cond_9
    return-void
.end method

.method public ho()I
    .registers 2

    .prologue
    .line 21
    const/16 v0, 0x32

    return v0
.end method
