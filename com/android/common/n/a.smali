.class public Lcom/android/common/n/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static abw:Lcom/android/common/n/a;


# instance fields
.field private abo:Landroid/app/ProgressDialog;

.field private abp:Landroid/content/Context;

.field private abq:Landroid/os/Handler;

.field private abr:Ljava/lang/String;

.field private abs:Z

.field private abt:Z

.field private abu:Ljava/lang/Object;

.field private abv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/n/a;->abw:Lcom/android/common/n/a;

    .line 25
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v1, p0, Lcom/android/common/n/a;->abs:Z

    .line 30
    iput-boolean v1, p0, Lcom/android/common/n/a;->abt:Z

    .line 31
    iput-object v0, p0, Lcom/android/common/n/a;->abr:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/android/common/n/a;->abv:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/android/common/n/a;->abp:Landroid/content/Context;

    .line 34
    iput-object v0, p0, Lcom/android/common/n/a;->abo:Landroid/app/ProgressDialog;

    .line 35
    iput-object v0, p0, Lcom/android/common/n/a;->abq:Landroid/os/Handler;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/n/a;->abu:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public static ahN()Lcom/android/common/n/a;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/common/n/a;->abw:Lcom/android/common/n/a;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Lcom/android/common/n/a;

    invoke-direct {v0}, Lcom/android/common/n/a;-><init>()V

    sput-object v0, Lcom/android/common/n/a;->abw:Lcom/android/common/n/a;

    .line 69
    :cond_b
    sget-object v0, Lcom/android/common/n/a;->abw:Lcom/android/common/n/a;

    return-object v0
.end method

