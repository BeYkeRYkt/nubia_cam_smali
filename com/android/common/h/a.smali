.class public Lcom/android/common/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/Y;


# instance fields
.field private XU:Lcom/android/common/appService/W;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/h/a;->XU:Lcom/android/common/appService/W;

    .line 13
    iput-object p1, p0, Lcom/android/common/h/a;->XU:Lcom/android/common/appService/W;

    .line 12
    return-void
.end method

.method private abv()Lcom/android/common/appService/c;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/common/h/a;->XU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qo()Lcom/android/common/appService/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Dl()V
    .registers 5

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/common/h/a;->abv()Lcom/android/common/appService/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/c;->ig()V

    .line 23
    iget-object v0, p0, Lcom/android/common/h/a;->XU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XK()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 24
    iget-object v0, p0, Lcom/android/common/h/a;->XU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 25
    const-string/jumbo v1, "pref_camera_delay_shoot_key"

    .line 26
    iget-object v2, p0, Lcom/android/common/h/a;->XU:Lcom/android/common/appService/W;

    const v3, 0x7f0a0302

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 28
    iget-object v0, p0, Lcom/android/common/h/a;->XU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_interval_switch"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vt(I)V

    .line 29
    iget-object v0, p0, Lcom/android/common/h/a;->XU:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mL()V

    .line 21
    :cond_4c
    return-void
.end method
