.class public Lcom/android/normal/a;
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
    .line 14
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/normal/h;->bss(Z)Lcom/android/normal/h;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 6

    .prologue
    .line 20
    new-instance v0, Lcom/android/normal/g;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/normal/a;->lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/normal/g;-><init>(Lcom/android/common/appService/W;Lcom/android/common/appService/CameraMember;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 25
    sget-object v0, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method
