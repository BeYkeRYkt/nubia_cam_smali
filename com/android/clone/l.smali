.class public Lcom/android/clone/l;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 10
    return-void
.end method


# virtual methods
.method protected TR()I
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method protected To()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/clone/l;->Tl:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->YC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