.method private ahR()Z
    .registers 3

    .prologue
    .line 286
    const-string/jumbo v0, "mounted"

    .line 287
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private ahS(Lcn/nubia/c/a;Landroid/content/pm/PackageInfo;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/common/n/a;->abp:Landroid/content/Context;

    .line 222
    iget-object v1, p0, Lcom/android/common/n/a;->abp:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 223
    const-string/jumbo v1, "version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 224
    if-eqz p1, :cond_38

    invoke-virtual {p1}, Lcn/nubia/c/a;->bMO()I

    move-result v2

    iget v3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v2, v3, :cond_38

    .line 225
    invoke-virtual {p1}, Lcn/nubia/c/a;->bMO()I

    move-result v2

    if-le v2, v1, :cond_38

    .line 226
    invoke-direct {p0, p1}, Lcom/android/common/n/a;->aia(Lcn/nubia/c/a;)V

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    const-string/jumbo v1, "version"

    invoke-virtual {p1}, Lcn/nubia/c/a;->bMO()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    :cond_38
    return-void
.end method

.method private ahT(Lcn/nubia/c/a;Landroid/content/pm/PackageInfo;)V
    .registers 5

    .prologue
    .line 235
    invoke-virtual {p1}, Lcn/nubia/c/a;->bMO()I

    move-result v0

    iget v1, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v0, v1, :cond_c

    .line 236
    invoke-direct {p0, p1}, Lcom/android/common/n/a;->aia(Lcn/nubia/c/a;)V

    .line 234
    :goto_b
    return-void

    .line 238
    :cond_c
    const v0, 0x7f0a043f

    invoke-direct {p0, v0}, Lcom/android/common/n/a;->ahZ(I)V

    goto :goto_b
.end method

.method private ahU()V
    .registers 2

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/common/n/a;->abs:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/common/n/a;->abo:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_d

    .line 180
    iget-object v0, p0, Lcom/android/common/n/a;->abo:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 178
    :cond_d
    return-void
.end method

.method private ahV()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/common/n/a;->ahW()V

    .line 72
    return-void
.end method

.method private ahW()V
    .registers 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/common/n/a;->abv:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 128
    const-string/jumbo v0, "Upgrade"

    const-string/jumbo v1, "mUrl is had."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void

    .line 131
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://nuvision.app.nubia.cn/apk/v2/ver.zte?model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string/jumbo v1, "&soft_version="

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "ro.build.internal.id"

    const-string/jumbo v2, "unKnow"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string/jumbo v1, "&hardware_platform="

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string/jumbo v1, "ro.board.platform"

    const-string/jumbo v2, "unKnow"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string/jumbo v1, "&imei="

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/android/common/n/a;->abr:Ljava/lang/String;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/n/a;->abv:Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "Upgrade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/n/a;->abv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private ahX()V
    .registers 4

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/common/n/a;->abs:Z

    if-eqz v0, :cond_5

    .line 168
    return-void

    .line 170
    :cond_5
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/common/n/a;->abp:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/n/a;->abo:Landroid/app/ProgressDialog;

    .line 171
    iget-object v0, p0, Lcom/android/common/n/a;->abo:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 172
    iget-object v0, p0, Lcom/android/common/n/a;->abo:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/common/n/a;->abp:Landroid/content/Context;

    .line 173
    const v2, 0x7f0a0437

    .line 172
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/android/common/n/a;->abo:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/common/n/a;->abo:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 166
    return-void
.end method

.method private ahY(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 242
    :goto_7
    return-void

    .line 245
    :pswitch_8
    const v0, 0x7f0a043b

    invoke-direct {p0, v0}, Lcom/android/common/n/a;->ahZ(I)V

    goto :goto_7

    .line 248
    :pswitch_f
    const v0, 0x7f0a043c

    invoke-direct {p0, v0}, Lcom/android/common/n/a;->ahZ(I)V

    goto :goto_7

    .line 251
    :pswitch_16
    const v0, 0x7f0a043f

    invoke-direct {p0, v0}, Lcom/android/common/n/a;->ahZ(I)V

    goto :goto_7

    .line 243
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_16
        :pswitch_f
    .end packed-switch
.end method

.method private ahZ(I)V
    .registers 5

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/common/n/a;->abp:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/common/n/a;->abp:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 292
    const/4 v2, 0x0

    .line 291
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 290
    return-void
.end method

.method private aia(Lcn/nubia/c/a;)V
    .registers 5

    .prologue
    .line 257
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/common/n/a;->abp:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    const v1, 0x7f0a0438

    .line 257
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 260
    new-instance v1, Lcom/android/common/n/d;

    invoke-direct {v1, p0, p1}, Lcom/android/common/n/d;-><init>(Lcom/android/common/n/a;Lcn/nubia/c/a;)V

    .line 259
    const v2, 0x7f0a043a

    .line 257
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/android/common/n/e;

    invoke-direct {v1, p0}, Lcom/android/common/n/e;-><init>(Lcom/android/common/n/a;)V

    .line 275
    const v2, 0x7f0a0439

    .line 257
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 256
    return-void
.end method

.method static synthetic aib(Lcom/android/common/n/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/common/n/a;->abp:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic aic(Lcom/android/common/n/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/n/a;->abs:Z

    return v0
.end method

.method static synthetic aid(Lcom/android/common/n/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/common/n/a;->abv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aie(Lcom/android/common/n/a;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/common/n/a;->ahR()Z

    move-result v0

    return v0
.end method

.method static synthetic aif(Lcom/android/common/n/a;Lcn/nubia/c/a;Landroid/content/pm/PackageInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/common/n/a;->ahS(Lcn/nubia/c/a;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic aig(Lcom/android/common/n/a;Lcn/nubia/c/a;Landroid/content/pm/PackageInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/common/n/a;->ahT(Lcn/nubia/c/a;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic aih(Lcom/android/common/n/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/n/a;->ahU()V

    return-void
.end method

.method static synthetic aii(Lcom/android/common/n/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/n/a;->ahY(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ahO(Landroid/content/Context;Z)Lcom/android/common/n/a;
    .registers 6

    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/common/n/a;->abu:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_3
    iput-object p1, p0, Lcom/android/common/n/a;->abp:Landroid/content/Context;

    .line 42
    iput-boolean p2, p0, Lcom/android/common/n/a;->abs:Z

    .line 43
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/common/n/a;->abp:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/common/n/a;->abq:Landroid/os/Handler;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    monitor-exit v1

    .line 46
    sget-object v0, Lcom/android/common/n/a;->abw:Lcom/android/common/n/a;

    return-object v0

    .line 40
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public ahP()V
    .registers 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/common/n/a;->abu:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_3
    iget-boolean v0, p0, Lcom/android/common/n/a;->abt:Z

    if-eqz v0, :cond_1f

    .line 146
    iget-object v0, p0, Lcom/android/common/n/a;->abo:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_13

    .line 147
    iget-object v0, p0, Lcom/android/common/n/a;->abo:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1c

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    :goto_13
    monitor-exit v1

    .line 150
    return-void

    .line 148
    :cond_15
    const v0, 0x7f0a0437

    :try_start_18
    invoke-direct {p0, v0}, Lcom/android/common/n/a;->ahZ(I)V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_13

    .line 144
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 152
    :cond_1f
    const/4 v0, 0x1

    :try_start_20
    iput-boolean v0, p0, Lcom/android/common/n/a;->abt:Z
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_1c

    monitor-exit v1

    .line 155
    invoke-direct {p0}, Lcom/android/common/n/a;->ahX()V

    .line 156
    invoke-direct {p0}, Lcom/android/common/n/a;->ahV()V

    .line 157
    new-instance v0, Lcom/android/common/n/b;

    invoke-direct {v0, p0}, Lcom/android/common/n/b;-><init>(Lcom/android/common/n/a;)V

    invoke-virtual {v0}, Lcom/android/common/n/b;->start()V

    .line 143
    return-void
.end method

.method protected ahQ(Ljava/util/Map;)V
    .registers 5

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/common/n/a;->abu:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/common/n/a;->abt:Z

    .line 187
    iget-object v0, p0, Lcom/android/common/n/a;->abq:Landroid/os/Handler;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_18

    if-nez v0, :cond_c

    monitor-exit v1

    .line 188
    return-void

    .line 190
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/common/n/a;->abq:Landroid/os/Handler;

    new-instance v2, Lcom/android/common/n/c;

    invoke-direct {v2, p0, p1}, Lcom/android/common/n/c;-><init>(Lcom/android/common/n/a;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_18

    monitor-exit v1

    .line 184
    return-void

    .line 185
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public release()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v1, p0, Lcom/android/common/n/a;->abu:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_4
    iget-object v0, p0, Lcom/android/common/n/a;->abq:Landroid/os/Handler;

    if-eqz v0, :cond_e

    .line 52
    iget-object v0, p0, Lcom/android/common/n/a;->abq:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/n/a;->abp:Landroid/content/Context;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/n/a;->abq:Landroid/os/Handler;
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1b

    monitor-exit v1

    .line 57
    invoke-direct {p0}, Lcom/android/common/n/a;->ahU()V

    .line 58
    iput-object v3, p0, Lcom/android/common/n/a;->abo:Landroid/app/ProgressDialog;

    .line 49
    return-void

    .line 50
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
