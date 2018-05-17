.class public Lcom/android/objectclear/a;
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
.method protected TL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected To()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    const-string/jumbo v0, "640x480"

    return-object v0
.end method
