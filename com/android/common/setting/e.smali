.class public Lcom/android/common/setting/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;


# instance fields
.field private Ts:Ljava/lang/String;

.field private Tt:Landroid/content/SharedPreferences;

.field private Tu:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    .line 19
    iput-object v0, p0, Lcom/android/common/setting/e;->Tt:Landroid/content/SharedPreferences;

    .line 20
    iput-object v0, p0, Lcom/android/common/setting/e;->Ts:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/e;->Tt:Landroid/content/SharedPreferences;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    .line 19
    iput-object v0, p0, Lcom/android/common/setting/e;->Tt:Landroid/content/SharedPreferences;

    .line 20
    iput-object v0, p0, Lcom/android/common/setting/e;->Ts:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/android/common/setting/e;->Tt:Landroid/content/SharedPreferences;

    .line 22
    return-void
.end method

.method private UQ(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 314
    const-string/jumbo v0, "pref_camera_id_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_143

    .line 315
    const-string/jumbo v0, "pref_camera_recordlocation_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 316
    const-string/jumbo v0, "pref_camera_stabilization_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 317
    const-string/jumbo v0, "pref_shutter_key_into_camera_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 318
    const-string/jumbo v0, "pref_camera_shutter_sound_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 319
    const-string/jumbo v0, "pref_camera_storage_path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 320
    const-string/jumbo v0, "pref_key_capture_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 321
    const-string/jumbo v0, "pref_camera_member"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 322
    const-string/jumbo v0, "pref_camera_volume_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 324
    const-string/jumbo v0, "is_show_dialog_before_course"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 325
    const-string/jumbo v0, "specification_feng_zhi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 326
    const-string/jumbo v0, "last_system_Language"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 327
    const-string/jumbo v0, "pref_camrea_fingerprint_shutter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 328
    const-string/jumbo v0, "pref_capture_focus_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 329
    const-string/jumbo v0, "pref_snapshot_mirror_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 330
    const-string/jumbo v0, "pref_video_quality_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 331
    const-string/jumbo v0, "pref_front_video_quality_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 332
    const-string/jumbo v0, "scroll_switcher_seleleted_family"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 333
    const-string/jumbo v0, "pref_snapshot_mirror_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 334
    const-string/jumbo v0, "pref_camera_gradienter_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 335
    const-string/jumbo v0, "pref_camera_picture_ratio_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 336
    const-string/jumbo v0, "pref_camera_facedetection_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 337
    const-string/jumbo v0, "pref_camera_front_smile_shoot"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 338
    const-string/jumbo v0, "pref_camera_best_photo_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 339
    const-string/jumbo v0, "pref_camera_grid_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 340
    const-string/jumbo v0, "pref_fengzhi_focus_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 341
    const-string/jumbo v0, "pref_intelligent_noise_reduction_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 342
    const-string/jumbo v0, "pref_fusion_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 343
    const-string/jumbo v0, "pref_thirdparty_vid_pretty_switch_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 344
    const-string/jumbo v0, "pref_water_mark_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 345
    const-string/jumbo v0, "pref_water_mark_time_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 346
    const-string/jumbo v0, "pref_refocus_after_capture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 347
    const-string/jumbo v0, "pref_intelligent_power_saving"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 348
    const-string/jumbo v0, "pref_bokeh_level_adjustable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 349
    const-string/jumbo v0, "pref_picture_artist_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_143

    .line 352
    const-string/jumbo v0, "pref_zoom_function_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 314
    :goto_142
    return v0

    :cond_143
    const/4 v0, 0x1

    goto :goto_142
.end method

.method private UR()V
    .registers 9

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/16 v7, 0x10

    .line 49
    iget-object v4, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    .line 52
    :try_start_8
    const-string/jumbo v5, "pref_local_version_key"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_e5

    move-result v0

    .line 56
    :goto_10
    if-ne v0, v7, :cond_13

    return-void

    .line 58
    :cond_13
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 59
    const/4 v5, 0x1

    if-ne v0, v5, :cond_21

    .line 62
    const-string/jumbo v0, "pref_video_quality_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v3

    .line 65
    :cond_21
    if-ne v0, v3, :cond_30

    .line 66
    const-string/jumbo v0, "pref_video_af_lock_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    const-string/jumbo v0, "pref_video_zoom_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v2

    .line 71
    :cond_30
    if-ne v0, v2, :cond_39

    .line 72
    const-string/jumbo v0, "pref_camera_ztemt_fun_effect"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 76
    :cond_39
    if-ne v0, v1, :cond_3c

    .line 77
    const/4 v0, 0x5

    .line 80
    :cond_3c
    const/4 v1, 0x5

    if-ne v0, v1, :cond_46

    .line 81
    const-string/jumbo v0, "pref_camera_ztemt_fun_effect"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    const/4 v0, 0x6

    .line 85
    :cond_46
    const/4 v1, 0x6

    if-ne v0, v1, :cond_56

    .line 86
    const-string/jumbo v0, "pref_video_quality_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string/jumbo v0, "pref_camera_multishot_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    const/4 v0, 0x7

    .line 91
    :cond_56
    const/4 v1, 0x7

    if-ne v0, v1, :cond_67

    .line 92
    const-string/jumbo v0, "pref_camera_flashmode_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string/jumbo v0, "pref_camera_video_flashmode_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    const/16 v0, 0x8

    .line 96
    :cond_67
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6f

    const/16 v1, 0x9

    if-ne v0, v1, :cond_77

    .line 97
    :cond_6f
    const-string/jumbo v0, "pref_camera_ztemt_fun_effect"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    const/16 v0, 0xa

    .line 100
    :cond_77
    const/16 v1, 0xa

    if-ne v0, v1, :cond_95

    .line 101
    const-string/jumbo v0, "pretty_expandable_item"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    const-string/jumbo v0, "pref_camera_pretty_smooth_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    const-string/jumbo v0, "pref_camera_pretty_slimming_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string/jumbo v0, "pref_camera_pretty_toning_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    const/16 v0, 0xb

    .line 109
    :cond_95
    const/16 v1, 0xb

    if-ne v0, v1, :cond_a1

    .line 110
    const-string/jumbo v0, "pref_camera_picturesize_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    const/16 v0, 0xc

    .line 114
    :cond_a1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_ad

    .line 115
    const-string/jumbo v0, "pref_camera_pretty_effect_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    const/16 v0, 0xd

    .line 118
    :cond_ad
    const/16 v1, 0xd

    if-ne v0, v1, :cond_bf

    .line 119
    const-string/jumbo v0, "pref_third_arith_hdr_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string/jumbo v0, "pref_camera_ae_bracket_hdr_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    const/16 v0, 0xe

    .line 123
    :cond_bf
    const/16 v1, 0xe

    if-ne v0, v1, :cond_d1

    .line 124
    const-string/jumbo v0, "pref_camera_picture_ratio_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string/jumbo v0, "pref_camera_pretty_effect_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    const/16 v0, 0xf

    .line 128
    :cond_d1
    const/16 v1, 0xf

    if-ne v0, v1, :cond_db

    .line 129
    const-string/jumbo v0, "pref_bigaperture_pic_bokeh_level"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    :cond_db
    const-string/jumbo v0, "pref_local_version_key"

    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 48
    return-void

    .line 53
    :catch_e5
    move-exception v5

    goto/16 :goto_10
.end method

.method static synthetic US(Lcom/android/common/setting/e;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/android/common/setting/e;->Tt:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic UT(Lcom/android/common/setting/e;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic UU(Lcom/android/common/setting/e;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/setting/e;->UQ(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method UP(Landroid/content/Context;ILcom/android/common/appService/CameraMember;ZZ)V
    .registers 8

    .prologue
    .line 32
    if-eqz p4, :cond_44

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_preferences_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/common/appService/CameraMember;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "third"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_3b
    iget-object v1, p0, Lcom/android/common/setting/e;->Ts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 40
    return-void

    .line 34
    :cond_44
    if-eqz p5, :cond_80

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_preferences_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/common/appService/CameraMember;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 37
    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_preferences_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/common/appService/CameraMember;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 42
    :cond_ac
    iput-object v0, p0, Lcom/android/common/setting/e;->Ts:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/android/common/setting/e;->Ts:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    .line 45
    invoke-direct {p0}, Lcom/android/common/setting/e;->UR()V

    .line 30
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 195
    iget-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    .line 196
    :cond_a
    iget-object v0, p0, Lcom/android/common/setting/e;->Tt:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 197
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 298
    new-instance v0, Lcom/android/common/setting/f;

    invoke-direct {v0, p0}, Lcom/android/common/setting/f;-><init>(Lcom/android/common/setting/e;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/android/common/setting/e;->UQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 183
    iget-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 181
    :cond_15
    iget-object v0, p0, Lcom/android/common/setting/e;->Tt:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/common/setting/e;->UQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 174
    iget-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0

    .line 172
    :cond_15
    iget-object v0, p0, Lcom/android/common/setting/e;->Tt:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/common/setting/e;->UQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 156
    iget-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 154
    :cond_15
    iget-object v0, p0, Lcom/android/common/setting/e;->Tt:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/android/common/setting/e;->UQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 165
    iget-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 163
    :cond_15
    iget-object v0, p0, Lcom/android/common/setting/e;->Tt:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/common/setting/e;->UQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 147
    iget-object v0, p0, Lcom/android/common/setting/e;->Tu:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 145
    :cond_15
    iget-object v0, p0, Lcom/android/common/setting/e;->Tt:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 4

    .prologue
    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/common/setting/e;->Tt:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 303
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/common/setting/e;->Tt:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 309
    return-void
.end method
