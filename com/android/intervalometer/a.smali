.class public Lcom/android/intervalometer/a;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/o;
.implements Lcom/android/common/ui/e;
.implements Lcom/android/common/p;
.implements Lcom/android/common/ui/u;


# instance fields
.field private aPI:Lcom/android/intervalometer/f;

.field private aPJ:Lcom/android/intervalometer/g;

.field private aPK:Lcom/android/common/ui/MultiFunctionImageView;

.field private aPL:I

.field private aPM:Lcom/android/common/n;

.field private aPN:Z

.field private aPO:Landroid/widget/RelativeLayout;

.field private aPP:Lcom/android/common/ui/NubiaProgressWheel;

.field private aPQ:Landroid/widget/Toast;

.field private aPR:J

.field private aPS:J

.field private aPT:Landroid/widget/RelativeLayout;

.field private aPU:Lcom/android/common/ui/x;

.field private aPV:Lcom/android/common/ui/RotateLayout;

.field private aPW:Landroid/widget/TextView;

.field private aPX:Lcom/android/common/ui/ZtemtShutterButton;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 63
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/intervalometer/a;->aPL:I

    .line 69
    iput-wide v2, p0, Lcom/android/intervalometer/a;->aPR:J

    .line 70
    iput-wide v2, p0, Lcom/android/intervalometer/a;->aPS:J

    .line 77
    new-instance v0, Lcom/android/intervalometer/b;

    invoke-direct {v0, p0, v1}, Lcom/android/intervalometer/b;-><init>(Lcom/android/intervalometer/a;Lcom/android/intervalometer/b;)V

    iput-object v0, p0, Lcom/android/intervalometer/a;->aPJ:Lcom/android/intervalometer/g;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/intervalometer/a;->aPN:Z

    .line 80
    iput-object v1, p0, Lcom/android/intervalometer/a;->aPX:Lcom/android/common/ui/ZtemtShutterButton;

    .line 81
    iput-object v1, p0, Lcom/android/intervalometer/a;->aPP:Lcom/android/common/ui/NubiaProgressWheel;

    .line 82
    iput-object v1, p0, Lcom/android/intervalometer/a;->aPO:Landroid/widget/RelativeLayout;

    .line 88
    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 63
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/intervalometer/a;->aPL:I

    .line 69
    iput-wide v2, p0, Lcom/android/intervalometer/a;->aPR:J

    .line 70
    iput-wide v2, p0, Lcom/android/intervalometer/a;->aPS:J

    .line 77
    new-instance v0, Lcom/android/intervalometer/b;

    invoke-direct {v0, p0, v1}, Lcom/android/intervalometer/b;-><init>(Lcom/android/intervalometer/a;Lcom/android/intervalometer/b;)V

    iput-object v0, p0, Lcom/android/intervalometer/a;->aPJ:Lcom/android/intervalometer/g;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/intervalometer/a;->aPN:Z

    .line 80
    iput-object v1, p0, Lcom/android/intervalometer/a;->aPX:Lcom/android/common/ui/ZtemtShutterButton;

    .line 81
    iput-object v1, p0, Lcom/android/intervalometer/a;->aPP:Lcom/android/common/ui/NubiaProgressWheel;

    .line 82
    iput-object v1, p0, Lcom/android/intervalometer/a;->aPO:Landroid/widget/RelativeLayout;

    .line 84
    return-void
.end method

