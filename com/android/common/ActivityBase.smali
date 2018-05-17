.class public abstract Lcom/android/common/ActivityBase;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/p/d;


# instance fields
.field protected aiY:Lcom/android/common/appService/y;

.field public aiZ:Lcom/android/common/m/c;

.field protected ajA:Lcom/android/common/g/e;

.field private ajB:Ljava/lang/String;

.field protected ajC:Landroid/content/IntentFilter;

.field protected ajD:Landroid/content/BroadcastReceiver;

.field protected ajE:Z

.field protected ajF:Lcom/android/common/g/d;

.field private ajG:Z

.field protected ajH:Landroid/widget/ImageView;

.field protected ajI:Lcom/android/common/j/h;

.field protected ajJ:Lcom/android/common/j/c;

.field private ajK:Z

.field protected ajL:Lcom/android/common/g/f;

.field private ajM:Z

.field public ajN:Z

.field protected ajO:Z

.field protected ajP:Z

.field public ajQ:Z

.field protected ajR:Z

.field private ajS:Z

.field ajT:Landroid/app/KeyguardManager;

.field private ajU:I

.field private ajV:J

.field protected final ajW:Landroid/content/BroadcastReceiver;

.field protected ajX:Z

.field private ajY:Z

.field private ajZ:J

.field protected aja:Lcom/android/common/appService/W;

.field protected ajb:Z

.field protected ajc:Z

.field protected ajd:Lcom/android/common/a/g;

.field protected aje:Z

.field protected ajf:Z

.field protected ajg:Lcom/android/common/camerastate/a;

.field protected ajh:Z

.field protected final aji:Landroid/os/Handler;

.field protected ajj:Lcom/android/common/appService/H;

.field protected ajk:Lcom/android/common/setting/t;

.field protected ajl:Lcom/android/common/appService/b;

.field private ajm:Landroid/content/Intent;

.field private ajn:Landroid/content/ServiceConnection;

.field private ajo:Z

.field private ajp:Z

.field private ajq:Z

.field private ajr:Z

.field private ajs:Z

.field private ajt:Landroid/app/AlertDialog;

.field private aju:Landroid/view/SurfaceView;

.field private ajv:Landroid/view/animation/AlphaAnimation;

.field protected ajw:Landroid/widget/LinearLayout;

.field protected ajx:Landroid/content/BroadcastReceiver;

.field private ajy:Landroid/content/BroadcastReceiver;

.field private ajz:Z

.field private aka:Landroid/app/AlertDialog;

.field private akb:Lcom/android/common/g;

.field private akc:Landroid/os/PowerManager;

.field protected akd:Lcom/android/common/appService/R;

