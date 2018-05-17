.class public Lcom/android/common/ui/R;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private xx:Lcom/android/common/appService/W;

.field private xy:Landroid/app/Dialog;

.field private xz:Lcom/android/common/appService/M;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/common/appService/M;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    .line 38
    iput-object v0, p0, Lcom/android/common/ui/R;->xz:Lcom/android/common/appService/M;

    .line 39
    iput-object v0, p0, Lcom/android/common/ui/R;->xy:Landroid/app/Dialog;

    .line 42
    iput-object p1, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    .line 43
    iput-object p2, p0, Lcom/android/common/ui/R;->xz:Lcom/android/common/appService/M;

    .line 41
    return-void
.end method

.method private BL()Lcom/android/common/setting/e;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    if-eqz v0, :cond_27

    .line 79
    iget-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qu()Lcom/android/common/setting/d;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 80
    iget-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 81
    iget-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qu()Lcom/android/common/setting/d;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/android/common/setting/d;->UK(I)Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0

    .line 84
    :cond_27
    return-object v2
.end method

.method private BM()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/android/common/ui/R;->BN()Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_c

    .line 49
    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_c
    return-object v1
.end method

.method private BN()Lcom/android/common/setting/ListPreference;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    if-eqz v0, :cond_1b

    .line 56
    iget-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 57
    iget-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "pref_picture_artist_info"

    .line 57
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    return-object v0

    .line 61
    :cond_1b
    return-object v1
.end method

.method private BO(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_d

    .line 143
    :cond_c
    return-void

    .line 145
    :cond_d
    iget-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    .line 146
    const-string/jumbo v1, "input_method"

    .line 145
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 148
    const/4 v2, 0x2

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 141
    return-void
.end method

.method private BQ(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/common/ui/R;->BL()Lcom/android/common/setting/e;

    move-result-object v0

    .line 66
    invoke-direct {p0}, Lcom/android/common/ui/R;->BN()Lcom/android/common/setting/ListPreference;

    move-result-object v1

    .line 67
    if-eqz v0, :cond_10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 64
    :cond_10
    :goto_10
    return-void

    .line 67
    :cond_11
    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 68
    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    const-string/jumbo v2, "pref_picture_artist_info"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    if-eqz v1, :cond_10

    .line 72
    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->VB()V

    goto :goto_10
.end method

.method private BR(Landroid/app/Dialog;)V
    .registers 5

    .prologue
    .line 131
    if-nez p1, :cond_3

    .line 132
    return-void

    .line 134
    :cond_3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 135
    const/4 v1, 0x5

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 136
    iget-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "input_method"

    .line 136
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 138
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 130
    return-void
.end method

.method private BS(Ljava/lang/String;)Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 105
    new-instance v0, Lcom/android/common/ui/S;

    iget-object v1, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/S;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v1, Lcom/android/common/ui/bc;

    invoke-direct {v1, p0}, Lcom/android/common/ui/bc;-><init>(Lcom/android/common/ui/R;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/S;->BZ(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v1, Lcom/android/common/ui/bd;

    invoke-direct {v1, p0}, Lcom/android/common/ui/bd;-><init>(Lcom/android/common/ui/R;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/S;->BY(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {v0, p1}, Lcom/android/common/ui/S;->Ca(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lcom/android/common/ui/S;->show()V

    .line 127
    return-object v0
.end method

.method static synthetic BU(Lcom/android/common/ui/R;)Lcom/android/common/appService/M;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/R;->xz:Lcom/android/common/appService/M;

    return-object v0
.end method

.method static synthetic BV(Lcom/android/common/ui/R;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/R;->BO(Landroid/view/View;)V

    return-void
.end method

.method static synthetic BW(Lcom/android/common/ui/R;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/R;->BQ(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public BP()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/common/ui/R;->xy:Landroid/app/Dialog;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/common/ui/R;->xy:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 98
    iget-object v0, p0, Lcom/android/common/ui/R;->xy:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 99
    iget-object v0, p0, Lcom/android/common/ui/R;->xy:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/R;->BO(Landroid/view/View;)V

    .line 100
    iput-object v1, p0, Lcom/android/common/ui/R;->xy:Landroid/app/Dialog;

    .line 96
    :cond_21
    return-void
.end method

.method public BT()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/common/ui/R;->xx:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_d

    .line 89
    :cond_c
    return-void

    .line 91
    :cond_d
    invoke-direct {p0}, Lcom/android/common/ui/R;->BM()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-direct {p0, v0}, Lcom/android/common/ui/R;->BS(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/R;->xy:Landroid/app/Dialog;

    .line 93
    iget-object v0, p0, Lcom/android/common/ui/R;->xy:Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/common/ui/R;->BR(Landroid/app/Dialog;)V

    .line 87
    return-void
.end method
