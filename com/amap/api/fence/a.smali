.class Lcom/amap/api/fence/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)[Lcom/amap/api/fence/Fence;
    .registers 3

    new-array v0, p1, [Lcom/amap/api/fence/Fence;

    return-object v0
.end method

.method public bvo(Landroid/os/Parcel;)Lcom/amap/api/fence/Fence;
    .registers 4

    new-instance v0, Lcom/amap/api/fence/Fence;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amap/api/fence/Fence;-><init>(Landroid/os/Parcel;Lcom/amap/api/fence/a;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/amap/api/fence/a;->bvo(Landroid/os/Parcel;)Lcom/amap/api/fence/Fence;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/amap/api/fence/a;->a(I)[Lcom/amap/api/fence/Fence;

    move-result-object v0

    return-object v0
.end method
