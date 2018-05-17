.class public Lcom/android/common/setting/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Tp:[Lcom/android/common/setting/e;

.field private Tq:Z

.field private Tr:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v3, p0, Lcom/android/common/setting/d;->Tp:[Lcom/android/common/setting/e;

    .line 17
    iput-object v3, p0, Lcom/android/common/setting/d;->Tr:Landroid/content/SharedPreferences;

    .line 18
    iput-boolean v1, p0, Lcom/android/common/setting/d;->Tq:Z

    .line 24
    iput-boolean p2, p0, Lcom/android/common/setting/d;->Tq:Z

    .line 25
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MU()I

    move-result v0

    new-array v0, v0, [Lcom/android/common/setting/e;

    iput-object v0, p0, Lcom/android/common/setting/d;->Tp:[Lcom/android/common/setting/e;

    move v0, v1

    .line 26
    :goto_1a
    iget-object v2, p0, Lcom/android/common/setting/d;->Tp:[Lcom/android/common/setting/e;

    array-length v2, v2

    if-ge v0, v2, :cond_26

    .line 27
    iget-object v2, p0, Lcom/android/common/setting/d;->Tp:[Lcom/android/common/setting/e;

    aput-object v3, v2, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 30
    :cond_26
    if-nez p2, :cond_5f

    .line 31
    if-nez p3, :cond_40

    .line 32
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/d;->Tr:Landroid/content/SharedPreferences;

    .line 44
    :goto_30
    if-eqz p3, :cond_3f

    .line 45
    iget-object v0, p0, Lcom/android/common/setting/d;->Tr:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 23
    :cond_3f
    return-void

    .line 34
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_secure"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/d;->Tr:Landroid/content/SharedPreferences;

    goto :goto_30

    .line 39
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_preferences_third"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/d;->Tr:Landroid/content/SharedPreferences;

    goto :goto_30
.end method

.method private UM(Landroid/content/SharedPreferences;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/android/common/setting/d;->UJ()I

    move-result v0

    .line 116
    if-nez v0, :cond_8

    return-void

    .line 118
    :cond_8
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MU()I

    move-result v1

    .line 119
    if-ltz v0, :cond_14

    if-lt v0, v1, :cond_17

    .line 120
    :cond_14
    invoke-virtual {p0, v2}, Lcom/android/common/setting/d;->UI(I)V

    .line 110
    :cond_17
    return-void
.end method

.method private UO(Landroid/content/SharedPreferences;)V
    .registers 9

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/16 v6, 0x8

    const/4 v0, 0x0

    .line 75
    :try_start_6
    const-string/jumbo v4, "pref_version_key"

    const/4 v5, 0x0

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_55

    move-result v0

    .line 79
    :goto_e
    if-ne v0, v6, :cond_11

    return-void

    .line 81
    :cond_11
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 82
    if-eqz v0, :cond_1a

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1b

    :cond_1a
    move v0, v3

    .line 87
    :cond_1b
    if-ne v0, v3, :cond_24

    .line 88
    const-string/jumbo v0, "pref_camera_recordlocation_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v2

    .line 91
    :cond_24
    if-ne v0, v2, :cond_33

    .line 94
    const-string/jumbo v0, "pref_camera_videoquality_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string/jumbo v0, "pref_camera_video_duration_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 100
    :cond_33
    if-eq v0, v1, :cond_38

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4e

    .line 101
    :cond_38
    :goto_38
    const-string/jumbo v0, "pref_camera_grid_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    const-string/jumbo v0, "pref_camera_facedetection_key"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    :cond_44
    const-string/jumbo v0, "pref_version_key"

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 72
    return-void

    .line 100
    :cond_4e
    const/4 v1, 0x6

    if-eq v0, v1, :cond_38

    const/4 v1, 0x7

    if-ne v0, v1, :cond_44

    goto :goto_38

    .line 76
    :catch_55
    move-exception v4

    goto :goto_e
.end method


# virtual methods
.method public UI(I)V
    .registers 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/common/setting/d;->Tr:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    return-void
.end method

.method public UJ()I
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/common/setting/d;->Tr:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "pref_camera_id_key"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public UK(I)Lcom/android/common/setting/e;
    .registers 3

    .prologue
    .line 50
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 54
    :cond_5
    iget-object v0, p0, Lcom/android/common/setting/d;->Tp:[Lcom/android/common/setting/e;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public UL(Landroid/content/Context;ILcom/android/common/appService/CameraMember;Z)Lcom/android/common/setting/e;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 125
    const/4 v0, -0x1

    if-ne p2, v0, :cond_26

    .line 126
    const-string/jumbo v0, "SharedPreferenceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CameraId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; no preference need to update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-object v3

    .line 129
    :cond_26
    iget-object v0, p0, Lcom/android/common/setting/d;->Tp:[Lcom/android/common/setting/e;

    aget-object v0, v0, p2

    if-nez v0, :cond_37

    .line 130
    iget-object v0, p0, Lcom/android/common/setting/d;->Tp:[Lcom/android/common/setting/e;

    new-instance v1, Lcom/android/common/setting/e;

    iget-object v2, p0, Lcom/android/common/setting/d;->Tr:Landroid/content/SharedPreferences;

    invoke-direct {v1, v2}, Lcom/android/common/setting/e;-><init>(Landroid/content/SharedPreferences;)V

    aput-object v1, v0, p2

    .line 132
    :cond_37
    invoke-virtual {p0, p2}, Lcom/android/common/setting/d;->UK(I)Lcom/android/common/setting/e;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/common/setting/d;->Tq:Z

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/setting/e;->UP(Landroid/content/Context;ILcom/android/common/appService/CameraMember;ZZ)V

    .line 133
    invoke-virtual {p0, p2}, Lcom/android/common/setting/d;->UK(I)Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method public UN()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/common/setting/d;->Tr:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/android/common/setting/d;->UO(Landroid/content/SharedPreferences;)V

    .line 69
    iget-object v0, p0, Lcom/android/common/setting/d;->Tr:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/android/common/setting/d;->UM(Landroid/content/SharedPreferences;)V

    .line 67
    return-void
.end method
