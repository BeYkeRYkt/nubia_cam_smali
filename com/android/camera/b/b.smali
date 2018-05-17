.class public Lcom/android/camera/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/setting/t;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SX(Lcom/android/common/appService/W;ILcom/android/common/appService/y;)Lcom/android/camera/b/a;
    .registers 5

    .prologue
    .line 11
    new-instance v0, Lcom/android/camera/b/a;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/camera/b/a;-><init>(ILcom/android/common/appService/W;Lcom/android/common/appService/y;)V

    return-object v0
.end method

.method public bridge synthetic SX(Lcom/android/common/appService/W;ILcom/android/common/appService/y;)Lcom/android/common/setting/o;
    .registers 5

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/b/b;->SX(Lcom/android/common/appService/W;ILcom/android/common/appService/y;)Lcom/android/camera/b/a;

    move-result-object v0

    return-object v0
.end method
