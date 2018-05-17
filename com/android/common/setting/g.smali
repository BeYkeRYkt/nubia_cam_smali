.class public Lcom/android/common/setting/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private TA:Ljava/util/HashMap;

.field private TB:Lcom/android/common/setting/i;

.field private TC:Lcom/android/common/setting/d;

.field private Ty:Z

.field private Tz:Lcom/android/common/setting/k;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/common/appService/y;Lcom/android/common/setting/t;Ljava/util/ArrayList;)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/common/setting/g;->TB:Lcom/android/common/setting/i;

    .line 20
    iput-object v0, p0, Lcom/android/common/setting/g;->TC:Lcom/android/common/setting/d;

    .line 21
    iput-object v0, p0, Lcom/android/common/setting/g;->Tz:Lcom/android/common/setting/k;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/setting/g;->TA:Ljava/util/HashMap;

    .line 23
    iput-boolean v2, p0, Lcom/android/common/setting/g;->Ty:Z

    .line 25
    new-instance v0, Lcom/android/common/setting/i;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/common/setting/i;-><init>(Lcom/android/common/appService/W;Lcom/android/common/appService/y;Lcom/android/common/setting/t;)V

    iput-object v0, p0, Lcom/android/common/setting/g;->TB:Lcom/android/common/setting/i;

    .line 27
    new-instance v3, Lcom/android/common/setting/d;

    .line 28
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-nez v0, :cond_5e

    invoke-virtual {p1}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    .line 29
    :goto_2b
    invoke-virtual {p1}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    if-eqz v1, :cond_60

    invoke-virtual {p1}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v1

    .line 27
    :goto_39
    invoke-direct {v3, v4, v0, v1}, Lcom/android/common/setting/d;-><init>(Landroid/content/Context;ZZ)V

    iput-object v3, p0, Lcom/android/common/setting/g;->TC:Lcom/android/common/setting/d;

    .line 30
    new-instance v0, Lcom/android/common/setting/k;

    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Lcom/android/common/setting/k;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/common/setting/g;->Tz:Lcom/android/common/setting/k;

    .line 31
    invoke-virtual {p1}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "dualcalibrationautotest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/setting/g;->Ty:Z

    .line 32
    invoke-virtual {p0}, Lcom/android/common/setting/g;->UV()V

    .line 24
    return-void

    .line 28
    :cond_5e
    const/4 v0, 0x1

    goto :goto_2b

    :cond_60
    move v1, v2

    .line 29
    goto :goto_39
.end method

