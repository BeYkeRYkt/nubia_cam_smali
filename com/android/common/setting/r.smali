.class public Lcom/android/common/setting/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/setting/t;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SX(Lcom/android/common/appService/W;ILcom/android/common/appService/y;)Lcom/android/common/setting/l;
    .registers 5

    .prologue
    .line 10
    new-instance v0, Lcom/android/common/setting/l;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/common/setting/l;-><init>(ILcom/android/common/appService/W;Lcom/android/common/appService/y;)V

    return-object v0
.end method

.method public bridge synthetic SX(Lcom/android/common/appService/W;ILcom/android/common/appService/y;)Lcom/android/common/setting/o;
    .registers 5

    .prologue
    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/common/setting/r;->SX(Lcom/android/common/appService/W;ILcom/android/common/appService/y;)Lcom/android/common/setting/l;

    move-result-object v0

    return-object v0
.end method
