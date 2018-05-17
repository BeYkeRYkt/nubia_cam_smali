.class public Lcom/amap/api/fence/Fence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final bdc:Landroid/os/Parcelable$Creator;


# instance fields
.field public b:Ljava/lang/String;

.field public bda:Landroid/app/PendingIntent;

.field public bdb:F

.field public c:D

.field public d:D

.field public f:I

.field public g:J

.field private h:J

.field private i:J

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/amap/api/fence/a;

    invoke-direct {v0}, Lcom/amap/api/fence/a;-><init>()V

    sput-object v0, Lcom/amap/api/fence/Fence;->bdc:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/amap/api/fence/Fence;->bda:Landroid/app/PendingIntent;

    iput-object v4, p0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->c:D

    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->d:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/fence/Fence;->bdb:F

    iput-wide v2, p0, Lcom/amap/api/fence/Fence;->h:J

    iput-wide v2, p0, Lcom/amap/api/fence/Fence;->i:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/fence/Fence;->j:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/fence/Fence;->f:I

    iput-wide v2, p0, Lcom/amap/api/fence/Fence;->g:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 8

    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/fence/Fence;->bda:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    iput-wide v4, p0, Lcom/amap/api/fence/Fence;->c:D

    iput-wide v4, p0, Lcom/amap/api/fence/Fence;->d:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/fence/Fence;->bdb:F

    iput-wide v2, p0, Lcom/amap/api/fence/Fence;->h:J

    iput-wide v2, p0, Lcom/amap/api/fence/Fence;->i:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/fence/Fence;->j:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/fence/Fence;->f:I

    iput-wide v2, p0, Lcom/amap/api/fence/Fence;->g:J

    if-nez p1, :cond_22

    :goto_21
    return-void

    :cond_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->c:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->d:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/amap/api/fence/Fence;->bdb:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->h:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->i:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/fence/Fence;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/fence/Fence;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/fence/Fence;->g:J

    goto :goto_21
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amap/api/fence/a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/amap/api/fence/Fence;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/amap/api/fence/Fence;->j:I

    return v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->h:J

    return-wide v0
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->i:J

    return-wide v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-object v0, p0, Lcom/amap/api/fence/Fence;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/amap/api/fence/Fence;->bdb:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/amap/api/fence/Fence;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/amap/api/fence/Fence;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/amap/api/fence/Fence;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
