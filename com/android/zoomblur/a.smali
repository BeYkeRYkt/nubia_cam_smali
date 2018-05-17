.class public Lcom/android/zoomblur/a;
.super Lcom/android/common/appService/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/common/appService/r;-><init>()V

    return-void
.end method


# virtual methods
.method public kD()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/zoomblur/ZoomBlurMemberConfig$1;

    invoke-direct {v0, p0}, Lcom/android/zoomblur/ZoomBlurMemberConfig$1;-><init>(Lcom/android/zoomblur/a;)V

    return-object v0
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 4

    .prologue
    .line 17
    invoke-static {}, Lcom/android/zoomblur/c;->aUU()Lcom/android/zoomblur/c;

    move-result-object v0

    return-object v0
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 23
    new-instance v0, Lcom/android/zoomblur/b;

    invoke-direct {v0, p1}, Lcom/android/zoomblur/b;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 3

    .prologue
    .line 37
    sget-object v0, Lcom/android/common/appService/CameraMember;->jR:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method
