.class public abstract Lcn/nubia/gallery3d/data/a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/gallery3d/data/CommonInterface;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "cn.nubia.gallery3d.data.CommonInterface"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/gallery3d/data/a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static bMJ(Landroid/os/IBinder;)Lcn/nubia/gallery3d/data/CommonInterface;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 23
    if-nez p0, :cond_4

    .line 24
    return-object v0

    .line 26
    :cond_4
    const-string/jumbo v0, "cn.nubia.gallery3d.data.CommonInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcn/nubia/gallery3d/data/CommonInterface;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcn/nubia/gallery3d/data/CommonInterface;

    return-object v0

    .line 30
    :cond_14
    new-instance v0, Lcn/nubia/gallery3d/data/b;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/data/b;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_22

    .line 54
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 42
    :sswitch_9
    const-string/jumbo v0, "cn.nubia.gallery3d.data.CommonInterface"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v1

    .line 47
    :sswitch_10
    const-string/jumbo v0, "cn.nubia.gallery3d.data.CommonInterface"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/gallery3d/data/a;->getCameraForSelection()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return v1

    .line 38
    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
