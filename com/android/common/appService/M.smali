.class public Lcom/android/common/appService/M;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/m;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private kA:Lcom/android/common/o/p;

.field private kB:[Ljava/lang/String;

.field private ky:Lcom/android/common/appService/W;

.field private kz:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string/jumbo v0, "MoreSettingsAdapter"

    sput-object v0, Lcom/android/common/appService/M;->TAG:Ljava/lang/String;

    .line 30
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/common/appService/W;[Ljava/lang/String;Lcom/android/common/o/p;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/common/appService/M;->kz:Landroid/view/LayoutInflater;

    .line 33
    iput-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    .line 35
    iput-object v0, p0, Lcom/android/common/appService/M;->kA:Lcom/android/common/o/p;

    .line 38
    iput-object p3, p0, Lcom/android/common/appService/M;->kB:[Ljava/lang/String;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/M;->kz:Landroid/view/LayoutInflater;

    .line 40
    iput-object p2, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    .line 41
    iput-object p4, p0, Lcom/android/common/appService/M;->kA:Lcom/android/common/o/p;

    .line 37
    return-void
.end method

.method private nW(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_a

    .line 167
    return-object v1

    .line 169
    :cond_a
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method private nX()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method private nY(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 99
    invoke-static {p1}, Lcom/android/common/appService/M;->nZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 100
    const v0, 0x7f040061

    return v0

    .line 101
    :cond_a
    invoke-static {p1}, Lcom/android/common/appService/M;->oc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 102
    const v0, 0x7f040094

    return v0

    .line 104
    :cond_14
    const v0, 0x7f040066

    return v0
.end method

.method public static nZ(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 87
    const-string/jumbo v0, "pref_video_quality_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 88
    const-string/jumbo v0, "pref_front_video_quality_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 87
    if-nez v0, :cond_23

    .line 89
    const-string/jumbo v0, "pref_camera_storage_path"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 87
    if-nez v0, :cond_23

    .line 90
    const-string/jumbo v0, "pref_picture_artist_info"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 87
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x1

    goto :goto_22
.end method

.method private oa()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 245
    iget-object v1, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public static ob(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 94
    const-string/jumbo v0, "more_setting_basic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 95
    const-string/jumbo v0, "more_setting_high"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 94
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public static oc(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 60
    const-string/jumbo v0, "pref_camera_recordlocation_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d7

    .line 61
    const-string/jumbo v0, "pref_shutter_key_into_camera_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 62
    const-string/jumbo v0, "pref_key_capture_camera"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 63
    const-string/jumbo v0, "pref_camera_interval_switch"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 64
    const-string/jumbo v0, "pref_snapshot_mirror_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 65
    const-string/jumbo v0, "pref_water_mark_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 66
    const-string/jumbo v0, "pref_water_mark_time_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 67
    const-string/jumbo v0, "pref_capture_focus_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 68
    const-string/jumbo v0, "pref_fengzhi_focus_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 69
    const-string/jumbo v0, "pref_camrea_fingerprint_shutter_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 70
    const-string/jumbo v0, "pref_camera_front_smile_shoot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 71
    const-string/jumbo v0, "pref_camera_facedetection_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 72
    const-string/jumbo v0, "pref_live_photo_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 73
    const-string/jumbo v0, "pref_camera_best_photo_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 74
    const-string/jumbo v0, "pref_camera_shutter_sound_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 75
    const-string/jumbo v0, "pref_camera_gradienter_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 76
    const-string/jumbo v0, "pref_intelligent_noise_reduction_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 77
    const-string/jumbo v0, "pref_zoom_function_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 78
    const-string/jumbo v0, "pref_fusion_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 79
    const-string/jumbo v0, "pref_thirdparty_vid_pretty_switch_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 80
    const-string/jumbo v0, "pref_eis_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 81
    const-string/jumbo v0, "pref_bokeh_level_adjustable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 82
    const-string/jumbo v0, "pref_refocus_after_capture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_d7

    .line 83
    const-string/jumbo v0, "pref_intelligent_power_saving"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    :goto_d6
    return v0

    :cond_d7
    const/4 v0, 0x1

    goto :goto_d6
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/common/appService/M;->kB:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 56
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 110
    iget-object v1, p0, Lcom/android/common/appService/M;->kB:[Ljava/lang/String;

    aget-object v2, v1, p1

    .line 111
    sget-object v1, Lcom/android/common/appService/M;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, v2}, Lcom/android/common/appService/M;->nW(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v3

    .line 113
    if-nez v3, :cond_25

    .line 114
    return-object v0

    .line 117
    :cond_25
    if-eqz p2, :cond_bb

    .line 118
    invoke-static {v2}, Lcom/android/common/appService/M;->ob(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 119
    instance-of v1, p2, Lcom/android/common/ui/SettingsHeader;

    if-nez v1, :cond_bb

    move-object v1, v0

    .line 133
    :goto_32
    if-nez v1, :cond_3e

    .line 134
    invoke-direct {p0, v2}, Lcom/android/common/appService/M;->nY(Ljava/lang/String;)I

    move-result v1

    .line 135
    iget-object v4, p0, Lcom/android/common/appService/M;->kz:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 138
    :cond_3e
    invoke-static {v2}, Lcom/android/common/appService/M;->ob(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    move-object v0, v1

    .line 139
    check-cast v0, Lcom/android/common/ui/SettingsHeader;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/SettingsHeader;->yz(Lcom/android/common/setting/ListPreference;)V

    .line 140
    const-string/jumbo v0, "more_setting_high"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    move-object v0, v1

    .line 141
    check-cast v0, Lcom/android/common/ui/SettingsHeader;

    invoke-virtual {v0}, Lcom/android/common/ui/SettingsHeader;->yA()V

    .line 143
    :cond_59
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 144
    new-instance v0, Lcom/android/common/appService/at;

    invoke-direct {v0, p0}, Lcom/android/common/appService/at;-><init>(Lcom/android/common/appService/M;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 162
    :goto_65
    return-object v1

    .line 122
    :cond_66
    invoke-static {v2}, Lcom/android/common/appService/M;->nZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 123
    instance-of v1, p2, Lcom/android/common/ui/SettingsExpandHeader;

    if-nez v1, :cond_bb

    move-object v1, v0

    .line 124
    goto :goto_32

    .line 126
    :cond_72
    invoke-static {v2}, Lcom/android/common/appService/M;->oc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 127
    instance-of v1, p2, Lcom/android/common/ui/ZtemtInlineSettingSwitch;

    if-nez v1, :cond_bb

    move-object v1, v0

    .line 128
    goto :goto_32

    .line 151
    :cond_7e
    invoke-static {v2}, Lcom/android/common/appService/M;->nZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8b

    move-object v0, v1

    .line 152
    check-cast v0, Lcom/android/common/ui/SettingsExpandHeader;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/SettingsExpandHeader;->GI(Lcom/android/common/setting/ListPreference;)V

    goto :goto_65

    .line 153
    :cond_8b
    invoke-static {v2}, Lcom/android/common/appService/M;->oc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 154
    const-string/jumbo v0, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-direct {p0}, Lcom/android/common/appService/M;->oa()Z

    move-result v0

    if-eqz v0, :cond_ad

    :cond_a0
    :goto_a0
    move-object v0, v1

    .line 157
    check-cast v0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->vW(Lcom/android/common/setting/ListPreference;)V

    move-object v0, v1

    .line 158
    check-cast v0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->vX(Lcom/android/common/ui/m;)V

    goto :goto_65

    .line 155
    :cond_ad
    const-string/jumbo v0, "off"

    invoke-virtual {v3, v0}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    goto :goto_a0

    :cond_b4
    move-object v0, v1

    .line 160
    check-cast v0, Lcom/android/common/ui/SettingsHeader;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/SettingsHeader;->yz(Lcom/android/common/setting/ListPreference;)V

    goto :goto_65

    :cond_bb
    move-object v1, p2

    goto/16 :goto_32
.end method

.method public notifyDataSetChanged()V
    .registers 3

    .prologue
    .line 239
    sget-object v0, Lcom/android/common/appService/M;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/h;->apz(Lcom/android/common/setting/PreferenceGroup;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/M;->kB:[Ljava/lang/String;

    .line 241
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 238
    return-void
.end method

.method public od(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/16 v3, 0x3c

    .line 174
    const-string/jumbo v0, "pref_snapshot_mirror_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 175
    const-string/jumbo v0, "pref_camera_best_photo_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    if-nez v0, :cond_26

    .line 176
    const-string/jumbo v0, "pref_camera_facedetection_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    if-nez v0, :cond_26

    .line 177
    const-string/jumbo v0, "pref_camera_front_smile_shoot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 174
    if-eqz v0, :cond_30

    .line 178
    :cond_26
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    :cond_2f
    :goto_2f
    return-void

    .line 179
    :cond_30
    const-string/jumbo v0, "pref_thirdparty_vid_pretty_switch_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 180
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sg()V

    .line 181
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    goto :goto_2f

    .line 183
    :cond_4e
    const-string/jumbo v0, "pref_camera_interval_switch"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 184
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XK()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 186
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rd()Z

    move-result v0

    if-nez v0, :cond_74

    .line 187
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nf()V

    .line 200
    :cond_74
    invoke-direct {p0}, Lcom/android/common/appService/M;->nX()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_delay_shoot_key"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 202
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 203
    const-string/jumbo v1, "pref_camera_delay_shoot_key"

    .line 202
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 204
    const-string/jumbo v1, "off"

    .line 202
    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 207
    :cond_9e
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nt()V

    .line 208
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mV()V

    .line 209
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nL()V

    .line 210
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nN()V

    .line 211
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2f

    .line 212
    :cond_cd
    const-string/jumbo v0, "pref_camrea_fingerprint_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 213
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adF()Z

    move-result v0

    .line 212
    if-nez v0, :cond_2f

    .line 214
    :cond_e4
    const-string/jumbo v0, "pref_key_capture_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 215
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qL()V

    goto/16 :goto_2f

    .line 217
    :cond_f4
    const-string/jumbo v0, "pref_camera_recordlocation_key"

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 218
    invoke-direct {p0}, Lcom/android/common/appService/M;->nX()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/setting/RecordLocationPreference;->YO(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 219
    if-eqz v0, :cond_10e

    invoke-direct {p0}, Lcom/android/common/appService/M;->oa()Z

    move-result v1

    if-eqz v1, :cond_119

    .line 222
    :cond_10e
    iget-object v1, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/r/a;->anf(Z)V

    goto/16 :goto_2f

    .line 220
    :cond_119
    iget-object v0, p0, Lcom/android/common/appService/M;->kA:Lcom/android/common/o/p;

    invoke-virtual {v0}, Lcom/android/common/o/p;->amb()V

    goto/16 :goto_2f

    .line 224
    :cond_120
    const-string/jumbo v0, "pref_live_photo_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_134

    .line 225
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nC()V

    goto/16 :goto_2f

    .line 226
    :cond_134
    const-string/jumbo v0, "pref_intelligent_power_saving"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 227
    sget-object v0, Lcom/android/common/appService/M;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Power saving change:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/common/appService/M;->nX()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "pref_intelligent_power_saving"

    .line 228
    iget-object v4, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    const v5, 0x7f0a04f4

    invoke-virtual {v4, v5}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/common/appService/M;->ky:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->onUserInteraction()V

    goto/16 :goto_2f
.end method
