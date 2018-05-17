.class public Lcom/android/common/appService/W;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static mX:[I


# instance fields
.field private lA:Ljava/lang/String;

.field private lB:I

.field private lC:Lcom/android/common/independentFocusExposure/a;

.field private lD:Lcom/android/common/appService/H;

.field private lE:Lcom/android/common/independentFocusExposure/i;

.field private lF:Lcom/android/common/appService/CameraMember;

.field private lG:Lcom/android/common/ui/i;

.field private lH:Lcom/android/common/d;

.field private lI:Lcom/android/common/appService/J;

.field private lJ:Z

.field private lK:J

.field private lL:Lcom/android/common/i/c;

.field private lM:I

.field private lN:I

.field private lO:I

.field private lP:Z

.field private lQ:[Landroid/hardware/Camera$Face;

.field private lR:Z

.field private lS:Z

.field private lT:Z

.field private lU:Lcom/android/common/independentFocusExposure/g;

.field private lV:J

.field private lW:Lcom/android/common/appService/E;

.field private lX:Landroid/os/Handler;

.field private lY:Z

.field private lZ:Z

.field public lr:Z

.field private ls:Z

.field private lt:Z

.field private lu:Z

.field private lv:Landroid/app/Activity;

.field private lw:I

.field private final lx:Lcom/android/common/e/e;

.field private ly:J

.field private lz:Z

.field private mA:J

.field private mB:Lcom/android/common/setting/PreferenceGroup;

.field private mC:Lcom/android/common/appService/k;

.field private mD:Lcom/android/common/appService/i;

.field private mE:Z

.field private mF:Z

.field private final mG:Lcom/android/common/e/f;

.field private mH:J

.field private mI:I

.field private mJ:I

.field private mK:Z

.field private mL:Lcom/android/common/setting/g;

.field private final mM:Lcom/android/common/e/b;

.field private mN:J

.field private mO:Landroid/hardware/Camera$PictureCallback;

.field private mP:Lcom/android/common/ui/ai;

.field private mQ:Lcom/android/common/storagemanager/f;

.field private mR:I

.field private mS:Landroid/widget/Toast;

.field private mT:I

.field private mU:[I

.field private mV:Lcom/android/common/appService/c;

.field private mW:I

.field private ma:Z

.field private mb:Z

.field private mc:Z

.field private md:Z

.field private me:Z

.field private mf:Z

.field private mg:Z

.field private mh:[B

.field private mi:I

.field private mj:Lcom/android/common/h/l;

.field private mk:Lcom/android/common/r/a;

.field private ml:Landroid/media/MediaPlayer;

.field private mm:Landroid/content/ContentProviderClient;

.field public mn:Lcom/android/common/cameradevice/g;

.field private mo:Lcom/android/common/appService/y;

.field private mp:I

.field private mq:Lcom/android/common/i/e;

.field private mr:Lcom/android/common/h/h;

.field private ms:Lcom/android/common/independentFocusExposure/o;

.field private mt:Lcom/android/common/appService/N;

.field private mu:Ljava/lang/Thread;

.field private mv:Lcom/android/common/appService/a;

.field private mw:Z

.field private mx:Lcom/android/common/cameradevice/g;

.field private my:Lcom/android/common/appService/s;

.field private final mz:Lcom/android/common/e/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 125
    const-string/jumbo v0, "AppService"

    sput-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    .line 202
    const/16 v0, 0x101

    new-array v0, v0, [I

    sput-object v0, Lcom/android/common/appService/W;->mX:[I

    .line 122
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object v1, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    .line 129
    iput-object v1, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    .line 130
    new-instance v0, Lcom/android/common/appService/E;

    invoke-direct {v0}, Lcom/android/common/appService/E;-><init>()V

    iput-object v0, p0, Lcom/android/common/appService/W;->lW:Lcom/android/common/appService/E;

    .line 131
    iput-object v1, p0, Lcom/android/common/appService/W;->lX:Landroid/os/Handler;

    .line 132
    iput-object v1, p0, Lcom/android/common/appService/W;->mj:Lcom/android/common/h/l;

    .line 133
    iput-object v1, p0, Lcom/android/common/appService/W;->mB:Lcom/android/common/setting/PreferenceGroup;

    .line 134
    iput-object v1, p0, Lcom/android/common/appService/W;->mn:Lcom/android/common/cameradevice/g;

    .line 135
    sget-object v0, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    iput-object v0, p0, Lcom/android/common/appService/W;->lF:Lcom/android/common/appService/CameraMember;

    .line 139
    iput-object v1, p0, Lcom/android/common/appService/W;->mx:Lcom/android/common/cameradevice/g;

    .line 140
    iput-object v1, p0, Lcom/android/common/appService/W;->mL:Lcom/android/common/setting/g;

    .line 142
    iput v3, p0, Lcom/android/common/appService/W;->lO:I

    .line 143
    iput v3, p0, Lcom/android/common/appService/W;->lN:I

    .line 145
    iput v6, p0, Lcom/android/common/appService/W;->lB:I

    .line 146
    iput v2, p0, Lcom/android/common/appService/W;->mI:I

    .line 150
    iput-boolean v2, p0, Lcom/android/common/appService/W;->lP:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/common/appService/W;->mK:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/common/appService/W;->ma:Z

    .line 154
    iput-boolean v6, p0, Lcom/android/common/appService/W;->lJ:Z

    .line 158
    iput-boolean v2, p0, Lcom/android/common/appService/W;->mw:Z

    .line 159
    iput-boolean v2, p0, Lcom/android/common/appService/W;->lT:Z

    .line 160
    iput-boolean v2, p0, Lcom/android/common/appService/W;->lS:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/common/appService/W;->lZ:Z

    .line 163
    iput-boolean v2, p0, Lcom/android/common/appService/W;->mc:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/common/appService/W;->mf:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/common/appService/W;->mb:Z

    .line 166
    iput-boolean v2, p0, Lcom/android/common/appService/W;->lu:Z

    .line 167
    iput-boolean v2, p0, Lcom/android/common/appService/W;->me:Z

    .line 169
    new-instance v0, Lcom/android/common/e/b;

    invoke-direct {v0, p0}, Lcom/android/common/e/b;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->mM:Lcom/android/common/e/b;

    .line 170
    new-instance v0, Lcom/android/common/e/g;

    invoke-direct {v0, p0}, Lcom/android/common/e/g;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->mz:Lcom/android/common/e/g;

    .line 171
    new-instance v0, Lcom/android/common/e/f;

    invoke-direct {v0, p0}, Lcom/android/common/e/f;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->mG:Lcom/android/common/e/f;

    .line 172
    new-instance v0, Lcom/android/common/e/e;

    invoke-direct {v0, p0}, Lcom/android/common/e/e;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->lx:Lcom/android/common/e/e;

    .line 174
    iput-object v1, p0, Lcom/android/common/appService/W;->mm:Landroid/content/ContentProviderClient;

    .line 176
    iput-object v1, p0, Lcom/android/common/appService/W;->mP:Lcom/android/common/ui/ai;

    .line 177
    iput-object v1, p0, Lcom/android/common/appService/W;->mS:Landroid/widget/Toast;

    .line 179
    iput-object v1, p0, Lcom/android/common/appService/W;->lH:Lcom/android/common/d;

    .line 180
    iput-object v1, p0, Lcom/android/common/appService/W;->mk:Lcom/android/common/r/a;

    .line 181
    iput-object v1, p0, Lcom/android/common/appService/W;->lI:Lcom/android/common/appService/J;

    .line 184
    iput v2, p0, Lcom/android/common/appService/W;->mi:I

    .line 185
    iput v3, p0, Lcom/android/common/appService/W;->mT:I

    .line 187
    iput-wide v4, p0, Lcom/android/common/appService/W;->lV:J

    .line 188
    iput-wide v4, p0, Lcom/android/common/appService/W;->mN:J

    .line 189
    iput-wide v4, p0, Lcom/android/common/appService/W;->mA:J

    .line 190
    iput-wide v4, p0, Lcom/android/common/appService/W;->mH:J

    .line 193
    iput-wide v4, p0, Lcom/android/common/appService/W;->ly:J

    .line 194
    iput-wide v4, p0, Lcom/android/common/appService/W;->lK:J

    .line 196
    iput-object v1, p0, Lcom/android/common/appService/W;->mh:[B

    .line 198
    iput-boolean v2, p0, Lcom/android/common/appService/W;->mg:Z

    .line 199
    iput v2, p0, Lcom/android/common/appService/W;->mp:I

    .line 204
    iput-object v1, p0, Lcom/android/common/appService/W;->lG:Lcom/android/common/ui/i;

    .line 206
    iput-object v1, p0, Lcom/android/common/appService/W;->mq:Lcom/android/common/i/e;

    .line 207
    iput-object v1, p0, Lcom/android/common/appService/W;->my:Lcom/android/common/appService/s;

    .line 208
    iput-object v1, p0, Lcom/android/common/appService/W;->mV:Lcom/android/common/appService/c;

    .line 209
    iput-object v1, p0, Lcom/android/common/appService/W;->lC:Lcom/android/common/independentFocusExposure/a;

    .line 210
    iput-object v1, p0, Lcom/android/common/appService/W;->lE:Lcom/android/common/independentFocusExposure/i;

    .line 211
    iput-object v1, p0, Lcom/android/common/appService/W;->ms:Lcom/android/common/independentFocusExposure/o;

    .line 212
    iput-object v1, p0, Lcom/android/common/appService/W;->mr:Lcom/android/common/h/h;

    .line 213
    iput-boolean v2, p0, Lcom/android/common/appService/W;->md:Z

    .line 214
    iput-boolean v6, p0, Lcom/android/common/appService/W;->mE:Z

    .line 215
    iput-boolean v6, p0, Lcom/android/common/appService/W;->lY:Z

    .line 216
    iput-object v1, p0, Lcom/android/common/appService/W;->mv:Lcom/android/common/appService/a;

    .line 217
    iput-object v1, p0, Lcom/android/common/appService/W;->lU:Lcom/android/common/independentFocusExposure/g;

    .line 218
    iput-object v1, p0, Lcom/android/common/appService/W;->mo:Lcom/android/common/appService/y;

    .line 219
    iput-boolean v2, p0, Lcom/android/common/appService/W;->lR:Z

    .line 222
    new-instance v0, Lcom/android/common/storagemanager/f;

    invoke-direct {v0}, Lcom/android/common/storagemanager/f;-><init>()V

    iput-object v0, p0, Lcom/android/common/appService/W;->mQ:Lcom/android/common/storagemanager/f;

    .line 223
    iput-boolean v2, p0, Lcom/android/common/appService/W;->lt:Z

    .line 224
    iput-object v1, p0, Lcom/android/common/appService/W;->mD:Lcom/android/common/appService/i;

    .line 226
    iput-boolean v2, p0, Lcom/android/common/appService/W;->mF:Z

    .line 231
    sget-boolean v0, Lcom/android/common/h;->ahs:Z

    if-eqz v0, :cond_db

    new-instance v0, Lcom/android/common/i/a;

    invoke-direct {v0, p0}, Lcom/android/common/i/a;-><init>(Lcom/android/common/appService/W;)V

    .line 230
    :goto_b8
    iput-object v0, p0, Lcom/android/common/appService/W;->lL:Lcom/android/common/i/c;

    .line 1467
    iput-object v1, p0, Lcom/android/common/appService/W;->mu:Ljava/lang/Thread;

    .line 1750
    iput-boolean v2, p0, Lcom/android/common/appService/W;->ls:Z

    .line 1751
    iput v2, p0, Lcom/android/common/appService/W;->mJ:I

    .line 1893
    iput-boolean v2, p0, Lcom/android/common/appService/W;->lr:Z

    .line 1894
    iput-object v1, p0, Lcom/android/common/appService/W;->mO:Landroid/hardware/Camera$PictureCallback;

    .line 1928
    iput-boolean v2, p0, Lcom/android/common/appService/W;->lz:Z

    .line 1947
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/common/appService/W;->lA:Ljava/lang/String;

    .line 2093
    iput-object v1, p0, Lcom/android/common/appService/W;->lD:Lcom/android/common/appService/H;

    .line 2102
    iput v3, p0, Lcom/android/common/appService/W;->lM:I

    .line 2203
    iput v2, p0, Lcom/android/common/appService/W;->mW:I

    .line 2212
    iput v2, p0, Lcom/android/common/appService/W;->lw:I

    .line 2339
    iput-object v1, p0, Lcom/android/common/appService/W;->mC:Lcom/android/common/appService/k;

    .line 2344
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/common/appService/W;->mU:[I

    .line 122
    return-void

    .line 231
    :cond_db
    new-instance v0, Lcom/android/common/i/i;

    invoke-direct {v0, p0}, Lcom/android/common/i/i;-><init>(Lcom/android/common/appService/W;)V

    goto :goto_b8
.end method

.method private sR()Landroid/hardware/Camera$PictureCallback;
    .registers 3

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/common/appService/W;->ti()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 560
    :cond_c
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jg:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_1a

    .line 563
    :cond_14
    new-instance v0, Lcom/android/common/e/a;

    invoke-direct {v0, p0}, Lcom/android/common/e/a;-><init>(Lcom/android/common/appService/W;)V

    return-object v0

    .line 561
    :cond_1a
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_14

    .line 562
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jJ:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_14

    .line 565
    iget-boolean v0, p0, Lcom/android/common/appService/W;->lr:Z

    if-eqz v0, :cond_31

    .line 566
    iget-object v0, p0, Lcom/android/common/appService/W;->mO:Landroid/hardware/Camera$PictureCallback;

    return-object v0

    .line 569
    :cond_31
    new-instance v0, Lcom/android/common/e/c;

    invoke-direct {v0, p0}, Lcom/android/common/e/c;-><init>(Lcom/android/common/appService/W;)V

    return-object v0
.end method

.method private sS()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1737
    const-string/jumbo v0, "backlight-flash"

    const-string/jumbo v1, "set backlight-flash-mode 1 & lock awb"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v1

    monitor-enter v1

    .line 1739
    :try_start_f
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/common/cameradevice/p;->MA(I)V

    .line 1740
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/common/cameradevice/p;->Mh(Z)V

    .line 1741
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_3c

    monitor-exit v1

    .line 1744
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/common/ActivityBase;->atj(Z)V

    .line 1745
    iget-object v0, p0, Lcom/android/common/appService/W;->lX:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1736
    return-void

    .line 1738
    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sT(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;
    .registers 3

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/IconListPreference;

    return-object v0
.end method

.method private sU()Lcom/android/common/camerastate/DeviceState;
    .registers 2

    .prologue
    .line 2244
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    return-object v0
.end method

.method private sV()Lcom/android/common/camerastate/FunctionState;
    .registers 2

    .prologue
    .line 2252
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    return-object v0
.end method

.method private sX()Lcom/android/common/camerastate/UIState;
    .registers 2

    .prologue
    .line 2256
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    return-object v0
.end method

.method private sY(Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)Lcom/android/common/cameradevice/g;
    .registers 11

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 673
    if-eqz p1, :cond_6

    .line 674
    return-object p1

    .line 678
    :cond_6
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 679
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 682
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/h;->apt(Landroid/app/Activity;)I

    move-result v3

    .line 684
    const-string/jumbo v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 685
    const-string/jumbo v0, "MODE"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 686
    const-string/jumbo v0, "MODE"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "front"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    move v0, v1

    .line 687
    :goto_45
    const-string/jumbo v6, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 688
    const-string/jumbo v4, "MODE"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_67

    .line 689
    const-string/jumbo v4, "MODE"

    invoke-virtual {v5, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "front"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 687
    if-nez v4, :cond_6b

    .line 690
    :cond_67
    invoke-direct {p0, v5}, Lcom/android/common/appService/W;->tj(Landroid/content/Intent;)Z

    move-result v2

    .line 691
    :cond_6b
    if-eq v3, v7, :cond_8f

    move v2, v3

    .line 701
    :goto_6e
    iget-object v0, p0, Lcom/android/common/appService/W;->mo:Lcom/android/common/appService/y;

    invoke-interface {v0, p2}, Lcom/android/common/appService/y;->kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/cameradevice/g;

    .line 702
    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/g;->Kg(I)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 703
    return-object v0

    :cond_8b
    move v0, v2

    .line 686
    goto :goto_45

    :cond_8d
    move v0, v1

    .line 684
    goto :goto_45

    .line 693
    :cond_8f
    if-eqz v0, :cond_9b

    .line 694
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    move v2, v0

    goto :goto_6e

    .line 695
    :cond_9b
    if-eqz v2, :cond_a7

    .line 696
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v0

    move v2, v0

    goto :goto_6e

    .line 698
    :cond_a7
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qu()Lcom/android/common/setting/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/d;->UJ()I

    move-result v0

    move v2, v0

    goto :goto_6e

    .line 706
    :cond_b1
    iget-object v0, p0, Lcom/android/common/appService/W;->mo:Lcom/android/common/appService/y;

    invoke-interface {v0, p2}, Lcom/android/common/appService/y;->kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/cameradevice/g;

    return-object v0
.end method

.method private tA()Z
    .registers 2

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/common/appService/W;->lL:Lcom/android/common/i/c;

    invoke-interface {v0}, Lcom/android/common/i/c;->aeS()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1242
    iget-object v0, p0, Lcom/android/common/appService/W;->mr:Lcom/android/common/h/h;

    invoke-virtual {v0}, Lcom/android/common/h/h;->abO()V

    .line 1243
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nt()V

    .line 1244
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eL()Z

    .line 1245
    const/4 v0, 0x1

    return v0

    .line 1247
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private tB(ILcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 4

    .prologue
    .line 722
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acN()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 723
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adP()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 737
    :cond_1c
    :goto_1c
    return-object p2

    .line 724
    :cond_1d
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v0

    if-ne p1, v0, :cond_3f

    .line 725
    sget-object v0, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne p2, v0, :cond_1c

    .line 726
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adP()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 727
    sget-object p2, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    goto :goto_1c

    .line 729
    :cond_3c
    sget-object p2, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    goto :goto_1c

    .line 732
    :cond_3f
    sget-object v0, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    if-eq p2, v0, :cond_47

    sget-object v0, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    if-ne p2, v0, :cond_1c

    .line 733
    :cond_47
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    if-ne p1, v0, :cond_1c

    .line 734
    sget-object p2, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    goto :goto_1c
.end method

.method static synthetic tC()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic tD(Lcom/android/common/appService/W;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic tE(Lcom/android/common/appService/W;)Lcom/android/common/appService/N;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    return-object v0
.end method

.method private tb(Landroid/app/Activity;)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 294
    if-eqz p1, :cond_78

    .line 295
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 296
    const-string/jumbo v0, "RQR"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 297
    const-string/jumbo v0, "RQR"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "launcherCamera"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 296
    :goto_23
    iput-boolean v0, p0, Lcom/android/common/appService/W;->lZ:Z

    .line 299
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 300
    const-string/jumbo v4, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 301
    const-string/jumbo v4, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 300
    if-nez v4, :cond_44

    .line 302
    const-string/jumbo v4, "android.media.action.START_CAMCORDER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 300
    if-eqz v4, :cond_46

    .line 303
    :cond_44
    iput-boolean v2, p0, Lcom/android/common/appService/W;->mf:Z

    .line 306
    :cond_46
    const-string/jumbo v4, "factory"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/common/appService/W;->mb:Z

    .line 308
    const-string/jumbo v4, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/common/appService/W;->mc:Z

    .line 310
    const-string/jumbo v4, "wlancamera"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/common/appService/W;->lu:Z

    .line 312
    const-string/jumbo v3, "com.android.camera.action.subcamtest"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MU()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_76

    move v1, v2

    :cond_76
    iput-boolean v1, p0, Lcom/android/common/appService/W;->me:Z

    .line 293
    :cond_78
    return-void

    :cond_79
    move v0, v1

    .line 296
    goto :goto_23
.end method

.method private tc(Lcom/android/common/ActivityBase;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 277
    if-eqz p1, :cond_e

    .line 278
    iget-object v0, p0, Lcom/android/common/appService/W;->mQ:Lcom/android/common/storagemanager/f;

    new-instance v1, Lcom/android/common/appService/X;

    invoke-direct {v1, p0}, Lcom/android/common/appService/X;-><init>(Lcom/android/common/appService/W;)V

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agK(Lcom/android/common/storagemanager/g;)V

    .line 276
    :goto_d
    return-void

    .line 280
    :cond_e
    iget-object v0, p0, Lcom/android/common/appService/W;->mQ:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agB()V

    .line 281
    iget-object v0, p0, Lcom/android/common/appService/W;->mQ:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agK(Lcom/android/common/storagemanager/g;)V

    goto :goto_d
.end method

.method private td()Z
    .registers 2

    .prologue
    .line 2041
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->ade()Z

    move-result v0

    return v0
.end method

.method private te()Z
    .registers 3

    .prologue
    .line 1612
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->dX()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 1613
    const-string/jumbo v0, "on"

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Vh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1612
    if-eqz v0, :cond_26

    .line 1614
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eO()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1612
    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0

    .line 1615
    :cond_28
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_26

    .line 1616
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_26

    .line 1617
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_26

    .line 1618
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dO()Z

    move-result v0

    goto :goto_27
.end method

.method private tf()Z
    .registers 3

    .prologue
    .line 1602
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eQ()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1603
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->act()Z

    move-result v0

    .line 1602
    if-eqz v0, :cond_1e

    .line 1604
    invoke-direct {p0}, Lcom/android/common/appService/W;->tg()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1602
    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    .line 1605
    :cond_20
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_1e

    .line 1606
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 1607
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_1e

    .line 1608
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dO()Z

    move-result v0

    goto :goto_1f
.end method

.method private tg()Z
    .registers 2

    .prologue
    .line 2079
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->ady()Z

    move-result v0

    return v0
.end method

.method private tj(Landroid/content/Intent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 658
    const/4 v1, 0x0

    .line 659
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v3, "NX513J"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v3, "NX513H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 660
    :goto_16
    if-eqz v2, :cond_21

    invoke-static {p1}, Lcom/android/common/h;->apJ(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 663
    :goto_1e
    return v0

    :cond_1f
    move v2, v0

    .line 659
    goto :goto_16

    :cond_21
    move v0, v1

    .line 660
    goto :goto_1e

    :cond_23
    move v0, v1

    goto :goto_1e
.end method

.method private tk()Z
    .registers 5

    .prologue
    .line 1713
    const-string/jumbo v0, "on"

    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "pref_water_mark_key"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string/jumbo v0, "on"

    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "pref_water_mark_time_key"

    const-string/jumbo v3, "off"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x1

    goto :goto_2c
.end method

.method private tm(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 1626
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onShutterButtonClick"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    invoke-direct {p0}, Lcom/android/common/appService/W;->tn()V

    .line 1628
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mw:Z

    if-nez v0, :cond_2d

    .line 1629
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1630
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hq()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1637
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 1638
    return-void

    .line 1631
    :cond_2d
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "paused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/common/appService/W;->mw:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1632
    const-string/jumbo v2, "; storageLeftEnough: "

    .line 1631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1632
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    .line 1631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1633
    const-string/jumbo v2, "; commandEnable: "

    .line 1631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1633
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/c/e;->hq()Z

    move-result v2

    .line 1631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    return-void

    .line 1641
    :cond_6b
    if-eqz p1, :cond_82

    .line 1642
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rj()J

    move-result-wide v0

    .line 1643
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_82

    .line 1644
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qo()Lcom/android/common/appService/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/common/appService/c;->if(J)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 1645
    return-void

    .line 1651
    :cond_82
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nD()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1652
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "camera member handle onshutterbuttonclicked"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    return-void

    .line 1656
    :cond_95
    invoke-direct {p0}, Lcom/android/common/appService/W;->te()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 1657
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/common/independentFocusExposure/i;->fv(Z)V

    .line 1658
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "autofocus is still running. Wait. Return from shutter click"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    return-void

    .line 1662
    :cond_ab
    invoke-direct {p0}, Lcom/android/common/appService/W;->tf()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 1663
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CAF focus is still canning. Wait. Return from shutter click"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/common/independentFocusExposure/i;->fw(Z)V

    .line 1665
    return-void

    .line 1668
    :cond_c1
    invoke-static {p0}, Lcom/android/common/c/l;->hH(Lcom/android/common/appService/W;)Lcom/android/common/c/a;

    move-result-object v0

    .line 1669
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 1625
    return-void
.end method

.method private tn()V
    .registers 3

    .prologue
    .line 1673
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/w;->arI(Landroid/content/res/Resources;Lcom/android/common/ActivityBase;)V

    .line 1672
    return-void
.end method

.method private to()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 476
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-eq v2, v3, :cond_12

    .line 477
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-ne v2, v3, :cond_14b

    .line 480
    :cond_12
    invoke-virtual {p0}, Lcom/android/common/appService/W;->sJ()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {p0}, Lcom/android/common/appService/W;->sL()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 481
    :cond_1e
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "normal_2"

    const-string/jumbo v3, "hdr"

    invoke-static {v0, v2, v3}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 485
    :cond_2c
    iget-object v2, p0, Lcom/android/common/appService/W;->mB:Lcom/android/common/setting/PreferenceGroup;

    if-eqz v2, :cond_5c

    .line 486
    iget-object v2, p0, Lcom/android/common/appService/W;->mB:Lcom/android/common/setting/PreferenceGroup;

    .line 487
    const-string/jumbo v3, "pref_camera_colorfilter_key"

    .line 486
    invoke-virtual {v2, v3}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 488
    iget-object v2, p0, Lcom/android/common/appService/W;->mB:Lcom/android/common/setting/PreferenceGroup;

    .line 489
    const-string/jumbo v3, "pref_camera_colorfilter_key"

    .line 488
    invoke-virtual {v2, v3}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v2

    .line 490
    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 491
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v3, "normal_7"

    invoke-static {v0, v3, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 496
    :cond_5c
    iget-object v2, p0, Lcom/android/common/appService/W;->mB:Lcom/android/common/setting/PreferenceGroup;

    if-eqz v2, :cond_1eb

    .line 497
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->Lp()Ljava/lang/String;

    move-result-object v2

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e8

    .line 500
    const-string/jumbo v0, "-"

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "c_effect_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :goto_aa
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "C_GRID"

    iget-object v3, p0, Lcom/android/common/appService/W;->mB:Lcom/android/common/setting/PreferenceGroup;

    .line 506
    const-string/jumbo v4, "pref_camera_grid_key"

    .line 505
    invoke-virtual {v3, v4}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "C_FACE"

    iget-object v3, p0, Lcom/android/common/appService/W;->mB:Lcom/android/common/setting/PreferenceGroup;

    .line 509
    const-string/jumbo v4, "pref_camera_facedetection_key"

    .line 508
    invoke-virtual {v3, v4}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "C_SOUND"

    iget-object v3, p0, Lcom/android/common/appService/W;->mB:Lcom/android/common/setting/PreferenceGroup;

    .line 512
    const-string/jumbo v4, "pref_camera_shutter_sound_key"

    .line 511
    invoke-virtual {v3, v4}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "C_GRADIENTER"

    iget-object v3, p0, Lcom/android/common/appService/W;->mB:Lcom/android/common/setting/PreferenceGroup;

    .line 515
    const-string/jumbo v4, "pref_camera_gradienter_key"

    .line 514
    invoke-virtual {v3, v4}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "C_RATIO"

    iget-object v3, p0, Lcom/android/common/appService/W;->mB:Lcom/android/common/setting/PreferenceGroup;

    .line 518
    const-string/jumbo v4, "pref_camera_picture_ratio_key"

    .line 517
    invoke-virtual {v3, v4}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :goto_11d
    if-eqz v1, :cond_13c

    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_13c

    .line 521
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_13d

    .line 522
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "pro"

    const-string/jumbo v2, "pro"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :cond_13c
    :goto_13c
    return-void

    .line 524
    :cond_13d
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "normal_1"

    const-string/jumbo v2, "normal"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13c

    .line 527
    :cond_14b
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    if-eq v2, v3, :cond_15b

    .line 528
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    sget-object v3, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    if-ne v2, v3, :cond_13c

    .line 531
    :cond_15b
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v2

    .line 532
    const-string/jumbo v3, "pref_camera_doc_pretty"

    .line 533
    const v4, 0x7f0a02d5

    invoke-virtual {p0, v4}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v4

    .line 531
    invoke-virtual {v2, v3, v4}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 534
    const v3, 0x7f0a0267

    invoke-virtual {p0, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_188

    .line 535
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "front_1"

    const-string/jumbo v3, "DOC"

    invoke-static {v0, v2, v3}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 539
    :cond_188
    iget-object v2, p0, Lcom/android/common/appService/W;->mB:Lcom/android/common/setting/PreferenceGroup;

    if-eqz v2, :cond_1d7

    .line 540
    iget-object v2, p0, Lcom/android/common/appService/W;->mB:Lcom/android/common/setting/PreferenceGroup;

    .line 541
    const-string/jumbo v3, "pref_camera_pretty_effect_key"

    .line 540
    invoke-virtual {v2, v3}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v3

    .line 542
    const-string/jumbo v2, ""

    .line 543
    if-eqz v3, :cond_19e

    .line 544
    invoke-virtual {v3}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v2

    .line 546
    :cond_19e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d7

    .line 547
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "c_effect_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 551
    :cond_1d7
    if-eqz v0, :cond_13c

    .line 552
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "front"

    const-string/jumbo v2, "front"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13c

    :cond_1e8
    move v1, v0

    goto/16 :goto_aa

    :cond_1eb
    move v1, v0

    goto/16 :goto_11d
.end method

.method private tp()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    .line 1898
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1899
    return-void

    .line 1900
    :cond_8
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1901
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    const-string/jumbo v2, "maf_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1902
    if-eq v1, v3, :cond_23

    .line 1903
    const-string/jumbo v1, "maf_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1905
    :cond_23
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1897
    return-void
.end method

.method private tr()V
    .registers 3

    .prologue
    .line 2052
    invoke-direct {p0}, Lcom/android/common/appService/W;->td()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2053
    :cond_7
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_29

    .line 2054
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fR()Z

    move-result v0

    .line 2053
    if-eqz v0, :cond_29

    .line 2055
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fS()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2058
    :cond_29
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Mf(I)V

    .line 2051
    :goto_31
    return-void

    .line 2056
    :cond_32
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Mf(I)V

    goto :goto_31
.end method

.method private ts(Lcom/android/common/camerastate/DeviceState;)V
    .registers 3

    .prologue
    .line 2240
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 2239
    return-void
.end method

.method private tv(Lcom/android/common/camerastate/FunctionState;)V
    .registers 3

    .prologue
    .line 2248
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/camerastate/a;->amK(Lcom/android/common/camerastate/FunctionState;)V

    .line 2247
    return-void
.end method

.method private tw()V
    .registers 6

    .prologue
    .line 2045
    invoke-direct {p0}, Lcom/android/common/appService/W;->td()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2046
    :cond_7
    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 2047
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fT()[F

    move-result-object v0

    .line 2048
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-interface {v1, v2, v3, v0}, Lcom/android/common/cameradevice/p;->Me(FFF)V

    .line 2044
    return-void
.end method


# virtual methods
.method public pA()V
    .registers 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/common/appService/W;->mD:Lcom/android/common/appService/i;

    invoke-virtual {v0}, Lcom/android/common/appService/i;->jf()V

    .line 939
    return-void
.end method

.method public pB()V
    .registers 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/common/appService/W;->mD:Lcom/android/common/appService/i;

    invoke-virtual {v0}, Lcom/android/common/appService/i;->ji()V

    .line 851
    return-void
.end method

.method public pC()I
    .registers 2

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    if-eqz v0, :cond_b

    .line 1506
    iget-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    invoke-virtual {v0}, Lcom/android/common/appService/N;->oh()I

    move-result v0

    return v0

    .line 1508
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public pD([B)V
    .registers 2

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/android/common/appService/W;->mh:[B

    .line 1093
    return-void
.end method

.method public pE()V
    .registers 2

    .prologue
    .line 1460
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asx()V

    .line 1459
    return-void
.end method

.method public pF()I
    .registers 3

    .prologue
    .line 2193
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_a

    .line 2194
    const/4 v0, -0x1

    return v0

    .line 2196
    :cond_a
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v0

    return v0
.end method

.method public pG()Lcom/android/common/r/a;
    .registers 2

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/common/appService/W;->mk:Lcom/android/common/r/a;

    return-object v0
.end method

.method public pH()Lcom/android/common/storagemanager/f;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/common/appService/W;->mQ:Lcom/android/common/storagemanager/f;

    return-object v0
.end method

.method public pI()F
    .registers 4

    .prologue
    .line 2083
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acp()F

    move-result v0

    .line 2085
    :try_start_c
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "len_aperture"

    invoke-interface {v1, v2}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_1a} :catch_1c

    move-result v0

    .line 2090
    :goto_1b
    return v0

    .line 2086
    :catch_1c
    move-exception v1

    .line 2087
    sget-object v1, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "FNumber is null from hardware!"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public pJ()Lcom/android/common/independentFocusExposure/g;
    .registers 2

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/android/common/appService/W;->lU:Lcom/android/common/independentFocusExposure/g;

    return-object v0
.end method

.method public pK()Z
    .registers 5

    .prologue
    .line 1562
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qU()J

    move-result-wide v0

    const-wide/32 v2, 0x6400000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    .line 1563
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/appService/W;->qV(J)V

    .line 1564
    const/4 v0, 0x0

    return v0

    .line 1566
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public pL(Z)V
    .registers 5

    .prologue
    .line 1570
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1571
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity is Paused ignore this Focus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    return-void

    .line 1574
    :cond_20
    if-nez p1, :cond_32

    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_32

    .line 1575
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rC()Lcom/android/common/i/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/i/e;->afb()V

    .line 1569
    :cond_31
    :goto_31
    return-void

    .line 1576
    :cond_32
    if-nez p1, :cond_31

    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_31

    .line 1577
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mF:Z

    if-nez v0, :cond_31

    .line 1578
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qB()V

    goto :goto_31
.end method

.method public pM(Z)V
    .registers 3

    .prologue
    .line 2286
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2287
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ActivityBase;->atK(Z)V

    .line 2285
    :cond_d
    return-void
.end method

.method public pN()Lcom/android/common/setting/o;
    .registers 2

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    return-object v0
.end method

.method public pO()I
    .registers 2

    .prologue
    .line 2214
    iget v0, p0, Lcom/android/common/appService/W;->lw:I

    return v0
.end method

.method public pP(Lcom/android/common/appService/L;)V
    .registers 5

    .prologue
    .line 1397
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mw:Z

    if-eqz v0, :cond_5

    .line 1398
    return-void

    .line 1401
    :cond_5
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adA()Z

    move-result v0

    .line 1402
    if-eqz v0, :cond_26

    .line 1403
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    new-instance v1, Lcom/android/common/appService/aA;

    invoke-direct {v1, p0, p1}, Lcom/android/common/appService/aA;-><init>(Lcom/android/common/appService/W;Lcom/android/common/appService/L;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/common/appService/W;->tq([ILcom/android/common/appService/L;)V

    .line 1396
    :goto_25
    return-void

    .line 1413
    :cond_26
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pB()V

    .line 1414
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pA()V

    .line 1415
    if-eqz p1, :cond_31

    .line 1416
    invoke-interface {p1}, Lcom/android/common/appService/L;->nV()V

    .line 1418
    :cond_31
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    goto :goto_25
.end method

.method public pQ()Lcom/android/common/appService/H;
    .registers 2

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/android/common/appService/W;->lD:Lcom/android/common/appService/H;

    return-object v0
.end method

.method public pR()I
    .registers 2

    .prologue
    .line 1042
    iget v0, p0, Lcom/android/common/appService/W;->mT:I

    return v0
.end method

.method public pS()J
    .registers 3

    .prologue
    .line 1114
    iget-wide v0, p0, Lcom/android/common/appService/W;->lK:J

    return-wide v0
.end method

.method public pT(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pU(I)V
    .registers 3

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 803
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/common/setting/o;->XS(I)V

    .line 801
    :cond_d
    return-void
.end method

.method public pV()I
    .registers 2

    .prologue
    .line 1046
    iget v0, p0, Lcom/android/common/appService/W;->mi:I

    return v0
.end method

.method public pW()Z
    .registers 4

    .prologue
    .line 1793
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_best_photo_key"

    .line 1794
    const v2, 0x7f0a0466

    invoke-virtual {p0, v2}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 1793
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1794
    const-string/jumbo v1, "on"

    .line 1793
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1795
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_30

    .line 1796
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adN()Z

    move-result v0

    .line 1793
    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public pX()Z
    .registers 2

    .prologue
    .line 1830
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XK()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public pY()Lcom/android/common/a/g;
    .registers 2

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->ats()Lcom/android/common/a/g;

    move-result-object v0

    return-object v0
.end method

.method public pZ()I
    .registers 2

    .prologue
    .line 2205
    iget v0, p0, Lcom/android/common/appService/W;->mW:I

    return v0
.end method

.method public pb()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    return-object v0
.end method

.method public pc()Z
    .registers 2

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mc:Z

    return v0
.end method

.method public pd()Z
    .registers 2

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mb:Z

    return v0
.end method

.method public pe()Z
    .registers 2

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/android/common/appService/W;->lZ:Z

    return v0
.end method

.method public pf()Z
    .registers 2

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mf:Z

    return v0
.end method

.method public pg()Z
    .registers 2

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/common/appService/W;->me:Z

    return v0
.end method

.method public ph()Lcom/android/common/ActivityBase;
    .registers 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/common/ActivityBase;

    if-eqz v0, :cond_b

    .line 1158
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    check-cast v0, Lcom/android/common/ActivityBase;

    return-object v0

    .line 1159
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public pi()Lcom/android/common/appService/CameraMember;
    .registers 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/common/appService/W;->lF:Lcom/android/common/appService/CameraMember;

    return-object v0
.end method

.method public pj()[I
    .registers 2

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/android/common/appService/W;->mU:[I

    return-object v0
.end method

.method public pk()Z
    .registers 2

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mw:Z

    return v0
.end method

.method public pl()Lcom/android/common/camerastate/a;
    .registers 2

    .prologue
    .line 2227
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atm()Lcom/android/common/camerastate/a;

    move-result-object v0

    return-object v0
.end method

.method public pm()Lcom/android/common/cameradevice/g;
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/common/appService/W;->mn:Lcom/android/common/cameradevice/g;

    return-object v0
.end method

.method public pn()Lcom/android/common/appService/y;
    .registers 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/common/appService/W;->mo:Lcom/android/common/appService/y;

    return-object v0
.end method

.method public po()Lcom/android/common/setting/e;
    .registers 3

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_20

    .line 778
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->rA(I)Lcom/android/common/setting/e;

    move-result-object v0

    .line 779
    if-eqz v0, :cond_17

    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->rA(I)Lcom/android/common/setting/e;

    move-result-object v0

    goto :goto_16

    .line 781
    :cond_20
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->rA(I)Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method public pp()Lcom/android/common/setting/PreferenceGroup;
    .registers 3

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_20

    .line 638
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->sW(I)Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 639
    if-eqz v0, :cond_17

    :goto_16
    return-object v0

    :cond_17
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->sW(I)Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    goto :goto_16

    .line 641
    :cond_20
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->sW(I)Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method public pq()Lcom/android/common/independentFocusExposure/a;
    .registers 2

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/common/appService/W;->lC:Lcom/android/common/independentFocusExposure/a;

    return-object v0
.end method

.method public pr()Lcom/android/common/independentFocusExposure/i;
    .registers 2

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/common/appService/W;->lE:Lcom/android/common/independentFocusExposure/i;

    return-object v0
.end method

.method public ps()V
    .registers 4

    .prologue
    .line 1717
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "executeOnShutterButtonClick"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mw:Z

    if-nez v0, :cond_16

    .line 1719
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->em()Z

    move-result v0

    .line 1718
    if-eqz v0, :cond_4c

    .line 1720
    :cond_16
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "executeOnShutterButtonClick fail. paused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/common/appService/W;->mw:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1721
    const-string/jumbo v2, "; FocussnapOnFinish = "

    .line 1720
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1721
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/independentFocusExposure/i;->em()Z

    move-result v2

    .line 1720
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 1723
    return-void

    .line 1726
    :cond_4c
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rn()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1727
    invoke-direct {p0}, Lcom/android/common/appService/W;->sS()V

    .line 1716
    :cond_55
    :goto_55
    return-void

    .line 1729
    :cond_56
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eL()Z

    move-result v0

    .line 1730
    if-nez v0, :cond_55

    .line 1731
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    goto :goto_55
.end method

.method public pt()Lcom/android/common/cameradevice/p;
    .registers 2

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    return-object v0
.end method

.method public pu()Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 622
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method public pv()I
    .registers 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/common/appService/W;->mn:Lcom/android/common/cameradevice/g;

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kh()I

    move-result v0

    return v0
.end method

.method public pw()Lcom/android/common/appService/k;
    .registers 2

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/android/common/appService/W;->mC:Lcom/android/common/appService/k;

    return-object v0
.end method

.method public px()V
    .registers 2

    .prologue
    .line 1622
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/common/appService/W;->tm(Z)V

    .line 1621
    return-void
.end method

.method public py()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/common/appService/W;->lX:Landroid/os/Handler;

    return-object v0
.end method

.method public pz(I)V
    .registers 6

    .prologue
    .line 1909
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mw:Z

    if-eqz v0, :cond_5

    return-void

    .line 1910
    :cond_5
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    .line 1911
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0330

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1910
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1912
    const-string/jumbo v1, "on"

    .line 1910
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1914
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rX()Lcom/android/common/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/android/common/d;->aof(Landroid/content/Context;I)V

    .line 1908
    :cond_2d
    return-void
.end method

.method public qA()Lcom/android/common/setting/g;
    .registers 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/common/appService/W;->mL:Lcom/android/common/setting/g;

    return-object v0
.end method

.method public qB()V
    .registers 3

    .prologue
    .line 1264
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_24

    .line 1265
    iget-object v0, p0, Lcom/android/common/appService/W;->lL:Lcom/android/common/i/c;

    invoke-interface {v0}, Lcom/android/common/i/c;->aeT()Z

    .line 1266
    iget-object v0, p0, Lcom/android/common/appService/W;->mr:Lcom/android/common/h/h;

    invoke-virtual {v0}, Lcom/android/common/h/h;->abP()V

    .line 1267
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nt()V

    .line 1269
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mF:Z

    if-eqz v0, :cond_25

    .line 1270
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->pz(I)V

    .line 1274
    :goto_21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/appService/W;->mF:Z

    .line 1263
    :cond_24
    return-void

    .line 1272
    :cond_25
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rS()V

    goto :goto_21
.end method

.method public qC()Lcom/android/common/independentFocusExposure/o;
    .registers 2

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/common/appService/W;->ms:Lcom/android/common/independentFocusExposure/o;

    return-object v0
.end method

.method public qD()Lcom/android/common/cameradevice/g;
    .registers 2

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/common/appService/W;->mx:Lcom/android/common/cameradevice/g;

    return-object v0
.end method

.method public qE(Z)V
    .registers 2

    .prologue
    .line 1150
    iput-boolean p1, p0, Lcom/android/common/appService/W;->lS:Z

    .line 1149
    return-void
.end method

.method public qF([ILcom/android/common/appService/K;)V
    .registers 5

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/android/common/appService/W;->so()V

    .line 903
    new-instance v0, Lcom/android/common/appService/J;

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0, p2, p1}, Lcom/android/common/appService/J;-><init>(Landroid/app/Activity;Lcom/android/common/appService/W;Lcom/android/common/appService/K;[I)V

    iput-object v0, p0, Lcom/android/common/appService/W;->lI:Lcom/android/common/appService/J;

    .line 904
    iget-object v0, p0, Lcom/android/common/appService/W;->lI:Lcom/android/common/appService/J;

    invoke-virtual {v0}, Lcom/android/common/appService/J;->start()V

    .line 900
    return-void
.end method

.method public qG(Lcom/android/common/cameradevice/g;)V
    .registers 4

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/common/cameradevice/g;->Kh()I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 746
    iget-object v0, p0, Lcom/android/common/appService/W;->mL:Lcom/android/common/setting/g;

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/g;->Ve(I)V

    .line 748
    :cond_13
    iput-object p1, p0, Lcom/android/common/appService/W;->mn:Lcom/android/common/cameradevice/g;

    .line 749
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/appService/W;->lF:Lcom/android/common/appService/CameraMember;

    invoke-direct {p0, v0, v1}, Lcom/android/common/appService/W;->tB(ILcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/W;->lF:Lcom/android/common/appService/CameraMember;

    .line 744
    return-void
.end method

.method public qH()Lcom/android/common/ui/i;
    .registers 2

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/android/common/appService/W;->lG:Lcom/android/common/ui/i;

    return-object v0
.end method

.method public qI(Z)V
    .registers 2

    .prologue
    .line 988
    iput-boolean p1, p0, Lcom/android/common/appService/W;->mK:Z

    .line 987
    return-void
.end method

.method public qJ()Lcom/android/common/appService/i;
    .registers 2

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/android/common/appService/W;->mD:Lcom/android/common/appService/i;

    return-object v0
.end method

.method public qK()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1944
    iget-boolean v1, p0, Lcom/android/common/appService/W;->lz:Z

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public qL()V
    .registers 4

    .prologue
    .line 2112
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/common/ActivityBase;

    if-eqz v0, :cond_33

    .line 2113
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 2114
    const-string/jumbo v1, "pref_key_capture_camera"

    const-string/jumbo v2, "off"

    .line 2113
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2115
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2116
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->avD()V

    .line 2111
    :goto_2a
    return-void

    .line 2118
    :cond_2b
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->avy()V

    goto :goto_2a

    .line 2121
    :cond_33
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateCaptureCameraService failed!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public qM()V
    .registers 3

    .prologue
    .line 2033
    invoke-direct {p0}, Lcom/android/common/appService/W;->td()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2034
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    .line 2035
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->atT()Lcom/android/common/g/f;

    move-result-object v1

    .line 2034
    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->atr(Lcom/android/common/a/b;)V

    .line 2036
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->gB()V

    .line 2032
    :cond_1c
    return-void
.end method

.method public qN(J)V
    .registers 4

    .prologue
    .line 1066
    iput-wide p1, p0, Lcom/android/common/appService/W;->mN:J

    .line 1065
    return-void
.end method

.method public qO()J
    .registers 3

    .prologue
    .line 1070
    iget-wide v0, p0, Lcom/android/common/appService/W;->mN:J

    return-wide v0
.end method

.method public qP()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2025
    iget-object v0, p0, Lcom/android/common/appService/W;->ml:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 2026
    iget-object v0, p0, Lcom/android/common/appService/W;->ml:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 2027
    iget-object v0, p0, Lcom/android/common/appService/W;->ml:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2028
    iput-object v1, p0, Lcom/android/common/appService/W;->ml:Landroid/media/MediaPlayer;

    .line 2024
    :cond_11
    return-void
.end method

.method public qQ()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1995
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mF:Z

    if-eqz v0, :cond_6

    .line 1996
    return-void

    .line 1999
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    .line 2000
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v2

    const v3, 0x7f0a0330

    invoke-virtual {v2, v3}, Lcom/android/common/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1999
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2000
    const-string/jumbo v1, "on"

    .line 1999
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2001
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/common/appService/W;->ml:Landroid/media/MediaPlayer;

    .line 2002
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2004
    const v1, 0x7f090040

    .line 2002
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 2005
    iget-object v0, p0, Lcom/android/common/appService/W;->ml:Landroid/media/MediaPlayer;

    .line 2006
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 2007
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 2008
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 2005
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 2009
    iget-object v0, p0, Lcom/android/common/appService/W;->ml:Landroid/media/MediaPlayer;

    .line 2010
    const/4 v1, 0x1

    .line 2009
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2011
    iget-object v0, p0, Lcom/android/common/appService/W;->ml:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 2012
    iget-object v0, p0, Lcom/android/common/appService/W;->ml:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 2013
    iget-object v0, p0, Lcom/android/common/appService/W;->ml:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_62} :catch_63

    .line 1994
    :cond_62
    :goto_62
    return-void

    .line 2015
    :catch_63
    move-exception v0

    .line 2016
    sget-object v1, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "playFastSound failed"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2017
    iget-object v0, p0, Lcom/android/common/appService/W;->ml:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_62

    .line 2018
    iget-object v0, p0, Lcom/android/common/appService/W;->ml:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 2019
    iput-object v6, p0, Lcom/android/common/appService/W;->ml:Landroid/media/MediaPlayer;

    goto :goto_62
.end method

.method public qR()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1347
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rZ()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1348
    invoke-direct {p0}, Lcom/android/common/appService/W;->sU()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_10

    .line 1349
    :cond_f
    return-void

    .line 1351
    :cond_10
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Lt()I

    move-result v0

    if-lez v0, :cond_40

    .line 1352
    invoke-virtual {p0, v2}, Lcom/android/common/appService/W;->tt(Z)V

    .line 1353
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->Lc(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1354
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->Lg()V

    .line 1356
    new-instance v0, Lcom/android/common/appService/az;

    invoke-direct {v0, p0}, Lcom/android/common/appService/az;-><init>(Lcom/android/common/appService/W;)V

    .line 1368
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_41

    .line 1369
    iget-object v1, p0, Lcom/android/common/appService/W;->lX:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1345
    :cond_40
    :goto_40
    return-void

    .line 1371
    :cond_41
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_40
.end method

.method public qS()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1309
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rZ()Z

    move-result v2

    if-nez v2, :cond_10

    .line 1310
    invoke-direct {p0}, Lcom/android/common/appService/W;->sU()Lcom/android/common/camerastate/DeviceState;

    move-result-object v2

    sget-object v3, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-eq v2, v3, :cond_11

    .line 1311
    :cond_10
    return-void

    .line 1310
    :cond_11
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1313
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/setting/o;->Xq()Ljava/lang/String;

    move-result-object v2

    .line 1314
    if-eqz v2, :cond_2a

    const-string/jumbo v3, "off"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_2a
    return-void

    .line 1316
    :cond_2b
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->Lt()I

    move-result v2

    if-lez v2, :cond_8a

    .line 1317
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v2

    monitor-enter v2

    .line 1318
    :try_start_3a
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rZ()Z

    move-result v3

    if-nez v3, :cond_58

    .line 1319
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/common/appService/W;->tt(Z)V

    .line 1320
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v3

    iget-object v4, p0, Lcom/android/common/appService/W;->mj:Lcom/android/common/h/l;

    invoke-virtual {v4}, Lcom/android/common/h/l;->acd()Lcom/android/common/h/e;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/common/cameradevice/j;->Lc(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1321
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/cameradevice/j;->Lf()V
    :try_end_58
    .catchall {:try_start_3a .. :try_end_58} :catchall_8b

    :cond_58
    monitor-exit v2

    .line 1324
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/android/common/appService/ay;

    invoke-direct {v3, p0}, Lcom/android/common/appService/ay;-><init>(Lcom/android/common/appService/W;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1335
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rt()Lcom/android/common/ui/FaceView;

    move-result-object v2

    .line 1336
    if-eqz v2, :cond_8a

    .line 1337
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ri()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/common/ui/FaceView;->GD(I)V

    .line 1338
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v4

    aget-object v3, v3, v4

    .line 1339
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v0, :cond_8e

    :goto_84
    invoke-virtual {v2, v0}, Lcom/android/common/ui/FaceView;->GE(Z)V

    .line 1340
    invoke-virtual {v2}, Lcom/android/common/ui/FaceView;->GF()V

    .line 1308
    :cond_8a
    return-void

    .line 1317
    :catchall_8b
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_8e
    move v0, v1

    .line 1339
    goto :goto_84
.end method

.method public qT()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 573
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/common/h;->apT(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 574
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rt()Lcom/android/common/ui/FaceView;

    move-result-object v0

    if-nez v0, :cond_10

    .line 581
    :cond_f
    return-void

    .line 575
    :cond_10
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    aget-object v0, v0, v1

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v0, :cond_f

    .line 576
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    .line 573
    if-nez v0, :cond_f

    .line 577
    invoke-direct {p0}, Lcom/android/common/appService/W;->sX()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_f

    .line 578
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_f

    .line 579
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_f

    .line 580
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_f

    .line 583
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "captureForSmilePhoto"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 585
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/ActivityBase;->atK(Z)V

    .line 587
    :cond_5d
    invoke-direct {p0, v2}, Lcom/android/common/appService/W;->tm(Z)V

    .line 588
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "front_2"

    const-string/jumbo v2, "smile"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    return-void
.end method

.method public qU()J
    .registers 3

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/common/appService/W;->mQ:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agA()J

    move-result-wide v0

    return-wide v0
.end method

.method public qV(J)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 1178
    const-wide/16 v2, -0x1

    cmp-long v0, p1, v2

    if-nez v0, :cond_33

    .line 1179
    const v0, 0x7f0a02c1

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v0

    .line 1193
    :goto_e
    if-eqz v0, :cond_76

    .line 1194
    iget-object v2, p0, Lcom/android/common/appService/W;->mQ:Lcom/android/common/storagemanager/f;

    if-eqz v2, :cond_19

    .line 1195
    iget-object v2, p0, Lcom/android/common/appService/W;->mQ:Lcom/android/common/storagemanager/f;

    invoke-virtual {v2, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 1197
    :cond_19
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v1, v2, :cond_24

    .line 1198
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qB()V

    .line 1201
    :cond_24
    iget-object v1, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    if-eqz v1, :cond_32

    .line 1203
    iget-object v1, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    new-instance v2, Lcom/android/common/appService/ax;

    invoke-direct {v2, p0, v0}, Lcom/android/common/appService/ax;-><init>(Lcom/android/common/appService/W;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1176
    :cond_32
    :goto_32
    return-void

    .line 1180
    :cond_33
    const-wide/16 v2, -0x2

    cmp-long v0, p1, v2

    if-nez v0, :cond_41

    .line 1181
    const v0, 0x7f0a0232

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1182
    :cond_41
    const-wide/16 v2, -0x3

    cmp-long v0, p1, v2

    if-nez v0, :cond_67

    .line 1183
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/common/h;->apS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/common/h;->apT(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1184
    const v0, 0x7f0a02ce

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1187
    :cond_5f
    const v0, 0x7f0a0233

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1189
    :cond_67
    const-wide/32 v2, 0x6400000

    cmp-long v0, p1, v2

    if-gtz v0, :cond_7d

    .line 1190
    const v0, 0x7f0a0278

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 1214
    :cond_76
    invoke-virtual {p0}, Lcom/android/common/appService/W;->sw()Lcom/android/common/ui/ai;

    move-result-object v0

    if-eqz v0, :cond_32

    goto :goto_32

    :cond_7d
    move-object v0, v1

    goto :goto_e
.end method

.method public qW(I)V
    .registers 2

    .prologue
    .line 2217
    iput p1, p0, Lcom/android/common/appService/W;->lw:I

    .line 2216
    return-void
.end method

.method public qX()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2267
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->adS()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 2268
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v1, v2, :cond_3d

    .line 2269
    const-string/jumbo v1, "on"

    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v2

    .line 2270
    const-string/jumbo v3, "pref_fusion_key"

    const-string/jumbo v4, "off"

    .line 2269
    invoke-virtual {v2, v3, v4}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2267
    if-eqz v1, :cond_3d

    .line 2271
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v2

    if-ne v1, v2, :cond_3d

    const/4 v0, 0x1

    .line 2267
    :cond_3d
    return v0
.end method

.method public qY()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2352
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xv()I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public qZ()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 1126
    iget-boolean v0, p0, Lcom/android/common/appService/W;->ma:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public qa()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public qb(I)V
    .registers 4

    .prologue
    .line 1012
    iget v0, p0, Lcom/android/common/appService/W;->mI:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/common/appService/W;->mI:I

    .line 1013
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_16

    if-ltz p1, :cond_16

    .line 1014
    iget-object v0, p0, Lcom/android/common/appService/W;->mr:Lcom/android/common/h/h;

    iget v1, p0, Lcom/android/common/appService/W;->mI:I

    invoke-virtual {v0, v1}, Lcom/android/common/h/h;->abQ(I)V

    .line 1011
    :cond_16
    return-void
.end method

.method public qc()I
    .registers 2

    .prologue
    .line 1018
    iget v0, p0, Lcom/android/common/appService/W;->mI:I

    return v0
.end method

.method public qd()I
    .registers 2

    .prologue
    .line 1000
    iget v0, p0, Lcom/android/common/appService/W;->lB:I

    return v0
.end method

.method public qe()V
    .registers 3

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_d

    .line 608
    :cond_c
    return-void

    .line 610
    :cond_d
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acV()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 611
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KN()V

    .line 613
    :cond_22
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eO()Z

    move-result v0

    if-nez v0, :cond_42

    .line 614
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ek()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "manual"

    if-eq v0, v1, :cond_42

    .line 615
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;->eT:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/i;->ft(Lcom/android/common/independentFocusExposure/CameraFocusService$FocusModeState;)V

    .line 617
    :cond_42
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    .line 618
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->pU(I)V

    .line 606
    return-void
.end method

.method public qf()V
    .registers 5

    .prologue
    .line 1919
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mw:Z

    if-eqz v0, :cond_5

    return-void

    .line 1920
    :cond_5
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    .line 1921
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0330

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1920
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1922
    const-string/jumbo v1, "on"

    .line 1920
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1924
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rX()Lcom/android/common/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/common/d;->aog(Landroid/content/Context;)V

    .line 1918
    :cond_2d
    return-void
.end method

.method public qg()Lcom/android/common/appService/a;
    .registers 2

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/common/appService/W;->mv:Lcom/android/common/appService/a;

    return-object v0
.end method

.method public qh(Lcom/android/common/appService/a;)V
    .registers 2

    .prologue
    .line 2163
    iput-object p1, p0, Lcom/android/common/appService/W;->mv:Lcom/android/common/appService/a;

    .line 2162
    return-void
.end method

.method public qi(Landroid/net/Uri;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1967
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    .line 1968
    if-eqz p1, :cond_9

    if-nez v0, :cond_a

    .line 1969
    :cond_9
    return v1

    .line 1970
    :cond_a
    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1971
    iget-object v0, p0, Lcom/android/common/appService/W;->mQ:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agE()Lcom/android/common/storagemanager/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/storagemanager/b;->agl(Landroid/net/Uri;)Z

    move-result v0

    return v0

    .line 1973
    :cond_1b
    return v1
.end method

.method public qj()I
    .registers 2

    .prologue
    .line 1283
    iget v0, p0, Lcom/android/common/appService/W;->mR:I

    return v0
.end method

.method public qk()Lcom/android/common/m/c;
    .registers 2

    .prologue
    .line 1464
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aiZ:Lcom/android/common/m/c;

    return-object v0
.end method

.method public ql(I)Lcom/android/common/setting/o;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 761
    iget-object v0, p0, Lcom/android/common/appService/W;->mL:Lcom/android/common/setting/g;

    if-eqz v0, :cond_c

    .line 762
    iget-object v0, p0, Lcom/android/common/appService/W;->mL:Lcom/android/common/setting/g;

    invoke-virtual {v0, p1}, Lcom/android/common/setting/g;->Va(I)Lcom/android/common/setting/o;

    move-result-object v0

    return-object v0

    .line 764
    :cond_c
    return-object v1
.end method

.method public qm(I)Lcom/android/common/cameradevice/p;
    .registers 3

    .prologue
    .line 757
    invoke-virtual {p0, p1}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    return-object v0
.end method

.method public qn(Z)V
    .registers 3

    .prologue
    .line 1753
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/common/appService/W;->rP(ZI)V

    .line 1752
    return-void
.end method

.method public qo()Lcom/android/common/appService/c;
    .registers 2

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/android/common/appService/W;->mV:Lcom/android/common/appService/c;

    if-nez v0, :cond_b

    .line 1884
    new-instance v0, Lcom/android/common/appService/c;

    invoke-direct {v0, p0}, Lcom/android/common/appService/c;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->mV:Lcom/android/common/appService/c;

    .line 1886
    :cond_b
    iget-object v0, p0, Lcom/android/common/appService/W;->mV:Lcom/android/common/appService/c;

    return-object v0
.end method

.method public qp(Ljava/lang/CharSequence;IIII)V
    .registers 7

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/common/appService/W;->mS:Landroid/widget/Toast;

    if-nez v0, :cond_17

    .line 1226
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/W;->mS:Landroid/widget/Toast;

    .line 1231
    :goto_c
    iget-object v0, p0, Lcom/android/common/appService/W;->mS:Landroid/widget/Toast;

    invoke-virtual {v0, p3, p4, p5}, Landroid/widget/Toast;->setGravity(III)V

    .line 1232
    iget-object v0, p0, Lcom/android/common/appService/W;->mS:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1224
    return-void

    .line 1228
    :cond_17
    iget-object v0, p0, Lcom/android/common/appService/W;->mS:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1229
    iget-object v0, p0, Lcom/android/common/appService/W;->mS:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_c
.end method

.method public qq()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1424
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    .line 1425
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1426
    iget-object v0, p0, Lcom/android/common/appService/W;->mQ:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agE()Lcom/android/common/storagemanager/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/storagemanager/b;->ago()I

    move-result v0

    .line 1428
    if-lez v0, :cond_1b

    const/4 v0, 0x1

    return v0

    .line 1430
    :cond_1b
    return v1
.end method

.method public qr()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1548
    invoke-direct {p0}, Lcom/android/common/appService/W;->sU()Lcom/android/common/camerastate/DeviceState;

    move-result-object v2

    sget-object v3, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-eq v2, v3, :cond_1c

    .line 1549
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/independentFocusExposure/i;->fb()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    sget-object v3, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    if-eq v2, v3, :cond_1d

    .line 1548
    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    .line 1549
    goto :goto_1c
.end method

.method public qs(Z)V
    .registers 2

    .prologue
    .line 2314
    iput-boolean p1, p0, Lcom/android/common/appService/W;->lt:Z

    .line 2313
    return-void
.end method

.method public qt()Z
    .registers 2

    .prologue
    .line 2318
    iget-boolean v0, p0, Lcom/android/common/appService/W;->lt:Z

    return v0
.end method

.method public qu()Lcom/android/common/setting/d;
    .registers 2

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/common/appService/W;->mL:Lcom/android/common/setting/g;

    invoke-virtual {v0}, Lcom/android/common/setting/g;->Vd()Lcom/android/common/setting/d;

    move-result-object v0

    return-object v0
.end method

.method public qv()I
    .registers 2

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    if-eqz v0, :cond_b

    .line 1513
    iget-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    invoke-virtual {v0}, Lcom/android/common/appService/N;->oi()I

    move-result v0

    return v0

    .line 1515
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public qw()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/common/appService/W;->lA:Ljava/lang/String;

    return-object v0
.end method

.method public qx(Lcom/android/common/appService/CameraMember;)V
    .registers 5

    .prologue
    .line 710
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/common/appService/W;->tB(ILcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/W;->lF:Lcom/android/common/appService/CameraMember;

    .line 712
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 713
    const-string/jumbo v1, "pref_camera_member"

    iget-object v2, p0, Lcom/android/common/appService/W;->lF:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 714
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 709
    return-void
.end method

.method public qy(Lcom/android/common/cameradevice/g;)V
    .registers 2

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/android/common/appService/W;->mx:Lcom/android/common/cameradevice/g;

    .line 1440
    return-void
.end method

.method public qz()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 367
    iget-object v1, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 368
    const-string/jumbo v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 369
    const-string/jumbo v2, "MODE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    .line 368
    :cond_1e
    return v0
.end method

.method public rA(I)Lcom/android/common/setting/e;
    .registers 3

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/common/appService/W;->mL:Lcom/android/common/setting/g;

    invoke-virtual {v0, p1}, Lcom/android/common/setting/g;->Vc(I)Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method public rB()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1678
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mw:Z

    if-nez v0, :cond_13

    .line 1679
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1680
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v2, :cond_6b

    .line 1683
    :cond_13
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "camera paused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/common/appService/W;->mw:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; storageEnough: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1684
    const-string/jumbo v2, "; FunctionState: "

    .line 1683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1684
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 1683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1684
    const-string/jumbo v2, "; UIState: "

    .line 1683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1684
    invoke-direct {p0}, Lcom/android/common/appService/W;->sX()Lcom/android/common/camerastate/UIState;

    move-result-object v2

    .line 1683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1685
    const-string/jumbo v2, "; DeviceState: "

    .line 1683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1685
    invoke-direct {p0}, Lcom/android/common/appService/W;->sU()Lcom/android/common/camerastate/DeviceState;

    move-result-object v2

    .line 1683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    return-void

    .line 1681
    :cond_6b
    invoke-direct {p0}, Lcom/android/common/appService/W;->sX()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne v0, v2, :cond_13

    .line 1682
    invoke-direct {p0}, Lcom/android/common/appService/W;->sU()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v2, :cond_13

    .line 1689
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-nez v0, :cond_89

    .line 1690
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v2, :cond_8d

    .line 1691
    :cond_89
    invoke-virtual {p0}, Lcom/android/common/appService/W;->px()V

    .line 1692
    return-void

    .line 1696
    :cond_8d
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Lp()Ljava/lang/String;

    move-result-object v0

    .line 1698
    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    const/4 v0, 0x0

    .line 1699
    :goto_9f
    sget-boolean v2, Lcom/android/common/h;->ahs:Z

    if-eqz v2, :cond_a9

    .line 1700
    if-nez v0, :cond_bf

    invoke-direct {p0}, Lcom/android/common/appService/W;->tk()Z

    move-result v0

    .line 1702
    :cond_a9
    :goto_a9
    if-eqz v0, :cond_c1

    .line 1703
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rC()Lcom/android/common/i/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/i/e;->afk(I)V

    .line 1704
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rC()Lcom/android/common/i/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/i/e;->afl()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1677
    :cond_bc
    :goto_bc
    return-void

    :cond_bd
    move v0, v1

    .line 1698
    goto :goto_9f

    :cond_bf
    move v0, v1

    .line 1700
    goto :goto_a9

    .line 1707
    :cond_c1
    invoke-direct {p0}, Lcom/android/common/appService/W;->tA()Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 1708
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    const-string/jumbo v1, "normal_6"

    const-string/jumbo v2, "quality-priority"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bc
.end method

.method public rC()Lcom/android/common/i/e;
    .registers 2

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/android/common/appService/W;->mq:Lcom/android/common/i/e;

    if-nez v0, :cond_b

    .line 1847
    new-instance v0, Lcom/android/common/i/e;

    invoke-direct {v0, p0}, Lcom/android/common/i/e;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->mq:Lcom/android/common/i/e;

    .line 1849
    :cond_b
    iget-object v0, p0, Lcom/android/common/appService/W;->mq:Lcom/android/common/i/e;

    return-object v0
.end method

.method public rD()Lcom/android/common/appService/E;
    .registers 2

    .prologue
    .line 2292
    iget-object v0, p0, Lcom/android/common/appService/W;->lW:Lcom/android/common/appService/E;

    return-object v0
.end method

.method public rE()Z
    .registers 2

    .prologue
    .line 1251
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mF:Z

    return v0
.end method

.method public rF()I
    .registers 2

    .prologue
    .line 2108
    iget v0, p0, Lcom/android/common/appService/W;->lM:I

    return v0
.end method

.method public rG(I)V
    .registers 2

    .prologue
    .line 2104
    iput p1, p0, Lcom/android/common/appService/W;->lM:I

    .line 2103
    return-void
.end method

.method public rH(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1949
    iput-object p1, p0, Lcom/android/common/appService/W;->lA:Ljava/lang/String;

    .line 1948
    return-void
.end method

.method public rI(I)V
    .registers 2

    .prologue
    .line 1279
    iput p1, p0, Lcom/android/common/appService/W;->mR:I

    .line 1278
    return-void
.end method

.method public rJ()V
    .registers 2

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/common/appService/W;->lL:Lcom/android/common/i/c;

    invoke-interface {v0}, Lcom/android/common/i/c;->aeS()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/appService/W;->mF:Z

    .line 1256
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->pz(I)V

    .line 1257
    iget-object v0, p0, Lcom/android/common/appService/W;->mr:Lcom/android/common/h/h;

    invoke-virtual {v0}, Lcom/android/common/h/h;->abO()V

    .line 1258
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nt()V

    .line 1259
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eL()Z

    .line 1253
    :cond_22
    return-void
.end method

.method public rK()Lcom/android/common/appService/s;
    .registers 2

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/common/appService/W;->my:Lcom/android/common/appService/s;

    if-nez v0, :cond_b

    .line 1854
    new-instance v0, Lcom/android/common/appService/s;

    invoke-direct {v0, p0}, Lcom/android/common/appService/s;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->my:Lcom/android/common/appService/s;

    .line 1856
    :cond_b
    iget-object v0, p0, Lcom/android/common/appService/W;->my:Lcom/android/common/appService/s;

    return-object v0
.end method

.method public rL()J
    .registers 3

    .prologue
    .line 1062
    iget-wide v0, p0, Lcom/android/common/appService/W;->lV:J

    return-wide v0
.end method

.method public rM()J
    .registers 3

    .prologue
    .line 1106
    iget-wide v0, p0, Lcom/android/common/appService/W;->ly:J

    return-wide v0
.end method

.method public rN(J)V
    .registers 4

    .prologue
    .line 1102
    iput-wide p1, p0, Lcom/android/common/appService/W;->ly:J

    .line 1101
    return-void
.end method

.method public rO()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 377
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "capture"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mw:Z

    if-nez v0, :cond_14d

    .line 380
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v2}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 384
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nz()V

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/common/appService/W;->ty(J)V

    .line 387
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/common/appService/W;->mA:J

    .line 388
    iput-object v1, p0, Lcom/android/common/appService/W;->mh:[B

    .line 390
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pF()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->tx(I)V

    .line 393
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pC()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/common/h;->aoU(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/appService/W;->mi:I

    .line 394
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "orientation: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pC()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "; jpegRotation: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/common/appService/W;->mi:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v2, Lcom/android/common/appService/CameraMember;->jh:Lcom/android/common/appService/CameraMember;

    if-ne v0, v2, :cond_80

    .line 397
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {v0, v3}, Lcom/android/common/h;->aoU(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/appService/W;->mi:I

    .line 399
    :cond_80
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LA()Ljava/lang/String;

    move-result-object v0

    .line 401
    const-string/jumbo v2, "jpeg"

    .line 402
    if-eqz v0, :cond_14e

    .line 403
    const-string/jumbo v2, "jpeg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 402
    if-eqz v0, :cond_14e

    .line 404
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    if-eqz v0, :cond_14e

    .line 405
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    .line 407
    :goto_a4
    const-string/jumbo v2, "-1"

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_151

    move v2, v3

    .line 409
    :goto_b6
    sget-object v5, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    invoke-direct {p0, v5}, Lcom/android/common/appService/W;->ts(Lcom/android/common/camerastate/DeviceState;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v5

    monitor-enter v5

    .line 412
    :try_start_c0
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/android/common/h;->aqh(Landroid/content/Context;Lcom/android/common/cameradevice/p;Landroid/location/Location;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    iget v6, p0, Lcom/android/common/appService/W;->mi:I

    invoke-interface {v0, v6}, Lcom/android/common/cameradevice/p;->MJ(I)V

    .line 414
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/common/cameradevice/p;->MM(I)V

    .line 415
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/setting/o;->Xz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pV()I

    move-result v6

    invoke-interface {v0, v2, v6}, Lcom/android/common/cameradevice/p;->Nr(Ljava/lang/String;I)V

    .line 416
    invoke-direct {p0}, Lcom/android/common/appService/W;->tr()V

    .line 417
    invoke-direct {p0}, Lcom/android/common/appService/W;->tw()V

    .line 418
    iget-boolean v0, p0, Lcom/android/common/appService/W;->lr:Z

    if-eqz v0, :cond_110

    .line 419
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adj()Z

    move-result v0

    .line 418
    if-eqz v0, :cond_110

    .line 420
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v2, "on"

    invoke-interface {v0, v2}, Lcom/android/common/cameradevice/p;->Oa(Ljava/lang/String;)V

    .line 422
    :cond_110
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V
    :try_end_11b
    .catchall {:try_start_c0 .. :try_end_11b} :catchall_154

    monitor-exit v5

    .line 425
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "takePicture"

    invoke-static {v0, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/android/common/appService/W;->to()V

    .line 429
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rv()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->rb(I)V

    .line 430
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rc()V

    .line 433
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/common/cameradevice/j;->KA(Lcom/android/common/cameradevice/s;Landroid/hardware/Camera$PictureCallback;)V

    .line 434
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v2, :cond_157

    .line 435
    iget-object v0, p0, Lcom/android/common/appService/W;->lL:Lcom/android/common/i/c;

    invoke-interface {v0}, Lcom/android/common/i/c;->pa()Z

    .line 467
    :cond_145
    :goto_145
    iget-object v0, p0, Lcom/android/common/appService/W;->lX:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 469
    return v4

    .line 381
    :cond_14d
    return v3

    :cond_14e
    move-object v0, v1

    .line 404
    goto/16 :goto_a4

    :cond_151
    move v2, v4

    .line 407
    goto/16 :goto_b6

    .line 411
    :catchall_154
    move-exception v0

    monitor-exit v5

    throw v0

    .line 436
    :cond_157
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nl()Lcom/android/common/appService/V;

    move-result-object v0

    if-eqz v0, :cond_177

    .line 437
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nl()Lcom/android/common/appService/V;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/V;->pa()Z

    move-result v0

    .line 439
    if-nez v0, :cond_145

    .line 440
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    goto :goto_145

    .line 444
    :cond_177
    iget-boolean v0, p0, Lcom/android/common/appService/W;->lr:Z

    if-nez v0, :cond_1a5

    .line 445
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 446
    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    const v2, 0x7f0a0330

    invoke-virtual {p0, v2}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 445
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    const-string/jumbo v1, "off"

    .line 445
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19c

    .line 447
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rl()Z

    move-result v0

    .line 445
    if-eqz v0, :cond_1ca

    .line 448
    :cond_19c
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/common/cameradevice/j;->KB(Z)V

    .line 449
    iget-object v1, p0, Lcom/android/common/appService/W;->mM:Lcom/android/common/e/b;

    .line 456
    :cond_1a5
    :goto_1a5
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->no()Landroid/hardware/Camera$PictureCallback;

    move-result-object v2

    .line 457
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nn()Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    .line 458
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v3

    monitor-enter v3

    .line 459
    :try_start_1ba
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v5

    .line 461
    if-eqz v2, :cond_1d4

    .line 462
    :goto_1c0
    iget-object v6, p0, Lcom/android/common/appService/W;->mz:Lcom/android/common/e/g;

    .line 463
    if-eqz v0, :cond_1d7

    .line 459
    :goto_1c4
    invoke-virtual {v5, v1, v2, v6, v0}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_1c7
    .catchall {:try_start_1ba .. :try_end_1c7} :catchall_1dc

    monitor-exit v3

    goto/16 :goto_145

    .line 451
    :cond_1ca
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/common/cameradevice/j;->KB(Z)V

    .line 452
    iget-object v1, p0, Lcom/android/common/appService/W;->mM:Lcom/android/common/e/b;

    goto :goto_1a5

    .line 461
    :cond_1d4
    :try_start_1d4
    iget-object v2, p0, Lcom/android/common/appService/W;->mG:Lcom/android/common/e/f;

    goto :goto_1c0

    .line 463
    :cond_1d7
    invoke-direct {p0}, Lcom/android/common/appService/W;->sR()Landroid/hardware/Camera$PictureCallback;
    :try_end_1da
    .catchall {:try_start_1d4 .. :try_end_1da} :catchall_1dc

    move-result-object v0

    goto :goto_1c4

    .line 458
    :catchall_1dc
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public rP(ZI)V
    .registers 3

    .prologue
    .line 1756
    return-void
.end method

.method public rQ(J)V
    .registers 4

    .prologue
    .line 1082
    iput-wide p1, p0, Lcom/android/common/appService/W;->mH:J

    .line 1081
    return-void
.end method

.method public rR()Z
    .registers 2

    .prologue
    .line 2231
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pd()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2232
    iget-boolean v0, p0, Lcom/android/common/appService/W;->lR:Z

    .line 2231
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public rS()V
    .registers 5

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/android/common/h;->aqn(Landroid/content/Context;J)V

    .line 1980
    return-void
.end method

.method public rT()V
    .registers 3

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/android/common/appService/W;->mQ:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agx()J

    .line 1237
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/appService/W;->qV(J)V

    .line 1235
    return-void
.end method

.method public rU()Lcom/android/common/h/l;
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/common/appService/W;->mj:Lcom/android/common/h/l;

    return-object v0
.end method

.method public rV()Z
    .registers 3

    .prologue
    .line 1544
    invoke-direct {p0}, Lcom/android/common/appService/W;->sU()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public rW()V
    .registers 2

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    if-eqz v0, :cond_b

    .line 1164
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->ave()V

    .line 1162
    :cond_b
    return-void
.end method

.method public rX()Lcom/android/common/d;
    .registers 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/common/appService/W;->lH:Lcom/android/common/d;

    return-object v0
.end method

.method public rY(Landroid/net/Uri;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1957
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    .line 1958
    if-eqz p1, :cond_9

    if-nez v0, :cond_a

    .line 1959
    :cond_9
    return v1

    .line 1960
    :cond_a
    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1961
    iget-object v0, p0, Lcom/android/common/appService/W;->mQ:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agE()Lcom/android/common/storagemanager/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/storagemanager/b;->agk(Landroid/net/Uri;)Z

    move-result v0

    return v0

    .line 1963
    :cond_1b
    return v1
.end method

.method public rZ()Z
    .registers 2

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/android/common/appService/W;->lP:Z

    return v0
.end method

.method public ra()Z
    .registers 2

    .prologue
    .line 1800
    invoke-virtual {p0}, Lcom/android/common/appService/W;->sJ()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1801
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ti()Z

    move-result v0

    .line 1800
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public rb(I)V
    .registers 2

    .prologue
    .line 996
    iput p1, p0, Lcom/android/common/appService/W;->lB:I

    .line 995
    return-void
.end method

.method public rc()V
    .registers 2

    .prologue
    .line 1008
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/appService/W;->mI:I

    .line 1007
    return-void
.end method

.method public rd()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2296
    sget-object v3, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHdrOff = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XI()Z

    move-result v0

    if-eqz v0, :cond_31

    move v0, v1

    :goto_1b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XI()Z

    move-result v0

    if-eqz v0, :cond_33

    :goto_30
    return v1

    :cond_31
    move v0, v2

    .line 2296
    goto :goto_1b

    :cond_33
    move v1, v2

    .line 2297
    goto :goto_30
.end method

.method public re(Z)V
    .registers 2

    .prologue
    .line 2130
    iput-boolean p1, p0, Lcom/android/common/appService/W;->lY:Z

    .line 2129
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    .line 266
    iput-object v0, p0, Lcom/android/common/appService/W;->lX:Landroid/os/Handler;

    .line 267
    iput-object v0, p0, Lcom/android/common/appService/W;->lD:Lcom/android/common/appService/H;

    .line 268
    iput-object v0, p0, Lcom/android/common/appService/W;->mo:Lcom/android/common/appService/y;

    .line 270
    iput-object v0, p0, Lcom/android/common/appService/W;->lG:Lcom/android/common/ui/i;

    .line 271
    iput-object v0, p0, Lcom/android/common/appService/W;->mL:Lcom/android/common/setting/g;

    .line 272
    iput-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    .line 273
    invoke-direct {p0, v0}, Lcom/android/common/appService/W;->tc(Lcom/android/common/ActivityBase;)V

    .line 264
    return-void
.end method

.method public rf()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2144
    :try_start_1
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2145
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_18} :catch_19

    return-object v0

    .line 2146
    :catch_19
    move-exception v0

    .line 2149
    return-object v3
.end method

.method public rg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2159
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "VersionName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rh(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2153
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2154
    const-string/jumbo v1, "VersionName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2155
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2152
    return-void
.end method

.method public ri()I
    .registers 3

    .prologue
    .line 948
    iget v0, p0, Lcom/android/common/appService/W;->lN:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 949
    invoke-virtual {p0}, Lcom/android/common/appService/W;->sZ()V

    .line 951
    :cond_8
    iget v0, p0, Lcom/android/common/appService/W;->lN:I

    return v0
.end method

.method public rj()J
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    .line 1583
    const-string/jumbo v0, "pref_camera_delay_shoot_key"

    invoke-direct {p0, v0}, Lcom/android/common/appService/W;->sT(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    .line 1584
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pX()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1585
    return-wide v2

    .line 1587
    :cond_10
    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    .line 1589
    const-string/jumbo v1, "delay_on_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1590
    const-wide/16 v0, 0xbb8

    return-wide v0

    .line 1591
    :cond_20
    const-string/jumbo v1, "delay_on_5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1592
    const-wide/16 v0, 0x1388

    return-wide v0

    .line 1593
    :cond_2c
    const-string/jumbo v1, "delay_on_10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1594
    const-wide/16 v0, 0x2710

    return-wide v0

    .line 1595
    :cond_38
    const-string/jumbo v1, "delay_on_20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1596
    const-wide/16 v0, 0x4e20

    return-wide v0

    .line 1598
    :cond_44
    return-wide v2
.end method

.method public rk()Z
    .registers 2

    .prologue
    .line 2138
    iget-boolean v0, p0, Lcom/android/common/appService/W;->lY:Z

    return v0
.end method

.method public rl()Z
    .registers 5

    .prologue
    .line 2260
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aed()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2261
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_2c

    .line 2262
    const-string/jumbo v0, "on"

    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    .line 2263
    const-string/jumbo v2, "pref_live_photo_key"

    const-string/jumbo v3, "off"

    .line 2262
    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2260
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public rm()V
    .registers 4

    .prologue
    .line 2301
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acS()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2302
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v1

    .line 2304
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v2, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v0, v2, :cond_28

    const-string/jumbo v0, "pref_third_arith_hdr_key"

    .line 2302
    :goto_1d
    invoke-virtual {v1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 2306
    const-string/jumbo v1, "off"

    .line 2302
    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 2300
    :goto_27
    return-void

    .line 2305
    :cond_28
    const-string/jumbo v0, "pref_video_sensor_hdr_key"

    goto :goto_1d

    .line 2308
    :cond_2c
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 2309
    const-string/jumbo v1, "Off"

    .line 2308
    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public rn()Z
    .registers 5

    .prologue
    .line 2275
    const-string/jumbo v0, "on"

    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    .line 2276
    const-string/jumbo v2, "pref_camera_backlight_flashmode_key"

    .line 2277
    const v3, 0x7f0a025d

    invoke-virtual {p0, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v3

    .line 2275
    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2278
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rd()Z

    move-result v0

    .line 2275
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public ro()Z
    .registers 2

    .prologue
    .line 1805
    invoke-virtual {p0}, Lcom/android/common/appService/W;->sJ()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1806
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ti()Z

    move-result v0

    .line 1805
    if-nez v0, :cond_18

    .line 1807
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pW()Z

    move-result v0

    .line 1805
    if-nez v0, :cond_18

    .line 1808
    invoke-virtual {p0}, Lcom/android/common/appService/W;->th()Z

    move-result v0

    .line 1805
    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public rp()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2221
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pretty_expandable_item"

    .line 2222
    const/4 v2, 0x5

    .line 2221
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    .line 2223
    :cond_f
    return v3
.end method

.method public rq([I)V
    .registers 2

    .prologue
    .line 2346
    iput-object p1, p0, Lcom/android/common/appService/W;->mU:[I

    .line 2345
    return-void
.end method

.method public rr()Z
    .registers 3

    .prologue
    .line 1786
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-eq v0, v1, :cond_1a

    .line 1787
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mw:Z

    .line 1786
    if-nez v0, :cond_1a

    .line 1788
    invoke-direct {p0}, Lcom/android/common/appService/W;->sU()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_1c

    .line 1786
    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    .line 1789
    :cond_1c
    invoke-direct {p0}, Lcom/android/common/appService/W;->sU()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_1a

    .line 1786
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public rs()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1553
    invoke-direct {p0}, Lcom/android/common/appService/W;->sU()Lcom/android/common/camerastate/DeviceState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-eq v1, v2, :cond_11

    .line 1554
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    if-eq v1, v2, :cond_12

    .line 1553
    :cond_11
    :goto_11
    return v0

    .line 1554
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public rt()Lcom/android/common/ui/FaceView;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1434
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1435
    return-object v1

    .line 1437
    :cond_8
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nm()Lcom/android/common/ui/FaceView;

    move-result-object v0

    return-object v0
.end method

.method public ru([Landroid/hardware/Camera$Face;)V
    .registers 2

    .prologue
    .line 2360
    iput-object p1, p0, Lcom/android/common/appService/W;->lQ:[Landroid/hardware/Camera$Face;

    .line 2359
    return-void
.end method

.method public rv()I
    .registers 2

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Ly()I

    move-result v0

    return v0
.end method

.method public rw()J
    .registers 3

    .prologue
    .line 1086
    iget-wide v0, p0, Lcom/android/common/appService/W;->mH:J

    return-wide v0
.end method

.method public rx()J
    .registers 3

    .prologue
    .line 1078
    iget-wide v0, p0, Lcom/android/common/appService/W;->mA:J

    return-wide v0
.end method

.method public ry(Lcom/android/common/appService/O;)V
    .registers 3

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    if-eqz v0, :cond_9

    .line 1520
    iget-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/N;->oe(Lcom/android/common/appService/O;)V

    .line 1518
    :cond_9
    return-void
.end method

.method public rz(Lcom/android/common/appService/O;)V
    .registers 3

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    if-eqz v0, :cond_9

    .line 1526
    iget-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/N;->ol(Lcom/android/common/appService/O;)V

    .line 1524
    :cond_9
    return-void
.end method

.method public sA(Z)V
    .registers 4

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    if-nez v0, :cond_d

    .line 1470
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "OrientationThread is not created"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    return-void

    .line 1473
    :cond_d
    if-eqz p1, :cond_23

    .line 1474
    new-instance v0, Lcom/android/common/appService/aB;

    invoke-direct {v0, p0}, Lcom/android/common/appService/aB;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->mu:Ljava/lang/Thread;

    .line 1482
    iget-object v0, p0, Lcom/android/common/appService/W;->mu:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1487
    :goto_1b
    iget-object v0, p0, Lcom/android/common/appService/W;->lW:Lcom/android/common/appService/E;

    iget-object v1, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/E;->mt(Landroid/content/Context;)V

    .line 1468
    return-void

    .line 1484
    :cond_23
    iget-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    invoke-virtual {v0}, Lcom/android/common/appService/N;->og()V

    .line 1485
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "syn eable orientaion"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public sB(Lcom/android/common/ActivityBase;)V
    .registers 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/common/appService/W;->mj:Lcom/android/common/h/l;

    if-eqz v0, :cond_5

    return-void

    .line 627
    :cond_5
    new-instance v0, Lcom/android/common/h/l;

    invoke-direct {v0, p0}, Lcom/android/common/h/l;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->mj:Lcom/android/common/h/l;

    .line 628
    iget-object v0, p0, Lcom/android/common/appService/W;->mj:Lcom/android/common/h/l;

    invoke-virtual {v0, p1}, Lcom/android/common/h/l;->acm(Lcom/android/common/ActivityBase;)V

    .line 625
    return-void
.end method

.method public sC(Lcom/android/common/r/a;)V
    .registers 2

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/android/common/appService/W;->mk:Lcom/android/common/r/a;

    .line 1049
    return-void
.end method

.method public sD(Z)V
    .registers 2

    .prologue
    .line 1138
    iput-boolean p1, p0, Lcom/android/common/appService/W;->lT:Z

    .line 1137
    return-void
.end method

.method public sE()Z
    .registers 2

    .prologue
    .line 1142
    iget-boolean v0, p0, Lcom/android/common/appService/W;->lT:Z

    return v0
.end method

.method public sF()V
    .registers 3

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/common/appService/W;->mm:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_11

    .line 1296
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qa()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1297
    const-string/jumbo v1, "media"

    .line 1296
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/W;->mm:Landroid/content/ContentProviderClient;

    .line 1294
    :cond_11
    return-void
.end method

.method public sG()I
    .registers 3

    .prologue
    .line 825
    iget v0, p0, Lcom/android/common/appService/W;->lN:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 826
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ta()V

    .line 828
    :cond_8
    iget v0, p0, Lcom/android/common/appService/W;->lO:I

    return v0
.end method

.method public sH()V
    .registers 1

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ta()V

    .line 833
    invoke-virtual {p0}, Lcom/android/common/appService/W;->sZ()V

    .line 834
    invoke-virtual {p0}, Lcom/android/common/appService/W;->tu()V

    .line 831
    return-void
.end method

.method public sI(Ljava/lang/Boolean;)V
    .registers 3

    .prologue
    .line 1122
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/appService/W;->ma:Z

    .line 1121
    return-void
.end method

.method public sJ()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1813
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1814
    return v0

    .line 1816
    :cond_8
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->XI()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v0, "off"

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Vh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_21
    return v0
.end method

.method public sK()Z
    .registers 2

    .prologue
    .line 1778
    iget-boolean v0, p0, Lcom/android/common/appService/W;->lJ:Z

    return v0
.end method

.method public sL()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1821
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1822
    return v0

    .line 1824
    :cond_8
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->XI()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v0, "on"

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Vh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_21
    return v0
.end method

.method public sM()Z
    .registers 2

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mK:Z

    return v0
.end method

.method public sN()Lcom/android/common/setting/k;
    .registers 2

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qA()Lcom/android/common/setting/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/g;->UZ()Lcom/android/common/setting/k;

    move-result-object v0

    return-object v0
.end method

.method public sO()Z
    .registers 2

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/common/appService/W;->lu:Z

    return v0
.end method

.method public sP([B)V
    .registers 7

    .prologue
    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/common/f;->agO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/RQR.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 956
    sget-object v1, Lcom/android/common/f;->agO:Ljava/lang/String;

    .line 958
    :try_start_18
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 959
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 960
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 962
    :cond_26
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 963
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_34

    .line 964
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 966
    :cond_34
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 967
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 969
    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 970
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 972
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 973
    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    sget-object v2, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendToContactApp path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/ActivityBase;->asy(ILandroid/content/Intent;)V

    .line 976
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendToContactApp Success"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_78} :catch_79

    .line 954
    :goto_78
    return-void

    .line 977
    :catch_79
    move-exception v0

    .line 978
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/common/ActivityBase;->avm(I)V

    .line 979
    sget-object v1, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sendToContactApp Failed"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_78
.end method

.method public sQ(I)V
    .registers 2

    .prologue
    .line 2208
    iput p1, p0, Lcom/android/common/appService/W;->mW:I

    .line 2207
    return-void
.end method

.method public sW(I)Lcom/android/common/setting/PreferenceGroup;
    .registers 3

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qA()Lcom/android/common/setting/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/setting/g;->Vb(I)Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method public sZ()V
    .registers 3

    .prologue
    .line 944
    invoke-virtual {p0}, Lcom/android/common/appService/W;->sG()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/h;->aoQ(II)I

    move-result v0

    iput v0, p0, Lcom/android/common/appService/W;->lN:I

    .line 943
    return-void
.end method

.method public sa()V
    .registers 3

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_d

    .line 599
    :cond_c
    return-void

    .line 601
    :cond_d
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KN()V

    .line 602
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/i;->fo(I)V

    .line 603
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->pU(I)V

    .line 597
    return-void
.end method

.method public sb()V
    .registers 3

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 593
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/appService/W;->tz(J)V

    .line 594
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/appService/W;->lx:Lcom/android/common/e/e;

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KZ(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 591
    return-void
.end method

.method public sc(J)V
    .registers 4

    .prologue
    .line 1074
    iput-wide p1, p0, Lcom/android/common/appService/W;->mA:J

    .line 1073
    return-void
.end method

.method public sd(Lcom/android/common/h/h;)V
    .registers 2

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/common/appService/W;->mr:Lcom/android/common/h/h;

    .line 233
    return-void
.end method

.method public se(Z)V
    .registers 2

    .prologue
    .line 1782
    iput-boolean p1, p0, Lcom/android/common/appService/W;->lJ:Z

    .line 1781
    return-void
.end method

.method public sf()[B
    .registers 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/common/appService/W;->mh:[B

    return-object v0
.end method

.method public sg()V
    .registers 5

    .prologue
    .line 2322
    invoke-static {}, Lcom/android/common/h;->apP()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2323
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 2324
    const-string/jumbo v1, "pref_thirdparty_vid_pretty_switch_key"

    .line 2325
    const v2, 0x7f0a04db

    invoke-virtual {p0, v2}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 2323
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2327
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string/jumbo v0, "1"

    .line 2328
    :goto_24
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "pref_video_pretty_mode"

    invoke-interface {v1, v2, v0}, Lcom/android/common/cameradevice/p;->Mb(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    sget-object v1, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setThirdPartyVdBeauty value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2321
    :goto_47
    return-void

    .line 2327
    :cond_48
    const-string/jumbo v0, "0"

    goto :goto_24

    .line 2331
    :cond_4c
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setThirdPartyVdBeauty unsupported"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47
.end method

.method public sh(Lcom/android/common/cameradevice/g;)V
    .registers 3

    .prologue
    .line 1393
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/common/appService/W;->tl(Lcom/android/common/cameradevice/g;I)V

    .line 1392
    return-void
.end method

.method public si(I)V
    .registers 7

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    .line 2173
    if-nez v0, :cond_7

    .line 2174
    return-void

    .line 2177
    :cond_7
    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atR()Lcom/android/common/g/e;

    move-result-object v1

    .line 2179
    if-nez v1, :cond_e

    .line 2180
    return-void

    .line 2183
    :cond_e
    if-nez p1, :cond_14

    .line 2184
    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->atr(Lcom/android/common/a/b;)V

    .line 2170
    :goto_13
    return-void

    .line 2186
    :cond_14
    sget-object v2, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "add ColorFilterRenderer with colorValue "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    invoke-virtual {v1, p1}, Lcom/android/common/g/e;->aaR(I)V

    .line 2188
    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->atk(Lcom/android/common/a/b;)V

    goto :goto_13
.end method

.method public sj(Lcom/android/common/ui/i;)V
    .registers 2

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/android/common/appService/W;->lG:Lcom/android/common/ui/i;

    .line 1448
    return-void
.end method

.method public sk()V
    .registers 2

    .prologue
    .line 2236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/appService/W;->lR:Z

    .line 2235
    return-void
.end method

.method public sl()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 856
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in closeCamera"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 858
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->Lb(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 859
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->Lc(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 860
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/k;->jI(I)V

    .line 861
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KO(Lcom/android/common/cameradevice/q;)V

    .line 862
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KF(Lcom/android/common/cameradevice/c;)V

    .line 863
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/common/cameradevice/j;->KA(Lcom/android/common/cameradevice/s;Landroid/hardware/Camera$PictureCallback;)V

    .line 864
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KM(Landroid/hardware/Camera$ErrorCallback;)V

    .line 865
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rU()Lcom/android/common/h/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/h/l;->acd()Lcom/android/common/h/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/h/e;->abH()V

    .line 866
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "in release"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->release()V

    .line 868
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/appService/W;->tt(Z)V

    .line 869
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    invoke-direct {p0, v0}, Lcom/android/common/appService/W;->ts(Lcom/android/common/camerastate/DeviceState;)V

    .line 870
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hX()V

    .line 871
    invoke-direct {p0}, Lcom/android/common/appService/W;->tp()V

    .line 873
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kl()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 874
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/g;->Kh()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/k;->jN(I)V

    .line 876
    :cond_8e
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/g;->Kf()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 877
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/g;->Kj()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/k;->jN(I)V

    .line 855
    :cond_a7
    :goto_a7
    return-void

    .line 880
    :cond_a8
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->release()V

    goto :goto_a7
.end method

.method public sm(Landroid/hardware/Camera$PictureCallback;)V
    .registers 2

    .prologue
    .line 1890
    iput-object p1, p0, Lcom/android/common/appService/W;->mO:Landroid/hardware/Camera$PictureCallback;

    .line 1889
    return-void
.end method

.method public sn(Z)V
    .registers 3

    .prologue
    .line 1930
    iget-boolean v0, p0, Lcom/android/common/appService/W;->lz:Z

    if-eq v0, p1, :cond_f

    .line 1931
    if-eqz p1, :cond_10

    .line 1932
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mI()V

    .line 1936
    :goto_d
    iput-boolean p1, p0, Lcom/android/common/appService/W;->lz:Z

    .line 1929
    :cond_f
    return-void

    .line 1934
    :cond_10
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mV()V

    goto :goto_d
.end method

.method public so()V
    .registers 3

    .prologue
    .line 886
    :try_start_0
    iget-object v0, p0, Lcom/android/common/appService/W;->lI:Lcom/android/common/appService/J;

    if-eqz v0, :cond_32

    .line 887
    iget-object v0, p0, Lcom/android/common/appService/W;->lI:Lcom/android/common/appService/J;

    invoke-virtual {v0}, Lcom/android/common/appService/J;->cancel()V

    .line 888
    iget-object v0, p0, Lcom/android/common/appService/W;->lI:Lcom/android/common/appService/J;

    invoke-virtual {v0}, Lcom/android/common/appService/J;->join()V

    .line 889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/appService/W;->lI:Lcom/android/common/appService/J;

    .line 890
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_32

    .line 891
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_32

    .line 892
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_32} :catch_33

    .line 884
    :cond_32
    :goto_32
    return-void

    .line 895
    :catch_33
    move-exception v0

    .line 896
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_32
.end method

.method public sp(Z)V
    .registers 2

    .prologue
    .line 363
    iput-boolean p1, p0, Lcom/android/common/appService/W;->lu:Z

    .line 362
    return-void
.end method

.method public sq(Lcom/android/common/ActivityBase;Landroid/os/Handler;Lcom/android/common/appService/H;Lcom/android/common/appService/y;Lcom/android/common/setting/t;)V
    .registers 8

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    .line 246
    iput-object p2, p0, Lcom/android/common/appService/W;->lX:Landroid/os/Handler;

    .line 247
    iput-object p3, p0, Lcom/android/common/appService/W;->lD:Lcom/android/common/appService/H;

    .line 248
    iput-object p4, p0, Lcom/android/common/appService/W;->mo:Lcom/android/common/appService/y;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    const/high16 v1, 0x7f080000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v1, p0, Lcom/android/common/appService/W;->mo:Lcom/android/common/appService/y;

    invoke-interface {v1}, Lcom/android/common/appService/y;->kD()Ljava/util/ArrayList;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_21

    .line 254
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 256
    :cond_21
    new-instance v1, Lcom/android/common/setting/g;

    invoke-direct {v1, p0, p4, p5, v0}, Lcom/android/common/setting/g;-><init>(Lcom/android/common/appService/W;Lcom/android/common/appService/y;Lcom/android/common/setting/t;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/android/common/appService/W;->mL:Lcom/android/common/setting/g;

    .line 257
    new-instance v0, Lcom/android/common/appService/i;

    invoke-direct {v0, p0}, Lcom/android/common/appService/i;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->mD:Lcom/android/common/appService/i;

    .line 258
    new-instance v0, Lcom/android/common/appService/k;

    invoke-direct {v0}, Lcom/android/common/appService/k;-><init>()V

    iput-object v0, p0, Lcom/android/common/appService/W;->mC:Lcom/android/common/appService/k;

    .line 259
    new-instance v0, Lcom/android/common/appService/N;

    iget-object v1, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/common/appService/N;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    .line 260
    invoke-direct {p0, p1}, Lcom/android/common/appService/W;->tc(Lcom/android/common/ActivityBase;)V

    .line 261
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/android/common/appService/W;->tb(Landroid/app/Activity;)V

    .line 244
    return-void
.end method

.method public sr()V
    .registers 2

    .prologue
    .line 1872
    new-instance v0, Lcom/android/common/independentFocusExposure/g;

    invoke-direct {v0, p0}, Lcom/android/common/independentFocusExposure/g;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->lU:Lcom/android/common/independentFocusExposure/g;

    .line 1873
    new-instance v0, Lcom/android/common/independentFocusExposure/i;

    invoke-direct {v0, p0}, Lcom/android/common/independentFocusExposure/i;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->lE:Lcom/android/common/independentFocusExposure/i;

    .line 1874
    new-instance v0, Lcom/android/common/independentFocusExposure/a;

    invoke-direct {v0, p0}, Lcom/android/common/independentFocusExposure/a;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->lC:Lcom/android/common/independentFocusExposure/a;

    .line 1875
    new-instance v0, Lcom/android/common/independentFocusExposure/o;

    invoke-direct {v0, p0}, Lcom/android/common/independentFocusExposure/o;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/appService/W;->ms:Lcom/android/common/independentFocusExposure/o;

    .line 1871
    return-void
.end method

.method public ss(Z)V
    .registers 2

    .prologue
    .line 1130
    iput-boolean p1, p0, Lcom/android/common/appService/W;->mw:Z

    .line 1129
    return-void
.end method

.method public st()V
    .registers 3

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    if-eqz v0, :cond_1a

    .line 1492
    iget-object v0, p0, Lcom/android/common/appService/W;->mu:Ljava/lang/Thread;

    if-eqz v0, :cond_d

    .line 1494
    :try_start_8
    iget-object v0, p0, Lcom/android/common/appService/W;->mu:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_20

    .line 1498
    :cond_d
    :goto_d
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disable orientaion"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/android/common/appService/W;->mt:Lcom/android/common/appService/N;

    invoke-virtual {v0}, Lcom/android/common/appService/N;->of()V

    .line 1501
    :cond_1a
    iget-object v0, p0, Lcom/android/common/appService/W;->lW:Lcom/android/common/appService/E;

    invoke-virtual {v0}, Lcom/android/common/appService/E;->release()V

    .line 1490
    return-void

    .line 1495
    :catch_20
    move-exception v0

    goto :goto_d
.end method

.method public su()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1302
    iget-object v0, p0, Lcom/android/common/appService/W;->mm:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_c

    .line 1303
    iget-object v0, p0, Lcom/android/common/appService/W;->mm:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1304
    iput-object v1, p0, Lcom/android/common/appService/W;->mm:Landroid/content/ContentProviderClient;

    .line 1301
    :cond_c
    return-void
.end method

.method public sv(Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V
    .registers 4

    .prologue
    .line 668
    invoke-direct {p0, p1, p2}, Lcom/android/common/appService/W;->sY(Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)Lcom/android/common/cameradevice/g;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/W;->mn:Lcom/android/common/cameradevice/g;

    .line 669
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/common/appService/W;->tB(ILcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/W;->lF:Lcom/android/common/appService/CameraMember;

    .line 667
    return-void
.end method

.method public sw()Lcom/android/common/ui/ai;
    .registers 2

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/common/appService/W;->mP:Lcom/android/common/ui/ai;

    return-object v0
.end method

.method public sx(Lcom/android/common/ui/ai;)V
    .registers 2

    .prologue
    .line 1287
    iput-object p1, p0, Lcom/android/common/appService/W;->mP:Lcom/android/common/ui/ai;

    .line 1286
    return-void
.end method

.method public sy(Lcom/android/common/d;)V
    .registers 2

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/android/common/appService/W;->lH:Lcom/android/common/d;

    .line 1021
    return-void
.end method

.method public sz()Lcom/android/common/appService/J;
    .registers 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/common/appService/W;->lI:Lcom/android/common/appService/J;

    return-object v0
.end method

.method public ta()V
    .registers 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/common/appService/W;->lv:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/common/h;->apw(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/android/common/appService/W;->lO:I

    .line 818
    return-void
.end method

.method public th()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1835
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v3, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    if-ne v0, v3, :cond_a

    .line 1836
    :cond_a
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v3, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v3, :cond_31

    move v0, v1

    .line 1837
    :goto_13
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pX()Z

    move-result v3

    and-int/2addr v0, v3

    .line 1838
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v3

    const-string/jumbo v4, "pref_camera_interval_pro"

    const-string/jumbo v5, "-1"

    invoke-virtual {v3, v4, v5}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    :goto_2f
    and-int/2addr v0, v2

    .line 1839
    return v0

    :cond_31
    move v0, v2

    .line 1836
    goto :goto_13

    :cond_33
    move v2, v1

    .line 1838
    goto :goto_2f
.end method

.method public ti()Z
    .registers 3

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public tl(Lcom/android/common/cameradevice/g;I)V
    .registers 6

    .prologue
    .line 1377
    iget-boolean v0, p0, Lcom/android/common/appService/W;->mw:Z

    if-nez v0, :cond_a

    .line 1378
    invoke-virtual {p0}, Lcom/android/common/appService/W;->qD()Lcom/android/common/cameradevice/g;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 1380
    :cond_a
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 1381
    sget-object v0, Lcom/android/common/appService/W;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraPickerClicked, paused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/common/appService/W;->mw:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; pendingswitchid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/appService/W;->qD()Lcom/android/common/cameradevice/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    return-void

    .line 1379
    :cond_3c
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1387
    invoke-virtual {p0, p1}, Lcom/android/common/appService/W;->qy(Lcom/android/common/cameradevice/g;)V

    .line 1388
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    invoke-direct {p0, v0}, Lcom/android/common/appService/W;->tv(Lcom/android/common/camerastate/FunctionState;)V

    .line 1389
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/common/ActivityBase;->avF(I)V

    .line 1376
    return-void
.end method

.method public tq([ILcom/android/common/appService/L;)V
    .registers 5

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_e

    .line 909
    invoke-direct {p0}, Lcom/android/common/appService/W;->sV()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afy:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_f

    .line 910
    :cond_e
    return-void

    .line 912
    :cond_f
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afy:Lcom/android/common/camerastate/FunctionState;

    invoke-direct {p0, v0}, Lcom/android/common/appService/W;->tv(Lcom/android/common/camerastate/FunctionState;)V

    .line 914
    new-instance v0, Lcom/android/common/appService/aw;

    invoke-direct {v0, p0, p2}, Lcom/android/common/appService/aw;-><init>(Lcom/android/common/appService/W;Lcom/android/common/appService/L;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/common/appService/W;->qF([ILcom/android/common/appService/K;)V

    .line 907
    return-void
.end method

.method public tt(Z)V
    .registers 2

    .prologue
    .line 838
    iput-boolean p1, p0, Lcom/android/common/appService/W;->lP:Z

    .line 837
    return-void
.end method

.method public tu()V
    .registers 3

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/android/common/appService/W;->rt()Lcom/android/common/ui/FaceView;

    move-result-object v0

    .line 847
    if-eqz v0, :cond_d

    .line 848
    invoke-virtual {p0}, Lcom/android/common/appService/W;->ri()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/FaceView;->GD(I)V

    .line 845
    :cond_d
    return-void
.end method

.method public tx(I)V
    .registers 2

    .prologue
    .line 1034
    iput p1, p0, Lcom/android/common/appService/W;->mT:I

    .line 1033
    return-void
.end method

.method public ty(J)V
    .registers 4

    .prologue
    .line 1110
    iput-wide p1, p0, Lcom/android/common/appService/W;->lK:J

    .line 1109
    return-void
.end method

.method public tz(J)V
    .registers 4

    .prologue
    .line 1058
    iput-wide p1, p0, Lcom/android/common/appService/W;->lV:J

    .line 1057
    return-void
.end method