.method private bfX()Z
    .registers 3

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    new-instance v1, Lcom/android/intervalometer/k;

    invoke-direct {v1, p0}, Lcom/android/intervalometer/k;-><init>(Lcom/android/intervalometer/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 324
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    return v0
.end method

.method private bfY()I
    .registers 2

    .prologue
    .line 204
    iget v0, p0, Lcom/android/intervalometer/a;->aPL:I

    return v0
.end method

.method private bfZ(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 215
    const v0, 0x7f1001b5

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/intervalometer/a;->aPT:Landroid/widget/RelativeLayout;

    .line 217
    const v0, 0x7f1001b4

    .line 216
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/intervalometer/a;->aPV:Lcom/android/common/ui/RotateLayout;

    .line 218
    const v0, 0x7f1001b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/intervalometer/a;->aPW:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f1000fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/intervalometer/a;->aPK:Lcom/android/common/ui/MultiFunctionImageView;

    .line 222
    const v0, 0x7f1001ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/intervalometer/a;->aPO:Landroid/widget/RelativeLayout;

    .line 223
    const v0, 0x7f1000fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/intervalometer/a;->aPX:Lcom/android/common/ui/ZtemtShutterButton;

    .line 224
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPX:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/ZtemtShutterButton;->xa(Lcom/android/common/ui/u;)V

    .line 225
    const v0, 0x7f100044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/NubiaProgressWheel;

    iput-object v0, p0, Lcom/android/intervalometer/a;->aPP:Lcom/android/common/ui/NubiaProgressWheel;

    .line 226
    new-instance v0, Lcom/android/common/ui/x;

    invoke-direct {v0, p1}, Lcom/android/common/ui/x;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/intervalometer/a;->aPU:Lcom/android/common/ui/x;

    .line 227
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/common/ui/h;

    iput-object v0, p0, Lcom/android/intervalometer/a;->adw:[Lcom/android/common/ui/h;

    .line 213
    return-void
.end method

.method public static bga()Lcom/android/intervalometer/a;
    .registers 2

    .prologue
    .line 232
    new-instance v0, Lcom/android/intervalometer/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/intervalometer/a;-><init>(I)V

    return-object v0
.end method

.method private bgb(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 179
    const/16 v0, 0xa

    if-lt p1, v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method private bgd()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPI:Lcom/android/intervalometer/f;

    if-eqz v0, :cond_c

    .line 156
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPI:Lcom/android/intervalometer/f;

    invoke-virtual {v0}, Lcom/android/intervalometer/f;->release()V

    .line 157
    iput-object v1, p0, Lcom/android/intervalometer/a;->aPI:Lcom/android/intervalometer/f;

    .line 154
    :cond_c
    return-void
.end method

.method private bge()V
    .registers 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/intervalometer/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_9

    .line 133
    return-void

    .line 136
    :cond_9
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPK:Lcom/android/common/ui/MultiFunctionImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/intervalometer/a;->aly()V

    .line 138
    invoke-virtual {p0}, Lcom/android/intervalometer/a;->alq()V

    .line 131
    return-void
.end method

.method private bgf(I)V
    .registers 4

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/intervalometer/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 209
    const-string/jumbo v1, "pref_camera_intervalometer_interval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    return-void
.end method

.method private bgh(JJI)V
    .registers 11

    .prologue
    .line 167
    const-wide/16 v0, 0x3e8

    div-long v0, p3, v0

    long-to-int v0, v0

    .line 168
    div-int/lit16 v1, v0, 0xe10

    .line 169
    rem-int/lit16 v2, v0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    .line 170
    rem-int/lit8 v0, v0, 0x3c

    .line 171
    iget-object v3, p0, Lcom/android/intervalometer/a;->aPU:Lcom/android/common/ui/x;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/intervalometer/a;->bgb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/android/intervalometer/a;->bgb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/intervalometer/a;->bgb(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/common/ui/x;->xu(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private bgi()V
    .registers 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPP:Lcom/android/common/ui/NubiaProgressWheel;

    if-eqz v0, :cond_f

    .line 389
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPP:Lcom/android/common/ui/NubiaProgressWheel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPP:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->start()V

    .line 387
    :cond_f
    return-void
.end method

.method private bgj()V
    .registers 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPP:Lcom/android/common/ui/NubiaProgressWheel;

    if-eqz v0, :cond_10

    .line 396
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPP:Lcom/android/common/ui/NubiaProgressWheel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPP:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->stop()V

    .line 394
    :cond_10
    return-void
.end method

.method private bgk()V
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPI:Lcom/android/intervalometer/f;

    if-eqz v0, :cond_9

    .line 294
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPI:Lcom/android/intervalometer/f;

    invoke-virtual {v0}, Lcom/android/intervalometer/f;->stop()V

    .line 292
    :cond_9
    return-void
.end method

.method private bgl(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 508
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 509
    const-string/jumbo v0, "mime_type"

    const-string/jumbo v1, "video/mp4"

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string/jumbo v0, "_data"

    invoke-virtual {v2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_3d

    .line 513
    const-string/jumbo v1, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 514
    const-string/jumbo v1, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 517
    :cond_3d
    new-instance v0, Lcom/android/common/b/e;

    .line 518
    iget-object v1, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    .line 517
    invoke-direct/range {v0 .. v5}, Lcom/android/common/b/e;-><init>(Lcom/android/common/appService/W;Landroid/content/ContentValues;Ljava/lang/String;ILcom/android/common/b/f;)V

    .line 519
    iget-object v1, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 520
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    .line 521
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 521
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 520
    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_79} :catch_7a

    .line 505
    :goto_79
    return-void

    .line 523
    :catch_7a
    move-exception v0

    .line 524
    const-string/jumbo v1, "IntervalometerFragment"

    const-string/jumbo v2, "updateContentResolver fail"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_79
.end method

.method static synthetic bgm(Lcom/android/intervalometer/a;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic bgn(Lcom/android/intervalometer/a;)Lcom/android/common/ui/MultiFunctionImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/intervalometer/a;->aPK:Lcom/android/common/ui/MultiFunctionImageView;

    return-object v0
.end method

.method static synthetic bgo(Lcom/android/intervalometer/a;)I
    .registers 2

    iget v0, p0, Lcom/android/intervalometer/a;->aPL:I

    return v0
.end method

.method static synthetic bgp(Lcom/android/intervalometer/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/intervalometer/a;->adv:Z

    return v0
.end method

.method static synthetic bgq(Lcom/android/intervalometer/a;)Landroid/widget/Toast;
    .registers 2

    iget-object v0, p0, Lcom/android/intervalometer/a;->aPQ:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic bgr(Lcom/android/intervalometer/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/intervalometer/a;->aPR:J

    return-wide v0
.end method

.method static synthetic bgs(Lcom/android/intervalometer/a;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/intervalometer/a;->aPS:J

    return-wide v0
.end method

.method static synthetic bgt(Lcom/android/intervalometer/a;I)I
    .registers 2

    iput p1, p0, Lcom/android/intervalometer/a;->aPL:I

    return p1
.end method

.method static synthetic bgu(Lcom/android/intervalometer/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/intervalometer/a;->aPN:Z

    return p1
.end method

.method static synthetic bgv(Lcom/android/intervalometer/a;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2

    iput-object p1, p0, Lcom/android/intervalometer/a;->aPQ:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic bgw(Lcom/android/intervalometer/a;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/intervalometer/a;->aly()V

    return-void
.end method

.method static synthetic bgx(Lcom/android/intervalometer/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/intervalometer/a;->bgk()V

    return-void
.end method

.method static synthetic bgy(Lcom/android/intervalometer/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/intervalometer/a;->stop()V

    return-void
.end method

.method static synthetic bgz(Lcom/android/intervalometer/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/intervalometer/a;->bgl(Ljava/lang/String;)V

    return-void
.end method

.method private release()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPM:Lcom/android/common/n;

    if-eqz v0, :cond_9

    .line 143
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPM:Lcom/android/common/n;

    invoke-virtual {v0}, Lcom/android/common/n;->stop()V

    .line 145
    :cond_9
    invoke-direct {p0}, Lcom/android/intervalometer/a;->bgk()V

    .line 141
    return-void
.end method

.method private start()V
    .registers 4

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asX()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 404
    :cond_f
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-nez v0, :cond_49

    .line 405
    const-string/jumbo v0, "IntervalometerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storage enough: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 406
    const-string/jumbo v2, "; Activity paused: "

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 406
    iget-object v2, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z

    move-result v2

    .line 405
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void

    .line 409
    :cond_49
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPM:Lcom/android/common/n;

    invoke-virtual {v0}, Lcom/android/common/n;->start()V

    .line 410
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "intervalometer_1"

    const-string/jumbo v2, "IntervalometerFragment"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method private stop()V
    .registers 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPM:Lcom/android/common/n;

    invoke-virtual {v0}, Lcom/android/common/n;->stop()V

    .line 413
    return-void
.end method


# virtual methods
.method public aip()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 419
    const-string/jumbo v0, "IntervalometerFragment"

    const-string/jumbo v1, "OnIntervalometerStart"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 421
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPX:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 422
    invoke-direct {p0}, Lcom/android/intervalometer/a;->bgi()V

    .line 423
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPK:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPK:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->EB()V

    .line 425
    invoke-virtual {p0}, Lcom/android/intervalometer/a;->alr()V

    .line 418
    return-void
.end method

.method public aiq()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 430
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 431
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPX:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 432
    invoke-direct {p0}, Lcom/android/intervalometer/a;->bgj()V

    .line 433
    const-string/jumbo v0, "IntervalometerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnIntervalometerStop mIsIdle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/intervalometer/a;->aPN:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-boolean v0, p0, Lcom/android/intervalometer/a;->aPN:Z

    if-nez v0, :cond_41

    .line 435
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPK:Lcom/android/common/ui/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->EC(Lcom/android/common/ui/af;)V

    .line 436
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPK:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/intervalometer/a;->alz()V

    .line 429
    :goto_40
    return-void

    .line 439
    :cond_41
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPK:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 440
    invoke-virtual {p0}, Lcom/android/intervalometer/a;->alq()V

    goto :goto_40
.end method

.method public ake()V
    .registers 3

    .prologue
    .line 275
    const-string/jumbo v0, "IntervalometerFragment"

    const-string/jumbo v1, "==wq====onInterrupted"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPT:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_11

    .line 277
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPU:Lcom/android/common/ui/x;

    if-nez v0, :cond_12

    .line 278
    :cond_11
    return-void

    .line 279
    :cond_12
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPU:Lcom/android/common/ui/x;

    if-eqz v0, :cond_1b

    .line 280
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPU:Lcom/android/common/ui/x;

    invoke-virtual {v0}, Lcom/android/common/ui/x;->stop()V

    .line 282
    :cond_1b
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPT:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 283
    invoke-direct {p0}, Lcom/android/intervalometer/a;->bgk()V

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/intervalometer/a;->aPS:J

    .line 285
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_38

    .line 286
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mT()V

    .line 274
    :cond_38
    return-void
.end method

.method public akf(J)V
    .registers 10

    .prologue
    .line 237
    const-string/jumbo v0, "IntervalometerFragment"

    const-string/jumbo v1, "==wq====onStart"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_16

    .line 239
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mS()V

    .line 243
    :cond_16
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPI:Lcom/android/intervalometer/f;

    if-eqz v0, :cond_26

    .line 244
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPI:Lcom/android/intervalometer/f;

    iget-object v1, p0, Lcom/android/intervalometer/a;->aPJ:Lcom/android/intervalometer/g;

    invoke-virtual {v0, v1}, Lcom/android/intervalometer/f;->bgI(Lcom/android/intervalometer/g;)V

    .line 245
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPI:Lcom/android/intervalometer/f;

    invoke-virtual {v0}, Lcom/android/intervalometer/f;->start()V

    .line 247
    :cond_26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/intervalometer/a;->aPR:J

    .line 248
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/intervalometer/a;->bgh(JJI)V

    .line 249
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPU:Lcom/android/common/ui/x;

    if-eqz v0, :cond_3d

    .line 250
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPU:Lcom/android/common/ui/x;

    invoke-virtual {v0}, Lcom/android/common/ui/x;->xv()V

    .line 236
    :cond_3d
    return-void
.end method

.method public akg(JJI)V
    .registers 7

    .prologue
    .line 270
    invoke-direct/range {p0 .. p5}, Lcom/android/intervalometer/a;->bgh(JJI)V

    .line 268
    return-void
.end method

.method public alG()V
    .registers 5

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPM:Lcom/android/common/n;

    if-eqz v0, :cond_e

    .line 199
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPM:Lcom/android/common/n;

    invoke-direct {p0}, Lcom/android/intervalometer/a;->bfY()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/common/n;->aqR(J)V

    .line 197
    :cond_e
    return-void
.end method

.method protected alq()V
    .registers 3

    .prologue
    .line 490
    invoke-super {p0}, Lcom/android/common/o/l;->alq()V

    .line 491
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPO:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    .line 492
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPO:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 489
    :cond_e
    return-void
.end method

.method protected alr()V
    .registers 3

    .prologue
    .line 499
    invoke-super {p0}, Lcom/android/common/o/l;->alr()V

    .line 500
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPO:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    .line 501
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPO:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 498
    :cond_d
    return-void
.end method

.method public bgc()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 471
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPX:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_14

    .line 472
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPX:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 473
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPX:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    .line 474
    const/4 v0, 0x1

    return v0

    .line 476
    :cond_14
    return v1
.end method

.method public bgg(Lcom/android/common/n;Lcom/android/common/appService/W;)V
    .registers 7

    .prologue
    .line 183
    if-nez p2, :cond_3

    return-void

    .line 185
    :cond_3
    iput-object p1, p0, Lcom/android/intervalometer/a;->aPM:Lcom/android/common/n;

    .line 186
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPM:Lcom/android/common/n;

    invoke-virtual {v0, p0}, Lcom/android/common/n;->aqQ(Lcom/android/common/o;)V

    .line 187
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPM:Lcom/android/common/n;

    invoke-direct {p0}, Lcom/android/intervalometer/a;->bfY()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/common/n;->aqR(J)V

    .line 188
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPM:Lcom/android/common/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/n;->aqS(Z)V

    .line 189
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-nez v0, :cond_22

    .line 190
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agc:Z

    .line 189
    if-eqz v0, :cond_31

    .line 191
    :cond_22
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPI:Lcom/android/intervalometer/f;

    if-nez v0, :cond_31

    .line 192
    new-instance v0, Lcom/android/intervalometer/f;

    invoke-virtual {p2}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/intervalometer/f;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v0, p0, Lcom/android/intervalometer/a;->aPI:Lcom/android/intervalometer/f;

    .line 182
    :cond_31
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/android/intervalometer/a;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_d

    .line 482
    invoke-direct {p0}, Lcom/android/intervalometer/a;->stop()V

    .line 483
    const/4 v0, 0x1

    return v0

    .line 485
    :cond_d
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 96
    iget-boolean v0, p0, Lcom/android/intervalometer/a;->adu:Z

    if-eqz v0, :cond_9

    return-object v1

    .line 98
    :cond_9
    const-string/jumbo v0, "IntervalometerFragment"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const v0, 0x7f040091

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 101
    if-nez v0, :cond_25

    .line 102
    const-string/jumbo v1, "IntervalometerFragment"

    const-string/jumbo v2, "view == null"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_25
    invoke-direct {p0, v0}, Lcom/android/intervalometer/a;->bfZ(Landroid/view/View;)V

    .line 105
    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/intervalometer/a;->bgd()V

    .line 151
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroy()V

    .line 149
    return-void
.end method

.method public onFinish()V
    .registers 3

    .prologue
    .line 258
    const-string/jumbo v0, "IntervalometerFragment"

    const-string/jumbo v1, "==wq====onFinish"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPI:Lcom/android/intervalometer/f;

    if-eqz v0, :cond_12

    .line 260
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPI:Lcom/android/intervalometer/f;

    invoke-virtual {v0}, Lcom/android/intervalometer/f;->bgJ()V

    .line 262
    :cond_12
    invoke-direct {p0}, Lcom/android/intervalometer/a;->bfX()Z

    .line 257
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/intervalometer/a;->adu:Z

    if-eqz v0, :cond_8

    .line 119
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 120
    return-void

    .line 123
    :cond_8
    const-string/jumbo v0, "IntervalometerFragment"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/android/intervalometer/a;->bgj()V

    .line 125
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPX:Lcom/android/common/ui/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 126
    invoke-direct {p0}, Lcom/android/intervalometer/a;->release()V

    .line 128
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 117
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 111
    iget-boolean v0, p0, Lcom/android/intervalometer/a;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 112
    :cond_8
    const-string/jumbo v0, "IntervalometerFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/android/intervalometer/a;->bge()V

    .line 109
    return-void
.end method

.method public vm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 329
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 330
    mul-int/lit16 v1, v0, 0x3e8

    invoke-direct {p0, v1}, Lcom/android/intervalometer/a;->bgf(I)V

    .line 331
    iget-object v1, p0, Lcom/android/intervalometer/a;->aPM:Lcom/android/common/n;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/common/n;->aqR(J)V

    .line 328
    return-void
.end method

.method public xf()V
    .registers 3

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/intervalometer/a;->aPM:Lcom/android/common/n;

    if-eqz v0, :cond_8

    .line 453
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_9

    .line 455
    :cond_8
    return-void

    .line 454
    :cond_9
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    .line 452
    if-nez v0, :cond_8

    .line 458
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_23

    .line 459
    invoke-direct {p0}, Lcom/android/intervalometer/a;->start()V

    .line 451
    :goto_22
    return-void

    .line 461
    :cond_23
    invoke-direct {p0}, Lcom/android/intervalometer/a;->stop()V

    goto :goto_22
.end method

.method public xg(Z)V
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_5

    return-void

    .line 447
    :cond_5
    iget-object v0, p0, Lcom/android/intervalometer/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->pL(Z)V

    .line 445
    return-void
.end method

.method public xh()V
    .registers 1

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/android/intervalometer/a;->xf()V

    .line 466
    return-void
.end method
