.class public Lcn/nubia/bigAperture/BigApertureService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/bigAperture/o;


# static fields
.field public static final bnS:Z

.field public static final bnT:Ljava/lang/String;


# instance fields
.field private bnU:Lcn/nubia/bigAperture/g;

.field private bnV:Lcn/nubia/bigAperture/j;

.field private final bnW:Z

.field private bnX:Lcom/android/common/storagemanager/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 25
    const-string/jumbo v0, "BigApertureService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/bigAperture/BigApertureService;->bnS:Z

    .line 27
    sget-boolean v0, Lcn/nubia/bigAperture/BigApertureService;->bnS:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    move-result-object v0

    .line 28
    const-string/jumbo v1, "/DCIM/Camera/bigAperture"

    .line 27
    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@78
    nop

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@7
    nop

    move-result-object v0

    :goto_26
    sput-object v0, Lcn/nubia/bigAperture/BigApertureService;->bnT:Ljava/lang/String;

    .line 15
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 28
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@77
    nop

    move-result-object v0

    .line 29
    const-string/jumbo v1, "/DCIM/Camera/.bigAperture"

    .line 28
    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@78
    nop

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@7
    nop

    move-result-object v0

    goto :goto_26
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    new-instance v0, Lcn/nubia/bigAperture/n;

    invoke-direct {v0, p0}, Lcn/nubia/bigAperture/n;-><init>(Lcn/nubia/bigAperture/o;)V

    iput-object v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnV:Lcn/nubia/bigAperture/j;

    .line 19
    iput-object v1, p0, Lcn/nubia/bigAperture/BigApertureService;->bnU:Lcn/nubia/bigAperture/g;

    .line 20
    iput-object v1, p0, Lcn/nubia/bigAperture/BigApertureService;->bnX:Lcom/android/common/storagemanager/f;

    .line 99
    const-string/jumbo v0, "ApertureBackground"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnW:Z

    .line 15
    return-void
.end method

.method private bKn(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 101
    iget-boolean v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnW:Z

    if-eqz v0, :cond_a

    .line 102
    const-string/jumbo v0, "BigApertureService"

    invoke-static {v0, p1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_a
    return-void
.end method


# virtual methods
.method public bKo(Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 4

    .prologue
    .line 77
    const-string/jumbo v0, "BigApertureService"

    const-string/jumbo v1, "onTaskAdded"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDataPutted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/bigAperture/BigApertureTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/BigApertureService;->bKn(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnU:Lcn/nubia/bigAperture/g;

    invoke-virtual {v0, p1}, Lcn/nubia/bigAperture/g;->bJx(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 76
    return-void
.end method

.method public lockDepthData(Landroid/net/Uri;Landroid/os/Messenger;)Z
    .registers 6

    .prologue
    .line 84
    const-string/jumbo v0, "BigApertureService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockDepthData Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnU:Lcn/nubia/bigAperture/g;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/bigAperture/g;->lockDepthData(Landroid/net/Uri;Landroid/os/Messenger;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 55
    const-string/jumbo v0, "BigApertureService"

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnV:Lcn/nubia/bigAperture/j;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    const-string/jumbo v0, "BigApertureService"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/android/common/storagemanager/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/storagemanager/f;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnX:Lcom/android/common/storagemanager/f;

    .line 36
    new-instance v0, Lcn/nubia/bigAperture/g;

    invoke-virtual {p0}, Lcn/nubia/bigAperture/BigApertureService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/bigAperture/BigApertureService;->bnX:Lcom/android/common/storagemanager/f;

    invoke-direct {v0, v1, p0, v2}, Lcn/nubia/bigAperture/g;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;Lcom/android/common/storagemanager/f;)V

    iput-object v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnU:Lcn/nubia/bigAperture/g;

    .line 37
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnU:Lcn/nubia/bigAperture/g;

    invoke-virtual {v0}, Lcn/nubia/bigAperture/g;->start()V

    .line 32
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 67
    const-string/jumbo v0, "BigApertureService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnU:Lcn/nubia/bigAperture/g;

    if-eqz v0, :cond_12

    .line 69
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnU:Lcn/nubia/bigAperture/g;

    invoke-virtual {v0}, Lcn/nubia/bigAperture/g;->bJF()V

    .line 71
    :cond_12
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnX:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agB()V

    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 66
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6

    .prologue
    .line 42
    const-string/jumbo v0, "BigApertureService"

    const-string/jumbo v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    if-eqz p1, :cond_1d

    .line 45
    const-string/jumbo v0, "stop-after-task-done"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 49
    :goto_13
    iget-object v1, p0, Lcn/nubia/bigAperture/BigApertureService;->bnU:Lcn/nubia/bigAperture/g;

    invoke-virtual {v1, v0}, Lcn/nubia/bigAperture/g;->setServiceStoppedAfterTasksDone(Z)V

    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 47
    :cond_1d
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    .prologue
    .line 61
    const-string/jumbo v0, "BigApertureService"

    const-string/jumbo v1, "onUnBind"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public setServiceStoppedAfterTasksDone(Z)V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnU:Lcn/nubia/bigAperture/g;

    invoke-virtual {v0, p1}, Lcn/nubia/bigAperture/g;->setServiceStoppedAfterTasksDone(Z)V

    .line 95
    return-void
.end method

.method public unlockDepthData(Landroid/net/Uri;)Z
    .registers 5

    .prologue
    .line 90
    const-string/jumbo v0, "BigApertureService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockDepthData URi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureService;->bnU:Lcn/nubia/bigAperture/g;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcn/nubia/bigAperture/g;->bKb(Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method
