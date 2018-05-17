.class public Lcn/nubia/bigAperture/n;
.super Lcn/nubia/bigAperture/j;
.source "SourceFile"


# instance fields
.field private bog:Lcn/nubia/bigAperture/o;


# direct methods
.method public constructor <init>(Lcn/nubia/bigAperture/o;)V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/nubia/bigAperture/j;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/nubia/bigAperture/n;->bog:Lcn/nubia/bigAperture/o;

    .line 23
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Landroid/net/Uri;IIIIIIIFFFI)Z
    .registers 15

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public addTaskObject(Lcn/nubia/bigAperture/BigApertureTask;)Z
    .registers 3

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/bigAperture/n;->bog:Lcn/nubia/bigAperture/o;

    if-eqz v0, :cond_9

    .line 39
    iget-object v0, p0, Lcn/nubia/bigAperture/n;->bog:Lcn/nubia/bigAperture/o;

    invoke-interface {v0, p1}, Lcn/nubia/bigAperture/o;->bKo(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 41
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public addTaskWithDualDac(Ljava/lang/String;Landroid/net/Uri;IIIIIIIIIFFFFIIII)Z
    .registers 21

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public getBigApertureTmpDir()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    sget-object v0, Lcn/nubia/bigAperture/BigApertureService;->bnT:Ljava/lang/String;

    return-object v0
.end method

.method public lockDepthData(Landroid/net/Uri;Landroid/os/Messenger;)Z
    .registers 6

    .prologue
    .line 46
    const-string/jumbo v0, "BigAperatureProcessBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockDepthData uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcn/nubia/bigAperture/n;->bog:Lcn/nubia/bigAperture/o;

    if-eqz v0, :cond_25

    .line 48
    iget-object v0, p0, Lcn/nubia/bigAperture/n;->bog:Lcn/nubia/bigAperture/o;

    invoke-interface {v0, p1, p2}, Lcn/nubia/bigAperture/o;->lockDepthData(Landroid/net/Uri;Landroid/os/Messenger;)Z

    move-result v0

    return v0

    .line 50
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public setServiceStoppedAfterTasksDone(Z)V
    .registers 5

    .prologue
    .line 56
    const-string/jumbo v0, "BigAperatureProcessBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stoppedAutomatic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcn/nubia/bigAperture/n;->bog:Lcn/nubia/bigAperture/o;

    if-eqz v0, :cond_23

    .line 58
    iget-object v0, p0, Lcn/nubia/bigAperture/n;->bog:Lcn/nubia/bigAperture/o;

    invoke-interface {v0, p1}, Lcn/nubia/bigAperture/o;->setServiceStoppedAfterTasksDone(Z)V

    .line 55
    :cond_23
    return-void
.end method

.method public unlockDepthData(Landroid/net/Uri;)Z
    .registers 5

    .prologue
    .line 69
    const-string/jumbo v0, "BigAperatureProcessBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockDepthData uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/bigAperture/n;->bog:Lcn/nubia/bigAperture/o;

    if-eqz v0, :cond_25

    .line 71
    iget-object v0, p0, Lcn/nubia/bigAperture/n;->bog:Lcn/nubia/bigAperture/o;

    invoke-interface {v0, p1}, Lcn/nubia/bigAperture/o;->unlockDepthData(Landroid/net/Uri;)Z

    move-result v0

    return v0

    .line 73
    :cond_25
    const/4 v0, 0x0

    return v0
.end method