.method private Vf(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Lcom/android/common/appService/CameraMember;I)Z
    .registers 13

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 89
    const/4 v0, 0x0

    .line 91
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aeC()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 92
    const-string/jumbo v2, "pref_camera_exposure_disable_key"

    const-string/jumbo v3, "off"

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    const-string/jumbo v3, "off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 94
    const-string/jumbo v0, "pref_camera_exposure_disable_key"

    const-string/jumbo v2, "off"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 99
    :cond_31
    const-string/jumbo v2, "pref_camera_iso_key"

    const-string/jumbo v3, "auto"

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string/jumbo v3, "auto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 101
    const-string/jumbo v0, "pref_camera_iso_key"

    const-string/jumbo v2, "auto"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 105
    :cond_4e
    const-string/jumbo v2, "pref_camera_anti_shake"

    const-string/jumbo v3, "on"

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    const-string/jumbo v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 107
    const-string/jumbo v0, "pref_camera_anti_shake"

    const-string/jumbo v2, "on"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 111
    :cond_6b
    const-string/jumbo v2, "pref_camera_exposure_key"

    const-string/jumbo v3, "0"

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    const-string/jumbo v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    .line 113
    const-string/jumbo v0, "pref_camera_exposure_key"

    const-string/jumbo v2, "0"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 116
    :cond_88
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aed()Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 117
    const-string/jumbo v2, "pref_live_photo_key"

    const-string/jumbo v3, "off"

    invoke-interface {p3, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    const-string/jumbo v3, "off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    .line 119
    const-string/jumbo v0, "pref_live_photo_key"

    const-string/jumbo v2, "off"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 124
    :cond_b3
    const-string/jumbo v2, "maf_key"

    invoke-interface {p3, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 125
    if-eq v2, v4, :cond_c3

    .line 126
    const-string/jumbo v0, "maf_key"

    invoke-interface {p2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 130
    :cond_c3
    const v2, 0x7f0a0174

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string/jumbo v3, "pref_camera_pictureformat_key"

    .line 131
    invoke-interface {p3, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_191

    .line 135
    const-string/jumbo v0, "pref_camera_pictureformat_key"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v2, v1

    .line 139
    :goto_de
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    iget-object v0, p0, Lcom/android/common/setting/g;->TA:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_159

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 173
    :cond_106
    :goto_106
    const-string/jumbo v0, "pref_big_aperature_key"

    const-string/jumbo v3, "off"

    invoke-interface {p3, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string/jumbo v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_123

    .line 175
    const-string/jumbo v0, "pref_big_aperature_key"

    const-string/jumbo v2, "off"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v2, v1

    .line 179
    :cond_123
    const-string/jumbo v0, "pref_bigaperture_focus_length"

    invoke-interface {p3, v0, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 180
    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_149

    .line 181
    const-string/jumbo v0, "pref_bigaperture_pic_bokeh_level"

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    const-string/jumbo v0, "pref_bigaperture_focus_length"

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    const-string/jumbo v0, "pref_bigaperture_pre_bokeh_level"

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v2, v1

    .line 188
    :cond_149
    const-string/jumbo v0, "pref_dng_camera_type"

    invoke-interface {p3, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_18f

    .line 190
    const-string/jumbo v0, "pref_dng_camera_type"

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    :goto_158
    return v1

    .line 142
    :cond_159
    iget-object v0, p0, Lcom/android/common/setting/g;->TA:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v0, "none"

    .line 144
    const-string/jumbo v3, "pref_camera_pretty_effect_key"

    invoke-interface {p3, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_179

    .line 145
    const-string/jumbo v2, "pref_camera_pretty_effect_key"

    invoke-interface {p2, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v2, v1

    .line 149
    :cond_179
    const-string/jumbo v3, "pref_camera_ztemt_fun_effect"

    invoke-interface {p3, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_106

    .line 150
    const-string/jumbo v0, "pref_camera_ztemt_fun_effect"

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v2, v1

    .line 151
    goto/16 :goto_106

    :cond_18f
    move v1, v2

    goto :goto_158

    :cond_191
    move v2, v0

    goto/16 :goto_de
.end method


# virtual methods
.method public UV()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/common/setting/g;->TC:Lcom/android/common/setting/d;

    if-eqz v0, :cond_9

    .line 37
    iget-object v0, p0, Lcom/android/common/setting/g;->TC:Lcom/android/common/setting/d;

    invoke-virtual {v0}, Lcom/android/common/setting/d;->UN()V

    .line 35
    :cond_9
    return-void
.end method

.method public UW(Landroid/content/Context;ILcom/android/common/appService/CameraMember;Z)V
    .registers 8

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/common/setting/g;->TC:Lcom/android/common/setting/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/common/setting/d;->UL(Landroid/content/Context;ILcom/android/common/appService/CameraMember;Z)Lcom/android/common/setting/e;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_15

    .line 48
    iget-object v1, p0, Lcom/android/common/setting/g;->Tz:Lcom/android/common/setting/k;

    invoke-virtual {v1, p2, p3, v0}, Lcom/android/common/setting/k;->VL(ILcom/android/common/appService/CameraMember;Lcom/android/common/setting/e;)V

    .line 52
    :goto_d
    invoke-virtual {p0, p2}, Lcom/android/common/setting/g;->Va(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Yo()V

    .line 45
    return-void

    .line 50
    :cond_15
    const-string/jumbo v0, "SettingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocalPreference failed, cameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; member:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public UX(Landroid/content/Context;ILcom/android/common/appService/CameraMember;Z)V
    .registers 6

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/common/setting/g;->TC:Lcom/android/common/setting/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/common/setting/d;->UL(Landroid/content/Context;ILcom/android/common/appService/CameraMember;Z)Lcom/android/common/setting/e;

    .line 41
    return-void
.end method

.method public UY(Landroid/content/Context;ILcom/android/common/appService/CameraMember;)V
    .registers 10

    .prologue
    .line 80
    invoke-virtual {p0, p2}, Lcom/android/common/setting/g;->Vc(I)Lcom/android/common/setting/e;

    move-result-object v3

    .line 81
    invoke-virtual {v3}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p2

    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/android/common/setting/g;->Vf(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Lcom/android/common/appService/CameraMember;I)Z

    move-result v0

    .line 84
    if-eqz v0, :cond_15

    .line 85
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    :cond_15
    return-void
.end method

.method public UZ()Lcom/android/common/setting/k;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/common/setting/g;->Tz:Lcom/android/common/setting/k;

    return-object v0
.end method

.method public Va(I)Lcom/android/common/setting/o;
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/common/setting/g;->TB:Lcom/android/common/setting/i;

    invoke-virtual {v0, p1}, Lcom/android/common/setting/i;->Vo(I)Lcom/android/common/setting/o;

    move-result-object v0

    return-object v0
.end method

.method public Vb(I)Lcom/android/common/setting/PreferenceGroup;
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/common/setting/g;->Tz:Lcom/android/common/setting/k;

    invoke-virtual {v0, p1}, Lcom/android/common/setting/k;->VM(I)Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method public Vc(I)Lcom/android/common/setting/e;
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/common/setting/g;->TC:Lcom/android/common/setting/d;

    invoke-virtual {v0, p1}, Lcom/android/common/setting/d;->UK(I)Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method public Vd()Lcom/android/common/setting/d;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/common/setting/g;->TC:Lcom/android/common/setting/d;

    return-object v0
.end method

.method public Ve(I)V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/common/setting/g;->TB:Lcom/android/common/setting/i;

    invoke-virtual {v0, p1}, Lcom/android/common/setting/i;->Vp(I)V

    .line 59
    return-void
.end method

.method public Vg(Landroid/content/Context;ILcom/android/common/appService/CameraMember;ZZ)V
    .registers 13

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 201
    iget-object v0, p0, Lcom/android/common/setting/g;->TC:Lcom/android/common/setting/d;

    invoke-virtual {v0, p2}, Lcom/android/common/setting/d;->UK(I)Lcom/android/common/setting/e;

    move-result-object v3

    .line 202
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 206
    if-nez p4, :cond_11

    if-eqz p5, :cond_18

    .line 207
    :cond_11
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    return-void

    .line 213
    :cond_18
    const-string/jumbo v0, "pref_camera_member"

    invoke-virtual {p3}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 216
    const-string/jumbo v0, "pref_key_manual_focus"

    const-string/jumbo v1, "off"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    const-string/jumbo v0, "off"

    const-string/jumbo v1, "pref_key_manual_focus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 218
    const-string/jumbo v0, "pref_key_manual_focus"

    const-string/jumbo v1, "off"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    :cond_40
    const-string/jumbo v0, "steps_key"

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 223
    iget-boolean v1, p0, Lcom/android/common/setting/g;->Ty:Z

    if-eqz v1, :cond_71

    .line 224
    if-eq v6, v0, :cond_53

    .line 225
    const-string/jumbo v0, "steps_key"

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 235
    :cond_53
    :goto_53
    const-string/jumbo v0, "auto_steps"

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_62

    .line 236
    const-string/jumbo v0, "auto_steps"

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_62
    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move v5, p2

    .line 242
    invoke-direct/range {v0 .. v5}, Lcom/android/common/setting/g;->Vf(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Lcom/android/common/appService/CameraMember;I)Z

    move-result v0

    or-int/2addr v0, v6

    .line 244
    if-eqz v0, :cond_70

    .line 245
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    :cond_70
    return-void

    .line 229
    :cond_71
    if-eqz v0, :cond_53

    .line 230
    const-string/jumbo v0, "steps_key"

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_53
.end method
