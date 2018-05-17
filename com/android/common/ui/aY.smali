.class final Lcom/android/common/ui/aY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/al;


# instance fields
.field final synthetic Eg:Lcom/android/common/ui/BigApertureSettingUI;


# direct methods
.method constructor <init>(Lcom/android/common/ui/BigApertureSettingUI;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/common/ui/aY;->Eg:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public FN(F)V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/common/ui/aY;->Eg:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-static {v0}, Lcom/android/common/ui/BigApertureSettingUI;->Bc(Lcom/android/common/ui/BigApertureSettingUI;)Lcom/android/common/ui/O;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 107
    iget-object v0, p0, Lcom/android/common/ui/aY;->Eg:Lcom/android/common/ui/BigApertureSettingUI;

    invoke-static {v0}, Lcom/android/common/ui/BigApertureSettingUI;->Bc(Lcom/android/common/ui/BigApertureSettingUI;)Lcom/android/common/ui/O;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/common/ui/O;->Bl(F)V

    .line 105
    :cond_11
    return-void
.end method
