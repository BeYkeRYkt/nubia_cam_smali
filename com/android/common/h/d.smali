.class public Lcom/android/common/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/Y;


# instance fields
.field private XW:Lcom/android/common/ActivityBase;

.field private XX:Lcom/android/common/setting/ListPreference;

.field private XY:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/common/h/d;->XY:Landroid/widget/Toast;

    .line 15
    iput-object v0, p0, Lcom/android/common/h/d;->XW:Lcom/android/common/ActivityBase;

    .line 17
    iput-object p1, p0, Lcom/android/common/h/d;->XW:Lcom/android/common/ActivityBase;

    .line 16
    return-void
.end method


# virtual methods
.method public Dl()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 22
    iget-object v0, p0, Lcom/android/common/h/d;->XY:Landroid/widget/Toast;

    if-eqz v0, :cond_c

    .line 23
    iget-object v0, p0, Lcom/android/common/h/d;->XY:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 24
    iput-object v1, p0, Lcom/android/common/h/d;->XY:Landroid/widget/Toast;

    .line 26
    :cond_c
    iget-object v0, p0, Lcom/android/common/h/d;->XX:Lcom/android/common/setting/ListPreference;

    if-nez v0, :cond_23

    .line 27
    iget-object v0, p0, Lcom/android/common/h/d;->XW:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_anti_shake"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/h/d;->XX:Lcom/android/common/setting/ListPreference;

    .line 29
    :cond_23
    iget-object v0, p0, Lcom/android/common/h/d;->XW:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 30
    iget-object v0, p0, Lcom/android/common/h/d;->XW:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asY()V

    .line 31
    iget-object v0, p0, Lcom/android/common/h/d;->XW:Lcom/android/common/ActivityBase;

    iget-object v1, p0, Lcom/android/common/h/d;->XX:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vu()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/h/d;->XY:Landroid/widget/Toast;

    .line 32
    iget-object v0, p0, Lcom/android/common/h/d;->XY:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    return-void
.end method
