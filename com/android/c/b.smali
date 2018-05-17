.class public Lcom/android/c/b;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected To()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    const-string/jumbo v0, "2048x1536"

    return-object v0
.end method

.method protected Tu()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Uo()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
