.class public Lcom/android/zoomblur/d;
.super Lcom/android/common/o/l;
.source "SourceFile"


# instance fields
.field private aGm:Landroid/widget/ImageView;

.field private aGn:Lcom/android/common/setting/IconListPreference;

.field private aGo:Lcom/android/common/ui/ZtemtSlidingDrawer;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/zoomblur/d;->aGo:Lcom/android/common/ui/ZtemtSlidingDrawer;

    .line 29
    iput-object v0, p0, Lcom/android/zoomblur/d;->aGm:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lcom/android/zoomblur/d;->aGn:Lcom/android/common/setting/IconListPreference;

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 27
    iput-object v0, p0, Lcom/android/zoomblur/d;->aGo:Lcom/android/common/ui/ZtemtSlidingDrawer;

    .line 29
    iput-object v0, p0, Lcom/android/zoomblur/d;->aGm:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lcom/android/zoomblur/d;->aGn:Lcom/android/common/setting/IconListPreference;

    .line 35
    return-void
.end method

.method public static aUW()Lcom/android/zoomblur/d;
    .registers 2

    .prologue
    .line 40
    new-instance v0, Lcom/android/zoomblur/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/zoomblur/d;-><init>(I)V

    .line 41
    return-object v0
.end method

.method private aUY(I)V
    .registers 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/zoomblur/d;->aGn:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/zoomblur/d;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    return-void
.end method

.method private aUZ(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 62
    const v0, 0x7f1000b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtSlidingDrawer;

    iput-object v0, p0, Lcom/android/zoomblur/d;->aGo:Lcom/android/common/ui/ZtemtSlidingDrawer;

    .line 63
    invoke-virtual {p0}, Lcom/android/zoomblur/d;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_zoomblur_type"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/IconListPreference;

    iput-object v0, p0, Lcom/android/zoomblur/d;->aGn:Lcom/android/common/setting/IconListPreference;

    .line 64
    const-string/jumbo v0, "ZoomBlurFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPreference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/zoomblur/d;->aGn:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b;->bvy(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/zoomblur/d;->aGo:Lcom/android/common/ui/ZtemtSlidingDrawer;

    iget-object v1, p0, Lcom/android/zoomblur/d;->aGn:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {p0}, Lcom/android/zoomblur/d;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Ar(Lcom/android/common/setting/IconListPreference;Landroid/content/Context;Z)V

    .line 66
    iget-object v0, p0, Lcom/android/zoomblur/d;->aGo:Lcom/android/common/ui/ZtemtSlidingDrawer;

    new-instance v1, Lcom/android/zoomblur/e;

    invoke-direct {v1, p0}, Lcom/android/zoomblur/e;-><init>(Lcom/android/zoomblur/d;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Au(Lcom/android/common/ui/L;)V

    .line 74
    iget-object v0, p0, Lcom/android/zoomblur/d;->aGo:Lcom/android/common/ui/ZtemtSlidingDrawer;

    new-instance v1, Lcom/android/zoomblur/f;

    invoke-direct {v1, p0}, Lcom/android/zoomblur/f;-><init>(Lcom/android/zoomblur/d;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Av(Lcom/android/common/ui/M;)V

    .line 61
    return-void
.end method

.method private aVa(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/zoomblur/d;->aUZ(Landroid/view/View;)V

    .line 56
    return-void
.end method

.method static synthetic aVb(Lcom/android/zoomblur/d;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/zoomblur/d;->aUY(I)V

    return-void
.end method


# virtual methods
.method public aUX(Z)V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/zoomblur/d;->aGo:Lcom/android/common/ui/ZtemtSlidingDrawer;

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/android/zoomblur/d;->aGo:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/ZtemtSlidingDrawer;->setEnabled(Z)V

    .line 93
    :cond_9
    return-void
.end method

.method protected ajt(IZ)V
    .registers 4

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 90
    iget-object v0, p0, Lcom/android/zoomblur/d;->aGo:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Ax(IZ)V

    .line 88
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 48
    iget-boolean v0, p0, Lcom/android/zoomblur/d;->adu:Z

    if-eqz v0, :cond_9

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_9
    const v0, 0x7f04008e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    invoke-direct {p0, v0}, Lcom/android/zoomblur/d;->aVa(Landroid/view/View;)V

    .line 53
    return-object v0
.end method
