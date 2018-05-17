.class public Lcom/android/trajectory/i;
.super Lcom/android/common/appService/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/common/appService/r;-><init>()V

    return-void
.end method


# virtual methods
.method public kD()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 16
    invoke-static {}, Lcom/android/trajectory/j;->aFx()Lcom/android/trajectory/j;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 22
    new-instance v0, Lcom/android/trajectory/h;

    invoke-direct {v0, p1}, Lcom/android/trajectory/h;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 32
    sget-object v0, Lcom/android/common/appService/CameraMember;->jK:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method
