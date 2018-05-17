.class final Lcom/android/camera/cameraFamily/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/cameraFamily/g;


# instance fields
.field final synthetic amx:Lcom/android/camera/cameraFamily/a;


# direct methods
.method constructor <init>(Lcom/android/camera/cameraFamily/a;)V
    .registers 2

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/cameraFamily/o;->amx:Lcom/android/camera/cameraFamily/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public axM(Ljava/util/List;)V
    .registers 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/cameraFamily/o;->amx:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awN(Lcom/android/camera/cameraFamily/a;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 145
    iget-object v0, p0, Lcom/android/camera/cameraFamily/o;->amx:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awM(Lcom/android/camera/cameraFamily/a;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_20

    .line 146
    iget-object v0, p0, Lcom/android/camera/cameraFamily/o;->amx:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awM(Lcom/android/camera/cameraFamily/a;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 143
    :cond_1f
    :goto_1f
    return-void

    .line 147
    :cond_20
    iget-object v0, p0, Lcom/android/camera/cameraFamily/o;->amx:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awO(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/c/c;

    move-result-object v0

    if-nez v0, :cond_52

    .line 148
    iget-object v0, p0, Lcom/android/camera/cameraFamily/o;->amx:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awM(Lcom/android/camera/cameraFamily/a;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_52

    iget-object v0, p0, Lcom/android/camera/cameraFamily/o;->amx:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awS(Lcom/android/camera/cameraFamily/a;)[Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 149
    const-string/jumbo v0, "CameraFamilyFragment"

    const-string/jumbo v1, "second init views and state"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/camera/cameraFamily/o;->amx:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->axf(Lcom/android/camera/cameraFamily/a;)V

    .line 151
    iget-object v0, p0, Lcom/android/camera/cameraFamily/o;->amx:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->axc(Lcom/android/camera/cameraFamily/a;)V

    goto :goto_1f

    .line 153
    :cond_52
    iget-object v0, p0, Lcom/android/camera/cameraFamily/o;->amx:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->axf(Lcom/android/camera/cameraFamily/a;)V

    goto :goto_1f
.end method
