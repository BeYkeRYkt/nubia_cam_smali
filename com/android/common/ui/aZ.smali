.class final Lcom/android/common/ui/aZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Eh:Lcom/android/common/ui/BigApertureSettingUI;


# direct methods
.method constructor <init>(Lcom/android/common/ui/BigApertureSettingUI;)V
    .registers 2

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/common/ui/aZ;->Eh:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/common/ui/aZ;->Eh:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-static {v0}, Lcom/android/common/ui/BigApertureSettingUI;->Bb(Lcom/android/common/ui/BigApertureSettingUI;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 268
    iget-object v0, p0, Lcom/android/common/ui/aZ;->Eh:Lcom/android/common/ui/BigApertureSettingUI;

    iget-object v1, p0, Lcom/android/common/ui/aZ;->Eh:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-static {v1}, Lcom/android/common/ui/BigApertureSettingUI;->Be(Lcom/android/common/ui/BigApertureSettingUI;)[F

    move-result-object v1

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/common/ui/aZ;->Eh:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-static {v2}, Lcom/android/common/ui/BigApertureSettingUI;->Be(Lcom/android/common/ui/BigApertureSettingUI;)[F

    move-result-object v2

    aget v2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/common/ui/BigApertureSettingUI;->Bh(Lcom/android/common/ui/BigApertureSettingUI;FF)[I

    move-result-object v0

    .line 269
    if-eqz v0, :cond_67

    iget-object v1, p0, Lcom/android/common/ui/aZ;->Eh:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-static {v1}, Lcom/android/common/ui/BigApertureSettingUI;->Be(Lcom/android/common/ui/BigApertureSettingUI;)[F

    move-result-object v1

    aget v1, v1, v4

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/android/common/ui/aZ;->Eh:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-static {v1}, Lcom/android/common/ui/BigApertureSettingUI;->Be(Lcom/android/common/ui/BigApertureSettingUI;)[F

    move-result-object v1

    aget v1, v1, v5

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_67

    .line 270
    iget-object v1, p0, Lcom/android/common/ui/aZ;->Eh:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-static {v1, v4}, Lcom/android/common/ui/BigApertureSettingUI;->Bf(Lcom/android/common/ui/BigApertureSettingUI;Z)Z

    .line 271
    iget-object v1, p0, Lcom/android/common/ui/aZ;->Eh:Lcom/android/common/ui/BigApertureSettingUI;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-static {v1, v2, v3}, Lcom/android/common/ui/BigApertureSettingUI;->Bj(Lcom/android/common/ui/BigApertureSettingUI;II)V

    .line 272
    iget-object v1, p0, Lcom/android/common/ui/aZ;->Eh:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-static {v1}, Lcom/android/common/ui/BigApertureSettingUI;->Bd(Lcom/android/common/ui/BigApertureSettingUI;)[I

    move-result-object v1

    aget v2, v0, v4

    aput v2, v1, v4

    .line 273
    iget-object v1, p0, Lcom/android/common/ui/aZ;->Eh:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-static {v1}, Lcom/android/common/ui/BigApertureSettingUI;->Bd(Lcom/android/common/ui/BigApertureSettingUI;)[I

    move-result-object v1

    aget v0, v0, v5

    aput v0, v1, v5

    .line 274
    iget-object v0, p0, Lcom/android/common/ui/aZ;->Eh:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-static {v0, v5}, Lcom/android/common/ui/BigApertureSettingUI;->Bg(Lcom/android/common/ui/BigApertureSettingUI;Z)Z

    .line 275
    iget-object v0, p0, Lcom/android/common/ui/aZ;->Eh:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-static {v0}, Lcom/android/common/ui/BigApertureSettingUI;->Bi(Lcom/android/common/ui/BigApertureSettingUI;)V

    .line 266
    :cond_67
    return-void
.end method
