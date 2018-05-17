.class public Lcom/android/funeffect/b;
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
.method protected UB()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/android/funeffect/b;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    .line 24
    const-string/jumbo v1, "pref_camera_ztemt_fun_effect"

    const v2, 0x7f0a0412

    invoke-virtual {p0, v2}, Lcom/android/funeffect/b;->Tb(I)Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
