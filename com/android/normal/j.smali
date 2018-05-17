.class final Lcom/android/normal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/independentFocusExposure/n;


# instance fields
.field final synthetic bbj:Lcom/android/normal/b;


# direct methods
.method constructor <init>(Lcom/android/normal/b;)V
    .registers 2

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/normal/j;->bbj:Lcom/android/normal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fI()V
    .registers 5

    .prologue
    .line 176
    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/android/normal/j;->bbj:Lcom/android/normal/b;

    invoke-static {v1}, Lcom/android/normal/b;->bsi(Lcom/android/normal/b;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pref_big_aperature_key"

    const-string/jumbo v3, "off"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 177
    iget-object v0, p0, Lcom/android/normal/j;->bbj:Lcom/android/normal/b;

    iget-object v0, v0, Lcom/android/normal/b;->baB:Lcom/android/common/ui/BigApertureSettingUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->AK(Z)V

    .line 178
    iget-object v0, p0, Lcom/android/normal/j;->bbj:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/common/appService/b;->hM(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/normal/j;->bbj:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->dY()V

    .line 175
    :cond_40
    return-void
.end method
