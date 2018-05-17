.class public Lcom/android/panorama/l;
.super Lcom/android/common/appService/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/common/appService/r;-><init>()V

    return-void
.end method


# virtual methods
.method public kD()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/panorama/PanoramaMemberConfig$1;

    invoke-direct {v0, p0}, Lcom/android/panorama/PanoramaMemberConfig$1;-><init>(Lcom/android/panorama/l;)V

    return-object v0
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 21
    invoke-static {}, Lcom/android/panorama/j;->bfW()Lcom/android/panorama/j;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 27
    new-instance v0, Lcom/android/panorama/m;

    invoke-direct {v0, p1}, Lcom/android/panorama/m;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 42
    sget-object v0, Lcom/android/common/appService/CameraMember;->jy:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method
