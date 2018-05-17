.class public Lcom/android/common/setting/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/setting/o;


# static fields
.field private static Ui:Ljava/lang/String;


# instance fields
.field protected Ud:I

.field protected Ue:Lcom/android/common/appService/y;

.field protected Uf:Lcom/android/common/setting/s;

.field protected Ug:Z

.field protected Uh:Ljava/lang/String;

.field private Uj:Lcom/android/common/appService/W;

.field private final Uk:Lcom/android/common/setting/m;

.field private Ul:Lcom/android/common/setting/c;

.field private Um:Lcom/android/common/appService/CameraMember;

.field private Un:Ljava/lang/String;

.field protected Uo:Ljava/util/ArrayList;

.field private Up:Ljava/lang/String;

.field private Uq:Lcom/android/common/setting/n;

.field Ur:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const-string/jumbo v0, "video-exposure-to-1080p"

    sput-object v0, Lcom/android/common/setting/l;->Ui:Ljava/lang/String;

    .line 51
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(ILcom/android/common/appService/W;Lcom/android/common/appService/y;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/common/setting/m;

    invoke-direct {v0, p0, v1}, Lcom/android/common/setting/m;-><init>(Lcom/android/common/setting/l;Lcom/android/common/setting/m;)V

    iput-object v0, p0, Lcom/android/common/setting/l;->Uk:Lcom/android/common/setting/m;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/setting/l;->Ug:Z

    .line 58
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    .line 60
    iput-object v1, p0, Lcom/android/common/setting/l;->Um:Lcom/android/common/appService/CameraMember;

    .line 61
    iput-object v1, p0, Lcom/android/common/setting/l;->Un:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    .line 65
    iput-object v1, p0, Lcom/android/common/setting/l;->Ue:Lcom/android/common/appService/y;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/setting/l;->Ud:I

    .line 69
    iput-object v1, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    .line 1107
    new-instance v0, Lcom/android/common/setting/n;

    invoke-direct {v0, p0}, Lcom/android/common/setting/n;-><init>(Lcom/android/common/setting/l;)V

    iput-object v0, p0, Lcom/android/common/setting/l;->Uq:Lcom/android/common/setting/n;

    .line 72
    iput-object p2, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    .line 73
    iput-object p3, p0, Lcom/android/common/setting/l;->Ue:Lcom/android/common/appService/y;

    .line 74
    iput p1, p0, Lcom/android/common/setting/l;->Ud:I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/setting/l;->Uo:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/setting/l;->Ur:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method private XE(Landroid/content/SharedPreferences;Landroid/content/Context;Lcom/android/common/cameradevice/p;Z)V
    .registers 15

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 1273
    invoke-interface {p3}, Lcom/android/common/cameradevice/p;->LQ()Ljava/util/List;

    move-result-object v2

    .line 1274
    if-nez v2, :cond_9

    return-void

    .line 1275
    :cond_9
    const-wide/16 v4, 0x0

    .line 1276
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    .line 1277
    invoke-interface {v0}, Lcom/android/common/custom/x;->acB()Z

    move-result v1

    if-nez v1, :cond_21

    .line 1278
    if-eqz p4, :cond_46

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeL()Z

    move-result v0

    .line 1277
    if-eqz v0, :cond_46

    .line 1279
    :cond_21
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1280
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1281
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1282
    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v4, v0

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v4, v0

    .line 1284
    :cond_46
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    aput-object v7, v6, v9

    .line 1285
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1287
    const-string/jumbo v0, "BaseParametersSetter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "initialCameraPictureSize candidate ="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p3

    .line 1288
    invoke-direct/range {v0 .. v6}, Lcom/android/common/setting/l;->XV(Ljava/lang/String;Ljava/util/List;Lcom/android/common/cameradevice/p;D[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1289
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1290
    const-string/jumbo v2, "pref_camera_picturesize_key"

    .line 1291
    aget-object v3, v6, v9

    if-nez v3, :cond_ab

    .line 1290
    :goto_a4
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1292
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1293
    return-void

    .line 1291
    :cond_ab
    aget-object v1, v6, v9

    goto :goto_a4

    .line 1296
    :cond_ae
    const-string/jumbo v0, "BaseParametersSetter"

    const-string/jumbo v1, "No supported picture size found"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    return-void
.end method

.method private XF()Z
    .registers 2

    .prologue
    .line 1028
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->ade()Z

    move-result v0

    return v0
.end method

.method private XG()Z
    .registers 5

    .prologue
    .line 787
    const v0, 0x7f0a0476

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->XA(I)Ljava/lang/String;

    move-result-object v0

    .line 788
    invoke-direct {p0}, Lcom/android/common/setting/l;->Xw()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "pref_bokeh_level_adjustable"

    const v3, 0x7f0a0477

    invoke-virtual {p0, v3}, Lcom/android/common/setting/l;->XA(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private XL()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 550
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LJ()I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private XO(Lcom/android/common/cameradevice/j;)V
    .registers 3

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lcom/android/common/setting/l;->Wr(Lcom/android/common/cameradevice/j;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 238
    :cond_7
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Yl()V

    .line 239
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WT()V

    .line 240
    invoke-direct {p0}, Lcom/android/common/setting/l;->XZ()V

    .line 241
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WV()V

    .line 242
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WU()V

    .line 243
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WW()V

    .line 244
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WX()V

    .line 245
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WY()V

    .line 246
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WZ()V

    .line 247
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xa()V

    .line 248
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xb()V

    .line 249
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xc()V

    .line 250
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Yj()V

    .line 251
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wn()V

    .line 252
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xd()V

    .line 254
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Vk()V

    .line 255
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xe()V

    .line 235
    return-void
.end method

.method private XQ()V
    .registers 3

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->MA(I)V

    .line 981
    return-void
.end method

.method private XR()V
    .registers 5

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/android/common/setting/l;->Xp()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v1, :cond_43

    .line 793
    invoke-direct {p0}, Lcom/android/common/setting/l;->XG()Z

    move-result v0

    .line 792
    if-eqz v0, :cond_43

    .line 794
    invoke-direct {p0}, Lcom/android/common/setting/l;->Xw()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_bigaperture_pre_bokeh_level"

    invoke-static {}, Lcom/android/common/setting/j;->VJ()F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 795
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "bokeh-level"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/common/cameradevice/p;->Mb(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AperLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 791
    :goto_42
    return-void

    .line 798
    :cond_43
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "bokeh-level"

    invoke-static {}, Lcom/android/common/setting/j;->VJ()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mb(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method private XT(IZ)V
    .registers 6

    .prologue
    .line 917
    const-string/jumbo v1, "BaseParametersSetter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCameraParameters "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/common/setting/l;->Ud:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_41

    const-string/jumbo v0, " sync"

    :goto_25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    iget v1, p0, Lcom/android/common/setting/l;->Ud:I

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v1

    .line 919
    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Wr(Lcom/android/common/cameradevice/j;)Z

    move-result v0

    if-nez v0, :cond_45

    return-void

    .line 917
    :cond_41
    const-string/jumbo v0, " async"

    goto :goto_25

    .line 921
    :cond_45
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Yo()V

    .line 923
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-nez v0, :cond_4d

    .line 924
    return-void

    .line 927
    :cond_4d
    monitor-enter v1

    .line 928
    :try_start_4e
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/common/setting/l;->Up:Ljava/lang/String;

    .line 929
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_73

    .line 930
    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Vm(Lcom/android/common/cameradevice/j;)V

    .line 941
    :cond_5a
    :goto_5a
    if-eqz p2, :cond_96

    .line 942
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 947
    :goto_63
    const-string/jumbo v0, "BaseParametersSetter"

    iget-object v2, p0, Lcom/android/common/setting/l;->Up:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/setting/l;->Up:Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_4e .. :try_end_6e} :catchall_7b

    monitor-exit v1

    .line 951
    invoke-virtual {p0}, Lcom/android/common/setting/l;->XN()V

    .line 916
    return-void

    .line 931
    :cond_73
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_7e

    .line 932
    :try_start_77
    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Vn(Lcom/android/common/cameradevice/j;)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b

    goto :goto_5a

    .line 927
    :catchall_7b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 933
    :cond_7e
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_86

    .line 934
    :try_start_82
    invoke-direct {p0}, Lcom/android/common/setting/l;->Yq()V

    goto :goto_5a

    .line 935
    :cond_86
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_8e

    .line 936
    invoke-direct {p0}, Lcom/android/common/setting/l;->Yn()V

    goto :goto_5a

    .line 937
    :cond_8e
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_5a

    .line 938
    invoke-direct {p0}, Lcom/android/common/setting/l;->Yp()V

    goto :goto_5a

    .line 944
    :cond_96
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/cameradevice/j;->Le(Lcom/android/common/cameradevice/p;)V
    :try_end_9d
    .catchall {:try_start_82 .. :try_end_9d} :catchall_7b

    goto :goto_63
.end method

.method private XV(Ljava/lang/String;Ljava/util/List;Lcom/android/common/cameradevice/p;D[Ljava/lang/String;)Z
    .registers 15

    .prologue
    .line 1302
    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1303
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    return v0

    .line 1304
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1305
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1306
    const-wide/16 v4, 0x0

    cmpl-double v0, p4, v4

    if-eqz v0, :cond_37

    .line 1307
    int-to-double v4, v1

    int-to-double v6, v2

    div-double/2addr v4, v6

    .line 1308
    sub-double/2addr v4, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v0, v4, v6

    if-lez v0, :cond_37

    const/4 v0, 0x0

    return v0

    .line 1310
    :cond_37
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 1313
    invoke-static {v0, v1, v2}, Lcom/android/common/h;->apc(Landroid/hardware/Camera$Size;II)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1314
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-interface {p3, v1, v2}, Lcom/android/common/cameradevice/p;->MD(II)V

    .line 1315
    if-eqz p6, :cond_79

    .line 1316
    array-length v1, p6

    const/4 v2, 0x1

    if-lt v1, v2, :cond_79

    .line 1317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p6, v1

    .line 1319
    :cond_79
    const/4 v0, 0x1

    return v0

    .line 1322
    :cond_7b
    const/4 v0, 0x0

    return v0
.end method

.method private XW()V
    .registers 4

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TC()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->NK(Ljava/lang/String;)V

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CaptureMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method private XX()V
    .registers 8

    .prologue
    .line 1215
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    .line 1216
    invoke-interface {v0}, Lcom/android/common/custom/x;->adS()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1217
    invoke-interface {v0}, Lcom/android/common/custom/x;->adQ()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 1222
    :cond_14
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TM()I

    move-result v0

    .line 1223
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->Uh()I

    move-result v1

    .line 1224
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/setting/c;->TA()Ljava/lang/String;

    move-result-object v2

    .line 1225
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/setting/c;->Tw()Ljava/lang/String;

    move-result-object v3

    .line 1227
    const-string/jumbo v4, "MonoCameraConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cameraId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/common/setting/l;->Ud:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1228
    const-string/jumbo v6, "; cm_fusion mode: "

    .line 1227
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1229
    const-string/jumbo v6, " AL3200_SCID: "

    .line 1227
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1230
    const-string/jumbo v6, "; altek-boken-enalbe:"

    .line 1227
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1231
    const-string/jumbo v6, "; altek-3D-type:"

    .line 1227
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    if-eqz v3, :cond_85

    .line 1233
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/common/cameradevice/p;->NF(Ljava/lang/String;)V

    .line 1235
    :cond_85
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/common/cameradevice/p;->NO(I)V

    .line 1236
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->No(I)V

    .line 1237
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/common/cameradevice/p;->NI(Ljava/lang/String;)V

    .line 1214
    return-void

    .line 1218
    :cond_9b
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jl:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_14

    .line 1219
    return-void
.end method

.method private XY()V
    .registers 4

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/android/common/setting/l;->XK()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1381
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "continue-shot"

    const-string/jumbo v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mb(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    :goto_13
    return-void

    .line 1383
    :cond_14
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "continue-shot"

    const-string/jumbo v2, "on"

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mb(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private XZ()V
    .registers 5

    .prologue
    const/16 v1, 0x64

    .line 577
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TP()I

    move-result v0

    .line 578
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 580
    if-nez v2, :cond_1e

    .line 581
    const-string/jumbo v0, "BaseParametersSetter"

    const-string/jumbo v1, "error getPictureSize: size is null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_1d
    :goto_1d
    return-void

    .line 583
    :cond_1e
    if-ne v1, v0, :cond_26

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    const/16 v3, 0xc80

    if-ge v2, v3, :cond_1d

    .line 586
    :cond_26
    iget-object v2, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    sget-object v3, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v2, v3, :cond_36

    .line 587
    const/16 v0, 0x50

    .line 589
    :cond_36
    invoke-direct {p0}, Lcom/android/common/setting/l;->XL()Z

    move-result v2

    if-eqz v2, :cond_3d

    move v0, v1

    .line 592
    :cond_3d
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->Mu(I)V

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JPEGQuality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private Xl()Z
    .registers 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xh()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LX()Z

    move-result v0

    return v0
.end method

.method private Xm()Z
    .registers 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xh()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LY()Z

    move-result v0

    return v0
.end method

.method private Xo()Z
    .registers 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xh()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LM()Ljava/util/List;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "continuous-picture"

    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private Xp()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;
    .registers 2

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    return-object v0
.end method

.method private Xw()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method private Ya()V
    .registers 4

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TR()I

    move-result v0

    .line 386
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "ztemt_logo_type"

    invoke-interface {v1, v2, v0}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LogoType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method private Yb()V
    .registers 4

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TT()I

    move-result v0

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ManualWb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->Mw(I)V

    .line 832
    return-void
.end method

.method private Yc()V
    .registers 4

    .prologue
    .line 1240
    const-string/jumbo v0, "BaseParametersSetter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nubia optical zoom value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/setting/c;->TV()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "nubia_optics_zoom"

    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/setting/c;->TV()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 1239
    return-void
.end method

.method private Ye(Z)V
    .registers 3

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->qI(Z)V

    .line 676
    return-void
.end method

.method private Yf()V
    .registers 4

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "nubia_exif_rotation"

    iget-object v2, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v2}, Lcom/android/common/setting/c;->Uo()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 1387
    return-void
.end method

.method private Yg()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1333
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acS()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1334
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Ti()Ljava/lang/String;

    move-result-object v0

    .line 1335
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "third_arith_hdr"

    invoke-interface {v1, v2}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 1336
    iget-object v1, p0, Lcom/android/common/setting/l;->Uo:Ljava/util/ArrayList;

    const-string/jumbo v2, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thirdArithHdr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 1339
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1340
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "third_arith_hdr"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 1332
    :goto_5b
    return-void

    .line 1341
    :cond_5c
    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1342
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "third_arith_hdr"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    goto :goto_5b

    .line 1344
    :cond_71
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "third_arith_hdr"

    invoke-interface {v0, v1, v3}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    goto :goto_5b

    .line 1347
    :cond_7c
    const-string/jumbo v0, "thirdArithHdr: off"

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "third_arith_hdr"

    invoke-interface {v0, v1, v3}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    goto :goto_5b
.end method

.method private Yh()V
    .registers 2

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sg()V

    .line 1361
    return-void
.end method

.method private Yi(Lcom/android/common/cameradevice/p;Lcom/android/common/custom/v;)V
    .registers 9

    .prologue
    .line 644
    invoke-interface {p1}, Lcom/android/common/cameradevice/p;->LN()Ljava/util/List;

    move-result-object v0

    .line 645
    const-string/jumbo v1, ""

    .line 646
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 647
    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-eqz v3, :cond_b

    .line 648
    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v4, p2, Lcom/android/common/custom/v;->height:I

    mul-int/2addr v3, v4

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    iget v5, p2, Lcom/android/common/custom/v;->width:I

    mul-int/2addr v4, v5

    if-ne v3, v4, :cond_b

    .line 649
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v2, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-interface {p1, v1, v2}, Lcom/android/common/cameradevice/p;->Mv(II)V

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    :goto_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ThumbnailSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 643
    return-void

    :cond_62
    move-object v0, v1

    goto :goto_4a
.end method

.method private Yk()V
    .registers 5

    .prologue
    .line 1371
    const-string/jumbo v0, "-1"

    .line 1372
    iget-object v1, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v1, :cond_d

    .line 1373
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Uy()Ljava/lang/String;

    move-result-object v0

    .line 1375
    :cond_d
    const-string/jumbo v1, "setZoomBlurType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/b;->bvy(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "zoom-blur-type"

    invoke-interface {v1, v2, v0}, Lcom/android/common/cameradevice/p;->Mb(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    return-void
.end method

.method private Ym()V
    .registers 3

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->UA()I

    move-result v0

    .line 1366
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    return-void

    .line 1367
    :cond_c
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->MQ(I)V

    .line 1364
    return-void
.end method

.method private Yn()V
    .registers 1

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WK()V

    .line 367
    return-void
.end method

.method private Yp()V
    .registers 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WM()V

    .line 371
    return-void
.end method

.method private Yq()V
    .registers 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Ws()V

    .line 364
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wt()V

    .line 362
    return-void
.end method

.method static synthetic Yr(Lcom/android/common/setting/l;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic Ys(Lcom/android/common/setting/l;)Lcom/android/common/setting/n;
    .registers 2

    iget-object v0, p0, Lcom/android/common/setting/l;->Uq:Lcom/android/common/setting/n;

    return-object v0
.end method


# virtual methods
.method public Vh()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_c

    .line 207
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Tu()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 209
    :cond_c
    return-object v1
.end method

.method protected Vi()Lcom/android/common/setting/c;
    .registers 5

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/common/setting/l;->Ue:Lcom/android/common/appService/y;

    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wg()Lcom/android/common/appService/W;

    move-result-object v1

    .line 1091
    iget v2, p0, Lcom/android/common/setting/l;->Ud:I

    const/4 v3, 0x0

    .line 1090
    invoke-interface {v0, v1, v2, v3}, Lcom/android/common/appService/y;->lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;

    move-result-object v0

    .line 1092
    iget v1, p0, Lcom/android/common/setting/l;->Ud:I

    iget-object v2, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/c;->Tt(ILcom/android/common/setting/s;)V

    .line 1093
    return-object v0
.end method

.method protected Vk()V
    .registers 4

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Th()Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->NA()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/setting/l;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FaceDetectionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->NN(Ljava/lang/String;)V

    .line 414
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 415
    iget-object v1, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->rZ()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 416
    iget-object v1, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qS()V

    .line 418
    :cond_4a
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 419
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rZ()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 420
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qR()V

    .line 408
    :cond_60
    return-void
.end method

.method protected Vl(Lcom/android/common/cameradevice/j;)V
    .registers 6

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TS()I

    move-result v1

    .line 841
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Tm()Ljava/lang/String;

    move-result-object v0

    .line 842
    iget-object v2, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    invoke-virtual {v2}, Lcom/android/common/setting/s;->YF()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/common/setting/l;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 843
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/common/cameradevice/p;->Mn(Ljava/lang/String;)V

    .line 848
    :goto_23
    invoke-virtual {p0, v0, p1}, Lcom/android/common/setting/l;->Xj(Ljava/lang/String;Lcom/android/common/cameradevice/j;)V

    .line 849
    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    .line 850
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/common/cameradevice/p;->Nu(I)V

    .line 852
    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FocusMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; Manual: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 839
    return-void

    .line 845
    :cond_53
    iget-object v0, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->YF()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 846
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/common/cameradevice/p;->Mn(Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected Vm(Lcom/android/common/cameradevice/j;)V
    .registers 4

    .prologue
    .line 286
    invoke-virtual {p0, p1}, Lcom/android/common/setting/l;->Wr(Lcom/android/common/cameradevice/j;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 287
    :cond_7
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Ws()V

    .line 288
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wt()V

    .line 289
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wh()V

    .line 290
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wi()V

    .line 291
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wj()V

    .line 292
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wk()V

    .line 293
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wu()V

    .line 294
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wv()V

    .line 295
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Ww()V

    .line 296
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wx()V

    .line 297
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wy()V

    .line 298
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wz()V

    .line 299
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WA()V

    .line 300
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WB()V

    .line 301
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WC()V

    .line 302
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WD()V

    .line 303
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WE()V

    .line 304
    invoke-direct {p0}, Lcom/android/common/setting/l;->XW()V

    .line 305
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WF()V

    .line 306
    invoke-direct {p0}, Lcom/android/common/setting/l;->Yc()V

    .line 309
    invoke-direct {p0}, Lcom/android/common/setting/l;->XX()V

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/setting/l;->Ug:Z

    .line 312
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WG()V

    .line 313
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WH()V

    .line 314
    invoke-direct {p0}, Lcom/android/common/setting/l;->Yg()V

    .line 315
    iget-boolean v0, p0, Lcom/android/common/setting/l;->Ug:Z

    if-eqz v0, :cond_63

    .line 318
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wl()V

    .line 319
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WJ()V

    .line 323
    :cond_63
    invoke-direct {p0}, Lcom/android/common/setting/l;->Ya()V

    .line 324
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WK()V

    .line 325
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adK()Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 326
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WL()V

    .line 330
    :goto_7a
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WN()V

    .line 333
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wp()V

    .line 334
    invoke-direct {p0}, Lcom/android/common/setting/l;->XR()V

    .line 337
    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    const-string/jumbo v0, "hdr"

    iget-object v1, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 338
    :cond_99
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wl()V

    .line 339
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wm()V

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/common/setting/l;->Vl(Lcom/android/common/cameradevice/j;)V

    .line 344
    :cond_a2
    invoke-direct {p0}, Lcom/android/common/setting/l;->Ym()V

    .line 345
    invoke-direct {p0}, Lcom/android/common/setting/l;->Yk()V

    .line 346
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WO()V

    .line 347
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wo()V

    .line 348
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WP()V

    .line 349
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WQ()V

    .line 350
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WR()V

    .line 351
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wq()V

    .line 352
    invoke-direct {p0}, Lcom/android/common/setting/l;->XQ()V

    .line 353
    invoke-direct {p0}, Lcom/android/common/setting/l;->Yh()V

    .line 354
    invoke-direct {p0}, Lcom/android/common/setting/l;->XY()V

    .line 355
    invoke-direct {p0}, Lcom/android/common/setting/l;->Yf()V

    .line 356
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Yd()V

    .line 358
    invoke-direct {p0, p1}, Lcom/android/common/setting/l;->XO(Lcom/android/common/cameradevice/j;)V

    .line 359
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WS()V

    .line 285
    return-void

    .line 328
    :cond_d0
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WM()V

    goto :goto_7a
.end method

.method protected Vn(Lcom/android/common/cameradevice/j;)V
    .registers 2

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wh()V

    .line 268
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wi()V

    .line 269
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wj()V

    .line 270
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wk()V

    .line 272
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wl()V

    .line 273
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wm()V

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/common/setting/l;->Vl(Lcom/android/common/cameradevice/j;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wn()V

    .line 277
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wo()V

    .line 278
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wp()V

    .line 279
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Wq()V

    .line 281
    invoke-direct {p0}, Lcom/android/common/setting/l;->XR()V

    .line 266
    return-void
.end method

.method protected WA()V
    .registers 4

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_demister_state"

    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/setting/c;->Tf()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Demister Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->Tf()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; Demister Value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->Tg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "camera_demister_value"

    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/setting/c;->Tg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 390
    return-void
.end method

.method protected WB()V
    .registers 4

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TD()Ljava/lang/String;

    move-result-object v0

    .line 969
    if-nez v0, :cond_35

    const/4 v0, 0x0

    .line 970
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ColorFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qv()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/common/cameradevice/p;->Mj(II)V

    .line 973
    iget-object v1, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v1, v0}, Lcom/android/common/appService/W;->si(I)V

    .line 967
    return-void

    .line 969
    :cond_35
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_b
.end method

.method protected WC()V
    .registers 4

    .prologue
    .line 873
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeI()Z

    move-result v0

    if-nez v0, :cond_f

    .line 874
    return-void

    .line 876
    :cond_f
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TU()Ljava/lang/String;

    move-result-object v0

    .line 877
    iget-object v1, p0, Lcom/android/common/setting/l;->Un:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 878
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string/jumbo v1, "off"

    iget-object v2, p0, Lcom/android/common/setting/l;->Un:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 877
    if-eqz v1, :cond_3b

    .line 879
    :cond_33
    iget-object v1, p0, Lcom/android/common/setting/l;->Uo:Ljava/util/ArrayList;

    const-string/jumbo v2, "night_key"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_3b
    iput-object v0, p0, Lcom/android/common/setting/l;->Un:Ljava/lang/String;

    .line 882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Night: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 883
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->Mz(Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method protected WD()V
    .registers 4

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Tu()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->Oa(Ljava/lang/String;)V

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zsl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method protected WE()V
    .registers 3

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Tu()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->Uf()Z

    move-result v1

    .line 437
    if-eqz v1, :cond_1b

    .line 438
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->NJ(I)V

    .line 431
    :goto_1a
    return-void

    .line 439
    :cond_1b
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-boolean v0, Lcom/android/common/h;->ahs:Z

    if-eqz v0, :cond_31

    .line 440
    :cond_28
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->NJ(I)V

    goto :goto_1a

    .line 442
    :cond_31
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->NJ(I)V

    goto :goto_1a
.end method

.method protected WF()V
    .registers 6

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Nw()I

    move-result v0

    .line 1150
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->Ue()I

    move-result v1

    .line 1151
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/common/cameradevice/p;->NS(I)V

    .line 1152
    const-string/jumbo v2, "MonoCameraConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "old rawMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; new rawMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    if-eq v0, v1, :cond_42

    .line 1154
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/common/setting/l;->Ye(Z)V

    .line 1148
    :cond_42
    return-void
.end method

.method protected WG()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 681
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 682
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->Ud()Lcom/android/common/custom/v;

    move-result-object v1

    .line 683
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v2

    const-string/jumbo v3, "nubia_max_preview_enable"

    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/setting/c;->Tv()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 685
    iget v2, v1, Lcom/android/common/custom/v;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v2, v3, :cond_2f

    iget v2, v1, Lcom/android/common/custom/v;->height:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-eq v2, v3, :cond_90

    .line 688
    :cond_2f
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v2

    iget v3, v1, Lcom/android/common/custom/v;->width:I

    iget v4, v1, Lcom/android/common/custom/v;->height:I

    invoke-interface {v2, v3, v4}, Lcom/android/common/cameradevice/p;->setPreviewSize(II)V

    .line 689
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/common/setting/l;->Yi(Lcom/android/common/cameradevice/p;Lcom/android/common/custom/v;)V

    .line 690
    iput-boolean v5, p0, Lcom/android/common/setting/l;->Ug:Z

    .line 691
    invoke-direct {p0, v5}, Lcom/android/common/setting/l;->Ye(Z)V

    .line 692
    const-string/jumbo v2, "BaseParametersSetter"

    const-string/jumbo v3, "Preview Size changed. Restart Preview"

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_4f
    :goto_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PreviewSize: optional: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/common/custom/v;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/android/common/custom/v;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 703
    const-string/jumbo v2, ", original: "

    .line 702
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 703
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    .line 702
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 703
    const-string/jumbo v2, "x"

    .line 702
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 703
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 702
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 680
    return-void

    .line 695
    :cond_90
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->Lr()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 696
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    if-ne v3, v4, :cond_4f

    .line 697
    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    if-ne v2, v3, :cond_4f

    .line 698
    invoke-direct {p0}, Lcom/android/common/setting/l;->Xp()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-eq v2, v3, :cond_4f

    .line 699
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/common/setting/l;->Yi(Lcom/android/common/cameradevice/p;Lcom/android/common/custom/v;)V

    goto :goto_4f
.end method

.method protected WH()V
    .registers 4

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Uj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSceneMode: new "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LT()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/setting/l;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 712
    iget-object v0, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    .line 713
    const-string/jumbo v0, "hdr"

    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 714
    const-string/jumbo v0, "hdr"

    iget-object v1, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 713
    if-eqz v0, :cond_67

    .line 715
    :cond_5f
    iget-object v0, p0, Lcom/android/common/setting/l;->Uo:Ljava/util/ArrayList;

    const-string/jumbo v1, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_67
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->MK(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-nez v0, :cond_83

    iget-object v0, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 719
    :cond_83
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "hdr-need-1x"

    const-string/jumbo v2, "false"

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mb(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :goto_90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/setting/l;->Ug:Z

    .line 734
    :cond_93
    :goto_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 706
    return-void

    .line 721
    :cond_ad
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "hdr-need-1x"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mb(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 729
    :cond_bb
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LH()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    .line 730
    iget-object v0, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    if-nez v0, :cond_93

    .line 731
    const-string/jumbo v0, "auto"

    iput-object v0, p0, Lcom/android/common/setting/l;->Uh:Ljava/lang/String;

    goto :goto_93
.end method

.method public WI()Lcom/android/common/cameradevice/p;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1260
    iget-object v1, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    if-eqz v1, :cond_d

    .line 1261
    iget-object v1, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    invoke-virtual {v1}, Lcom/android/common/setting/s;->YE()Lcom/android/common/cameradevice/p;

    move-result-object v1

    if-nez v1, :cond_10

    .line 1262
    :cond_d
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WJ()V

    .line 1265
    :cond_10
    iget-object v1, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    if-nez v1, :cond_15

    :goto_14
    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/setting/s;->YE()Lcom/android/common/cameradevice/p;

    move-result-object v0

    goto :goto_14
.end method

.method public WJ()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1244
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    iget v1, p0, Lcom/android/common/setting/l;->Ud:I

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 1245
    if-eqz v0, :cond_29

    .line 1246
    iget-object v1, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    if-nez v1, :cond_1f

    .line 1247
    new-instance v1, Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KX()Lcom/android/common/cameradevice/p;

    move-result-object v0

    iget v2, p0, Lcom/android/common/setting/l;->Ud:I

    invoke-direct {v1, v0, v2}, Lcom/android/common/setting/s;-><init>(Lcom/android/common/cameradevice/p;I)V

    iput-object v1, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    .line 1243
    :cond_1e
    :goto_1e
    return-void

    .line 1249
    :cond_1f
    iget-object v1, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KX()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/common/setting/s;->YG(Lcom/android/common/cameradevice/p;)V

    goto :goto_1e

    .line 1252
    :cond_29
    iget-object v0, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    if-eqz v0, :cond_1e

    .line 1253
    iget-object v0, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    invoke-virtual {v0, v2}, Lcom/android/common/setting/s;->YG(Lcom/android/common/cameradevice/p;)V

    goto :goto_1e
.end method

.method protected WK()V
    .registers 4

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->UB()Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Lp()Ljava/lang/String;

    move-result-object v1

    .line 740
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 741
    const-string/jumbo v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 742
    const-string/jumbo v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 740
    if-eqz v1, :cond_30

    .line 743
    :cond_28
    iget-object v1, p0, Lcom/android/common/setting/l;->Uo:Ljava/util/ArrayList;

    const-string/jumbo v2, "ztemt_effect_type"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_30
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->Mo(Ljava/lang/String;)V

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ZtemtEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method protected WL()V
    .registers 5

    .prologue
    .line 761
    const v0, 0x7f0a0267

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->XA(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->Ux()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 762
    const-string/jumbo v0, "On"

    .line 763
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ZKPretty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const/16 v2, 0x64

    const/16 v3, 0x23

    invoke-interface {v1, v0, v2, v3}, Lcom/android/common/cameradevice/p;->MP(Ljava/lang/String;II)V

    .line 760
    return-void

    .line 762
    :cond_3b
    const-string/jumbo v0, "Off"

    goto :goto_18
.end method

.method protected WM()V
    .registers 7

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TE()Ljava/lang/String;

    move-result-object v0

    .line 751
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->TY()I

    move-result v1

    .line 752
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/setting/c;->TZ()I

    move-result v2

    .line 753
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/setting/c;->TX()I

    move-result v3

    .line 754
    const v4, 0x7f0a0267

    invoke-virtual {p0, v4}, Lcom/android/common/setting/l;->XA(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    const/4 v0, 0x2

    .line 755
    :goto_2e
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v4

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/android/common/cameradevice/p;->ME(IIII)V

    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pretty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", smooth: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 757
    const-string/jumbo v1, ", toning: "

    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 757
    const-string/jumbo v1, ", slimming: "

    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 749
    return-void

    .line 754
    :cond_6e
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method protected WN()V
    .registers 4

    .prologue
    .line 887
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeJ()Z

    move-result v0

    if-nez v0, :cond_f

    .line 888
    return-void

    .line 890
    :cond_f
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Up()Ljava/lang/String;

    move-result-object v0

    .line 891
    iget v1, p0, Lcom/android/common/setting/l;->Ud:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v2

    if-ne v1, v2, :cond_24

    .line 892
    return-void

    .line 894
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stabilization: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 896
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 897
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "ois_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 886
    :goto_4f
    return-void

    .line 898
    :cond_50
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 899
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "ois_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    goto :goto_4f

    .line 901
    :cond_65
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "ois_key"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    goto :goto_4f
.end method

.method protected WO()V
    .registers 4

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LI()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->Tr()Ljava/lang/String;

    move-result-object v1

    .line 399
    if-eqz v0, :cond_18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 403
    :cond_18
    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slowShutter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->ML(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->Ul()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->MM(I)V

    .line 396
    return-void

    .line 400
    :cond_46
    const-string/jumbo v2, "-1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string/jumbo v0, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 399
    if-eqz v0, :cond_18

    .line 401
    :cond_58
    iget-object v0, p0, Lcom/android/common/setting/l;->Uo:Ljava/util/ArrayList;

    const-string/jumbo v2, "pref_slow_shutter_key"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18
.end method

.method protected WP()V
    .registers 4

    .prologue
    .line 1050
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Tz()I

    move-result v0

    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BestPhotoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "best_photo"

    invoke-interface {v1, v2, v0}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 1049
    return-void
.end method

.method protected WQ()V
    .registers 4

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Um()I

    move-result v0

    .line 1057
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "snapshot-burst-num"

    invoke-interface {v1, v2, v0}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "burst-num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 1055
    return-void
.end method

.method protected WR()V
    .registers 4

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TB()I

    move-result v0

    .line 1144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cameraMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->Mi(I)V

    .line 1142
    return-void
.end method

.method public WS()V
    .registers 1

    .prologue
    .line 1085
    return-void
.end method

.method protected WT()V
    .registers 3

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->TW()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->MC(Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method protected WU()V
    .registers 5

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Tx()Ljava/lang/String;

    move-result-object v0

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AE Bracketing: new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Nx()Ljava/util/List;

    move-result-object v1

    .line 558
    invoke-virtual {p0, v0, v1}, Lcom/android/common/setting/l;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_86

    .line 559
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Nv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 560
    iget-object v1, p0, Lcom/android/common/setting/l;->Uo:Ljava/util/ArrayList;

    const-string/jumbo v2, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_43
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->NG(Ljava/lang/String;)V

    .line 564
    const v1, 0x7f0a0159

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->XA(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 565
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "num-snaps-per-shutter"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 573
    :goto_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 553
    return-void

    .line 568
    :cond_7a
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "num-snaps-per-shutter"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    goto :goto_62

    .line 571
    :cond_86
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Nv()Ljava/lang/String;

    move-result-object v0

    goto :goto_62
.end method

.method protected WV()V
    .registers 3

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Uk()Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->ND()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/setting/l;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 539
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->NV(Ljava/lang/String;)V

    .line 536
    :cond_1d
    return-void
.end method

.method protected WW()V
    .registers 4

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TO()Ljava/lang/String;

    move-result-object v0

    .line 516
    if-nez v0, :cond_12

    .line 517
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TI()Ljava/lang/String;

    move-result-object v0

    .line 519
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Denoise: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 521
    :try_start_29
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Nz()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 522
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->NM(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3a} :catch_3b

    .line 514
    :cond_3a
    :goto_3a
    return-void

    .line 524
    :catch_3b
    move-exception v0

    .line 525
    const-string/jumbo v0, "BaseParametersSetter"

    const-string/jumbo v1, "not support denoise"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method protected WX()V
    .registers 3

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Ug()Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->NC()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/setting/l;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 532
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->NT(Ljava/lang/String;)V

    .line 529
    :cond_1d
    return-void
.end method

.method protected WY()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 498
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Ub()[I

    move-result-object v0

    .line 499
    if-eqz v0, :cond_3d

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PreviewFpsRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    aget v2, v0, v3

    aget v0, v0, v4

    invoke-interface {v1, v2, v0}, Lcom/android/common/cameradevice/p;->MG(II)V

    .line 497
    :cond_3d
    return-void
.end method

.method protected WZ()V
    .registers 4

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TN()Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->NB()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/setting/l;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ISO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->NP(Ljava/lang/String;)V

    .line 505
    :cond_34
    return-void
.end method

.method protected Wg()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    return-object v0
.end method

.method protected Wh()V
    .registers 3

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/android/common/setting/l;->Xl()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 604
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/a;->ct()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Mg(Z)V

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AElock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/a;->ct()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 602
    :cond_38
    return-void
.end method

.method protected Wi()V
    .registers 3

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/android/common/setting/l;->Xm()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 611
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/o;->gp()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Mh(Z)V

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AWblock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/o;->gp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 609
    :cond_38
    return-void
.end method

.method protected Wj()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 617
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xr()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 618
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ei()Ljava/util/List;

    move-result-object v0

    .line 619
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->Mm(Ljava/util/List;)V

    .line 620
    if-eqz v0, :cond_20

    .line 621
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_38

    .line 622
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FocusAreas: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 616
    :cond_37
    :goto_37
    return-void

    .line 624
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FocusAreas: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    goto :goto_37
.end method

.method protected Wk()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 630
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xt()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 632
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cw()Ljava/util/List;

    move-result-object v0

    .line 633
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->Mx(Ljava/util/List;)V

    .line 635
    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_38

    .line 636
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MeteringAreas: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 629
    :cond_37
    :goto_37
    return-void

    .line 638
    :cond_38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MeteringAreas: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    goto :goto_37
.end method

.method protected Wl()V
    .registers 4

    .prologue
    .line 803
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TL()Ljava/lang/String;

    move-result-object v0

    .line 805
    iget-object v1, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/H;->nw()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Lcom/android/common/setting/l;->XI()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 806
    :cond_1a
    const-string/jumbo v0, "off"

    .line 808
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FlashMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->Uq()Ljava/util/List;

    move-result-object v1

    .line 810
    invoke-virtual {p0, v0, v1}, Lcom/android/common/setting/l;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 811
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->Ml(Ljava/lang/String;)V

    .line 802
    :cond_49
    return-void
.end method

.method protected Wm()V
    .registers 4

    .prologue
    .line 816
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Uw()Ljava/lang/String;

    move-result-object v0

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WhiteBalance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 818
    const-string/jumbo v2, ";MwbArea: "

    .line 817
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 819
    iget-object v2, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/independentFocusExposure/o;->gr()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/h;->api(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 817
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LV()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/setting/l;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 823
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->MO(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->NQ(Ljava/util/List;)V

    .line 829
    :goto_55
    invoke-direct {p0}, Lcom/android/common/setting/l;->Yb()V

    .line 815
    return-void

    .line 826
    :cond_59
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "auto"

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->MO(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/o;->gr()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->NQ(Ljava/util/List;)V

    goto :goto_55
.end method

.method protected Wn()V
    .registers 4

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Tl()Ljava/lang/String;

    move-result-object v0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoExposure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Ny()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/setting/l;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 464
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->NH(Ljava/lang/String;)V

    .line 460
    :cond_34
    return-void
.end method

.method protected Wo()V
    .registers 3

    .prologue
    .line 1032
    invoke-direct {p0}, Lcom/android/common/setting/l;->XF()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1033
    :cond_7
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fR()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1034
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fS()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1037
    :cond_1f
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Mf(I)V

    .line 1031
    :goto_27
    return-void

    .line 1035
    :cond_28
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Mf(I)V

    goto :goto_27
.end method

.method protected Wp()V
    .registers 6

    .prologue
    .line 775
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TK()I

    move-result v0

    .line 776
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Ls()I

    move-result v1

    .line 777
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->Lx()I

    move-result v2

    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ExposureCompensation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 779
    if-lt v0, v2, :cond_3b

    if-gt v0, v1, :cond_3b

    .line 780
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->Mk(I)V

    .line 767
    :goto_3a
    return-void

    .line 782
    :cond_3b
    const-string/jumbo v1, "BaseParametersSetter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid exposure range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method

.method protected Wq()V
    .registers 3

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/a;->cP()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1043
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->My(I)V

    .line 1041
    :goto_14
    return-void

    .line 1045
    :cond_15
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->My(I)V

    goto :goto_14
.end method

.method protected Wr(Lcom/android/common/cameradevice/j;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 226
    if-nez p1, :cond_c

    .line 227
    const-string/jumbo v1, "BaseParametersSetter"

    const-string/jumbo v2, "cameraDevice = null"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_c
    invoke-direct {p0}, Lcom/android/common/setting/l;->Xw()Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 230
    const-string/jumbo v1, "BaseParametersSetter"

    const-string/jumbo v2, "getPreferences = null"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1b
    if-eqz p1, :cond_24

    invoke-direct {p0}, Lcom/android/common/setting/l;->Xw()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0
.end method

.method protected Ws()V
    .registers 3

    .prologue
    .line 1168
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Uc()I

    move-result v0

    .line 1169
    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    .line 1170
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LR()Ljava/util/List;

    move-result-object v0

    .line 1171
    if-eqz v0, :cond_26

    .line 1172
    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1173
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->MH(I)V

    .line 1167
    :cond_26
    :goto_26
    return-void

    .line 1176
    :cond_27
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->MH(I)V

    goto :goto_26
.end method

.method protected Wt()V
    .registers 4

    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Uf()Z

    move-result v0

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RecordingHint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->MI(Z)V

    .line 1193
    return-void
.end method

.method protected Wu()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 658
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->To()Ljava/lang/String;

    move-result-object v1

    .line 660
    if-nez v1, :cond_32

    .line 661
    iget v0, p0, Lcom/android/common/setting/l;->Ud:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_30

    const/4 v0, 0x1

    .line 662
    :goto_18
    invoke-direct {p0}, Lcom/android/common/setting/l;->Xw()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/common/setting/l;->XE(Landroid/content/SharedPreferences;Landroid/content/Context;Lcom/android/common/cameradevice/p;Z)V

    .line 663
    const-string/jumbo v0, "PictureSize: null, initialize"

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 657
    :goto_2f
    return-void

    .line 661
    :cond_30
    const/4 v0, 0x0

    goto :goto_18

    .line 665
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting PictureSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 668
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Tp()Ljava/util/List;

    move-result-object v2

    .line 669
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    .line 667
    invoke-direct/range {v0 .. v6}, Lcom/android/common/setting/l;->XV(Ljava/lang/String;Ljava/util/List;Lcom/android/common/cameradevice/p;D[Ljava/lang/String;)Z

    .line 670
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "old PictureSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 672
    const-string/jumbo v2, "; new PictureSize: "

    .line 671
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 672
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    .line 671
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 672
    const-string/jumbo v2, " x "

    .line 671
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 672
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 671
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method protected Wv()V
    .registers 5

    .prologue
    .line 1200
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Uv()[I

    move-result-object v0

    .line 1201
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-interface {v1, v2, v0}, Lcom/android/common/cameradevice/p;->NZ(II)V

    .line 1199
    return-void
.end method

.method protected Ww()V
    .registers 4

    .prologue
    .line 1210
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Us()I

    move-result v0

    .line 1211
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    sget-object v2, Lcom/android/common/setting/l;->Ui:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/android/common/cameradevice/p;->Mc(Ljava/lang/String;I)V

    .line 1209
    return-void
.end method

.method protected Wx()V
    .registers 4

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Ut()Ljava/lang/String;

    move-result-object v0

    .line 1183
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->NX(Ljava/lang/String;)V

    .line 1184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hfr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 1181
    return-void
.end method

.method protected Wy()V
    .registers 4

    .prologue
    .line 1188
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Uu()Ljava/lang/String;

    move-result-object v0

    .line 1189
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->NY(Ljava/lang/String;)V

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hsr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 1187
    return-void
.end method

.method protected Wz()V
    .registers 3

    .prologue
    .line 1205
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Ua()Ljava/lang/String;

    move-result-object v0

    .line 1206
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->MF(Ljava/lang/String;)V

    .line 1204
    return-void
.end method

.method protected XA(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public XB()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1326
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_c

    .line 1327
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Ti()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1329
    :cond_c
    return-object v1
.end method

.method public XC()Lcom/android/common/custom/v;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1016
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_2e

    .line 1017
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->To()Ljava/lang/String;

    move-result-object v0

    .line 1018
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1019
    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    return-object v3

    .line 1020
    :cond_15
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1021
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1022
    new-instance v1, Lcom/android/common/custom/v;

    invoke-direct {v1, v2, v0}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v1

    .line 1024
    :cond_2e
    return-object v3
.end method

.method public XD()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_c

    .line 196
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Uw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_c
    return-object v1
.end method

.method public XH()Z
    .registers 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_b

    .line 996
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->UD()Z

    move-result v0

    return v0

    .line 998
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public XI()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 129
    iget-object v2, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v2, :cond_3c

    .line 130
    const-string/jumbo v2, "hdr"

    .line 131
    iget-object v3, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v3}, Lcom/android/common/setting/c;->Uj()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 132
    iget-object v2, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v2}, Lcom/android/common/setting/c;->Tx()Ljava/lang/String;

    move-result-object v2

    .line 133
    const v3, 0x7f0a0159

    invoke-virtual {p0, v3}, Lcom/android/common/setting/l;->XA(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 130
    if-nez v2, :cond_38

    .line 134
    iget-object v2, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v2}, Lcom/android/common/setting/c;->Ti()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 130
    :goto_37
    return v0

    :cond_38
    move v0, v1

    goto :goto_37

    :cond_3a
    move v0, v1

    .line 134
    goto :goto_37

    .line 136
    :cond_3c
    return v0
.end method

.method public XJ()Z
    .registers 4

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_38

    .line 1004
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1006
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->To()Ljava/lang/String;

    move-result-object v1

    .line 1007
    if-eqz v1, :cond_38

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1011
    :cond_38
    const/4 v0, 0x0

    return v0

    .line 1008
    :cond_3a
    const/4 v0, 0x1

    return v0
.end method

.method public XK()Z
    .registers 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_b

    .line 988
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Ts()Z

    move-result v0

    return v0

    .line 990
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public XM()Z
    .registers 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_b

    .line 1080
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->UH()Z

    move-result v0

    return v0

    .line 1082
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method protected XN()V
    .registers 5

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/common/setting/l;->Uo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1110
    const/4 v0, 0x1

    if-ge v2, v0, :cond_a

    return-void

    .line 1111
    :cond_a
    iget-object v0, p0, Lcom/android/common/setting/l;->Uq:Lcom/android/common/setting/n;

    iput v2, v0, Lcom/android/common/setting/n;->Uu:I

    .line 1112
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v2, :cond_24

    .line 1113
    iget-object v0, p0, Lcom/android/common/setting/l;->Uq:Lcom/android/common/setting/n;

    iget-object v3, v0, Lcom/android/common/setting/n;->Ut:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/common/setting/l;->Uo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 1112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 1115
    :cond_24
    iget-object v0, p0, Lcom/android/common/setting/l;->Uo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1116
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1117
    iget-object v0, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/common/setting/u;

    invoke-direct {v1, p0}, Lcom/android/common/setting/u;-><init>(Lcom/android/common/setting/l;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1108
    :cond_3f
    return-void
.end method

.method public XP(Lcom/android/common/setting/p;)V
    .registers 3

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/common/setting/l;->Ur:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1138
    return-void
.end method

.method public XS(I)V
    .registers 3

    .prologue
    .line 910
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/l;->XT(IZ)V

    .line 909
    return-void
.end method

.method public XU(I)V
    .registers 3

    .prologue
    .line 906
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/common/setting/l;->XT(IZ)V

    .line 905
    return-void
.end method

.method protected Xa()V
    .registers 4

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Ui()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saturation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->NU(I)V

    .line 480
    return-void
.end method

.method protected Xb()V
    .registers 4

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Tj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Contrast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->NL(I)V

    .line 474
    return-void
.end method

.method protected Xc()V
    .registers 4

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Tk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sharpness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->NW(I)V

    .line 468
    return-void
.end method

.method protected Xd()V
    .registers 4

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Ty()Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LK()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/setting/l;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "antiBanding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->Md(Ljava/lang/String;)V

    .line 452
    :cond_34
    return-void
.end method

.method protected Xe()V
    .registers 3

    .prologue
    .line 977
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/c;->Tn()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->NR(Ljava/lang/String;)V

    .line 976
    return-void
.end method

.method protected Xf()Lcom/android/common/setting/c;
    .registers 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    return-object v0
.end method

.method protected Xg(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/common/setting/l;->Up:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/l;->Up:Ljava/lang/String;

    .line 1061
    return-void
.end method

.method protected Xh()Lcom/android/common/cameradevice/p;
    .registers 3

    .prologue
    .line 177
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    iget v1, p0, Lcom/android/common/setting/l;->Ud:I

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/m;->Na(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    return-object v0
.end method

.method protected Xi(Ljava/lang/String;Ljava/util/List;)Z
    .registers 4

    .prologue
    .line 222
    invoke-static {p1, p2}, Lcom/android/common/h;->apd(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected Xj(Ljava/lang/String;Lcom/android/common/cameradevice/j;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 857
    invoke-direct {p0}, Lcom/android/common/setting/l;->Xo()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 858
    if-nez p2, :cond_26

    .line 859
    const-string/jumbo v0, "BaseParametersSetter"

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoFocusMoveCallback fail, because getCameraDevice is null! mCameraId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 861
    iget v2, p0, Lcom/android/common/setting/l;->Ud:I

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 859
    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return-void

    .line 864
    :cond_26
    const-string/jumbo v0, "continuous-picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 865
    iget-object v0, p0, Lcom/android/common/setting/l;->Uk:Lcom/android/common/setting/m;

    invoke-virtual {p2, v0}, Lcom/android/common/cameradevice/j;->Lb(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 856
    :cond_34
    :goto_34
    return-void

    .line 867
    :cond_35
    invoke-virtual {p2, v1}, Lcom/android/common/cameradevice/j;->Lb(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_34
.end method

.method public Xk(Lcom/android/common/setting/p;)V
    .registers 3

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/android/common/setting/l;->Ur:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1133
    iget-object v0, p0, Lcom/android/common/setting/l;->Ur:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    :cond_d
    return-void
.end method

.method public Xn()Landroid/media/CamcorderProfile;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1161
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_c

    .line 1162
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Ur()Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0

    .line 1164
    :cond_c
    return-object v1
.end method

.method public Xq()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_c

    .line 123
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Th()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 125
    :cond_c
    return-object v1
.end method

.method public Xr()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xh()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Lu()I

    move-result v1

    if-lez v1, :cond_1a

    .line 190
    const-string/jumbo v0, "auto"

    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xh()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LM()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/setting/l;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    .line 189
    :cond_1a
    return v0
.end method

.method public Xs()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1067
    const-string/jumbo v0, "auto"

    .line 1068
    iget-object v1, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v1, :cond_1f

    .line 1069
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TS()I

    move-result v0

    .line 1070
    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    const-string/jumbo v0, "manual"

    .line 1074
    :cond_15
    :goto_15
    return-object v0

    .line 1070
    :cond_16
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Tm()Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 1071
    :cond_1f
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1072
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Lo()Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public Xt()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xh()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Lv()I

    move-result v1

    if-lez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public Xu()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_c

    .line 95
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TU()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 97
    :cond_c
    return-object v1
.end method

.method public Xv()I
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_b

    .line 101
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TV()I

    move-result v0

    return v0

    .line 103
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public Xx()Z
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_b

    .line 115
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Uf()Z

    move-result v0

    return v0

    .line 117
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public Xy()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_c

    .line 107
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Tr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_c
    return-object v1
.end method

.method public Xz()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    if-eqz v0, :cond_c

    .line 88
    iget-object v0, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Un()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 90
    :cond_c
    return-object v1
.end method

.method protected Yd()V
    .registers 4

    .prologue
    .line 1393
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->UG()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1394
    const-string/jumbo v0, "on"

    .line 1398
    :goto_d
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "nubia_bokeh_gallery"

    invoke-interface {v1, v2, v0}, Lcom/android/common/cameradevice/p;->Mb(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refocusInGallery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 1391
    return-void

    .line 1396
    :cond_2f
    const-string/jumbo v0, "off"

    goto :goto_d
.end method

.method protected Yj()V
    .registers 4

    .prologue
    .line 491
    iget v0, p0, Lcom/android/common/setting/l;->Ud:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    if-ne v0, v1, :cond_27

    .line 492
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->ads()Z

    move-result v0

    .line 491
    if-eqz v0, :cond_27

    .line 493
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "tintless"

    const-string/jumbo v2, "disable"

    invoke-interface {v0, v1, v2}, Lcom/android/common/cameradevice/p;->Mb(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_27
    return-void
.end method

.method protected Yl()V
    .registers 4

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Uz()I

    move-result v0

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ZoomType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/common/setting/l;->Xg(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/cameradevice/p;->MN(I)V

    .line 543
    return-void
.end method

.method public Yo()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 141
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    iget v1, p0, Lcom/android/common/setting/l;->Ud:I

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_11

    .line 143
    iget-object v1, p0, Lcom/android/common/setting/l;->Uf:Lcom/android/common/setting/s;

    if-nez v1, :cond_12

    .line 145
    :cond_11
    return-void

    .line 144
    :cond_12
    invoke-virtual {p0}, Lcom/android/common/setting/l;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 148
    iget-object v1, p0, Lcom/android/common/setting/l;->Uj:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/android/common/setting/l;->Um:Lcom/android/common/appService/CameraMember;

    if-eq v2, v1, :cond_68

    .line 150
    const-string/jumbo v2, "BaseParametersSetter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PreferenceChange to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/common/setting/l;->Ud:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/common/setting/l;->Vi()Lcom/android/common/setting/c;

    move-result-object v2

    .line 152
    if-nez v0, :cond_60

    .line 153
    const-string/jumbo v0, "BaseParametersSetter"

    const-string/jumbo v1, "updateParametersItems failed! because CameraDevice is null."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 156
    :cond_60
    monitor-enter v0

    .line 157
    :try_start_61
    iput-object v2, p0, Lcom/android/common/setting/l;->Ul:Lcom/android/common/setting/c;
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_69

    monitor-exit v0

    .line 159
    iput-object v5, p0, Lcom/android/common/setting/l;->Un:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/android/common/setting/l;->Um:Lcom/android/common/appService/CameraMember;

    .line 140
    :cond_68
    return-void

    .line 156
    :catchall_69
    move-exception v1

    monitor-exit v0

    throw v1
.end method
