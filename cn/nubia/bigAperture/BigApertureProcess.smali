.class public interface abstract Lcn/nubia/bigAperture/BigApertureProcess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract addTask(Ljava/lang/String;Landroid/net/Uri;IIIIIIIFFFI)Z
.end method

.method public abstract addTaskObject(Lcn/nubia/bigAperture/BigApertureTask;)Z
.end method

.method public abstract addTaskWithDualDac(Ljava/lang/String;Landroid/net/Uri;IIIIIIIIIFFFFIIII)Z
.end method

.method public abstract getBigApertureTmpDir()Ljava/lang/String;
.end method

.method public abstract lockDepthData(Landroid/net/Uri;Landroid/os/Messenger;)Z
.end method

.method public abstract setServiceStoppedAfterTasksDone(Z)V
.end method

.method public abstract unlockDepthData(Landroid/net/Uri;)Z
.end method
