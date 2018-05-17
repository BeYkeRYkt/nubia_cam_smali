.class public Lcom/android/common/ui/an;
.super Lcom/android/common/ui/F;
.source "SourceFile"


# instance fields
.field private CA:Lcom/android/common/appService/W;

.field private CB:I

.field private final CC:Landroid/content/BroadcastReceiver;

.field private CD:Z

.field private CE:Landroid/widget/Toast;

.field private CF:Landroid/content/SharedPreferences;

.field private Cz:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/common/ui/F;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/an;->CB:I

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/an;->Cz:Z

    .line 47
    iput-object v1, p0, Lcom/android/common/ui/an;->CE:Landroid/widget/Toast;

    .line 48
    iput-object v1, p0, Lcom/android/common/ui/an;->CA:Lcom/android/common/appService/W;

    .line 50
    new-instance v0, Lcom/android/common/ui/bq;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bq;-><init>(Lcom/android/common/ui/an;)V

    iput-object v0, p0, Lcom/android/common/ui/an;->CC:Landroid/content/BroadcastReceiver;

    .line 68
    return-void
.end method

.method private Gj(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 158
    const-string/jumbo v0, "ZtemtFlashButton"

    invoke-static {v0, p1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method private Gk()V
    .registers 5

    .prologue
    const/16 v3, 0xf

    .line 108
    monitor-enter p0

    .line 109
    :try_start_3
    iget v0, p0, Lcom/android/common/ui/an;->CB:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 110
    iget-object v0, p0, Lcom/android/common/ui/an;->vc:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_aa

    if-ne v0, v1, :cond_14

    :cond_12
    monitor-exit p0

    .line 112
    return-void

    .line 111
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/android/common/ui/an;->CF:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_12

    .line 115
    iget-object v0, p0, Lcom/android/common/ui/an;->CF:Landroid/content/SharedPreferences;

    .line 116
    const-string/jumbo v1, "KEY_LOW_POWER_MODE"

    const/4 v2, 0x0

    .line 115
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/ui/an;->CD:Z

    .line 117
    iget v0, p0, Lcom/android/common/ui/an;->CB:I

    if-gt v0, v3, :cond_2c

    iget-boolean v0, p0, Lcom/android/common/ui/an;->CD:Z

    if-eqz v0, :cond_75

    .line 127
    :cond_2c
    iget v0, p0, Lcom/android/common/ui/an;->CB:I

    if-le v0, v3, :cond_73

    iget-boolean v0, p0, Lcom/android/common/ui/an;->CD:Z

    if-eqz v0, :cond_73

    .line 128
    iget-object v0, p0, Lcom/android/common/ui/an;->CF:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 129
    const-string/jumbo v1, "KEY_LOW_POWER_MODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 130
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/common/ui/an;->CD:Z

    .line 131
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 132
    iget-object v0, p0, Lcom/android/common/ui/an;->CF:Landroid/content/SharedPreferences;

    .line 133
    const-string/jumbo v1, "KEY_SAVED_FLASH_MODE"

    const-string/jumbo v2, "off"

    .line 132
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/android/common/ui/an;->vi:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/common/setting/IconListPreference;->Vr(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/common/ui/an;->zA(I)V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Power recovery. Enable Flash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/an;->Gj(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_14 .. :try_end_73} :catchall_aa

    :cond_73
    :goto_73
    monitor-exit p0

    .line 107
    return-void

    .line 118
    :cond_75
    :try_start_75
    iget-object v0, p0, Lcom/android/common/ui/an;->CF:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/android/common/ui/an;->vi:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    .line 120
    const-string/jumbo v2, "KEY_SAVED_FLASH_MODE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string/jumbo v1, "KEY_LOW_POWER_MODE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/common/ui/an;->CD:Z

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    const-string/jumbo v0, "Power is less than threshold. Disable Flash: off"

    invoke-direct {p0, v0}, Lcom/android/common/ui/an;->Gj(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/common/ui/an;->vi:Lcom/android/common/setting/IconListPreference;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/IconListPreference;->Vr(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/an;->zA(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/common/ui/an;->zn()V
    :try_end_a9
    .catchall {:try_start_75 .. :try_end_a9} :catchall_aa

    goto :goto_73

    .line 108
    :catchall_aa
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic Gm(Lcom/android/common/ui/an;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/an;->CB:I

    return v0
.end method

.method static synthetic Gn(Lcom/android/common/ui/an;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/an;->CB:I

    return p1
.end method

.method static synthetic Go(Lcom/android/common/ui/an;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/an;->Gj(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Gp(Lcom/android/common/ui/an;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ui/an;->Gk()V

    return-void
.end method


# virtual methods
.method public Gg(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/common/ui/an;->CA:Lcom/android/common/appService/W;

    .line 167
    return-void
.end method

.method public Gh(Landroid/content/SharedPreferences;)V
    .registers 5

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/common/ui/an;->Cz:Z

    if-eqz v0, :cond_5

    return-void

    .line 142
    :cond_5
    iput-object p1, p0, Lcom/android/common/ui/an;->CF:Landroid/content/SharedPreferences;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/an;->Cz:Z

    .line 144
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/common/ui/an;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/common/ui/an;->CC:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method public Gi()V
    .registers 3

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/common/ui/an;->Cz:Z

    if-nez v0, :cond_5

    return-void

    .line 152
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/an;->Cz:Z

    .line 153
    invoke-virtual {p0}, Lcom/android/common/ui/an;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/common/ui/an;->CC:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    return-void
.end method

.method protected Gl(Landroid/app/Activity;I)V
    .registers 11

    .prologue
    const-wide/16 v6, 0x12c

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 172
    const v0, 0x7f1000d0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    invoke-virtual {v0}, Landroid/widget/TextView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    .line 174
    if-nez v1, :cond_43

    .line 175
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 176
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 177
    invoke-virtual {v2, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 178
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 179
    invoke-virtual {v3, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 180
    const-wide/16 v4, 0x6a4

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 181
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 182
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 183
    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 184
    new-instance v2, Lcom/android/common/ui/br;

    invoke-direct {v2, p0, v0}, Lcom/android/common/ui/br;-><init>(Lcom/android/common/ui/an;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 197
    :cond_43
    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 198
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    invoke-virtual {v1}, Landroid/view/animation/Animation;->start()V

    .line 171
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const v2, 0x7f0a02aa

    const/4 v1, 0x0

    .line 84
    iget-boolean v0, p0, Lcom/android/common/ui/an;->CD:Z

    if-eqz v0, :cond_3f

    .line 85
    iget-object v0, p0, Lcom/android/common/ui/an;->CA:Lcom/android/common/appService/W;

    if-eqz v0, :cond_18

    .line 86
    iget-object v0, p0, Lcom/android/common/ui/an;->CA:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 97
    :cond_18
    iget-object v0, p0, Lcom/android/common/ui/an;->CA:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/common/ui/an;->Gl(Landroid/app/Activity;I)V

    .line 83
    :goto_21
    return-void

    .line 87
    :cond_22
    iget-object v0, p0, Lcom/android/common/ui/an;->CE:Landroid/widget/Toast;

    if-eqz v0, :cond_2d

    .line 88
    iget-object v0, p0, Lcom/android/common/ui/an;->CE:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 89
    iput-object v1, p0, Lcom/android/common/ui/an;->CE:Landroid/widget/Toast;

    .line 91
    :cond_2d
    invoke-virtual {p0}, Lcom/android/common/ui/an;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 93
    const/16 v1, 0x12c

    .line 91
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/an;->CE:Landroid/widget/Toast;

    .line 94
    iget-object v0, p0, Lcom/android/common/ui/an;->CE:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_21

    .line 101
    :cond_3f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/ui/an;->vd:I

    .line 102
    invoke-super {p0, p1}, Lcom/android/common/ui/F;->onClick(Landroid/view/View;)V

    goto :goto_21
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 74
    const/16 v0, 0x8

    if-ne p1, v0, :cond_10

    .line 75
    iget-object v0, p0, Lcom/android/common/ui/an;->CE:Landroid/widget/Toast;

    if-eqz v0, :cond_10

    .line 76
    iget-object v0, p0, Lcom/android/common/ui/an;->CE:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 77
    iput-object v1, p0, Lcom/android/common/ui/an;->CE:Landroid/widget/Toast;

    .line 79
    :cond_10
    invoke-super {p0, p1}, Lcom/android/common/ui/F;->onWindowVisibilityChanged(I)V

    .line 73
    return-void
.end method

.method protected zu()Z
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/android/common/ui/an;->CD:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method
