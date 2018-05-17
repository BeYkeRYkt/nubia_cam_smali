.class final Lcom/android/normal/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/normal/i;


# instance fields
.field final synthetic bbs:Lcom/android/normal/h;


# direct methods
.method constructor <init>(Lcom/android/normal/h;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/normal/r;->bbs:Lcom/android/normal/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bsA()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/normal/r;->bbs:Lcom/android/normal/h;

    invoke-static {v0}, Lcom/android/normal/h;->bsy(Lcom/android/normal/h;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_fusion_key"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/normal/r;->bbs:Lcom/android/normal/h;

    invoke-virtual {v0}, Lcom/android/normal/h;->ne()V

    .line 95
    iget-object v0, p0, Lcom/android/normal/r;->bbs:Lcom/android/normal/h;

    invoke-virtual {v0}, Lcom/android/normal/h;->nM()V

    .line 96
    iget-object v0, p0, Lcom/android/normal/r;->bbs:Lcom/android/normal/h;

    invoke-static {v0}, Lcom/android/normal/h;->bsz(Lcom/android/normal/h;)Lcom/android/common/appService/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/common/appService/b;->hZ(Z)V

    .line 92
    return-void
.end method
