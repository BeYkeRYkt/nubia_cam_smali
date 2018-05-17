.class public abstract Lcom/android/common/cameradevice/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NM:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

.field public static final NN:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;


# instance fields
.field protected NO:[I

.field protected NP:[I

.field protected NQ:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/common/cameradevice/r;->NN:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    .line 23
    new-instance v0, Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    invoke-direct {v0}, Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/common/cameradevice/r;->NM:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    .line 25
    sget-object v0, Lcom/android/common/cameradevice/r;->NN:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    const-string/jumbo v1, "h263"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 26
    sget-object v0, Lcom/android/common/cameradevice/r;->NN:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    const-string/jumbo v1, "h264"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 27
    sget-object v0, Lcom/android/common/cameradevice/r;->NN:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    const-string/jumbo v1, "m4v"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 28
    sget-object v0, Lcom/android/common/cameradevice/r;->NN:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@47
    nop

    .line 30
    sget-object v0, Lcom/android/common/cameradevice/r;->NM:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    const-string/jumbo v1, "amrnb"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 31
    sget-object v0, Lcom/android/common/cameradevice/r;->NM:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    const-string/jumbo v1, "amrwb"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 32
    sget-object v0, Lcom/android/common/cameradevice/r;->NM:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    const-string/jumbo v1, "aac"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 33
    sget-object v0, Lcom/android/common/cameradevice/r;->NM:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@47
    nop

    .line 13
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->values()[Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/common/cameradevice/r;->NO:[I

    .line 37
    invoke-static {}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->values()[Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/common/cameradevice/r;->NP:[I

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/common/cameradevice/r;->NQ:Landroid/util/SparseArray;

    .line 41
    invoke-virtual {p0}, Lcom/android/common/cameradevice/r;->Og()V

    .line 40
    return-void
.end method


# virtual methods
.method public abstract Ob(ILcom/android/common/cameradevice/p;Ljava/lang/String;)Ljava/util/ArrayList;
.end method

.method public abstract Oc(II)Landroid/media/CamcorderProfile;
.end method

.method public Od(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;)I
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/common/cameradevice/r;->NO:[I

    invoke-virtual {p1}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public Oe(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;)I
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/common/cameradevice/r;->NP:[I

    invoke-virtual {p1}, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_SLOMO_QUALITY;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public Of(I)Ljava/util/ArrayList;
    .registers 5

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/common/cameradevice/r;->NQ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 47
    if-eqz v0, :cond_b

    .line 48
    return-object v0

    .line 51
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    const/4 v0, 0x0

    :goto_11
    iget-object v2, p0, Lcom/android/common/cameradevice/r;->NO:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2e

    .line 53
    iget-object v2, p0, Lcom/android/common/cameradevice/r;->NO:[I

    aget v2, v2, v0

    invoke-static {p1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 54
    iget-object v2, p0, Lcom/android/common/cameradevice/r;->NO:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 58
    :cond_2e
    iget-object v0, p0, Lcom/android/common/cameradevice/r;->NQ:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    return-object v1
.end method

.method protected abstract Og()V
.end method
