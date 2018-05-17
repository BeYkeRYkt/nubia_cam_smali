.class public Lcom/android/intervalometer/e;
.super Lcom/android/common/appService/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/common/appService/r;-><init>()V

    return-void
.end method


# virtual methods
.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 13
    invoke-static {}, Lcom/android/intervalometer/d;->bgH()Lcom/android/intervalometer/d;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 18
    new-instance v0, Lcom/android/intervalometer/j;

    invoke-direct {v0, p1}, Lcom/android/intervalometer/j;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 23
    sget-object v0, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method
