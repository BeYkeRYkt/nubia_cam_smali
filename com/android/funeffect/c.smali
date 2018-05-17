.class public Lcom/android/funeffect/c;
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
.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 20
    invoke-static {}, Lcom/android/funeffect/d;->blh()Lcom/android/funeffect/d;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 25
    new-instance v0, Lcom/android/funeffect/b;

    invoke-direct {v0, p1}, Lcom/android/funeffect/b;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 30
    sget-object v0, Lcom/android/common/appService/CameraMember;->jp:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method
