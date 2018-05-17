.class Lcom/android/common/o/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic acK:Lcom/android/common/o/a;


# direct methods
.method private constructor <init>(Lcom/android/common/o/a;)V
    .registers 2

    .prologue
    .line 1970
    iput-object p1, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/o/a;Lcom/android/common/o/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/o/d;-><init>(Lcom/android/common/o/a;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1974
    iget-object v0, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_31

    .line 1975
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SecondSettingItemClick getUIState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/camerastate/UIState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    return-void

    .line 1978
    :cond_31
    iget-object v0, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajL(Lcom/android/common/o/a;)[Ljava/lang/String;

    move-result-object v0

    .line 1979
    iget-object v1, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    aget-object v2, v0, p3

    invoke-static {v1, v2}, Lcom/android/common/o/a;->ajY(Lcom/android/common/o/a;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 1980
    const-string/jumbo v1, "AbstractFamilyMemberFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SecondSettingItemClickListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "onItemClick: NOT USEFUL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    iget-object v0, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajN(Lcom/android/common/o/a;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_9c

    .line 1982
    iget-object v0, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    iget-object v1, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v1}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    const v3, 0x7f0a04c1

    invoke-virtual {v2, v3}, Lcom/android/common/o/a;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/o/a;->ajU(Lcom/android/common/o/a;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 1983
    iget-object v0, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajN(Lcom/android/common/o/a;)Landroid/widget/Toast;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v1}, Lcom/android/common/o/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v4, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 1985
    :cond_9c
    iget-object v0, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajN(Lcom/android/common/o/a;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1986
    return-void

    .line 1988
    :cond_a6
    iget-object v1, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-static {v1}, Lcom/android/common/o/a;->ajN(Lcom/android/common/o/a;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_b7

    .line 1989
    iget-object v1, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-static {v1}, Lcom/android/common/o/a;->ajN(Lcom/android/common/o/a;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 1991
    :cond_b7
    iget-object v1, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    iget-object v1, v1, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v1

    .line 1992
    aget-object v2, v0, p3

    .line 1991
    invoke-virtual {v1, v2}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    .line 1993
    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vz()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    rem-int/2addr v2, v3

    .line 1994
    invoke-virtual {v1, v2}, Lcom/android/common/setting/ListPreference;->Vt(I)V

    .line 1995
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-static {v2}, Lcom/android/common/o/a;->ajJ(Lcom/android/common/o/a;)Lcom/android/common/o/c;

    move-result-object v2

    if-eqz v2, :cond_e5

    .line 1996
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-static {v2}, Lcom/android/common/o/a;->ajJ(Lcom/android/common/o/a;)Lcom/android/common/o/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/o/c;->notifyDataSetChanged()V

    .line 1998
    :cond_e5
    aget-object v2, v0, p3

    const-string/jumbo v3, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    .line 1999
    aget-object v2, v0, p3

    const-string/jumbo v3, "pref_third_arith_hdr_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1998
    if-eqz v2, :cond_187

    .line 2000
    :cond_fb
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    iget-object v2, v2, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v2, v3, :cond_111

    .line 2001
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    iget-object v2, v2, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->rd()Z

    move-result v2

    if-eqz v2, :cond_147

    .line 2017
    :cond_111
    :goto_111
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->aiH()V

    .line 2018
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "HDR"

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    :cond_126
    :goto_126
    aget-object v0, v0, p3

    const-string/jumbo v1, "pref_camera_recordlocation_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 2055
    iget-object v0, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajW(Lcom/android/common/o/a;)Z

    move-result v0

    if-eqz v0, :cond_2b9

    .line 2059
    :cond_139
    iget-object v0, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    .line 2060
    const/16 v1, 0x3c

    .line 2059
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1973
    :goto_146
    return-void

    .line 2009
    :cond_147
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aed()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 2010
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "pref_live_photo_key"

    const-string/jumbo v4, "off"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2011
    const-string/jumbo v3, "off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    .line 2012
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v2

    const-string/jumbo v3, "pref_live_photo_key"

    invoke-virtual {v2, v3}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 2013
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->mW()V

    goto :goto_111

    .line 2019
    :cond_187
    aget-object v2, v0, p3

    const-string/jumbo v3, "pref_video_sensor_hdr_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_198

    .line 2020
    iget-object v1, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-static {v1}, Lcom/android/common/o/a;->akb(Lcom/android/common/o/a;)V

    goto :goto_126

    .line 2021
    :cond_198
    aget-object v2, v0, p3

    const-string/jumbo v3, "pref_camera_interval_switch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_205

    .line 2022
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    iget-object v2, v2, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/setting/o;->XK()Z

    move-result v2

    if-nez v2, :cond_1df

    .line 2028
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_delay_shoot_key"

    const-string/jumbo v4, "off"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2029
    const-string/jumbo v3, "off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1df

    .line 2030
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    iget-object v2, v2, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v2

    .line 2031
    const-string/jumbo v3, "pref_camera_delay_shoot_key"

    .line 2030
    invoke-virtual {v2, v3}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    .line 2032
    const-string/jumbo v3, "off"

    .line 2030
    invoke-virtual {v2, v3}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 2035
    :cond_1df
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->nt()V

    .line 2036
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->nM()V

    .line 2037
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->nL()V

    .line 2038
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->nN()V

    .line 2039
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "INTERVAL"

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_126

    .line 2040
    :cond_205
    aget-object v2, v0, p3

    const-string/jumbo v3, "pref_capture_focus_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_222

    .line 2041
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "CAPTURE_FOCUS"

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_126

    .line 2042
    :cond_222
    aget-object v2, v0, p3

    const-string/jumbo v3, "pref_camera_grid_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_245

    .line 2043
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/common/o/a;->ajS(Lcom/android/common/o/a;Z)Z

    .line 2044
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "GRID"

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_126

    .line 2045
    :cond_245
    aget-object v2, v0, p3

    const-string/jumbo v3, "pref_camera_facedetection_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_262

    .line 2046
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "FACE"

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_126

    .line 2047
    :cond_262
    aget-object v2, v0, p3

    const-string/jumbo v3, "pref_camera_shutter_sound_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27f

    .line 2048
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "SOUND"

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_126

    .line 2049
    :cond_27f
    aget-object v2, v0, p3

    const-string/jumbo v3, "pref_camera_gradienter_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29c

    .line 2050
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "GRADIENTER"

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_126

    .line 2051
    :cond_29c
    aget-object v2, v0, p3

    const-string/jumbo v3, "pref_camera_picture_ratio_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_126

    .line 2052
    iget-object v2, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "RATIO"

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_126

    .line 2056
    :cond_2b9
    iget-object v0, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/common/setting/RecordLocationPreference;->YO(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 2054
    if-eqz v0, :cond_139

    .line 2057
    iget-object v0, p0, Lcom/android/common/o/d;->acK:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->ajn()V

    goto/16 :goto_146
.end method
