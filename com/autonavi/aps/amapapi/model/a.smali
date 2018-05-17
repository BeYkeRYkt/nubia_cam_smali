.class Lcom/autonavi/aps/amapapi/model/a;
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
.method public a(I)[Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public bIL(Landroid/os/Parcel;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 3

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0, p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/autonavi/aps/amapapi/model/a;->bIL(Landroid/os/Parcel;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/autonavi/aps/amapapi/model/a;->a(I)[Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method