.field private ake:[I

.field private akf:I

.field private akg:Landroid/content/Intent;

.field private akh:Landroid/net/Uri;

.field protected aki:Landroid/animation/ValueAnimator;

.field protected akj:Z

.field protected final akk:Landroid/content/BroadcastReceiver;

.field protected final akl:Landroid/content/BroadcastReceiver;

.field private akm:Ljava/lang/Object;

.field private akn:Lcom/android/common/a/h;

.field private ako:I

.field private akp:Ljava/lang/String;

.field private akq:Lcom/android/common/p/a;

.field protected akr:Landroid/view/View;

.field protected aks:Lcom/android/common/appService/T;

.field private akt:I


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 202
    iput v2, p0, Lcom/android/common/ActivityBase;->akt:I

    .line 206
    iput-object v3, p0, Lcom/android/common/ActivityBase;->aiZ:Lcom/android/common/m/c;

    .line 211
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajf:Z

    .line 213
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajN:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajQ:Z

    .line 215
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajR:Z

    .line 216
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajP:Z

    .line 220
    new-instance v0, Lcom/android/common/C;

    invoke-direct {v0, p0}, Lcom/android/common/C;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    .line 221
    new-instance v0, Lcom/android/common/appService/W;

    invoke-direct {v0}, Lcom/android/common/appService/W;-><init>()V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    .line 222
    iput-object v3, p0, Lcom/android/common/ActivityBase;->ajg:Lcom/android/common/camerastate/a;

    .line 223
    iput-object v3, p0, Lcom/android/common/ActivityBase;->ajj:Lcom/android/common/appService/H;

    .line 224
    iput-object v3, p0, Lcom/android/common/ActivityBase;->ajk:Lcom/android/common/setting/t;

    .line 225
    iput-object v3, p0, Lcom/android/common/ActivityBase;->aiY:Lcom/android/common/appService/y;

    .line 231
    iput-object v3, p0, Lcom/android/common/ActivityBase;->ajw:Landroid/widget/LinearLayout;

    .line 232
    iput-object v3, p0, Lcom/android/common/ActivityBase;->ajH:Landroid/widget/ImageView;

    .line 233
    iput-object v3, p0, Lcom/android/common/ActivityBase;->akr:Landroid/view/View;

    .line 235
    iput-boolean v1, p0, Lcom/android/common/ActivityBase;->ajX:Z

    .line 239
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajO:Z

    .line 241
    iput-object v3, p0, Lcom/android/common/ActivityBase;->akq:Lcom/android/common/p/a;

    .line 242
    iput-object v3, p0, Lcom/android/common/ActivityBase;->akp:Ljava/lang/String;

    .line 243
    iput-object v3, p0, Lcom/android/common/ActivityBase;->ajF:Lcom/android/common/g/d;

    .line 244
    iput-object v3, p0, Lcom/android/common/ActivityBase;->ajL:Lcom/android/common/g/f;

    .line 245
    iput-object v3, p0, Lcom/android/common/ActivityBase;->ajA:Lcom/android/common/g/e;

    .line 249
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajG:Z

    .line 251
    iput-wide v4, p0, Lcom/android/common/ActivityBase;->ajV:J

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ActivityBase;->ajU:I

    .line 254
    iput-boolean v1, p0, Lcom/android/common/ActivityBase;->ajK:Z

    .line 259
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajY:Z

    .line 260
    iput-wide v4, p0, Lcom/android/common/ActivityBase;->ajZ:J

    .line 261
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->akj:Z

    .line 262
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajE:Z

    .line 263
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajh:Z

    .line 269
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ake:[I

    .line 271
    iput-object v3, p0, Lcom/android/common/ActivityBase;->aka:Landroid/app/AlertDialog;

    .line 275
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->aje:Z

    .line 276
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajq:Z

    .line 278
    iput-boolean v1, p0, Lcom/android/common/ActivityBase;->ajr:Z

    .line 279
    iput-object v3, p0, Lcom/android/common/ActivityBase;->akb:Lcom/android/common/g;

    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.gallery3d.action.DELETE_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajC:Landroid/content/IntentFilter;

    .line 282
    new-instance v0, Lcom/android/common/N;

    invoke-direct {v0, p0}, Lcom/android/common/N;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajD:Landroid/content/BroadcastReceiver;

    .line 291
    new-instance v0, Lcom/android/common/O;

    invoke-direct {v0, p0}, Lcom/android/common/O;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->akk:Landroid/content/BroadcastReceiver;

    .line 298
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajp:Z

    .line 299
    new-instance v0, Lcom/android/common/P;

    invoke-direct {v0, p0}, Lcom/android/common/P;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajx:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v0, Lcom/android/common/Q;

    invoke-direct {v0, p0}, Lcom/android/common/Q;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajW:Landroid/content/BroadcastReceiver;

    .line 368
    new-instance v0, Lcom/android/common/T;

    invoke-direct {v0, p0}, Lcom/android/common/T;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->akl:Landroid/content/BroadcastReceiver;

    .line 380
    new-instance v0, Lcom/android/common/U;

    invoke-direct {v0, p0}, Lcom/android/common/U;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajn:Landroid/content/ServiceConnection;

    .line 393
    iput-object v3, p0, Lcom/android/common/ActivityBase;->ajm:Landroid/content/Intent;

    .line 394
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajo:Z

    .line 408
    iput-object v3, p0, Lcom/android/common/ActivityBase;->ajt:Landroid/app/AlertDialog;

    .line 1075
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->akm:Ljava/lang/Object;

    .line 1364
    new-instance v0, Lcom/android/common/V;

    invoke-direct {v0, p0}, Lcom/android/common/V;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->akn:Lcom/android/common/a/h;

    .line 1440
    iput-object v3, p0, Lcom/android/common/ActivityBase;->ajT:Landroid/app/KeyguardManager;

    .line 1441
    iput-object v3, p0, Lcom/android/common/ActivityBase;->akc:Landroid/os/PowerManager;

    .line 1798
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajM:Z

    .line 1840
    iput v2, p0, Lcom/android/common/ActivityBase;->ako:I

    .line 2434
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajs:Z

    .line 3170
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajS:Z

    .line 3291
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajz:Z

    .line 3292
    iput-object v3, p0, Lcom/android/common/ActivityBase;->ajy:Landroid/content/BroadcastReceiver;

    .line 182
    return-void
.end method

.method private atA(I)Z
    .registers 12

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x42

    const/16 v6, 0x19

    const/16 v5, 0x18

    const/4 v4, 0x0

    .line 2615
    if-eq p1, v5, :cond_d

    .line 2616
    if-ne p1, v6, :cond_30

    .line 2617
    :cond_d
    iget v0, p0, Lcom/android/common/ActivityBase;->ajU:I

    if-ne v0, v7, :cond_2a

    .line 2618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/common/ActivityBase;->ajV:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2a

    .line 2619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/common/ActivityBase;->ajV:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-lez v0, :cond_2a

    .line 2620
    return v4

    .line 2622
    :cond_2a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/ActivityBase;->ajV:J

    .line 2625
    :cond_30
    if-ne p1, v7, :cond_79

    .line 2626
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v0

    .line 2627
    const-string/jumbo v1, "pref_camera_volume_key"

    .line 2628
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aeE()Ljava/lang/String;

    move-result-object v2

    .line 2626
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2629
    iget v1, p0, Lcom/android/common/ActivityBase;->ajU:I

    if-eq v1, v5, :cond_51

    .line 2630
    iget v1, p0, Lcom/android/common/ActivityBase;->ajU:I

    if-ne v1, v6, :cond_73

    .line 2631
    :cond_51
    const-string/jumbo v1, "shutter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2629
    if-eqz v0, :cond_73

    .line 2632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/common/ActivityBase;->ajV:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_73

    .line 2633
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/common/ActivityBase;->ajV:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-lez v0, :cond_73

    .line 2634
    return v4

    .line 2636
    :cond_73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/ActivityBase;->ajV:J

    .line 2639
    :cond_79
    iput p1, p0, Lcom/android/common/ActivityBase;->ajU:I

    .line 2640
    const/4 v0, 0x1

    return v0
.end method

.method private atB()Z
    .registers 4

    .prologue
    .line 2424
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v0

    .line 2425
    const-string/jumbo v1, "pref_video_zoom_key"

    .line 2426
    const v2, 0x7f0a0328

    invoke-virtual {p0, v2}, Lcom/android/common/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2424
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2427
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private atC()V
    .registers 3

    .prologue
    .line 664
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acA()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 665
    invoke-static {}, Lcom/android/common/q/a;->amV()Lcom/android/common/q/a;

    move-result-object v0

    .line 666
    new-instance v1, Lcom/android/common/Y;

    invoke-direct {v1, p0}, Lcom/android/common/Y;-><init>(Lcom/android/common/ActivityBase;)V

    .line 665
    invoke-virtual {v0, p0, v1}, Lcom/android/common/q/a;->amY(Landroid/app/Activity;Lcom/android/common/q/b;)V

    .line 663
    :cond_1a
    return-void
.end method

.method private atE()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1447
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "keyguard_locked"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1448
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    if-ne v2, v3, :cond_20

    .line 1450
    :cond_1c
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->asw(Z)V

    .line 1446
    return-void

    :cond_20
    move v0, v1

    .line 1448
    goto :goto_1c
.end method

.method private atF()V
    .registers 4

    .prologue
    const/16 v2, 0x80

    .line 3236
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3237
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-ne v0, v2, :cond_1e

    .line 3239
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 3235
    :cond_1e
    return-void
.end method

.method private atG()V
    .registers 2

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nj()V

    .line 2151
    return-void
.end method

.method private atI()V
    .registers 4

    .prologue
    .line 534
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acu()Z

    move-result v0

    if-nez v0, :cond_14

    .line 535
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auq()Z

    move-result v0

    .line 534
    if-eqz v0, :cond_3f

    .line 536
    :cond_14
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 537
    const-string/jumbo v1, "cameraswitch"

    const/4 v2, 0x0

    .line 536
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 538
    if-nez v0, :cond_2b

    .line 539
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auq()Z

    move-result v0

    .line 538
    if-eqz v0, :cond_2b

    .line 540
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->avD()V

    .line 542
    :cond_2b
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajp:Z

    if-nez v0, :cond_3f

    .line 543
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajx:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 544
    const-string/jumbo v2, "stop_camera_activity"

    .line 543
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->ajp:Z

    .line 533
    :cond_3f
    return-void
.end method

.method private atJ(I)Z
    .registers 6

    .prologue
    .line 2581
    const v0, 0x1e240

    if-ne p1, v0, :cond_45

    const-string/jumbo v0, "ActivityBase"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2585
    :try_start_f
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "dump hprof E"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/sdcard/camera_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".hprof"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 2587
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "dump hprof X"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_43} :catch_47

    .line 2591
    :goto_43
    const/4 v0, 0x1

    return v0

    .line 2582
    :cond_45
    const/4 v0, 0x0

    return v0

    .line 2588
    :catch_47
    move-exception v0

    .line 2589
    const-string/jumbo v1, "ActivityBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dump hprof fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43
.end method

.method private atL()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1764
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajw:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    .line 1765
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajw:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 1767
    :cond_a
    iput-object v1, p0, Lcom/android/common/ActivityBase;->ajv:Landroid/view/animation/AlphaAnimation;

    .line 1768
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajH:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1763
    return-void
.end method

.method private atM()V
    .registers 5

    .prologue
    .line 1454
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1455
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1456
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1457
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1459
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agE()Lcom/android/common/storagemanager/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/storagemanager/b;->agr()V

    .line 1453
    return-void
.end method

.method private atO()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3090
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akq:Lcom/android/common/p/a;

    if-eqz v0, :cond_c

    .line 3091
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akq:Lcom/android/common/p/a;

    invoke-virtual {v0}, Lcom/android/common/p/a;->amT()V

    .line 3092
    iput-object v1, p0, Lcom/android/common/ActivityBase;->akq:Lcom/android/common/p/a;

    .line 3089
    :cond_c
    return-void
.end method

.method private atQ()Lcom/android/common/setting/o;
    .registers 2

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    return-object v0
.end method

.method private atU()Z
    .registers 2

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sM()Z

    move-result v0

    return v0
.end method

.method private atX()[B
    .registers 2

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sf()[B

    move-result-object v0

    return-object v0
.end method

.method private atv()V
    .registers 3

    .prologue
    .line 1533
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1534
    new-instance v1, Lcom/android/common/ah;

    invoke-direct {v1, p0}, Lcom/android/common/ah;-><init>(Lcom/android/common/ActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1532
    return-void
.end method

.method private atw()V
    .registers 3

    .prologue
    const/16 v1, 0x80

    .line 3229
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eq v0, v1, :cond_17

    .line 3231
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3228
    :cond_17
    return-void
.end method

.method private atx(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 2595
    const/16 v0, 0x54

    if-eq p1, v0, :cond_8

    .line 2596
    const/16 v0, 0x52

    if-ne p1, v0, :cond_10

    .line 2597
    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2598
    const/4 v0, 0x1

    return v0

    .line 2600
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private atz()V
    .registers 5

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajo:Z

    if-nez v0, :cond_2f

    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->ajo:Z

    .line 642
    const-string/jumbo v0, "WlanCamera:Camera"

    const-string/jumbo v1, "bindWlamCameraService "

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajm:Landroid/content/Intent;

    .line 646
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajm:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "cn.nubia.wlancamera"

    .line 647
    const-string/jumbo v3, "cn.nubia.wlancamera.filming.WlanCameraRemoteService"

    .line 646
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 648
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajm:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/common/ActivityBase;->ajn:Landroid/content/ServiceConnection;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/common/ActivityBase;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 638
    :cond_2f
    return-void
.end method

.method private auC()V
    .registers 5

    .prologue
    const/16 v1, 0x70

    .line 3182
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajS:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3183
    :cond_e
    return-void

    .line 3185
    :cond_f
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auv()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 3187
    new-instance v0, Lcom/android/common/ak;

    invoke-direct {v0, p0}, Lcom/android/common/ak;-><init>(Lcom/android/common/ActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3196
    return-void

    .line 3198
    :cond_1e
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3199
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atw()V

    .line 3200
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3180
    return-void
.end method

.method private auD()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 1875
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->avl(Z)V

    .line 1876
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Vh()Ljava/lang/String;

    move-result-object v0

    .line 1877
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->ask()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Nm()Ljava/lang/String;

    move-result-object v1

    .line 1878
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 1879
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-eq v1, v2, :cond_5e

    .line 1880
    const-string/jumbo v1, "ActivityBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Switching to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1881
    const-string/jumbo v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string/jumbo v0, " ZSL "

    .line 1880
    :goto_40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1882
    const-string/jumbo v2, "Camera Mode. Restart Preview"

    .line 1880
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    invoke-virtual {p0, v4}, Lcom/android/common/ActivityBase;->avl(Z)V

    .line 1884
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atU()Z

    move-result v0

    return v0

    .line 1881
    :cond_5a
    const-string/jumbo v0, " non ZSL "

    goto :goto_40

    .line 1887
    :cond_5e
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xx()Z

    move-result v0

    .line 1888
    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LG()Z

    move-result v1

    .line 1889
    if-eq v0, v1, :cond_ae

    .line 1890
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-eq v1, v2, :cond_ae

    .line 1891
    const-string/jumbo v1, "TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switch to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_aa

    const-string/jumbo v0, "Video mode"

    :goto_90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1892
    const-string/jumbo v2, ". Restart preview"

    .line 1891
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    invoke-virtual {p0, v4}, Lcom/android/common/ActivityBase;->avl(Z)V

    .line 1894
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atU()Z

    move-result v0

    return v0

    .line 1891
    :cond_aa
    const-string/jumbo v0, "Non-video mode"

    goto :goto_90

    .line 1897
    :cond_ae
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atU()Z

    move-result v0

    return v0
.end method

.method private auI()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1987
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;->dN:Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/a;->dj(Lcom/android/common/independentFocusExposure/CameraExposureService$ExposureIndicatorState;)V

    .line 1988
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;->eQ:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/i;->fr(Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;)V

    .line 1989
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/a;->di(Z)V

    .line 1990
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/i;->fq(Z)V

    .line 1986
    return-void
.end method

.method private auJ(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 2392
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajO:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asN()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2393
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_14

    .line 2394
    invoke-direct {p0, v1}, Lcom/android/common/ActivityBase;->auP(Z)V

    .line 2396
    :cond_14
    return v1
.end method

.method private auK(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2383
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->ast()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2384
    invoke-virtual {p0, v1}, Lcom/android/common/ActivityBase;->setResult(I)V

    .line 2385
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->finish()V

    .line 2386
    const/4 v0, 0x1

    return v0

    .line 2388
    :cond_f
    return v1
.end method

.method private auL(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2400
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajO:Z

    if-eqz v0, :cond_14

    .line 2401
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asN()Z

    move-result v0

    .line 2400
    if-eqz v0, :cond_14

    .line 2402
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_14

    .line 2403
    invoke-direct {p0, v1}, Lcom/android/common/ActivityBase;->auP(Z)V

    .line 2405
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private auM(II)V
    .registers 5

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1309
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atP()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1314
    :cond_e
    return-void

    .line 1310
    :cond_f
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asN()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1311
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_e

    .line 1312
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_e

    .line 1313
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_e

    .line 1317
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dQ()V

    .line 1307
    return-void
.end method

.method private auN()V
    .registers 3

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->fV()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asM()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1999
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/o;->gA()V

    .line 2000
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 2002
    :cond_21
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    sget-object v1, Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;->gj:Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/o;->fJ(Lcom/android/common/independentFocusExposure/MwbService$WbIndicatorState;)V

    .line 2003
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/o;->gI(Z)V

    .line 1997
    return-void
.end method

.method private auP(Z)V
    .registers 3

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rK()Lcom/android/common/appService/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/s;->kJ(Z)V

    .line 2378
    return-void
.end method

.method private auS(II)V
    .registers 5

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_33

    .line 1283
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auy()Z

    move-result v0

    .line 1282
    if-eqz v0, :cond_33

    .line 1284
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_2a

    .line 1285
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_3d

    .line 1288
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mQ()V

    .line 1290
    :cond_33
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/independentFocusExposure/g;->dR(II)V

    .line 1281
    return-void

    .line 1286
    :cond_3d
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_33

    goto :goto_2a
.end method

.method private auT(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    .line 2252
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/i;->fs(Z)V

    .line 2255
    :cond_11
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asL()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2256
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/a;->cT(Landroid/view/MotionEvent;)V

    .line 2258
    :cond_20
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asK()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2259
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/i;->fj(Landroid/view/MotionEvent;)V

    .line 2261
    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_3c

    .line 2262
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2265
    :cond_3c
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asL()Z

    move-result v0

    if-nez v0, :cond_48

    .line 2266
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aut()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 2274
    :cond_48
    :goto_48
    return v2

    .line 2267
    :cond_49
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asM()Z

    move-result v0

    .line 2265
    if-eqz v0, :cond_48

    .line 2268
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qC()Lcom/android/common/independentFocusExposure/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/o;->gC(Landroid/view/MotionEvent;)V

    .line 2269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_48

    .line 2270
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_48
.end method

.method private auU()V
    .registers 2

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atW()Lcom/android/common/appService/J;

    move-result-object v0

    if-nez v0, :cond_9

    .line 552
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->avw()V

    .line 550
    :cond_9
    return-void
.end method

.method private auW(I)V
    .registers 4

    .prologue
    .line 2409
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auA()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2410
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    if-eqz v0, :cond_40

    .line 2411
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajg:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_2e

    .line 2412
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajg:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afb:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_24

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atB()Z

    move-result v0

    .line 2411
    if-nez v0, :cond_2e

    .line 2413
    :cond_24
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajg:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afc:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_40

    .line 2414
    :cond_2e
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "performZoomForKeyDown"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    const/16 v0, 0x18

    if-ne p1, v0, :cond_41

    .line 2416
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    invoke-virtual {v0}, Lcom/android/common/appService/T;->oJ()V

    .line 2408
    :cond_40
    :goto_40
    return-void

    .line 2418
    :cond_41
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    invoke-virtual {v0}, Lcom/android/common/appService/T;->oK()V

    goto :goto_40
.end method

.method private auX(J)V
    .registers 6

    .prologue
    .line 1731
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->atj(Z)V

    .line 1732
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajw:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_36

    .line 1733
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajv:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_20

    .line 1734
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajv:Landroid/view/animation/AlphaAnimation;

    .line 1735
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajv:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/android/common/ai;

    invoke-direct {v1, p0}, Lcom/android/common/ai;-><init>(Lcom/android/common/ActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1755
    :cond_20
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajw:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 1756
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajv:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 1757
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajv:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1759
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajw:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/common/ActivityBase;->ajv:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1730
    :cond_36
    return-void
.end method

.method private auY(I)V
    .registers 4

    .prologue
    .line 2644
    const/16 v0, 0x18

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-ne p1, v0, :cond_e

    .line 2645
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/ActivityBase;->ajV:J

    .line 2643
    :cond_e
    return-void
.end method

.method private auZ()V
    .registers 3

    .prologue
    .line 3294
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajz:Z

    if-eqz v0, :cond_5

    .line 3295
    return-void

    .line 3297
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3298
    new-instance v1, Lcom/android/common/al;

    invoke-direct {v1, p0}, Lcom/android/common/al;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v1, p0, Lcom/android/common/ActivityBase;->ajy:Landroid/content/BroadcastReceiver;

    .line 3320
    iget-object v1, p0, Lcom/android/common/ActivityBase;->ajy:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/common/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->ajz:Z

    .line 3293
    return-void
.end method

.method private aua(Z)V
    .registers 8

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->ast()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 861
    :try_start_6
    const-string/jumbo v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 862
    const-string/jumbo v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 863
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "system_access"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 864
    const-string/jumbo v1, "nubia.os.ISystemAccess$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 865
    const-string/jumbo v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 866
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 867
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setFactoryFlag"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 868
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_77} :catch_78

    .line 857
    :cond_77
    :goto_77
    return-void

    .line 869
    :catch_78
    move-exception v0

    .line 870
    const-string/jumbo v1, "ActivityBase"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_77
.end method

.method private aud()V
    .registers 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, p0}, Lcom/android/common/appService/W;->sB(Lcom/android/common/ActivityBase;)V

    .line 940
    return-void
.end method

.method private aue()V
    .registers 4

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atV()Lcom/android/common/d;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 886
    const/4 v0, 0x1

    .line 887
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 888
    const/4 v0, 0x7

    .line 889
    :cond_15
    new-instance v1, Lcom/android/common/d;

    invoke-direct {v1, v0}, Lcom/android/common/d;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/android/common/ActivityBase;->avp(Lcom/android/common/d;)V

    .line 884
    :cond_1d
    return-void
.end method

.method private aui()V
    .registers 7

    .prologue
    .line 1023
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "initPreviewResources"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const v0, 0x7f10004d

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/common/ActivityBase;->aju:Landroid/view/SurfaceView;

    .line 1025
    new-instance v0, Lcom/android/common/appService/R;

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/common/appService/R;-><init>(Landroid/content/res/Resources;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->akd:Lcom/android/common/appService/R;

    .line 1026
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akd:Lcom/android/common/appService/R;

    new-instance v1, Lcom/android/common/ac;

    invoke-direct {v1, p0}, Lcom/android/common/ac;-><init>(Lcom/android/common/ActivityBase;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/R;->ou(Lcom/android/common/appService/S;)V

    .line 1049
    new-instance v0, Lcom/android/common/a/g;

    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    iget-object v2, p0, Lcom/android/common/ActivityBase;->akn:Lcom/android/common/a/h;

    .line 1050
    iget-object v3, p0, Lcom/android/common/ActivityBase;->aju:Landroid/view/SurfaceView;

    new-instance v4, Lcom/android/common/g/g;

    iget-object v5, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v5}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/common/g/g;-><init>(Landroid/content/Context;)V

    .line 1049
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/common/a/g;-><init>(Lcom/android/common/appService/W;Lcom/android/common/a/h;Landroid/view/SurfaceView;Lcom/android/common/g/g;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    .line 1051
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akd:Lcom/android/common/appService/R;

    iget-object v1, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v1}, Lcom/android/common/a/g;->ao()Lcom/android/common/appService/S;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/R;->ou(Lcom/android/common/appService/S;)V

    .line 1022
    return-void
.end method

.method private auk()V
    .registers 3

    .prologue
    .line 1547
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asN()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1548
    return-void

    .line 1551
    :cond_7
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sA(Z)V

    .line 1553
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1552
    invoke-static {v0, v1}, Lcom/android/common/setting/RecordLocationPreference;->YO(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 1554
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atY()Lcom/android/common/r/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/r/a;->anf(Z)V

    .line 1556
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auB()V

    .line 1558
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auo()V

    .line 1560
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/common/ActivityBase;->avq(Z)V

    .line 1561
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atv()V

    .line 1546
    return-void
.end method

.method private aum()V
    .registers 3

    .prologue
    .line 920
    const v0, 0x7f10004e

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajw:Landroid/widget/LinearLayout;

    .line 921
    const v0, 0x7f100053

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajH:Landroid/widget/ImageView;

    .line 922
    const v0, 0x7f100054

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ActivityBase;->akr:Landroid/view/View;

    .line 923
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akr:Landroid/view/View;

    new-instance v1, Lcom/android/common/Z;

    invoke-direct {v1, p0}, Lcom/android/common/Z;-><init>(Lcom/android/common/ActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 919
    return-void
.end method

.method private aun()V
    .registers 5

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sA(Z)V

    .line 905
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atY()Lcom/android/common/r/a;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 908
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 907
    invoke-static {v0, v1}, Lcom/android/common/setting/RecordLocationPreference;->YO(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 909
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atY()Lcom/android/common/r/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/r/a;->anf(Z)V

    .line 911
    :cond_1f
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auo()V

    .line 913
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auB()V

    .line 915
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avb()V

    .line 916
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    const/16 v1, 0x71

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 899
    return-void
.end method

.method private aup()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2117
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajK:Z

    if-nez v0, :cond_f

    .line 2118
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "Has no focus!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    return v2

    .line 2121
    :cond_f
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    if-nez v0, :cond_1d

    .line 2122
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "mAppService is null!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    return v2

    .line 2125
    :cond_1d
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    .line 2126
    sget-object v1, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_28

    .line 2127
    return v2

    .line 2129
    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method private auq()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2933
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2934
    const-string/jumbo v3, "capture_service_on"

    .line 2932
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method private aus()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1294
    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pk()Z

    move-result v1

    if-nez v1, :cond_52

    .line 1295
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asN()Z

    move-result v1

    .line 1294
    if-eqz v1, :cond_52

    .line 1296
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atP()Lcom/android/common/cameradevice/j;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 1297
    iget-boolean v1, p0, Lcom/android/common/ActivityBase;->ajN:Z

    .line 1294
    if-eqz v1, :cond_52

    .line 1298
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-eq v1, v2, :cond_52

    .line 1299
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-eq v1, v2, :cond_52

    .line 1300
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-eq v1, v2, :cond_52

    .line 1301
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    if-eq v1, v2, :cond_52

    .line 1302
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq v1, v2, :cond_52

    .line 1303
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    if-eq v1, v2, :cond_52

    .line 1304
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->ass()Lcom/android/common/camerastate/UIState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne v1, v2, :cond_52

    const/4 v0, 0x1

    .line 1294
    :cond_52
    return v0
.end method

.method private auv()Z
    .registers 4

    .prologue
    .line 3282
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_intelligent_power_saving"

    .line 3283
    const v2, 0x7f0a04f4

    invoke-virtual {p0, v2}, Lcom/android/common/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3282
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3283
    const-string/jumbo v1, "on"

    .line 3282
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private aux()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 530
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private auy()Z
    .registers 5

    .prologue
    .line 1321
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adh()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1322
    const/4 v0, 0x0

    return v0

    .line 1324
    :cond_10
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_capture_focus_key"

    .line 1325
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a03e8

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1324
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1325
    const-string/jumbo v1, "on"

    .line 1324
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private auz(I)Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2565
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    .line 2566
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 2567
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2568
    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2565
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2569
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2570
    return v3

    .line 2572
    :cond_3f
    const/4 v0, 0x7

    if-gt v0, p1, :cond_47

    const/16 v0, 0x10

    if-gt p1, v0, :cond_47

    .line 2575
    :cond_46
    return v3

    .line 2573
    :cond_47
    const/16 v0, 0x1d

    if-gt v0, p1, :cond_4f

    const/16 v0, 0x36

    if-le p1, v0, :cond_46

    .line 2574
    :cond_4f
    const/16 v0, 0x83

    if-gt v0, p1, :cond_57

    const/16 v0, 0x8e

    if-le p1, v0, :cond_46

    .line 2577
    :cond_57
    return v4
.end method

.method private avA()V
    .registers 3

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rp()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1713
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->mJ(Z)V

    .line 1711
    :cond_12
    return-void
.end method

.method private avB()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1705
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XI()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1706
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->mJ(Z)V

    .line 1708
    :cond_16
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/ActivityBase;->avr(Ljava/lang/Boolean;)V

    .line 1704
    return-void
.end method

.method private avC()V
    .registers 2

    .prologue
    .line 1059
    invoke-static {}, Lcom/android/common/h;->apL()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1060
    :cond_7
    const-string/jumbo v0, "54f3c83bfd98c58a46000325"

    invoke-static {p0, v0}, Lcom/umeng/analytics/AnalyticsConfig;->setAppkey(Landroid/content/Context;Ljava/lang/String;)V

    .line 1061
    const-string/jumbo v0, "nubia"

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->setChannel(Ljava/lang/String;)V

    .line 1062
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->enableEncrypt(Z)V

    .line 1063
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->openActivityDurationTrack(Z)V

    .line 1058
    return-void
.end method

.method private avG()V
    .registers 4

    .prologue
    .line 1077
    iget-object v1, p0, Lcom/android/common/ActivityBase;->akm:Ljava/lang/Object;

    monitor-enter v1

    .line 1078
    :try_start_3
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->aje:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3d

    if-eqz v0, :cond_9

    monitor-exit v1

    .line 1079
    return-void

    .line 1080
    :cond_9
    :try_start_9
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajN:Z

    if-eqz v0, :cond_21

    .line 1081
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v0}, Lcom/android/common/a/g;->ar()Z

    move-result v0

    .line 1080
    if-eqz v0, :cond_21

    .line 1082
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v2, :cond_21

    .line 1083
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajQ:Z
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_3d

    if-eqz v0, :cond_23

    :cond_21
    :goto_21
    monitor-exit v1

    .line 1076
    return-void

    .line 1085
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asH()V

    .line 1087
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qJ()Lcom/android/common/appService/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/i;->iK()V

    .line 1089
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->ajQ:Z

    .line 1091
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    new-instance v2, Lcom/android/common/ad;

    invoke-direct {v2, p0}, Lcom/android/common/ad;-><init>(Lcom/android/common/ActivityBase;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3c
    .catchall {:try_start_23 .. :try_end_3c} :catchall_3d

    goto :goto_21

    .line 1077
    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private avH()V
    .registers 2

    .prologue
    .line 3325
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajz:Z

    if-eqz v0, :cond_f

    .line 3326
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajy:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajy:Landroid/content/BroadcastReceiver;

    .line 3328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->ajz:Z

    .line 3324
    :cond_f
    return-void
.end method

.method private avI()V
    .registers 3

    .prologue
    .line 1678
    invoke-static {}, Lcom/android/common/s;->ars()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/f;->agR:Ljava/lang/String;

    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/common/f;->agR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/f;->agT:Ljava/lang/String;

    .line 1677
    return-void
.end method

.method private avJ()V
    .registers 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajg:Lcom/android/common/camerastate/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 659
    return-void
.end method

.method private avK()V
    .registers 3

    .prologue
    .line 2997
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "wake up camera"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->asP(Z)V

    .line 2999
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->avw()V

    .line 3000
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ActivityBase;->att(J)V

    .line 2996
    return-void
.end method

.method static synthetic avL(Lcom/android/common/ActivityBase;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->aup()Z

    move-result v0

    return v0
.end method

.method static synthetic avM(Lcom/android/common/ActivityBase;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auq()Z

    move-result v0

    return v0
.end method

.method static synthetic avN(Lcom/android/common/ActivityBase;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avn()Z

    move-result v0

    return v0
.end method

.method static synthetic avO(Lcom/android/common/ActivityBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atF()V

    return-void
.end method

.method static synthetic avP(Lcom/android/common/ActivityBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auk()V

    return-void
.end method

.method static synthetic avQ(Lcom/android/common/ActivityBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auI()V

    return-void
.end method

.method static synthetic avR(Lcom/android/common/ActivityBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auN()V

    return-void
.end method

.method static synthetic avS(Lcom/android/common/ActivityBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avo()V

    return-void
.end method

.method static synthetic avT(Lcom/android/common/ActivityBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avv()V

    return-void
.end method

.method static synthetic avU(Lcom/android/common/ActivityBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avx()V

    return-void
.end method

.method static synthetic avV(Lcom/android/common/ActivityBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avA()V

    return-void
.end method

.method static synthetic avW(Lcom/android/common/ActivityBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avB()V

    return-void
.end method

.method static synthetic avX(Lcom/android/common/ActivityBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avG()V

    return-void
.end method

.method static synthetic avY(Lcom/android/common/ActivityBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avK()V

    return-void
.end method

.method private ava()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3029
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajF:Lcom/android/common/g/d;

    if-eqz v0, :cond_c

    .line 3030
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajF:Lcom/android/common/g/d;

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->atr(Lcom/android/common/a/b;)V

    .line 3031
    iput-object v1, p0, Lcom/android/common/ActivityBase;->ajF:Lcom/android/common/g/d;

    .line 3033
    :cond_c
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajL:Lcom/android/common/g/f;

    if-eqz v0, :cond_17

    .line 3034
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajL:Lcom/android/common/g/f;

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->atr(Lcom/android/common/a/b;)V

    .line 3035
    iput-object v1, p0, Lcom/android/common/ActivityBase;->ajL:Lcom/android/common/g/f;

    .line 3037
    :cond_17
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajA:Lcom/android/common/g/e;

    if-eqz v0, :cond_22

    .line 3038
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajA:Lcom/android/common/g/e;

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->atr(Lcom/android/common/a/b;)V

    .line 3039
    iput-object v1, p0, Lcom/android/common/ActivityBase;->ajA:Lcom/android/common/g/e;

    .line 3028
    :cond_22
    return-void
.end method

.method private avb()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1772
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajw:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1773
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajH:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1771
    return-void
.end method

.method private avc()V
    .registers 3

    .prologue
    .line 3204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->ajS:Z

    .line 3205
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3206
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3203
    return-void
.end method

.method private avd()V
    .registers 3

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    const-string/jumbo v1, "pref_shutter_key_into_camera_key"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 1955
    if-eqz v0, :cond_19

    .line 1956
    const v1, 0x7f0a032c

    invoke-virtual {p0, v1}, Lcom/android/common/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 1953
    :cond_19
    return-void
.end method

.method private avg([B)V
    .registers 10

    .prologue
    .line 2909
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajY:Z

    if-nez v0, :cond_5

    return-void

    .line 2910
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2911
    invoke-static {v0, v1}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v2

    .line 2912
    iget-object v3, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 2913
    iget-object v4, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v4}, Lcom/android/common/appService/W;->pF()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/common/f;->aou(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 2914
    new-instance v5, Landroid/content/ContentValues;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 2915
    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2916
    const-string/jumbo v6, "_display_name"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ".jpg"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    const-string/jumbo v2, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2918
    const-string/jumbo v0, "mime_type"

    const-string/jumbo v1, "image/jpeg"

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    const-string/jumbo v0, "_data"

    invoke-virtual {v5, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    const-string/jumbo v0, "_size"

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2921
    const-string/jumbo v0, "width"

    iget v1, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2922
    const-string/jumbo v0, "height"

    iget v1, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2923
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    .line 2924
    if-eqz v0, :cond_ac

    .line 2925
    const-string/jumbo v1, "latitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2926
    const-string/jumbo v1, "longitude"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2928
    :cond_ac
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v4, v5}, Lcom/android/common/f;->aon(Landroid/content/ContentResolver;[BLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2908
    return-void
.end method

.method private avj()V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 3125
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->adz()Z

    move-result v1

    if-nez v1, :cond_10

    .line 3126
    return-void

    .line 3128
    :cond_10
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v1

    .line 3129
    const-string/jumbo v2, "pref_shutter_key_into_camera_key"

    .line 3130
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a032c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3128
    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3132
    iget-object v2, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v2

    const-string/jumbo v3, "visitor"

    invoke-virtual {v2, v3, v0}, Lcom/android/common/ActivityBase;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3134
    const-string/jumbo v3, "on"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3135
    const/4 v0, 0x0

    .line 3140
    :cond_3d
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3141
    const-string/jumbo v2, "visitor"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3142
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3143
    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qa()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "visitor"

    invoke-static {v1, v2, v0}, Lcom/android/common/h;->aqb(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 3124
    return-void
.end method

.method private avn()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 397
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 398
    const-string/jumbo v1, "pref_camera_storage_path"

    .line 397
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 399
    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->auE(Lcom/android/common/setting/ListPreference;)V

    .line 400
    invoke-static {}, Lcom/android/common/s;->aru()Z

    move-result v1

    if-nez v1, :cond_19

    .line 401
    const/4 v0, 0x0

    return v0

    .line 403
    :cond_19
    invoke-virtual {v0, v2}, Lcom/android/common/setting/ListPreference;->Vt(I)V

    .line 404
    invoke-static {v2}, Lcom/android/common/f;->aoA(Z)V

    .line 405
    return v2
.end method

.method private avo()V
    .registers 3

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    new-instance v1, Lcom/android/common/ab;

    invoke-direct {v1, p0}, Lcom/android/common/ab;-><init>(Lcom/android/common/ActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 986
    return-void
.end method

.method private avq(Z)V
    .registers 3

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->sD(Z)V

    .line 1492
    return-void
.end method

.method private avr(Ljava/lang/Boolean;)V
    .registers 3

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->sI(Ljava/lang/Boolean;)V

    .line 1717
    return-void
.end method

.method private avs(Lcom/android/common/r/a;)V
    .registers 3

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->sC(Lcom/android/common/r/a;)V

    .line 1012
    return-void
.end method

.method private avu()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1200
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "add more settings fragment"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "more_settings"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/common/o/p;

    .line 1202
    if-nez v0, :cond_43

    .line 1203
    invoke-static {}, Lcom/android/common/o/p;->alY()Lcom/android/common/o/p;

    move-result-object v0

    .line 1204
    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/common/o/p;->amf(Lcom/android/common/appService/W;)V

    .line 1205
    iget-boolean v1, p0, Lcom/android/common/ActivityBase;->aje:Z

    invoke-virtual {v0, v1}, Lcom/android/common/o/p;->amg(Z)V

    .line 1206
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1207
    invoke-virtual {v1, v2, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 1208
    const-string/jumbo v2, "more_settings"

    const v3, 0x7f100052

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1209
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1215
    :goto_3e
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/o/p;->ama(Z)V

    .line 1199
    return-void

    .line 1211
    :cond_43
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1212
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1213
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_3e
.end method

.method private avv()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 410
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "showpathdialog"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/android/common/s;->arv()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 412
    invoke-static {}, Lcom/android/common/s;->aru()Z

    move-result v0

    .line 413
    :goto_14
    if-eqz v0, :cond_26

    .line 414
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    .line 413
    if-nez v0, :cond_26

    .line 415
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    .line 413
    if-eqz v0, :cond_29

    .line 416
    :cond_26
    return-void

    .line 411
    :cond_27
    const/4 v0, 0x0

    goto :goto_14

    .line 418
    :cond_29
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajt:Landroid/app/AlertDialog;

    if-nez v0, :cond_59

    .line 419
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 420
    const v1, 0x7f0a02f8

    .line 419
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 421
    const v1, 0x7f0a03a8

    .line 419
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 422
    const v1, 0x7f0a02f9

    .line 419
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 423
    new-instance v1, Lcom/android/common/W;

    invoke-direct {v1, p0}, Lcom/android/common/W;-><init>(Lcom/android/common/ActivityBase;)V

    const v2, 0x7f0a0277

    .line 419
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajt:Landroid/app/AlertDialog;

    .line 436
    :cond_59
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajt:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 437
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "isShowing"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void

    .line 440
    :cond_6b
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajt:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 409
    return-void
.end method

.method private avx()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1777
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sJ()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1778
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/common/appService/H;->mJ(Z)V

    .line 1780
    :cond_12
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-nez v0, :cond_52

    .line 1781
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sK()Z

    move-result v0

    .line 1780
    if-eqz v0, :cond_52

    .line 1784
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sL()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1785
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sJ()Z

    move-result v0

    .line 1784
    if-nez v0, :cond_4d

    .line 1786
    const-string/jumbo v0, "off"

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atQ()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Vh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1787
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jR:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_63

    .line 1788
    :cond_4d
    const-wide/16 v0, 0x1f4

    .line 1792
    :goto_4f
    invoke-direct {p0, v0, v1}, Lcom/android/common/ActivityBase;->auX(J)V

    .line 1794
    :cond_52
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    const/16 v1, 0x23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1795
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/ActivityBase;->avr(Ljava/lang/Boolean;)V

    .line 1776
    return-void

    .line 1790
    :cond_63
    const-wide/16 v0, 0x64

    goto :goto_4f
.end method

.method private avz()V
    .registers 3

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akq:Lcom/android/common/p/a;

    if-eqz v0, :cond_f

    .line 3075
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akq:Lcom/android/common/p/a;

    invoke-virtual {v0, p0}, Lcom/android/common/p/a;->amS(Lcom/android/common/p/d;)V

    .line 3076
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akq:Lcom/android/common/p/a;

    invoke-virtual {v0}, Lcom/android/common/p/a;->start()V

    .line 3073
    :goto_e
    return-void

    .line 3078
    :cond_f
    new-instance v0, Lcom/android/common/p/a;

    iget-object v1, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/common/p/a;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->akq:Lcom/android/common/p/a;

    goto :goto_e
.end method


# virtual methods
.method protected asA()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2233
    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-eq v1, v2, :cond_15

    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    if-ne v1, v2, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected asB(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 2604
    const/4 v0, 0x0

    return v0
.end method

.method protected asC(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 2745
    const/4 v0, 0x0

    return v0
.end method

.method protected asD(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 2800
    const/4 v0, 0x0

    return v0
.end method

.method protected asE()V
    .registers 2

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 2171
    return-void
.end method

.method protected asF()V
    .registers 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 1836
    return-void
.end method

.method protected asG()V
    .registers 2

    .prologue
    .line 833
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sl()V

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->ajQ:Z

    .line 832
    return-void
.end method

.method protected asH()V
    .registers 3

    .prologue
    .line 1385
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeo()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1386
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asn()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_2d

    .line 1387
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_2d

    .line 1388
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->aA(I)V

    .line 1380
    :cond_2c
    :goto_2c
    return-void

    .line 1389
    :cond_2d
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asn()I

    move-result v1

    aget-object v0, v0, v1

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v0, :cond_2c

    .line 1390
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->aA(I)V

    goto :goto_2c
.end method

.method protected asI(Lcom/android/common/camerastate/FunctionState;)V
    .registers 3

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajg:Lcom/android/common/camerastate/a;

    invoke-virtual {v0, p1}, Lcom/android/common/camerastate/a;->amK(Lcom/android/common/camerastate/FunctionState;)V

    .line 3120
    return-void
.end method

.method protected asJ()I
    .registers 2

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sG()I

    move-result v0

    return v0
.end method

.method protected asK()Z
    .registers 2

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dL()Z

    move-result v0

    return v0
.end method

.method protected asL()Z
    .registers 2

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dK()Z

    move-result v0

    return v0
.end method

.method protected asM()Z
    .registers 2

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dN()Z

    move-result v0

    return v0
.end method

.method protected asN()Z
    .registers 2

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sE()Z

    move-result v0

    return v0
.end method

.method public asO()V
    .registers 7

    .prologue
    const v4, 0x7f0a03a9

    const/4 v1, 0x0

    .line 1901
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1902
    return-void

    .line 1905
    :cond_d
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->ask()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LZ()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1906
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->ave()V

    .line 1909
    :cond_1a
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v2, "pref_camera_storage_path"

    .line 1910
    invoke-virtual {p0, v4}, Lcom/android/common/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1909
    invoke-virtual {v0, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1911
    invoke-virtual {p0, v4}, Lcom/android/common/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 1912
    const/4 v0, 0x1

    .line 1914
    :goto_34
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1915
    iget-object v2, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/h;->apz(Lcom/android/common/setting/PreferenceGroup;)[Ljava/lang/String;

    move-result-object v4

    .line 1916
    if-eqz v4, :cond_54

    move v2, v1

    .line 1917
    :goto_49
    array-length v5, v4

    if-ge v2, v5, :cond_54

    .line 1918
    aget-object v5, v4, v2

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1917
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 1921
    :cond_54
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aex()[Ljava/lang/String;

    move-result-object v2

    .line 1922
    if-eqz v2, :cond_6d

    .line 1923
    :goto_62
    array-length v4, v2

    if-ge v1, v4, :cond_6d

    .line 1924
    aget-object v4, v2, v1

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1923
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 1931
    :cond_6d
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1932
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avd()V

    .line 1933
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avj()V

    .line 1934
    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->sN()Lcom/android/common/setting/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asn()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/common/setting/k;->Wd(I)V

    .line 1936
    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/H;->nJ()V

    .line 1937
    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/H;->nM()V

    .line 1938
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asW()V

    .line 1939
    if-eqz v0, :cond_a9

    .line 1941
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    new-instance v1, Lcom/android/common/aj;

    invoke-direct {v1, p0}, Lcom/android/common/aj;-><init>(Lcom/android/common/ActivityBase;)V

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 1900
    :goto_a8
    return-void

    .line 1949
    :cond_a9
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asi()V

    goto :goto_a8

    :cond_ad
    move v0, v1

    goto :goto_34
.end method

.method public asP(Z)V
    .registers 5

    .prologue
    .line 1815
    if-eqz p1, :cond_23

    .line 1816
    const-string/jumbo v0, "enableCloseCameraBlackBoard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akr:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1814
    :goto_22
    return-void

    .line 1819
    :cond_23
    const-string/jumbo v0, "enableCloseCameraBlackBoard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akr:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_22
.end method

.method protected asQ()V
    .registers 3

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v0}, Lcom/android/common/a/g;->ar()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2145
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "Recreate CameraSurfaceView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aju:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2147
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aju:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 2143
    :cond_1e
    return-void
.end method

.method protected asR()V
    .registers 3

    .prologue
    .line 2168
    new-instance v0, Lcom/android/common/m/c;

    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcom/android/common/m/c;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->aiZ:Lcom/android/common/m/c;

    .line 2167
    return-void
.end method

.method protected asS()V
    .registers 2

    .prologue
    .line 3268
    new-instance v0, Lcom/android/common/appService/D;

    invoke-direct {v0}, Lcom/android/common/appService/D;-><init>()V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajl:Lcom/android/common/appService/b;

    .line 3267
    return-void
.end method

.method protected asT()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1151
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aur()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1152
    const v0, 0x7f0a02d0

    invoke-static {p0, v0}, Lcom/android/common/h;->aqk(Landroid/app/Activity;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ActivityBase;->aka:Landroid/app/AlertDialog;

    .line 1153
    return v3

    .line 1156
    :cond_11
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajb:Z

    if-eqz v0, :cond_4d

    .line 1157
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-nez v0, :cond_43

    .line 1158
    const-string/jumbo v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can not detect any cameras. Number of cameras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const v0, 0x7f0a03b5

    invoke-static {p0, v0}, Lcom/android/common/h;->aqk(Landroid/app/Activity;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ActivityBase;->aka:Landroid/app/AlertDialog;

    .line 1163
    :goto_42
    return v3

    .line 1161
    :cond_43
    const v0, 0x7f0a03b4

    invoke-static {p0, v0}, Lcom/android/common/h;->aqk(Landroid/app/Activity;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ActivityBase;->aka:Landroid/app/AlertDialog;

    goto :goto_42

    .line 1166
    :cond_4d
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajc:Z

    if-eqz v0, :cond_5b

    .line 1167
    const v0, 0x7f0a022b

    invoke-static {p0, v0}, Lcom/android/common/h;->aqk(Landroid/app/Activity;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ActivityBase;->aka:Landroid/app/AlertDialog;

    .line 1168
    return v3

    .line 1171
    :cond_5b
    const/4 v0, 0x1

    return v0
.end method

.method public asU()V
    .registers 5

    .prologue
    .line 3061
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adL()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3062
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v0

    .line 3063
    const-string/jumbo v1, "pref_camera_siri"

    .line 3064
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0436

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3062
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3065
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3066
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->avE()V

    .line 3060
    :cond_30
    :goto_30
    return-void

    .line 3068
    :cond_31
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avz()V

    goto :goto_30
.end method

.method public asV()Lcom/android/common/appService/T;
    .registers 2

    .prologue
    .line 3263
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    return-object v0
.end method

.method public asW()V
    .registers 3

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1683
    :cond_c
    return-void

    .line 1686
    :cond_d
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avI()V

    .line 1687
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 1688
    const-string/jumbo v1, "pref_camera_storage_path"

    .line 1687
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 1690
    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->auE(Lcom/android/common/setting/ListPreference;)V

    .line 1692
    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a03a9

    invoke-virtual {p0, v1}, Lcom/android/common/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1693
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/common/f;->aoA(Z)V

    .line 1681
    :goto_35
    return-void

    .line 1695
    :cond_36
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/common/f;->aoA(Z)V

    goto :goto_35
.end method

.method public asX()Z
    .registers 2

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aki:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/common/ActivityBase;->aki:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1435
    const/4 v0, 0x1

    return v0

    .line 1437
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public asY()V
    .registers 6

    .prologue
    .line 1642
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->avk()V

    .line 1645
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->ask()Lcom/android/common/cameradevice/p;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 1646
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->ask()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1648
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    const/16 v2, 0x780

    if-ne v1, v2, :cond_42

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    const/16 v2, 0x440

    if-ne v1, v2, :cond_42

    .line 1649
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 1653
    :goto_22
    const-string/jumbo v2, "ActivityBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "target preview ratio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    iget-object v2, p0, Lcom/android/common/ActivityBase;->akd:Lcom/android/common/appService/R;

    invoke-virtual {v2, v0, v1}, Lcom/android/common/appService/R;->oE(D)V

    .line 1641
    :cond_41
    return-void

    .line 1651
    :cond_42
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v1

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v0, v0

    div-double v0, v2, v0

    goto :goto_22
.end method

.method public asZ(I)V
    .registers 6

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1844
    iget v0, p0, Lcom/android/common/ActivityBase;->ako:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/common/ActivityBase;->ako:I

    .line 1845
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atP()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1848
    iput v2, p0, Lcom/android/common/ActivityBase;->ako:I

    .line 1849
    return-void

    .line 1850
    :cond_10
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asz()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1851
    invoke-virtual {p0, v2}, Lcom/android/common/ActivityBase;->avl(Z)V

    .line 1852
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->ask()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LI()Ljava/lang/String;

    .line 1854
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    iget v1, p0, Lcom/android/common/ActivityBase;->ako:I

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 1855
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atU()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_46

    .line 1856
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "Restarting Preview..."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 1858
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asY()V

    .line 1860
    :cond_46
    invoke-virtual {p0, v2}, Lcom/android/common/ActivityBase;->avl(Z)V

    .line 1861
    iput v2, p0, Lcom/android/common/ActivityBase;->ako:I

    .line 1843
    :cond_4b
    :goto_4b
    return-void

    .line 1863
    :cond_4c
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1864
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    .line 1865
    const-wide/16 v2, 0x3e8

    .line 1864
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4b
.end method

.method public asf()Z
    .registers 2

    .prologue
    .line 1345
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajf:Z

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/android/common/h;->apN(Landroid/content/Context;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public asg()V
    .registers 5

    .prologue
    .line 510
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.nubia.nubia360"

    .line 512
    const-string/jumbo v3, "com.nubia.nubia360.NubiaVRCameraActivity"

    .line 511
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 513
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 509
    return-void
.end method

.method public ash()V
    .registers 5

    .prologue
    .line 519
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "cn.nubia.wlancamera"

    const-string/jumbo v3, "cn.nubia.wlancamera.WlanCameraMainActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 522
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 524
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 525
    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 526
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->finish()V

    .line 518
    return-void
.end method

.method public declared-synchronized asi()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 1962
    :try_start_1
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_58

    move-result v0

    if-eqz v0, :cond_b

    monitor-exit p0

    .line 1963
    return-void

    .line 1966
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1965
    invoke-static {v0, v1}, Lcom/android/common/setting/RecordLocationPreference;->YO(Landroid/content/SharedPreferences;Landroid/content/ContentResolver;)Z

    move-result v0

    .line 1967
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atY()Lcom/android/common/r/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/common/r/a;->anf(Z)V

    .line 1969
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auD()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1970
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "Restarting Preview... Camera Mode Changhed"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    .line 1972
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asF()V

    .line 1973
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asE()V

    .line 1974
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/common/ActivityBase;->avl(Z)V

    .line 1977
    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_4f

    .line 1978
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "Snapshot is running when restart preview, reset command"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 1982
    :cond_4f
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->asZ(I)V

    .line 1983
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asY()V
    :try_end_56
    .catchall {:try_start_b .. :try_end_56} :catchall_58

    monitor-exit p0

    .line 1960
    return-void

    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public asj()Lcom/android/common/appService/b;
    .registers 2

    .prologue
    .line 3272
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajl:Lcom/android/common/appService/b;

    return-object v0
.end method

.method public ask()Lcom/android/common/cameradevice/p;
    .registers 2

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    return-object v0
.end method

.method public asl()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    return-object v0
.end method

.method public asm()V
    .registers 5

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aiZ:Lcom/android/common/m/c;

    invoke-virtual {v0}, Lcom/android/common/m/c;->ahl()Lcom/android/common/m/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/m/a;->ahe()Landroid/net/Uri;

    move-result-object v0

    .line 2186
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/h;->aoX(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 2187
    const-string/jumbo v1, "ActivityBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Uri invalid. uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aiZ:Lcom/android/common/m/c;

    invoke-virtual {v0}, Lcom/android/common/m/c;->ahx()V

    .line 2184
    :goto_33
    return-void

    .line 2190
    :cond_34
    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->sO()Z

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/android/common/h;->aqo(Landroid/net/Uri;Landroid/content/Context;Z)V

    goto :goto_33
.end method

.method protected asn()I
    .registers 2

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    return v0
.end method

.method protected aso()Lcom/android/common/camerastate/DeviceState;
    .registers 2

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajg:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    return-object v0
.end method

.method protected asp(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    if-eqz v0, :cond_20

    .line 2290
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akd:Lcom/android/common/appService/R;

    if-eqz v0, :cond_20

    .line 2291
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akd:Lcom/android/common/appService/R;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/appService/R;->oC(FF)Z

    move-result v0

    .line 2289
    if-eqz v0, :cond_20

    .line 2292
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rV()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2303
    :cond_20
    const/4 v0, 0x0

    return v0

    .line 2293
    :cond_22
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dM()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2294
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-eq v0, v1, :cond_20

    .line 2295
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jz:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_20

    .line 2296
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/T;->oU(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2297
    if-eqz v0, :cond_5e

    .line 2298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    if-ne v2, v1, :cond_5e

    .line 2299
    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/g;->dT()V

    .line 2301
    :cond_5e
    return v0
.end method

.method protected asq(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2278
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akd:Lcom/android/common/appService/R;

    if-eqz v0, :cond_d

    .line 2279
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rV()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2285
    :cond_d
    return v1

    .line 2280
    :cond_e
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asn()I

    move-result v2

    aget-object v0, v0, v2

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2e

    .line 2281
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rZ()Z

    move-result v0

    .line 2280
    :goto_27
    if-nez v0, :cond_d

    .line 2282
    invoke-direct {p0, p1}, Lcom/android/common/ActivityBase;->auT(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2e
    move v0, v1

    .line 2280
    goto :goto_27
.end method

.method protected asr()V
    .registers 3

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->avf()V

    .line 1134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/ActivityBase;->ajZ:J

    .line 1135
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atD()V

    .line 1131
    return-void
.end method

.method protected ass()Lcom/android/common/camerastate/UIState;
    .registers 2

    .prologue
    .line 3113
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajg:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    return-object v0
.end method

.method protected ast()Z
    .registers 2

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pd()Z

    move-result v0

    return v0
.end method

.method protected asu()Lcom/android/common/setting/e;
    .registers 2

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method protected final asv(Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V
    .registers 9

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/appService/W;->sv(Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V

    .line 826
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qA()Lcom/android/common/setting/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asn()I

    move-result v1

    iget-object v2, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v3

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/common/setting/g;->UX(Landroid/content/Context;ILcom/android/common/appService/CameraMember;Z)V

    .line 827
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qA()Lcom/android/common/setting/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asn()I

    move-result v2

    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v4

    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pg()Z

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/setting/g;->Vg(Landroid/content/Context;ILcom/android/common/appService/CameraMember;ZZ)V

    .line 829
    const-string/jumbo v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init, Camera Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asn()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Member: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method public asw(Z)V
    .registers 2

    .prologue
    .line 1349
    iput-boolean p1, p0, Lcom/android/common/ActivityBase;->ajf:Z

    .line 1348
    return-void
.end method

.method public asx()V
    .registers 7

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 2805
    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pk()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2806
    return-void

    .line 2810
    :cond_b
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atX()[B

    move-result-object v1

    .line 2811
    if-nez v1, :cond_12

    return-void

    .line 2812
    :cond_12
    iget-object v2, p0, Lcom/android/common/ActivityBase;->ajB:Ljava/lang/String;

    if-nez v2, :cond_8a

    .line 2817
    iget-object v2, p0, Lcom/android/common/ActivityBase;->akh:Landroid/net/Uri;

    if-eqz v2, :cond_45

    .line 2820
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/ActivityBase;->akh:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_38
    .catchall {:try_start_1a .. :try_end_23} :catchall_3d

    move-result-object v0

    .line 2821
    :try_start_24
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2822
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 2823
    invoke-direct {p0, v1}, Lcom/android/common/ActivityBase;->avg([B)V

    .line 2825
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/common/ActivityBase;->avm(I)V

    .line 2826
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->finish()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_34} :catch_38
    .catchall {:try_start_24 .. :try_end_34} :catchall_110

    .line 2830
    invoke-static {v0}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 2804
    :goto_37
    return-void

    .line 2827
    :catch_38
    move-exception v1

    .line 2830
    invoke-static {v0}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    goto :goto_37

    .line 2829
    :catchall_3d
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 2830
    :goto_41
    invoke-static {v1}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 2829
    throw v0

    .line 2834
    :cond_45
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v2, Lcom/android/common/appService/CameraMember;->jg:Lcom/android/common/appService/CameraMember;

    if-ne v0, v2, :cond_65

    .line 2835
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "launcherCamera "

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atX()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sP([B)V

    .line 2837
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->finish()V

    goto :goto_37

    .line 2840
    :cond_65
    invoke-static {v1}, Lcom/android/common/c;->aob([B)I

    move-result v0

    .line 2841
    const v2, 0xc800

    invoke-static {v1, v2}, Lcom/android/common/appService/j;->jC([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2842
    invoke-static {v1, v0}, Lcom/android/common/appService/j;->jE(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2843
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "inline-data"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2844
    const-string/jumbo v2, "data"

    .line 2843
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/common/ActivityBase;->asy(ILandroid/content/Intent;)V

    .line 2845
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->finish()V

    goto :goto_37

    .line 2853
    :cond_8a
    :try_start_8a
    const-string/jumbo v2, "crop-temp"

    invoke-virtual {p0, v2}, Lcom/android/common/ActivityBase;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 2854
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2855
    const-string/jumbo v3, "crop-temp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/common/ActivityBase;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_9b
    .catch Ljava/io/FileNotFoundException; {:try_start_8a .. :try_end_9b} :catch_ef
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_9b} :catch_e3
    .catchall {:try_start_8a .. :try_end_9b} :catchall_fb

    move-result-object v0

    .line 2856
    :try_start_9c
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2857
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 2858
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_a5
    .catch Ljava/io/FileNotFoundException; {:try_start_9c .. :try_end_a5} :catch_ef
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a5} :catch_e3
    .catchall {:try_start_9c .. :try_end_a5} :catchall_10b

    move-result-object v1

    .line 2868
    invoke-static {v0}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 2871
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2872
    iget-object v2, p0, Lcom/android/common/ActivityBase;->ajB:Ljava/lang/String;

    const-string/jumbo v3, "circle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 2873
    const-string/jumbo v2, "circleCrop"

    const-string/jumbo v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    :cond_c2
    iget-object v2, p0, Lcom/android/common/ActivityBase;->akh:Landroid/net/Uri;

    if-eqz v2, :cond_103

    .line 2876
    const-string/jumbo v2, "output"

    iget-object v3, p0, Lcom/android/common/ActivityBase;->akh:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2881
    :goto_ce
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2883
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2884
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2886
    const/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0}, Lcom/android/common/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_37

    .line 2863
    :catch_e3
    move-exception v1

    .line 2864
    const/4 v1, 0x0

    :try_start_e5
    invoke-virtual {p0, v1}, Lcom/android/common/ActivityBase;->avm(I)V

    .line 2865
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->finish()V
    :try_end_eb
    .catchall {:try_start_e5 .. :try_end_eb} :catchall_10b

    .line 2868
    invoke-static {v0}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 2866
    return-void

    .line 2859
    :catch_ef
    move-exception v1

    .line 2860
    const/4 v1, 0x0

    :try_start_f1
    invoke-virtual {p0, v1}, Lcom/android/common/ActivityBase;->avm(I)V

    .line 2861
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->finish()V
    :try_end_f7
    .catchall {:try_start_f1 .. :try_end_f7} :catchall_10b

    .line 2868
    invoke-static {v0}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 2862
    return-void

    .line 2867
    :catchall_fb
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 2868
    :goto_ff
    invoke-static {v1}, Lcom/android/common/h;->apm(Ljava/io/Closeable;)V

    .line 2867
    throw v0

    .line 2878
    :cond_103
    const-string/jumbo v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_ce

    .line 2867
    :catchall_10b
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_ff

    .line 2829
    :catchall_110
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_41
.end method

.method public asy(ILandroid/content/Intent;)V
    .registers 3

    .prologue
    .line 1235
    iput p1, p0, Lcom/android/common/ActivityBase;->akf:I

    .line 1236
    iput-object p2, p0, Lcom/android/common/ActivityBase;->akg:Landroid/content/Intent;

    .line 1237
    invoke-virtual {p0, p1, p2}, Lcom/android/common/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 1234
    return-void
.end method

.method protected asz()Z
    .registers 2

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qr()Z

    move-result v0

    return v0
.end method

.method protected atD()V
    .registers 5

    .prologue
    .line 1582
    invoke-static {p0}, Lcom/android/common/h;->apw(Landroid/app/Activity;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asJ()I

    move-result v1

    if-eq v0, v1, :cond_d

    .line 1583
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->avi()V

    .line 1585
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/common/ActivityBase;->ajZ:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_22

    .line 1586
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1576
    :cond_22
    return-void
.end method

.method protected atH(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 2354
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_11

    .line 2355
    invoke-virtual {p0, p1}, Lcom/android/common/ActivityBase;->asp(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2356
    if-nez v0, :cond_11

    .line 2357
    invoke-virtual {p0, p1}, Lcom/android/common/ActivityBase;->asq(Landroid/view/MotionEvent;)Z

    .line 2361
    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public atK(Z)V
    .registers 5

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3215
    return-void

    .line 3217
    :cond_9
    const-string/jumbo v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableKeepScreenOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    iput-boolean p1, p0, Lcom/android/common/ActivityBase;->ajS:Z

    .line 3220
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajS:Z

    if-eqz v0, :cond_34

    .line 3221
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3222
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atw()V

    .line 3213
    :goto_33
    return-void

    .line 3224
    :cond_34
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auC()V

    goto :goto_33
.end method

.method public atN()V
    .registers 1

    .prologue
    .line 1470
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->finish()V

    .line 1469
    return-void
.end method

.method protected atP()Lcom/android/common/cameradevice/j;
    .registers 2

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method public atR()Lcom/android/common/g/e;
    .registers 2

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajA:Lcom/android/common/g/e;

    if-nez v0, :cond_b

    .line 3019
    new-instance v0, Lcom/android/common/g/e;

    invoke-direct {v0, p0}, Lcom/android/common/g/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajA:Lcom/android/common/g/e;

    .line 3021
    :cond_b
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajA:Lcom/android/common/g/e;

    return-object v0
.end method

.method protected atS()Lcom/android/common/camerastate/FunctionState;
    .registers 2

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajg:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    return-object v0
.end method

.method public atT()Lcom/android/common/g/f;
    .registers 3

    .prologue
    .line 3011
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajL:Lcom/android/common/g/f;

    if-nez v0, :cond_d

    .line 3012
    new-instance v0, Lcom/android/common/g/f;

    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-direct {v0, p0, v1}, Lcom/android/common/g/f;-><init>(Landroid/content/Context;Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajL:Lcom/android/common/g/f;

    .line 3014
    :cond_d
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajL:Lcom/android/common/g/f;

    return-object v0
.end method

.method protected atV()Lcom/android/common/d;
    .registers 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rX()Lcom/android/common/d;

    move-result-object v0

    return-object v0
.end method

.method protected atW()Lcom/android/common/appService/J;
    .registers 2

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sz()Lcom/android/common/appService/J;

    move-result-object v0

    return-object v0
.end method

.method protected atY()Lcom/android/common/r/a;
    .registers 2

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    return-object v0
.end method

.method protected atZ()V
    .registers 2

    .prologue
    .line 2156
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auc()V

    .line 2157
    invoke-static {p0}, Lcom/android/common/h;->apE(Landroid/content/Context;)V

    .line 2158
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asR()V

    .line 2159
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/appService/CameraMember;->mj(Landroid/content/res/Resources;)V

    .line 2155
    return-void
.end method

.method public ata()V
    .registers 5

    .prologue
    .line 3244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->ajO:Z

    .line 3245
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x25

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3243
    return-void
.end method

.method public atb()Lcom/android/common/appService/R;
    .registers 2

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akd:Lcom/android/common/appService/R;

    return-object v0
.end method

.method public atc(Lcom/android/common/a/c;)V
    .registers 3

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    if-eqz v0, :cond_9

    .line 1422
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v0, p1}, Lcom/android/common/a/g;->av(Lcom/android/common/a/c;)V

    .line 1420
    :cond_9
    return-void
.end method

.method public atd(Lcom/android/common/a/c;)Z
    .registers 3

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    if-eqz v0, :cond_b

    .line 1428
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v0, p1}, Lcom/android/common/a/g;->au(Lcom/android/common/a/c;)Z

    move-result v0

    return v0

    .line 1430
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public ate(IZJJ)V
    .registers 7

    .prologue
    .line 3156
    return-void
.end method

.method public atf()V
    .registers 1

    .prologue
    .line 3159
    return-void
.end method

.method public atg()V
    .registers 1

    .prologue
    .line 3163
    return-void
.end method

.method public ath(I)V
    .registers 2

    .prologue
    .line 3151
    return-void
.end method

.method public ati(IZ)V
    .registers 3

    .prologue
    .line 3154
    return-void
.end method

.method public atj(Z)V
    .registers 5

    .prologue
    .line 1800
    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajM:Z

    if-eqz v0, :cond_33

    .line 1804
    :cond_6
    if-nez p1, :cond_30

    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajM:Z

    if-eqz v0, :cond_30

    .line 1805
    const-string/jumbo v0, "backlight-flash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showBackLightTorchUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajH:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1807
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->ath(I)V

    .line 1809
    :cond_30
    :goto_30
    iput-boolean p1, p0, Lcom/android/common/ActivityBase;->ajM:Z

    .line 1799
    return-void

    .line 1801
    :cond_33
    const-string/jumbo v0, "backlight-flash"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showBackLightTorchUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajH:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1803
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->ath(I)V

    goto :goto_30
.end method

.method public atk(Lcom/android/common/a/b;)V
    .registers 3

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    if-eqz v0, :cond_9

    .line 1354
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v0, p1}, Lcom/android/common/a/g;->al(Lcom/android/common/a/b;)V

    .line 1352
    :cond_9
    return-void
.end method

.method public atl()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1396
    iget-object v1, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    if-eqz v1, :cond_f

    .line 1397
    iget-object v1, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v1}, Lcom/android/common/a/g;->an()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    const/4 v0, 0x1

    .line 1399
    :cond_f
    return v0
.end method

.method public atm()Lcom/android/common/camerastate/a;
    .registers 2

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajg:Lcom/android/common/camerastate/a;

    return-object v0
.end method

.method public final atn(II)Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1254
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akd:Lcom/android/common/appService/R;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/appService/R;->oC(FF)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1255
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akd:Lcom/android/common/appService/R;

    iget-object v1, p0, Lcom/android/common/ActivityBase;->ake:[I

    invoke-virtual {v0, v1}, Lcom/android/common/appService/R;->oy([I)V

    .line 1257
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->aus()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1259
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ake:[I

    aget v0, v0, v3

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/common/ActivityBase;->ake:[I

    aget v1, v1, v4

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/android/common/ActivityBase;->auS(II)V

    .line 1261
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/appService/H;->nE(II)Z

    .line 1268
    :goto_31
    return v4

    .line 1263
    :cond_32
    const-string/jumbo v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "consume onSingleTapUp; device state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1264
    const-string/jumbo v2, "; function state: "

    .line 1263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1264
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 1263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1265
    const-string/jumbo v2, "; ui state: "

    .line 1263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1265
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->ass()Lcom/android/common/camerastate/UIState;

    move-result-object v2

    .line 1263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 1270
    :cond_6f
    return v3
.end method

.method public final ato(II)V
    .registers 6

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akd:Lcom/android/common/appService/R;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/appService/R;->oC(FF)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1275
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akd:Lcom/android/common/appService/R;

    iget-object v1, p0, Lcom/android/common/ActivityBase;->ake:[I

    invoke-virtual {v0, v1}, Lcom/android/common/appService/R;->oy([I)V

    .line 1277
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ake:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/common/ActivityBase;->ake:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int v1, p2, v1

    invoke-direct {p0, v0, v1}, Lcom/android/common/ActivityBase;->auM(II)V

    .line 1273
    :cond_22
    return-void
.end method

.method public atp(FFFF)Z
    .registers 6

    .prologue
    .line 1333
    const/4 v0, 0x0

    return v0
.end method

.method public atq()Lcom/android/common/g/d;
    .registers 2

    .prologue
    .line 3004
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajF:Lcom/android/common/g/d;

    if-nez v0, :cond_b

    .line 3005
    new-instance v0, Lcom/android/common/g/d;

    invoke-direct {v0, p0}, Lcom/android/common/g/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajF:Lcom/android/common/g/d;

    .line 3007
    :cond_b
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajF:Lcom/android/common/g/d;

    return-object v0
.end method

.method public atr(Lcom/android/common/a/b;)V
    .registers 3

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    if-eqz v0, :cond_9

    .line 1360
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v0, p1}, Lcom/android/common/a/g;->at(Lcom/android/common/a/b;)V

    .line 1358
    :cond_9
    return-void
.end method

.method public ats()Lcom/android/common/a/g;
    .registers 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    return-object v0
.end method

.method public att(J)V
    .registers 3

    .prologue
    .line 3286
    return-void
.end method

.method protected atu()V
    .registers 1

    .prologue
    .line 2132
    return-void
.end method

.method protected final aty()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 838
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 839
    invoke-static {v0}, Lcom/android/common/h;->aqi(Z)V

    .line 840
    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->ajN:Z

    .line 841
    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->ajQ:Z

    .line 843
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aiZ:Lcom/android/common/m/c;

    if-eqz v0, :cond_1a

    .line 844
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aiZ:Lcom/android/common/m/c;

    invoke-virtual {v0}, Lcom/android/common/m/c;->ahr()V

    .line 845
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aiZ:Lcom/android/common/m/c;

    invoke-virtual {v0}, Lcom/android/common/m/c;->ahs()V

    .line 848
    :cond_1a
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sw()Lcom/android/common/ui/ai;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 849
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sw()Lcom/android/common/ui/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/ai;->cancel()V

    .line 850
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sx(Lcom/android/common/ui/ai;)V

    .line 852
    :cond_30
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->quit()V

    .line 853
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auV()V

    .line 837
    return-void
.end method

.method protected auA()Z
    .registers 2

    .prologue
    .line 2431
    const/4 v0, 0x1

    return v0
.end method

.method protected auB()V
    .registers 2

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sF()V

    .line 1508
    return-void
.end method

.method protected auE(Lcom/android/common/setting/ListPreference;)V
    .registers 3

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/H;->nx(Lcom/android/common/setting/ListPreference;)V

    .line 1674
    return-void
.end method

.method protected auF()V
    .registers 3

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    new-instance v1, Lcom/android/common/ae;

    invoke-direct {v1, p0}, Lcom/android/common/ae;-><init>(Lcom/android/common/ActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1109
    return-void
.end method

.method protected auG()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1175
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_13

    .line 1176
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "Camera not initialize."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    return-void

    .line 1180
    :cond_13
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajc:Z

    .line 1181
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajb:Z

    .line 1183
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auj()V

    .line 1184
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->aje:Z

    if-eqz v0, :cond_26

    .line 1185
    new-instance v0, Lcom/android/common/ag;

    invoke-direct {v0, p0}, Lcom/android/common/ag;-><init>(Lcom/android/common/ActivityBase;)V

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1174
    :cond_26
    return-void
.end method

.method protected auH(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 2960
    return-void
.end method

.method protected auO()V
    .registers 3

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    new-instance v1, Lcom/android/common/af;

    invoke-direct {v1, p0}, Lcom/android/common/af;-><init>(Lcom/android/common/ActivityBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1120
    return-void
.end method

.method protected auQ()V
    .registers 1

    .prologue
    .line 2964
    return-void
.end method

.method protected auR()V
    .registers 1

    .prologue
    .line 2968
    return-void
.end method

.method public auV()V
    .registers 2

    .prologue
    .line 1406
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    if-eqz v0, :cond_9

    .line 1407
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v0}, Lcom/android/common/a/g;->as()V

    .line 1405
    :cond_9
    return-void
.end method

.method protected aub()Lcom/android/common/appService/H;
    .registers 3

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajj:Lcom/android/common/appService/H;

    if-nez v0, :cond_f

    .line 2940
    new-instance v0, Lcom/android/common/appService/H;

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auf()Lcom/android/common/appService/y;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/common/appService/H;-><init>(Landroid/app/Activity;Lcom/android/common/appService/y;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajj:Lcom/android/common/appService/H;

    .line 2942
    :cond_f
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajj:Lcom/android/common/appService/H;

    return-object v0
.end method

.method protected auc()V
    .registers 3

    .prologue
    .line 2163
    new-instance v0, Lcom/android/common/j/h;

    invoke-direct {v0, p0}, Lcom/android/common/j/h;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajI:Lcom/android/common/j/h;

    .line 2164
    new-instance v0, Lcom/android/common/j/c;

    iget-object v1, p0, Lcom/android/common/ActivityBase;->ajI:Lcom/android/common/j/h;

    invoke-direct {v0, p0, v1}, Lcom/android/common/j/c;-><init>(Landroid/content/Context;Lcom/android/common/j/d;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajJ:Lcom/android/common/j/c;

    .line 2162
    return-void
.end method

.method protected abstract auf()Lcom/android/common/appService/y;
.end method

.method protected aug()Lcom/android/common/setting/t;
    .registers 2

    .prologue
    .line 2946
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v0, :cond_12

    .line 2947
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajk:Lcom/android/common/setting/t;

    if-nez v0, :cond_f

    .line 2948
    new-instance v0, Lcom/android/common/setting/r;

    invoke-direct {v0}, Lcom/android/common/setting/r;-><init>()V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajk:Lcom/android/common/setting/t;

    .line 2955
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajk:Lcom/android/common/setting/t;

    return-object v0

    .line 2951
    :cond_12
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajk:Lcom/android/common/setting/t;

    if-nez v0, :cond_f

    .line 2952
    new-instance v0, Lcom/android/common/setting/b;

    invoke-direct {v0}, Lcom/android/common/setting/b;-><init>()V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajk:Lcom/android/common/setting/t;

    goto :goto_f
.end method

.method protected auh()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 1000
    iget-object v1, p0, Lcom/android/common/ActivityBase;->aiY:Lcom/android/common/appService/y;

    invoke-interface {v1, v0}, Lcom/android/common/appService/y;->lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;

    move-result-object v1

    .line 1002
    iget-object v2, p0, Lcom/android/common/ActivityBase;->aiY:Lcom/android/common/appService/y;

    invoke-interface {v2, v1}, Lcom/android/common/appService/y;->kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;

    move-result-object v2

    .line 1003
    if-eqz v2, :cond_16

    .line 1004
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1f

    .line 1005
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No suituable camera id found!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :cond_1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    .line 1007
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/cameradevice/g;

    .line 1009
    :cond_2c
    invoke-virtual {p0, v0, v1}, Lcom/android/common/ActivityBase;->asv(Lcom/android/common/cameradevice/g;Lcom/android/common/appService/CameraMember;)V

    .line 999
    return-void
.end method

.method protected auj()V
    .registers 3

    .prologue
    .line 1660
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "in initializeAfterCameraOpen"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->aje:Z

    if-nez v0, :cond_10

    .line 1662
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aul()V

    .line 1665
    :cond_10
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pc()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1666
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->avt()V

    .line 1668
    :cond_1b
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    if-nez v0, :cond_28

    .line 1669
    new-instance v0, Lcom/android/common/appService/T;

    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-direct {v0, v1}, Lcom/android/common/appService/T;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    .line 1671
    :cond_28
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->ave()V

    .line 1659
    return-void
.end method

.method protected aul()V
    .registers 5

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asn()I

    move-result v1

    .line 1598
    iget-object v2, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    .line 1597
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/common/appService/H;->nr(ILcom/android/common/appService/CameraMember;Lcom/android/common/appService/W;)V

    .line 1596
    return-void
.end method

.method protected auo()V
    .registers 3

    .prologue
    .line 1517
    new-instance v0, Landroid/content/IntentFilter;

    .line 1518
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    .line 1517
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1519
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1520
    const-string/jumbo v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1521
    const-string/jumbo v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1522
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1523
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1524
    iget-object v1, p0, Lcom/android/common/ActivityBase;->ajW:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/common/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1526
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1527
    const-string/jumbo v1, "com.nubia_bt.capture"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1528
    iget-object v1, p0, Lcom/android/common/ActivityBase;->akl:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/common/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->ajE:Z

    .line 1515
    return-void
.end method

.method protected aur()Z
    .registers 2

    .prologue
    .line 1140
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atP()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/h;->apG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1141
    const/4 v0, 0x1

    return v0

    .line 1143
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method protected aut()Z
    .registers 3

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->dW()Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    move-result-object v0

    .line 2247
    sget-object v1, Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;->eP:Lcom/android/common/independentFocusExposure/CameraFocusService$FocusIndicatorState;

    .line 2246
    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected auu()Z
    .registers 2

    .prologue
    .line 2211
    const/4 v0, 0x0

    return v0
.end method

.method protected auw()Z
    .registers 2

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    return v0
.end method

.method public avD()V
    .registers 1

    .prologue
    .line 1016
    return-void
.end method

.method protected avE()V
    .registers 2

    .prologue
    .line 3083
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akq:Lcom/android/common/p/a;

    if-eqz v0, :cond_e

    .line 3084
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akq:Lcom/android/common/p/a;

    invoke-virtual {v0}, Lcom/android/common/p/a;->stop()V

    .line 3085
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akq:Lcom/android/common/p/a;

    invoke-virtual {v0, p0}, Lcom/android/common/p/a;->amU(Lcom/android/common/p/d;)V

    .line 3082
    :cond_e
    return-void
.end method

.method public avF(I)V
    .registers 2

    .prologue
    .line 1249
    return-void
.end method

.method public ave()V
    .registers 2

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    if-eqz v0, :cond_9

    .line 2228
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    invoke-virtual {v0}, Lcom/android/common/appService/T;->oH()V

    .line 2226
    :cond_9
    return-void
.end method

.method public avf()V
    .registers 2

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    if-eqz v0, :cond_9

    .line 1416
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v0}, Lcom/android/common/a/g;->ay()V

    .line 1414
    :cond_9
    return-void
.end method

.method protected avh(Lcom/android/common/camerastate/DeviceState;)V
    .registers 3

    .prologue
    .line 3109
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajg:Lcom/android/common/camerastate/a;

    invoke-virtual {v0, p1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 3108
    return-void
.end method

.method public avi()V
    .registers 2

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sH()V

    .line 1572
    return-void
.end method

.method avk()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1603
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asn()I

    move-result v2

    aget-object v1, v1, v2

    .line 1605
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->avi()V

    .line 1626
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_1e

    .line 1633
    :goto_18
    iget-object v1, p0, Lcom/android/common/ActivityBase;->akd:Lcom/android/common/appService/R;

    invoke-virtual {v1, v0}, Lcom/android/common/appService/R;->oF(Z)V

    .line 1601
    return-void

    .line 1629
    :cond_1e
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public avl(Z)V
    .registers 3

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->qI(Z)V

    .line 1828
    return-void
.end method

.method public avm(I)V
    .registers 2

    .prologue
    .line 1230
    iput p1, p0, Lcom/android/common/ActivityBase;->akf:I

    .line 1231
    invoke-virtual {p0, p1}, Lcom/android/common/ActivityBase;->setResult(I)V

    .line 1229
    return-void
.end method

.method protected avp(Lcom/android/common/d;)V
    .registers 3

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->sy(Lcom/android/common/d;)V

    .line 880
    return-void
.end method

.method protected avt()V
    .registers 4

    .prologue
    .line 2900
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2901
    if-eqz v1, :cond_1e

    .line 2902
    const-string/jumbo v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/common/ActivityBase;->akh:Landroid/net/Uri;

    .line 2903
    const-string/jumbo v0, "crop"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajB:Ljava/lang/String;

    .line 2905
    :cond_1e
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "save_jpeg_sd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->ajY:Z

    .line 2899
    return-void
.end method

.method protected avw()V
    .registers 4

    .prologue
    .line 950
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    .line 951
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/g;->Ki()[I

    move-result-object v1

    .line 952
    new-instance v2, Lcom/android/common/aa;

    invoke-direct {v2, p0}, Lcom/android/common/aa;-><init>(Lcom/android/common/ActivityBase;)V

    .line 951
    invoke-virtual {v0, v1, v2}, Lcom/android/common/appService/W;->qF([ILcom/android/common/appService/K;)V

    .line 948
    return-void
.end method

.method public avy()V
    .registers 1

    .prologue
    .line 1019
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 2308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 2309
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->onUserInteraction()V

    .line 2311
    :cond_a
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atP()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2312
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajN:Z

    if-eqz v0, :cond_1c

    .line 2313
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_33

    .line 2316
    :cond_1c
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_29

    .line 2317
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 2319
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_32

    .line 2320
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->onUserInteraction()V

    .line 2322
    :cond_32
    return v2

    .line 2314
    :cond_33
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_1c

    .line 2315
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afy:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_1c

    .line 2324
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_53

    .line 2325
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_58

    .line 2327
    :cond_53
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2326
    :cond_58
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->ass()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_53

    .line 2330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_71

    .line 2331
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    if-eqz v0, :cond_71

    .line 2332
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    invoke-virtual {v0}, Lcom/android/common/appService/T;->oV()V

    .line 2336
    :cond_71
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/H;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 2337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_86

    .line 2338
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->onUserInteraction()V

    .line 2340
    :cond_86
    return v2

    .line 2343
    :cond_87
    invoke-virtual {p0, p1}, Lcom/android/common/ActivityBase;->atH(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 2344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_96

    .line 2345
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->onUserInteraction()V

    .line 2347
    :cond_96
    return v2

    .line 2350
    :cond_97
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 1241
    iget v0, p0, Lcom/android/common/ActivityBase;->akf:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akg:Landroid/content/Intent;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 2196
    const-string/jumbo v0, "zyf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Camera onActivityResult requestCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_32

    .line 2198
    if-nez p2, :cond_33

    .line 2199
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sp(Z)V

    .line 2195
    :cond_32
    :goto_32
    return-void

    .line 2201
    :cond_33
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->sp(Z)V

    goto :goto_32
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 2983
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akr:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 2984
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avK()V

    .line 2985
    return-void

    .line 2987
    :cond_c
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->na(Lcom/android/common/appService/W;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2988
    return-void

    .line 2990
    :cond_1b
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2991
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->aje:Z

    if-eqz v0, :cond_2b

    .line 2992
    const v0, 0x7f050009

    const v1, 0x7f05000a

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ActivityBase;->overridePendingTransition(II)V

    .line 2982
    :cond_2b
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 445
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 446
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v0, Lcom/android/common/camerastate/a;

    invoke-direct {v0}, Lcom/android/common/camerastate/a;-><init>()V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->ajg:Lcom/android/common/camerastate/a;

    .line 448
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atE()V

    .line 449
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    iget-object v2, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aub()Lcom/android/common/appService/H;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auf()Lcom/android/common/appService/y;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aug()Lcom/android/common/setting/t;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/common/appService/W;->sq(Lcom/android/common/ActivityBase;Landroid/os/Handler;Lcom/android/common/appService/H;Lcom/android/common/appService/y;Lcom/android/common/setting/t;)V

    .line 451
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "camera_more_setting"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->aje:Z

    .line 453
    new-instance v0, Lcom/android/common/g;

    invoke-direct {v0, p0}, Lcom/android/common/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/ActivityBase;->akb:Lcom/android/common/g;

    .line 454
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akb:Lcom/android/common/g;

    invoke-virtual {v0}, Lcom/android/common/g;->aoG()Z

    .line 456
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avC()V

    .line 458
    invoke-static {v7}, Lcom/android/common/h;->aqi(Z)V

    .line 460
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajq:Z

    if-nez v0, :cond_58

    .line 461
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajD:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/common/ActivityBase;->ajC:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ActivityBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 462
    iput-boolean v7, p0, Lcom/android/common/ActivityBase;->ajq:Z

    .line 464
    :cond_58
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atI()V

    .line 469
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atG()V

    .line 471
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atZ()V

    .line 473
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->setContentView(I)V

    .line 475
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeF()I

    move-result v0

    if-ne v0, v7, :cond_95

    .line 476
    new-instance v0, Lcom/android/common/r/b;

    invoke-direct {v0, p0}, Lcom/android/common/r/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/common/ActivityBase;->avs(Lcom/android/common/r/a;)V

    .line 480
    :goto_7d
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auh()V

    .line 481
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "nubia.camera.family"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jQ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    if-ne v0, v1, :cond_9e

    .line 482
    return-void

    .line 478
    :cond_95
    new-instance v0, Lcom/android/common/r/d;

    invoke-direct {v0, p0}, Lcom/android/common/r/d;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/common/ActivityBase;->avs(Lcom/android/common/r/a;)V

    goto :goto_7d

    .line 484
    :cond_9e
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->aui()V

    .line 486
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sr()V

    .line 488
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->avw()V

    .line 490
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v6}, Lcom/android/common/appService/W;->qE(Z)V

    .line 492
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->aud()V

    .line 494
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->ajh:Z

    .line 495
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->aum()V

    .line 497
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asS()V

    .line 498
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hO()V

    .line 500
    invoke-virtual {p0, p1}, Lcom/android/common/ActivityBase;->auH(Landroid/os/Bundle;)V

    .line 501
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->aux()Z

    move-result v0

    sput-boolean v0, Lcom/android/common/h;->ahq:Z

    .line 502
    sget-boolean v0, Lcom/android/common/h;->ahq:Z

    invoke-static {v0}, Lcom/android/common/ui/d;->va(Z)V

    .line 503
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->aje:Z

    if-eqz v0, :cond_e0

    .line 504
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avu()V

    .line 506
    :cond_e0
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auZ()V

    .line 444
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 795
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->akj:Z

    if-eqz v0, :cond_16

    .line 797
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akk:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ActivityBase;->akj:Z

    .line 801
    :cond_16
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atY()Lcom/android/common/r/a;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 802
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atY()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->release()V

    .line 803
    invoke-direct {p0, v2}, Lcom/android/common/ActivityBase;->avs(Lcom/android/common/r/a;)V

    .line 806
    :cond_26
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajp:Z

    if-eqz v0, :cond_2f

    .line 807
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajx:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 810
    :cond_2f
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajq:Z

    if-eqz v0, :cond_38

    .line 811
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajD:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 813
    :cond_38
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avH()V

    .line 815
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajl:Lcom/android/common/appService/b;

    invoke-interface {v0}, Lcom/android/common/appService/b;->hV()V

    .line 816
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->release()V

    .line 818
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 819
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->aje:Z

    if-eqz v0, :cond_55

    .line 820
    const v0, 0x7f050009

    const v1, 0x7f05000a

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ActivityBase;->overridePendingTransition(II)V

    .line 794
    :cond_55
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .prologue
    .line 1337
    const/4 v0, 0x0

    return v0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2437
    invoke-direct {p0, p1}, Lcom/android/common/ActivityBase;->atJ(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/common/ActivityBase;->auz(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2438
    :cond_e
    return v2

    .line 2440
    :cond_f
    const-string/jumbo v0, "ActivityBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2442
    return v2

    .line 2444
    :cond_41
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajN:Z

    if-eqz v0, :cond_4b

    .line 2445
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atP()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_50

    .line 2448
    :cond_4b
    const/16 v0, 0x52

    if-ne p1, v0, :cond_69

    .line 2449
    return v1

    .line 2446
    :cond_50
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v3, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v3, :cond_4b

    .line 2447
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v3, Lcom/android/common/camerastate/FunctionState;->afy:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v3, :cond_4b

    .line 2454
    iput-boolean v2, p0, Lcom/android/common/ActivityBase;->ajs:Z

    .line 2456
    invoke-virtual {p0, p1, p2}, Lcom/android/common/ActivityBase;->asB(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 2457
    return v1

    .line 2451
    :cond_69
    invoke-direct {p0, p1, p2}, Lcom/android/common/ActivityBase;->atx(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2460
    :cond_6e
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/appService/H;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 2461
    iput-boolean v1, p0, Lcom/android/common/ActivityBase;->ajs:Z

    .line 2462
    return v1

    .line 2465
    :cond_7d
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asN()Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_a3

    .line 2466
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v3, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v3, :cond_a3

    .line 2467
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v3, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v3, :cond_a1

    move v0, v1

    .line 2470
    :goto_9a
    invoke-direct {p0, p1}, Lcom/android/common/ActivityBase;->atA(I)Z

    move-result v3

    if-nez v3, :cond_a5

    return v1

    :cond_a1
    move v0, v2

    .line 2467
    goto :goto_9a

    :cond_a3
    move v0, v2

    .line 2465
    goto :goto_9a

    .line 2472
    :cond_a5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_d6

    .line 2473
    const-string/jumbo v3, "ActivityBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onKeyDown: canTrack("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2474
    const/16 v3, 0x1b

    if-eq p1, v3, :cond_d4

    sget v3, Lcom/android/common/h;->aht:I

    if-ne p1, v3, :cond_d6

    .line 2475
    :cond_d4
    iput-boolean v1, p0, Lcom/android/common/ActivityBase;->ajG:Z

    .line 2479
    :cond_d6
    sget v3, Lcom/android/common/h;->aht:I

    if-ne p1, v3, :cond_da

    .line 2483
    :cond_da
    sparse-switch p1, :sswitch_data_204

    .line 2561
    :goto_dd
    invoke-direct {p0, p1, p2}, Lcom/android/common/ActivityBase;->atx(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2485
    :sswitch_e2
    invoke-direct {p0, p1, p2}, Lcom/android/common/ActivityBase;->auJ(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2489
    :sswitch_e7
    if-eqz v0, :cond_f5

    .line 2490
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 2491
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->nF(Z)V

    .line 2493
    :cond_f5
    return v1

    .line 2496
    :sswitch_f6
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v3

    .line 2497
    const-string/jumbo v4, "pref_camera_volume_key"

    .line 2498
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->aeE()Ljava/lang/String;

    move-result-object v5

    .line 2496
    invoke-virtual {v3, v4, v5}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2499
    const-string/jumbo v4, "ActivityBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "volume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2500
    const-string/jumbo v4, "zoom"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_134

    .line 2501
    invoke-direct {p0, p1}, Lcom/android/common/ActivityBase;->auW(I)V

    .line 2510
    :cond_133
    :goto_133
    return v1

    .line 2502
    :cond_134
    const-string/jumbo v4, "shutter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14c

    .line 2503
    if-eqz v0, :cond_133

    .line 2504
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 2505
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->nF(Z)V

    goto :goto_133

    .line 2508
    :cond_14c
    return v2

    .line 2514
    :sswitch_14d
    if-eqz v0, :cond_17e

    .line 2515
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nb()Z

    move-result v0

    if-eqz v0, :cond_172

    .line 2516
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rk()Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 2517
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nA()V

    .line 2518
    return v1

    .line 2520
    :cond_16d
    invoke-direct {p0, p1, p2}, Lcom/android/common/ActivityBase;->atx(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2523
    :cond_172
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 2524
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->nF(Z)V

    .line 2527
    :cond_17e
    return v1

    .line 2529
    :sswitch_17f
    const-string/jumbo v2, "ActivityBase"

    const-string/jumbo v3, "onKeyDown: ZTEMT_CAMERA_KEY_CODE for nubia finder"

    invoke-static {v2, v3}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    if-eqz v0, :cond_193

    .line 2531
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mQ()V

    .line 2533
    :cond_193
    return v1

    .line 2535
    :sswitch_194
    const-string/jumbo v2, "ActivityBase"

    const-string/jumbo v3, "onKeyDown: ZTEMT_CAMERA_CONTROL_SCREEN_ON_KEY_CODE"

    invoke-static {v2, v3}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    if-eqz v0, :cond_1bc

    .line 2537
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nb()Z

    move-result v0

    .line 2536
    if-eqz v0, :cond_1bc

    .line 2538
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rk()Z

    move-result v0

    .line 2536
    if-eqz v0, :cond_1bc

    .line 2539
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nA()V

    .line 2541
    :cond_1bc
    return v1

    .line 2543
    :sswitch_1bd
    const-string/jumbo v2, "ActivityBase"

    const-string/jumbo v3, "onKeyDown: ZTEMT_CAMERA_CONTROL_SCREEN_OFF_KEY_CODE"

    invoke-static {v2, v3}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    if-eqz v0, :cond_1dc

    .line 2545
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nb()Z

    move-result v0

    .line 2544
    if-eqz v0, :cond_1dc

    .line 2546
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rk()Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 2549
    :cond_1dc
    :goto_1dc
    return v1

    .line 2547
    :cond_1dd
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nB()V

    goto :goto_1dc

    .line 2551
    :sswitch_1e7
    const-string/jumbo v2, "ActivityBase"

    const-string/jumbo v3, "onKeyDown: ZTEMT_CAMERA_VOICE_RECOGNIZER_KEY_CODE"

    invoke-static {v2, v3}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    if-eqz v0, :cond_1fd

    .line 2553
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    iget-object v2, p0, Lcom/android/common/ActivityBase;->akp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/H;->nH(Ljava/lang/String;)V

    .line 2555
    :cond_1fd
    return v1

    .line 2557
    :sswitch_1fe
    invoke-direct {p0, p1, p2}, Lcom/android/common/ActivityBase;->auK(ILandroid/view/KeyEvent;)Z

    goto/16 :goto_dd

    .line 2483
    nop

    :sswitch_data_204
    .sparse-switch
        0x18 -> :sswitch_f6
        0x19 -> :sswitch_f6
        0x1a -> :sswitch_1fe
        0x1b -> :sswitch_e7
        0x42 -> :sswitch_e7
        0x4f -> :sswitch_e7
        0x50 -> :sswitch_e2
        0x55 -> :sswitch_14d
        0x7e -> :sswitch_14d
        0x7f -> :sswitch_14d
        0x2710 -> :sswitch_17f
        0x2711 -> :sswitch_1e7
        0x2712 -> :sswitch_194
        0x2713 -> :sswitch_1bd
    .end sparse-switch
.end method

.method public final onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2750
    const-string/jumbo v2, "ActivityBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyLongPress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atP()Lcom/android/common/cameradevice/j;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 2753
    iget-boolean v2, p0, Lcom/android/common/ActivityBase;->ajN:Z

    if-eqz v2, :cond_32

    .line 2754
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v2

    sget-object v3, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-ne v2, v3, :cond_33

    .line 2757
    :cond_32
    return v1

    .line 2755
    :cond_33
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    sget-object v3, Lcom/android/common/camerastate/FunctionState;->afy:Lcom/android/common/camerastate/FunctionState;

    if-eq v2, v3, :cond_32

    .line 2756
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auu()Z

    move-result v2

    .line 2752
    if-nez v2, :cond_32

    .line 2760
    invoke-virtual {p0, p1, p2}, Lcom/android/common/ActivityBase;->asD(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2761
    return v1

    .line 2764
    :cond_48
    iget-object v2, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/common/appService/H;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 2765
    return v1

    .line 2768
    :cond_55
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asN()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 2769
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    sget-object v3, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    if-eq v2, v3, :cond_6c

    .line 2770
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    sget-object v3, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq v2, v3, :cond_6c

    move v0, v1

    .line 2772
    :cond_6c
    const-string/jumbo v2, "ActivityBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyLongPress: canTriggerLongClickCapture("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    sget v2, Lcom/android/common/h;->aht:I

    if-ne p1, v2, :cond_91

    .line 2777
    :cond_91
    sparse-switch p1, :sswitch_data_be

    .line 2796
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2781
    :sswitch_99
    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nb()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 2784
    :cond_a7
    :goto_a7
    return v1

    .line 2782
    :cond_a8
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nG()V

    goto :goto_a7

    .line 2790
    :sswitch_b2
    if-eqz v0, :cond_bd

    .line 2791
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nG()V

    .line 2793
    :cond_bd
    return v1

    .line 2777
    :sswitch_data_be
    .sparse-switch
        0x18 -> :sswitch_b2
        0x19 -> :sswitch_b2
        0x1b -> :sswitch_b2
        0x42 -> :sswitch_b2
        0x4f -> :sswitch_b2
        0x55 -> :sswitch_99
        0x7e -> :sswitch_99
        0x7f -> :sswitch_99
    .end sparse-switch
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 12

    .prologue
    const/16 v8, 0x1b

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2657
    invoke-direct {p0, p1}, Lcom/android/common/ActivityBase;->auz(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2658
    return v1

    .line 2660
    :cond_b
    const-string/jumbo v0, "ActivityBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onKeyUp: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajN:Z

    if-eqz v0, :cond_3e

    .line 2663
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atP()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_43

    .line 2666
    :cond_3e
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2664
    :cond_43
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aso()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v2, :cond_3e

    .line 2665
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afy:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v2, :cond_3e

    .line 2669
    invoke-virtual {p0, p1, p2}, Lcom/android/common/ActivityBase;->asC(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2670
    return v3

    .line 2673
    :cond_5a
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/appService/H;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 2674
    return v3

    .line 2677
    :cond_67
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_118

    move v4, v3

    .line 2678
    :goto_70
    if-nez v4, :cond_11d

    .line 2679
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asN()Z

    move-result v0

    .line 2678
    if-eqz v0, :cond_11d

    .line 2679
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_11d

    .line 2680
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v2, :cond_11d

    .line 2681
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v2, :cond_11d

    .line 2682
    if-ne p1, v8, :cond_94

    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajG:Z

    .line 2678
    if-eqz v0, :cond_11d

    .line 2683
    :cond_94
    invoke-direct {p0, p1}, Lcom/android/common/ActivityBase;->atA(I)Z

    move-result v0

    .line 2678
    if-eqz v0, :cond_11d

    .line 2684
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajs:Z

    if-eqz v0, :cond_11b

    move v2, v1

    .line 2685
    :goto_9f
    if-eqz v4, :cond_11f

    .line 2686
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_11f

    .line 2687
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asN()Z

    move-result v0

    .line 2688
    :goto_ab
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_10a

    .line 2689
    const-string/jumbo v5, "ActivityBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onKeyUp: isLongPressHappened("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "), "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2690
    const-string/jumbo v6, "canTriggerCapture("

    .line 2689
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2690
    const-string/jumbo v6, "), "

    .line 2689
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2691
    const-string/jumbo v6, "isKeyDownConsumed("

    .line 2689
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2691
    iget-boolean v6, p0, Lcom/android/common/ActivityBase;->ajs:Z

    .line 2689
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2691
    const-string/jumbo v6, "), "

    .line 2689
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2692
    const-string/jumbo v6, "canTriggerShutterButtonFocus("

    .line 2689
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2692
    const-string/jumbo v6, ")"

    .line 2689
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 2694
    :cond_10a
    iput-boolean v1, p0, Lcom/android/common/ActivityBase;->ajs:Z

    .line 2695
    sget v4, Lcom/android/common/h;->aht:I

    if-ne p1, v4, :cond_110

    .line 2698
    :cond_110
    sparse-switch p1, :sswitch_data_1a6

    .line 2741
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_118
    move v4, v1

    .line 2677
    goto/16 :goto_70

    :cond_11b
    move v2, v3

    .line 2684
    goto :goto_9f

    :cond_11d
    move v2, v1

    .line 2678
    goto :goto_9f

    :cond_11f
    move v0, v1

    .line 2685
    goto :goto_ab

    .line 2702
    :sswitch_121
    if-eqz v2, :cond_12f

    iget-object v2, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/H;->nb()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 2704
    :cond_12f
    if-eqz v0, :cond_13a

    .line 2705
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->nF(Z)V

    .line 2707
    :cond_13a
    :goto_13a
    return v3

    .line 2703
    :cond_13b
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mQ()V

    goto :goto_13a

    .line 2712
    :sswitch_145
    if-eqz v2, :cond_15b

    .line 2713
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auC()V

    .line 2714
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mQ()V

    .line 2718
    :cond_153
    :goto_153
    if-ne p1, v8, :cond_157

    .line 2719
    iput-boolean v1, p0, Lcom/android/common/ActivityBase;->ajG:Z

    .line 2721
    :cond_157
    invoke-direct {p0, p1}, Lcom/android/common/ActivityBase;->auY(I)V

    .line 2722
    return v3

    .line 2715
    :cond_15b
    if-eqz v0, :cond_153

    .line 2716
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->nF(Z)V

    goto :goto_153

    .line 2725
    :sswitch_167
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asu()Lcom/android/common/setting/e;

    move-result-object v4

    .line 2726
    const-string/jumbo v5, "pref_camera_volume_key"

    .line 2727
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/common/custom/x;->aeE()Ljava/lang/String;

    move-result-object v6

    .line 2725
    invoke-virtual {v4, v5, v6}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2728
    const-string/jumbo v5, "shutter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_192

    .line 2729
    if-eqz v2, :cond_196

    .line 2730
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mQ()V

    .line 2735
    :cond_192
    :goto_192
    invoke-direct {p0, p1}, Lcom/android/common/ActivityBase;->auY(I)V

    .line 2736
    return v3

    .line 2731
    :cond_196
    if-eqz v0, :cond_192

    .line 2732
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->nF(Z)V

    goto :goto_192

    .line 2738
    :sswitch_1a2
    invoke-direct {p0, p1, p2}, Lcom/android/common/ActivityBase;->auL(ILandroid/view/KeyEvent;)Z

    .line 2739
    return v3

    .line 2698
    :sswitch_data_1a6
    .sparse-switch
        0x18 -> :sswitch_167
        0x19 -> :sswitch_167
        0x1b -> :sswitch_145
        0x42 -> :sswitch_145
        0x4f -> :sswitch_145
        0x50 -> :sswitch_1a2
        0x55 -> :sswitch_121
        0x7e -> :sswitch_121
        0x7f -> :sswitch_121
        0x2714 -> :sswitch_145
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 558
    const-string/jumbo v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNewIntent intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0, p1}, Lcom/android/common/ActivityBase;->setIntent(Landroid/content/Intent;)V

    .line 560
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 561
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atE()V

    .line 562
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    const-string/jumbo v1, "wlancamera"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sp(Z)V

    .line 557
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .prologue
    .line 2974
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->aje:Z

    if-eqz v0, :cond_19

    .line 2975
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->finish()V

    .line 2976
    const v0, 0x7f050009

    const v1, 0x7f05000a

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ActivityBase;->overridePendingTransition(II)V

    .line 2978
    :cond_19
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 681
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 682
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "in onPause"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v4}, Lcom/android/common/appService/W;->ss(Z)V

    .line 685
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 686
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/a;->hJ()V

    .line 687
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->qh(Lcom/android/common/appService/a;)V

    .line 690
    :cond_2a
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rk()Z

    move-result v0

    if-eqz v0, :cond_149

    .line 695
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aka:Landroid/app/AlertDialog;

    if-eqz v0, :cond_41

    .line 696
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aka:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 697
    iput-object v2, p0, Lcom/android/common/ActivityBase;->aka:Landroid/app/AlertDialog;

    .line 700
    :cond_41
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->ave()V

    .line 702
    invoke-virtual {p0, v3}, Lcom/android/common/ActivityBase;->atj(Z)V

    .line 704
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->so()V

    .line 706
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rt()Lcom/android/common/ui/FaceView;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 707
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rt()Lcom/android/common/ui/FaceView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/FaceView;->setVisibility(I)V

    .line 709
    :cond_5f
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajt:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6a

    .line 710
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajt:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 711
    iput-object v2, p0, Lcom/android/common/ActivityBase;->ajt:Landroid/app/AlertDialog;

    .line 713
    :cond_6a
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->ava()V

    .line 715
    :try_start_6d
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asF()V

    .line 716
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asG()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_73} :catch_155

    .line 723
    :goto_73
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nK()V

    .line 724
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atO()V

    .line 725
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atV()Lcom/android/common/d;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 726
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atV()Lcom/android/common/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/d;->release()V

    .line 727
    invoke-virtual {p0, v2}, Lcom/android/common/ActivityBase;->avp(Lcom/android/common/d;)V

    .line 729
    :cond_8f
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avc()V

    .line 730
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asN()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 731
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->st()V

    .line 734
    :cond_9d
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajE:Z

    if-eqz v0, :cond_ad

    .line 735
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajW:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 736
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akl:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 737
    iput-boolean v3, p0, Lcom/android/common/ActivityBase;->ajE:Z

    .line 739
    :cond_ad
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atY()Lcom/android/common/r/a;

    move-result-object v0

    if-eqz v0, :cond_ba

    .line 740
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atY()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/common/r/a;->anf(Z)V

    .line 742
    :cond_ba
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 743
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dS()V

    .line 744
    invoke-direct {p0, v3}, Lcom/android/common/ActivityBase;->aua(Z)V

    .line 746
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->aty()V

    .line 748
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajP:Z

    if-eqz v0, :cond_d8

    invoke-static {p0}, Lcom/android/common/h;->apN(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_167

    .line 753
    :cond_d8
    :goto_d8
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3, v4}, Lcom/android/common/appService/W;->rP(ZI)V

    .line 754
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajg:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 756
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atL()V

    .line 757
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajl:Lcom/android/common/appService/b;

    invoke-interface {v0}, Lcom/android/common/appService/b;->hP()V

    .line 761
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qD()Lcom/android/common/cameradevice/g;

    move-result-object v0

    if-eqz v0, :cond_118

    .line 762
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qD()Lcom/android/common/cameradevice/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 761
    if-eqz v0, :cond_118

    .line 763
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "SwitchCamera when exit camera, clear state"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nj()V

    .line 767
    :cond_118
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->qy(Lcom/android/common/cameradevice/g;)V

    .line 768
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_12c

    .line 769
    invoke-static {p0}, Lcom/android/common/h;->apO(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_174

    .line 770
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atN()V

    .line 775
    :cond_12c
    :goto_12c
    invoke-virtual {p0, v3}, Lcom/android/common/ActivityBase;->asP(Z)V

    .line 776
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "onPause end"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajo:Z

    if-eqz v0, :cond_148

    .line 778
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->unbindService(Landroid/content/ServiceConnection;)V

    .line 779
    iput-boolean v3, p0, Lcom/android/common/ActivityBase;->ajo:Z

    .line 780
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->sp(Z)V

    .line 680
    :cond_148
    return-void

    .line 691
    :cond_149
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-static {v0}, Lcom/android/common/h;->aqg(Lcom/android/common/appService/W;)V

    .line 692
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v4}, Lcom/android/common/appService/W;->re(Z)V

    goto/16 :goto_36

    .line 717
    :catch_155
    move-exception v0

    .line 719
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 720
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->avh(Lcom/android/common/camerastate/DeviceState;)V

    .line 721
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->release()V

    goto/16 :goto_73

    .line 749
    :cond_167
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 750
    iput-boolean v3, p0, Lcom/android/common/ActivityBase;->ajP:Z

    goto/16 :goto_d8

    .line 771
    :cond_174
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/common/h;->apR(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12c

    .line 772
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->atN()V

    goto :goto_12c
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .prologue
    .line 3278
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akb:Lcom/android/common/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/common/g;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 3277
    return-void
.end method

.method protected final onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 567
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "in onResume"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 569
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 570
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atM()V

    .line 572
    :cond_17
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agz(Z)V

    .line 573
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->ss(Z)V

    .line 575
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akb:Lcom/android/common/g;

    invoke-virtual {v0}, Lcom/android/common/g;->aoJ()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 576
    const-string/jumbo v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPermissionDialogShow====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ActivityBase;->akb:Lcom/android/common/g;

    invoke-virtual {v2}, Lcom/android/common/g;->aoK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akb:Lcom/android/common/g;

    invoke-virtual {v0}, Lcom/android/common/g;->aoK()Z

    move-result v0

    if-nez v0, :cond_61

    .line 578
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akb:Lcom/android/common/g;

    invoke-virtual {v0}, Lcom/android/common/g;->aoF()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 582
    :cond_61
    :goto_61
    iput-boolean v3, p0, Lcom/android/common/ActivityBase;->ajr:Z

    .line 584
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akb:Lcom/android/common/g;

    invoke-virtual {v0}, Lcom/android/common/g;->aoJ()Z

    move-result v0

    if-nez v0, :cond_7f

    .line 585
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "!mHasCriticalPermissions return"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void

    .line 579
    :cond_75
    iget-boolean v0, p0, Lcom/android/common/ActivityBase;->ajr:Z

    if-nez v0, :cond_61

    .line 580
    iget-object v0, p0, Lcom/android/common/ActivityBase;->akb:Lcom/android/common/g;

    invoke-virtual {v0}, Lcom/android/common/g;->aoI()V

    goto :goto_61

    .line 591
    :cond_7f
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auR()V

    .line 592
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auU()V

    .line 595
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atC()V

    .line 596
    invoke-static {v4}, Lcom/android/common/h;->aqi(Z)V

    .line 598
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.nubia.stopPIP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/common/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V

    .line 602
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asN()Z

    move-result v0

    if-nez v0, :cond_d3

    .line 603
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aji:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 610
    :goto_a2
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->avf()V

    .line 612
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajd:Lcom/android/common/a/g;

    invoke-virtual {v0}, Lcom/android/common/a/g;->ap()Lcom/android/common/a/i;

    move-result-object v0

    .line 613
    new-instance v1, Lcom/android/common/X;

    invoke-direct {v1, p0}, Lcom/android/common/X;-><init>(Lcom/android/common/ActivityBase;)V

    .line 612
    invoke-virtual {v0, v1}, Lcom/android/common/a/i;->aR(Lcom/android/common/a/j;)V

    .line 625
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auC()V

    .line 627
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->aue()V

    .line 628
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asU()V

    .line 629
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aiZ:Lcom/android/common/m/c;

    invoke-virtual {v0}, Lcom/android/common/m/c;->ahw()V

    .line 631
    invoke-direct {p0, v4}, Lcom/android/common/ActivityBase;->aua(Z)V

    .line 632
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->avJ()V

    .line 633
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajl:Lcom/android/common/appService/b;

    invoke-interface {v0}, Lcom/android/common/appService/b;->hN()V

    .line 634
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->auQ()V

    .line 635
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->atz()V

    .line 566
    return-void

    .line 605
    :cond_d3
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->aun()V

    .line 606
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hO()V

    .line 607
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->qE(Z)V

    goto :goto_a2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 3147
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 788
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "in onStop"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->su()V

    .line 790
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 787
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    .line 2367
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    if-eqz v0, :cond_11

    .line 2368
    iget-object v0, p0, Lcom/android/common/ActivityBase;->aks:Lcom/android/common/appService/T;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/T;->oW(Z)V

    .line 2371
    :cond_11
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajJ:Lcom/android/common/j/c;

    if-eqz v0, :cond_1b

    .line 2372
    iget-object v0, p0, Lcom/android/common/ActivityBase;->ajJ:Lcom/android/common/j/c;

    invoke-virtual {v0, p1}, Lcom/android/common/j/c;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 2373
    return v2

    .line 2375
    :cond_1b
    return v1
.end method

.method public onUserInteraction()V
    .registers 2

    .prologue
    .line 3174
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    .line 3175
    invoke-virtual {p0}, Lcom/android/common/ActivityBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3176
    invoke-direct {p0}, Lcom/android/common/ActivityBase;->auC()V

    .line 3173
    :cond_c
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .prologue
    .line 2651
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2652
    iput-boolean p1, p0, Lcom/android/common/ActivityBase;->ajK:Z

    .line 2650
    return-void
.end method
