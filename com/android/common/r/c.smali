.class Lcom/android/common/r/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/location/a;


# instance fields
.field final synthetic afS:Lcom/android/common/r/b;


# direct methods
.method private constructor <init>(Lcom/android/common/r/b;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/common/r/c;->afS:Lcom/android/common/r/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/r/b;Lcom/android/common/r/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/r/c;-><init>(Lcom/android/common/r/b;)V

    return-void
.end method


# virtual methods
.method public ank(Lcom/amap/api/location/AMapLocation;)V
    .registers 6

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->buw()I

    move-result v0

    .line 98
    if-nez v0, :cond_c

    .line 99
    iget-object v0, p0, Lcom/android/common/r/c;->afS:Lcom/android/common/r/b;

    invoke-static {v0, p1}, Lcom/android/common/r/b;->anj(Lcom/android/common/r/b;Landroid/location/Location;)Landroid/location/Location;

    .line 96
    :goto_b
    return-void

    .line 101
    :cond_c
    const-string/jumbo v1, "NubiaAMapLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not located yet ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": message "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->buy()Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method
