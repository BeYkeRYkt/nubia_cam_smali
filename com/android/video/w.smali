.class final Lcom/android/video/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aIM:Lcom/android/video/n;


# direct methods
.method constructor <init>(Lcom/android/video/n;)V
    .registers 2

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/video/w;->aIM:Lcom/android/video/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/video/w;->aIM:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXW(Lcom/android/video/n;)V

    .line 306
    iget-object v0, p0, Lcom/android/video/w;->aIM:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXP(Lcom/android/video/n;)Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afb:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_19

    .line 307
    iget-object v0, p0, Lcom/android/video/w;->aIM:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXP(Lcom/android/video/n;)Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afc:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_22

    .line 308
    :cond_19
    iget-object v0, p0, Lcom/android/video/w;->aIM:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXM(Lcom/android/video/n;)Lcom/android/video/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/video/d;->aWc()V

    .line 304
    :cond_22
    return-void
.end method
