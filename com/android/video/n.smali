.class public Lcom/android/video/n;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/u;
.implements Lcom/android/video/e;
.implements Lcom/android/video/p;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aHR:Z

.field private aHS:Z

.field private aHT:Z

.field private aHU:I

.field private aHV:Landroid/widget/RelativeLayout;

.field private aHW:I

.field private aHX:Lcom/android/common/appService/t;

.field private aHY:Lcom/android/common/appService/n;

.field private aHZ:Lcom/android/common/ui/RotateTextImageView;

.field private aIA:Lcom/android/video/o;

.field private aIB:Lcom/android/common/ui/c;

.field private aIa:Lcom/android/common/setting/ListPreference;

.field private aIb:Lcom/android/common/y;

.field private aIc:Ljava/lang/String;

.field private aId:Landroid/content/BroadcastReceiver;

.field private aIe:Lcom/android/common/ui/RotateImageView;

.field private aIf:Landroid/widget/RelativeLayout;

.field private aIg:I

.field private aIh:Landroid/view/View;

.field private aIi:Z

.field private aIj:Lcom/android/common/ui/RotateLayout;

.field private aIk:Lcom/android/common/ui/RotateTextImageView;

.field private aIl:Lcom/android/common/ui/RotateTextImageView;

.field private aIm:Landroid/widget/ImageView;

.field private aIn:Lcom/android/common/ui/RotateLayout;

.field private aIo:Lcom/android/common/ui/RotateImageView;

.field private aIp:Landroid/content/BroadcastReceiver;

.field private aIq:Z

.field private aIr:Lcom/android/video/VideoSnapButton;

.field private aIs:Landroid/view/View;

.field private aIt:Lcom/android/common/ui/x;

.field private aIu:Landroid/os/Handler;

.field private aIv:Lcom/android/video/f;

.field private aIw:Lcom/android/video/d;

.field private aIx:Lcom/android/common/ui/ZtemtShutterButton;

.field private aIy:Lcom/android/common/ui/af;

.field private aIz:Lcom/android/common/ui/MultiFunctionImageView;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 107
    iput v2, p0, Lcom/android/video/n;->aIg:I

    .line 109
    iput-boolean v2, p0, Lcom/android/video/n;->aIi:Z

    .line 114
    iput-object v1, p0, Lcom/android/video/n;->aIx:Lcom/android/common/ui/ZtemtShutterButton;

    .line 115
    iput-object v1, p0, Lcom/android/video/n;->aIz:Lcom/android/common/ui/MultiFunctionImageView;

    .line 119
    iput-boolean v2, p0, Lcom/android/video/n;->aHT:Z

    .line 120
    iput-object v1, p0, Lcom/android/video/n;->aIf:Landroid/widget/RelativeLayout;

    .line 122
    iput-object v1, p0, Lcom/android/video/n;->aHV:Landroid/widget/RelativeLayout;

    .line 130
    iput-object v1, p0, Lcom/android/video/n;->aIh:Landroid/view/View;

    .line 132
    iput-object v1, p0, Lcom/android/video/n;->aIA:Lcom/android/video/o;

    .line 137
    iput-boolean v2, p0, Lcom/android/video/n;->aIq:Z

    .line 138
    iput v2, p0, Lcom/android/video/n;->aHW:I

    .line 139
    iput v2, p0, Lcom/android/video/n;->aHU:I

    .line 140
    iput-object v1, p0, Lcom/android/video/n;->aId:Landroid/content/BroadcastReceiver;

    .line 141
    iput-object v1, p0, Lcom/android/video/n;->aIp:Landroid/content/BroadcastReceiver;

    .line 145
    iput-object v1, p0, Lcom/android/video/n;->aIb:Lcom/android/common/y;

    .line 147
    new-instance v0, Lcom/android/video/u;

    invoke-direct {v0, p0}, Lcom/android/video/u;-><init>(Lcom/android/video/n;)V

    iput-object v0, p0, Lcom/android/video/n;->aIu:Landroid/os/Handler;

    .line 476
    new-instance v0, Lcom/android/video/v;

    invoke-direct {v0, p0}, Lcom/android/video/v;-><init>(Lcom/android/video/n;)V

    iput-object v0, p0, Lcom/android/video/n;->aIy:Lcom/android/common/ui/af;

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/video/n;->aHS:Z

    .line 1015
    iput-object v1, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    .line 1179
    iput-boolean v2, p0, Lcom/android/video/n;->aHR:Z

    .line 1207
    new-instance v0, Lcom/android/common/appService/n;

    invoke-direct {v0}, Lcom/android/common/appService/n;-><init>()V

    iput-object v0, p0, Lcom/android/video/n;->aHY:Lcom/android/common/appService/n;

    .line 166
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 107
    iput v2, p0, Lcom/android/video/n;->aIg:I

    .line 109
    iput-boolean v2, p0, Lcom/android/video/n;->aIi:Z

    .line 114
    iput-object v1, p0, Lcom/android/video/n;->aIx:Lcom/android/common/ui/ZtemtShutterButton;

    .line 115
    iput-object v1, p0, Lcom/android/video/n;->aIz:Lcom/android/common/ui/MultiFunctionImageView;

    .line 119
    iput-boolean v2, p0, Lcom/android/video/n;->aHT:Z

    .line 120
    iput-object v1, p0, Lcom/android/video/n;->aIf:Landroid/widget/RelativeLayout;

    .line 122
    iput-object v1, p0, Lcom/android/video/n;->aHV:Landroid/widget/RelativeLayout;

    .line 130
    iput-object v1, p0, Lcom/android/video/n;->aIh:Landroid/view/View;

    .line 132
    iput-object v1, p0, Lcom/android/video/n;->aIA:Lcom/android/video/o;

    .line 137
    iput-boolean v2, p0, Lcom/android/video/n;->aIq:Z

    .line 138
    iput v2, p0, Lcom/android/video/n;->aHW:I

    .line 139
    iput v2, p0, Lcom/android/video/n;->aHU:I

    .line 140
    iput-object v1, p0, Lcom/android/video/n;->aId:Landroid/content/BroadcastReceiver;

    .line 141
    iput-object v1, p0, Lcom/android/video/n;->aIp:Landroid/content/BroadcastReceiver;

    .line 145
    iput-object v1, p0, Lcom/android/video/n;->aIb:Lcom/android/common/y;

    .line 147
    new-instance v0, Lcom/android/video/u;

    invoke-direct {v0, p0}, Lcom/android/video/u;-><init>(Lcom/android/video/n;)V

    iput-object v0, p0, Lcom/android/video/n;->aIu:Landroid/os/Handler;

    .line 476
    new-instance v0, Lcom/android/video/v;

    invoke-direct {v0, p0}, Lcom/android/video/v;-><init>(Lcom/android/video/n;)V

    iput-object v0, p0, Lcom/android/video/n;->aIy:Lcom/android/common/ui/af;

    .line 586
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/video/n;->aHS:Z

    .line 1015
    iput-object v1, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    .line 1179
    iput-boolean v2, p0, Lcom/android/video/n;->aHR:Z

    .line 1207
    new-instance v0, Lcom/android/common/appService/n;

    invoke-direct {v0}, Lcom/android/common/appService/n;-><init>()V

    iput-object v0, p0, Lcom/android/video/n;->aHY:Lcom/android/common/appService/n;

    .line 162
    return-void
.end method

.method public static aWS()Lcom/android/video/n;
    .registers 2

    .prologue
    .line 350
    new-instance v0, Lcom/android/video/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/video/n;-><init>(I)V

    return-object v0
.end method

.method private aWW()V
    .registers 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/video/n;->aIa:Lcom/android/common/setting/ListPreference;

    if-nez v0, :cond_5

    .line 504
    return-void

    .line 506
    :cond_5
    iget-object v0, p0, Lcom/android/video/n;->aIa:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/n;->aIc:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/android/video/n;->aIc:Ljava/lang/String;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 508
    :cond_19
    iget-object v0, p0, Lcom/android/video/n;->aIa:Lcom/android/common/setting/ListPreference;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Ml(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 501
    return-void
.end method

.method private aWX(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1181
    iget-boolean v0, p0, Lcom/android/video/n;->aHR:Z

    if-eqz v0, :cond_a

    .line 1182
    const-string/jumbo v0, "debug_ringer_spec"

    invoke-static {v0, p1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    :cond_a
    return-void
.end method

.method private aWY()V
    .registers 5

    .prologue
    const/4 v1, 0x2

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/video/n;->aHS:Z

    .line 589
    iget-object v0, p0, Lcom/android/video/n;->aIu:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    iget-object v0, p0, Lcom/android/video/n;->aIu:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 587
    return-void
.end method

.method private aWZ(ZLcom/android/video/f;)V
    .registers 6

    .prologue
    .line 847
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 849
    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    .line 850
    const/4 v0, -0x1

    .line 851
    iget-object v2, p2, Lcom/android/video/f;->aHJ:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 852
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 856
    :goto_13
    invoke-virtual {p0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 857
    invoke-virtual {p0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 846
    return-void

    .line 854
    :cond_22
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private aXA()V
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    if-eqz v0, :cond_9

    .line 491
    iget-object v0, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXE(Lcom/android/video/f;)V

    .line 493
    :cond_9
    iget-object v0, p0, Lcom/android/video/n;->aIl:Lcom/android/common/ui/RotateTextImageView;

    invoke-static {v0}, Lcom/android/common/h;->app(Landroid/view/View;)V

    .line 494
    iget-object v0, p0, Lcom/android/video/n;->aIo:Lcom/android/common/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/common/h;->app(Landroid/view/View;)V

    .line 495
    iget-object v0, p0, Lcom/android/video/n;->aIk:Lcom/android/common/ui/RotateTextImageView;

    invoke-static {v0}, Lcom/android/common/h;->app(Landroid/view/View;)V

    .line 496
    invoke-direct {p0}, Lcom/android/video/n;->aWW()V

    .line 497
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 489
    return-void
.end method

.method private aXB(I)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 910
    sparse-switch p1, :sswitch_data_34

    move v1, v2

    .line 939
    :goto_5
    if-eqz v1, :cond_15

    .line 940
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    .line 942
    const/16 v3, 0x11

    .line 943
    const/16 v5, 0x1f4

    move v4, v2

    .line 940
    invoke-static/range {v0 .. v5}, Lcom/android/common/h;->aql(Landroid/content/Context;IIIII)V

    .line 908
    :cond_15
    return-void

    .line 912
    :sswitch_16
    const v1, 0x7f0a02d2

    .line 913
    goto :goto_5

    .line 915
    :sswitch_1a
    const v1, 0x7f0a02d3

    .line 916
    goto :goto_5

    :sswitch_1e
    move v1, v2

    .line 920
    goto :goto_5

    .line 922
    :sswitch_20
    const v1, 0x7f0a027c

    .line 923
    goto :goto_5

    .line 925
    :sswitch_24
    const v1, 0x7f0a0278

    .line 926
    goto :goto_5

    .line 928
    :sswitch_28
    const v1, 0x7f0a02d4

    .line 929
    goto :goto_5

    .line 931
    :sswitch_2c
    const v1, 0x7f0a0152

    .line 932
    goto :goto_5

    .line 934
    :sswitch_30
    const v1, 0x7f0a03f3

    .line 935
    goto :goto_5

    .line 910
    :sswitch_data_34
    .sparse-switch
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_28
        0x4 -> :sswitch_1e
        0x5 -> :sswitch_20
        0x6 -> :sswitch_24
        0x7 -> :sswitch_1a
        0x8 -> :sswitch_16
        0x186a1 -> :sswitch_30
    .end sparse-switch
.end method

.method private aXC()V
    .registers 3

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/video/n;->aIt:Lcom/android/common/ui/x;

    invoke-virtual {v0}, Lcom/android/common/ui/x;->xB()V

    .line 439
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXx(I)V

    .line 440
    iget-object v0, p0, Lcom/android/video/n;->aIf:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/android/video/n;->aIe:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f0202e0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 437
    return-void
.end method

.method private aXD()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 412
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/video/n;->aXv(I)V

    .line 413
    iget-object v1, p0, Lcom/android/video/n;->aIx:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 414
    iget-object v1, p0, Lcom/android/video/n;->aIz:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v1}, Lcom/android/common/ui/MultiFunctionImageView;->EE()V

    .line 415
    iget-object v1, p0, Lcom/android/video/n;->aIz:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v1}, Lcom/android/common/ui/MultiFunctionImageView;->EB()V

    .line 416
    invoke-direct {p0, v0}, Lcom/android/video/n;->aXx(I)V

    .line 417
    iget-boolean v1, p0, Lcom/android/video/n;->aHT:Z

    if-eqz v1, :cond_29

    .line 418
    iget-object v1, p0, Lcom/android/video/n;->aIe:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 419
    iget-object v1, p0, Lcom/android/video/n;->aIe:Lcom/android/common/ui/RotateImageView;

    const v2, 0x7f0202dc

    invoke-virtual {v1, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 421
    :cond_29
    iget-object v1, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 423
    const-string/jumbo v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 424
    const-string/jumbo v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 426
    :cond_43
    invoke-static {}, Lcom/android/common/f;->aox()Z

    move-result v1

    if-eqz v1, :cond_62

    if-nez v0, :cond_62

    .line 427
    iget-object v0, p0, Lcom/android/video/n;->aIt:Lcom/android/common/ui/x;

    invoke-direct {p0}, Lcom/android/video/n;->aXb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/x;->xC(Ljava/lang/String;)V

    .line 431
    :goto_54
    iget-object v0, p0, Lcom/android/video/n;->aIt:Lcom/android/common/ui/x;

    const-string/jumbo v1, "00:00"

    invoke-virtual {v0, v1}, Lcom/android/common/ui/x;->xu(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/video/n;->aIt:Lcom/android/common/ui/x;

    invoke-virtual {v0}, Lcom/android/common/ui/x;->xv()V

    .line 411
    return-void

    .line 429
    :cond_62
    iget-object v0, p0, Lcom/android/video/n;->aIt:Lcom/android/common/ui/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/x;->xC(Ljava/lang/String;)V

    goto :goto_54
.end method

.method private aXE(Lcom/android/video/f;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 861
    iget-object v1, p1, Lcom/android/video/f;->aHG:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2a

    .line 862
    iget-object v0, p1, Lcom/android/video/f;->aHG:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 863
    iget v1, p1, Lcom/android/video/f;->width:I

    .line 862
    invoke-static {v0, v1}, Lcom/android/common/m/a;->agU(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 868
    :cond_12
    :goto_12
    if-eqz v0, :cond_29

    .line 871
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    .line 878
    invoke-static {v0, v2, v2}, Lcom/android/common/appService/j;->jz(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 879
    iget-object v1, p0, Lcom/android/video/n;->aIm:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 880
    iget-object v0, p0, Lcom/android/video/n;->aIm:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 859
    :cond_29
    return-void

    .line 864
    :cond_2a
    iget-object v1, p1, Lcom/android/video/f;->aHI:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 865
    iget-object v0, p1, Lcom/android/video/f;->aHI:Ljava/lang/String;

    .line 866
    iget v1, p1, Lcom/android/video/f;->width:I

    .line 865
    invoke-static {v0, v1}, Lcom/android/common/m/a;->agR(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_12
.end method

.method private aXF()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 884
    iget-object v0, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    iget-object v0, v0, Lcom/android/video/f;->aHJ:Landroid/net/Uri;

    if-nez v0, :cond_15

    .line 885
    :cond_b
    const-string/jumbo v0, "VideoFragment"

    const-string/jumbo v1, "Get no Video info so return"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-void

    .line 888
    :cond_15
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 889
    const-string/jumbo v1, "SingleItemOnly"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 890
    iget-object v1, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    iget-object v1, v1, Lcom/android/video/f;->aHJ:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    iget-object v2, v2, Lcom/android/video/f;->aHH:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    iget-object v1, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    iget-object v1, v1, Lcom/android/video/f;->aHJ:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "content://mms_temp_file/scrapSpace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 893
    const-string/jumbo v1, "cn.nubia.video"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    :cond_46
    :try_start_46
    invoke-virtual {p0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_46 .. :try_end_4d} :catch_4e

    .line 883
    :goto_4d
    return-void

    .line 898
    :catch_4e
    move-exception v1

    .line 899
    const-string/jumbo v1, "VideoFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t view video by cn.nubia.video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    iget-object v3, v3, Lcom/android/video/f;->aHJ:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    invoke-virtual {p0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4d
.end method

.method private aXG(Z)V
    .registers 4

    .prologue
    .line 544
    const-string/jumbo v0, "stop recording"

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXy(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0}, Lcom/android/video/n;->aXI()V

    .line 546
    iget-object v0, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    invoke-virtual {v0}, Lcom/android/video/d;->getState()I

    move-result v0

    if-nez v0, :cond_12

    .line 547
    return-void

    .line 550
    :cond_12
    if-nez p1, :cond_21

    .line 551
    new-instance v0, Lcom/android/video/o;

    invoke-direct {v0, p0}, Lcom/android/video/o;-><init>(Lcom/android/video/n;)V

    iput-object v0, p0, Lcom/android/video/n;->aIA:Lcom/android/video/o;

    .line 552
    iget-object v0, p0, Lcom/android/video/n;->aIA:Lcom/android/video/o;

    invoke-virtual {v0}, Lcom/android/video/o;->start()V

    .line 543
    :goto_20
    return-void

    .line 554
    :cond_21
    iget-object v0, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/video/d;->aWl(Z)V

    goto :goto_20
.end method

.method private aXH()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 988
    iget-object v0, p0, Lcom/android/video/n;->aIp:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    .line 989
    invoke-virtual {p0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/video/n;->aIp:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 990
    iput-object v2, p0, Lcom/android/video/n;->aIp:Landroid/content/BroadcastReceiver;

    .line 992
    :cond_10
    iget-object v0, p0, Lcom/android/video/n;->aId:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1f

    .line 993
    invoke-virtual {p0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/video/n;->aId:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 994
    iput-object v2, p0, Lcom/android/video/n;->aId:Landroid/content/BroadcastReceiver;

    .line 987
    :cond_1f
    return-void
.end method

.method private aXI()V
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/video/n;->aIA:Lcom/android/video/o;

    if-eqz v0, :cond_c

    .line 573
    :try_start_4
    iget-object v0, p0, Lcom/android/video/n;->aIA:Lcom/android/video/o;

    invoke-virtual {v0}, Lcom/android/video/o;->join()V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/n;->aIA:Lcom/android/video/o;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_c} :catch_d

    .line 570
    :cond_c
    :goto_c
    return-void

    .line 575
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method static synthetic aXJ(Lcom/android/video/n;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aXK(Lcom/android/video/n;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/video/n;->adv:Z

    return v0
.end method

.method static synthetic aXL(Lcom/android/video/n;)Lcom/android/video/f;
    .registers 2

    iget-object v0, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    return-object v0
.end method

.method static synthetic aXM(Lcom/android/video/n;)Lcom/android/video/d;
    .registers 2

    iget-object v0, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    return-object v0
.end method

.method static synthetic aXN(Lcom/android/video/n;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/video/n;->aHS:Z

    return p1
.end method

.method static synthetic aXO(Lcom/android/video/n;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/video/n;->aXj()Z

    move-result v0

    return v0
.end method

.method static synthetic aXP(Lcom/android/video/n;)Lcom/android/common/camerastate/DeviceState;
    .registers 2

    invoke-virtual {p0}, Lcom/android/video/n;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aXQ(Lcom/android/video/n;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/video/n;->aXe()V

    return-void
.end method

.method static synthetic aXR(Lcom/android/video/n;ZJJ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/video/n;->alB(ZJJ)V

    return-void
.end method

.method static synthetic aXS(Lcom/android/video/n;ZJJ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/video/n;->alC(ZJJ)V

    return-void
.end method

.method static synthetic aXT(Lcom/android/video/n;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/video/n;->aXu(I)V

    return-void
.end method

.method static synthetic aXU(Lcom/android/video/n;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/video/n;->aXB(I)V

    return-void
.end method

.method static synthetic aXV(Lcom/android/video/n;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/video/n;->aXG(Z)V

    return-void
.end method

.method static synthetic aXW(Lcom/android/video/n;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/video/n;->aXI()V

    return-void
.end method

.method private aXa()Lcom/android/common/setting/ListPreference;
    .registers 3

    .prologue
    .line 1079
    invoke-static {}, Lcom/android/video/d;->aVM()Ljava/lang/String;

    move-result-object v0

    .line 1080
    invoke-virtual {p0}, Lcom/android/video/n;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method private aXb()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1150
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_f

    .line 1151
    const-string/jumbo v0, "10:00"

    return-object v0

    .line 1154
    :cond_f
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_2d

    .line 1156
    invoke-virtual {p0}, Lcom/android/video/n;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 1157
    const-string/jumbo v1, "pref_video_quality_key"

    .line 1156
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 1162
    :goto_2a
    if-nez v0, :cond_39

    return-object v2

    .line 1159
    :cond_2d
    invoke-virtual {p0}, Lcom/android/video/n;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 1160
    const-string/jumbo v1, "pref_front_video_quality_key"

    .line 1159
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    goto :goto_2a

    .line 1163
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1164
    const v1, 0x7f0a0241

    invoke-virtual {p0, v1}, Lcom/android/video/n;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1165
    const-string/jumbo v0, "10:00"

    return-object v0

    .line 1167
    :cond_62
    const v1, 0x7f0a0243

    invoke-virtual {p0, v1}, Lcom/android/video/n;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1166
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1168
    const-string/jumbo v0, "10:00"

    return-object v0

    .line 1170
    :cond_73
    const v1, 0x7f0a0242

    invoke-virtual {p0, v1}, Lcom/android/video/n;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 1171
    const-string/jumbo v0, "20:00"

    return-object v0

    .line 1173
    :cond_84
    const v1, 0x7f0a0244

    invoke-virtual {p0, v1}, Lcom/android/video/n;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1172
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1174
    const-string/jumbo v0, "30:00"

    return-object v0

    .line 1176
    :cond_95
    return-object v2
.end method

.method private aXc()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 520
    invoke-direct {p0}, Lcom/android/video/n;->aXq()V

    .line 521
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 522
    iget-object v0, p0, Lcom/android/video/n;->aIl:Lcom/android/common/ui/RotateTextImageView;

    invoke-static {v0}, Lcom/android/common/h;->apr(Landroid/view/View;)V

    .line 523
    iget-object v0, p0, Lcom/android/video/n;->aIo:Lcom/android/common/ui/RotateImageView;

    invoke-static {v0}, Lcom/android/common/h;->apr(Landroid/view/View;)V

    .line 525
    iget-object v0, p0, Lcom/android/video/n;->aHZ:Lcom/android/common/ui/RotateTextImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/video/n;->aIk:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/android/video/n;->aIm:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    return-void
.end method

.method private aXd()V
    .registers 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/video/n;->aIt:Lcom/android/common/ui/x;

    invoke-virtual {v0}, Lcom/android/common/ui/x;->xv()V

    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXx(I)V

    .line 448
    iget-object v0, p0, Lcom/android/video/n;->aIf:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/android/video/n;->aIe:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f0202dc

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 444
    return-void
.end method

.method private aXe()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 453
    iget-object v0, p0, Lcom/android/video/n;->aIx:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setVisibility(I)V

    .line 454
    invoke-direct {p0, v1}, Lcom/android/video/n;->aXx(I)V

    .line 455
    iget-object v0, p0, Lcom/android/video/n;->aIe:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 452
    return-void
.end method

.method private aXf()V
    .registers 3

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 247
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/video/n;->aHU:I

    .line 245
    return-void
.end method

.method private aXg(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 328
    const v0, 0x7f1001a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/video/n;->aIn:Lcom/android/common/ui/RotateLayout;

    .line 329
    const v0, 0x7f1001a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/video/n;->aIm:Landroid/widget/ImageView;

    .line 330
    const v0, 0x7f10019f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/video/n;->aHV:Landroid/widget/RelativeLayout;

    .line 331
    const v0, 0x7f100046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateTextImageView;

    iput-object v0, p0, Lcom/android/video/n;->aIl:Lcom/android/common/ui/RotateTextImageView;

    .line 332
    const v0, 0x7f100047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateTextImageView;

    iput-object v0, p0, Lcom/android/video/n;->aIk:Lcom/android/common/ui/RotateTextImageView;

    .line 333
    iget-object v0, p0, Lcom/android/video/n;->aIl:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/android/video/n;->aIk:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    const v0, 0x7f1001a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/video/n;->aIo:Lcom/android/common/ui/RotateImageView;

    .line 336
    iget-object v0, p0, Lcom/android/video/n;->aIo:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    const v0, 0x7f10019e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateTextImageView;

    iput-object v0, p0, Lcom/android/video/n;->aHZ:Lcom/android/common/ui/RotateTextImageView;

    .line 338
    iget-object v1, p0, Lcom/android/video/n;->aHZ:Lcom/android/common/ui/RotateTextImageView;

    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v0, 0x0

    :goto_67
    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/android/video/n;->aHZ:Lcom/android/common/ui/RotateTextImageView;

    new-instance v1, Lcom/android/video/x;

    invoke-direct {v1, p0}, Lcom/android/video/x;-><init>(Lcom/android/video/n;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    return-void

    .line 338
    :cond_75
    const/16 v0, 0x8

    goto :goto_67
.end method

.method private aXh(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 1017
    new-instance v0, Lcom/android/common/appService/t;

    iget-object v1, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    .line 1018
    invoke-direct {p0}, Lcom/android/video/n;->aXa()Lcom/android/common/setting/ListPreference;

    move-result-object v2

    const v4, 0x7f1000de

    const v5, 0x7f1000df

    move-object v3, p1

    .line 1017
    invoke-direct/range {v0 .. v5}, Lcom/android/common/appService/t;-><init>(Lcom/android/common/appService/W;Lcom/android/common/setting/ListPreference;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    .line 1019
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    new-instance v1, Lcom/android/video/A;

    invoke-direct {v1, p0}, Lcom/android/video/A;-><init>(Lcom/android/video/n;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->kQ(Lcom/android/common/appService/u;)V

    .line 1047
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    new-instance v1, Lcom/android/video/B;

    invoke-direct {v1, p0}, Lcom/android/video/B;-><init>(Lcom/android/video/n;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->lm(Lcom/android/common/appService/v;)V

    .line 1074
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXu(I)V

    .line 1075
    iget-object v0, p0, Lcom/android/video/n;->aHY:Lcom/android/common/appService/n;

    iget-object v1, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/n;->kb(Lcom/android/common/appService/t;)V

    .line 1016
    return-void
.end method

.method private aXi(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 292
    new-instance v0, Lcom/android/common/ui/x;

    invoke-direct {v0, p1}, Lcom/android/common/ui/x;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/video/n;->aIt:Lcom/android/common/ui/x;

    .line 293
    const v0, 0x7f1001a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/video/n;->aIf:Landroid/widget/RelativeLayout;

    .line 294
    new-instance v0, Lcom/android/common/ui/c;

    invoke-virtual {p0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040089

    invoke-direct {v0, v1, v2}, Lcom/android/common/ui/c;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/android/video/n;->aIB:Lcom/android/common/ui/c;

    .line 295
    const v0, 0x7f1001a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/video/n;->aIx:Lcom/android/common/ui/ZtemtShutterButton;

    .line 296
    const v0, 0x7f1001a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/video/n;->aIz:Lcom/android/common/ui/MultiFunctionImageView;

    .line 297
    const v0, 0x7f1001a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/video/n;->aIj:Lcom/android/common/ui/RotateLayout;

    .line 298
    const v0, 0x7f100057

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/video/VideoSnapButton;

    iput-object v0, p0, Lcom/android/video/n;->aIr:Lcom/android/video/VideoSnapButton;

    .line 299
    const v0, 0x7f100058

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/n;->aIs:Landroid/view/View;

    .line 300
    iget-object v0, p0, Lcom/android/video/n;->aIr:Lcom/android/video/VideoSnapButton;

    invoke-virtual {v0, p0}, Lcom/android/video/VideoSnapButton;->aXX(Lcom/android/video/p;)V

    .line 301
    const v0, 0x7f1001a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/video/n;->aIe:Lcom/android/common/ui/RotateImageView;

    .line 302
    iget-object v0, p0, Lcom/android/video/n;->aIe:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcom/android/video/w;

    invoke-direct {v1, p0}, Lcom/android/video/w;-><init>(Lcom/android/video/n;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-direct {p0, p1}, Lcom/android/video/n;->aXg(Landroid/view/View;)V

    .line 313
    const v0, 0x7f1001a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/n;->aIh:Landroid/view/View;

    .line 315
    invoke-direct {p0, p1}, Lcom/android/video/n;->aXh(Landroid/view/View;)V

    .line 319
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/common/ui/h;

    .line 320
    iget-object v1, p0, Lcom/android/video/n;->aIe:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 321
    iget-object v1, p0, Lcom/android/video/n;->aIo:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 322
    iget-object v1, p0, Lcom/android/video/n;->aIk:Lcom/android/common/ui/RotateTextImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 323
    iget-object v1, p0, Lcom/android/video/n;->aIl:Lcom/android/common/ui/RotateTextImageView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 324
    iget-object v1, p0, Lcom/android/video/n;->aIn:Lcom/android/common/ui/RotateLayout;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 325
    iget-object v1, p0, Lcom/android/video/n;->aHZ:Lcom/android/common/ui/RotateTextImageView;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 319
    iput-object v0, p0, Lcom/android/video/n;->adw:[Lcom/android/common/ui/h;

    .line 291
    return-void
.end method

.method private aXj()Z
    .registers 4

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_3a

    .line 1128
    invoke-virtual {p0}, Lcom/android/video/n;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 1129
    const-string/jumbo v1, "pref_video_quality_key"

    .line 1128
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 1130
    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vu()Ljava/lang/String;

    move-result-object v0

    .line 1131
    const v1, 0x7f0a0241

    invoke-virtual {p0, v1}, Lcom/android/video/n;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1132
    const v2, 0x7f0a0243

    invoke-virtual {p0, v2}, Lcom/android/video/n;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1133
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x1

    goto :goto_37

    .line 1135
    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method private aXk()Z
    .registers 2

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    if-eqz v0, :cond_b

    .line 1085
    iget-object v0, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    invoke-virtual {v0}, Lcom/android/video/d;->aVU()Z

    move-result v0

    return v0

    .line 1087
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private aXl(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 788
    :try_start_1
    const-string/jumbo v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    .line 790
    const-string/jumbo v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 791
    const-string/jumbo v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 790
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    .line 788
    add-int/2addr v0, v1

    .line 794
    const-string/jumbo v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 793
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 788
    add-int/2addr v0, v1

    .line 795
    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    .line 796
    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_69

    move-result v2

    .line 795
    add-int/2addr v1, v2

    .line 797
    if-lt v0, v1, :cond_68

    .line 798
    const/4 v0, 0x1

    return v0

    .line 800
    :cond_68
    return v3

    .line 802
    :catch_69
    move-exception v0

    .line 803
    const-string/jumbo v1, "VideoFragment"

    const-string/jumbo v2, "run isMax() failed."

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 804
    return v3
.end method

.method private aXm()Z
    .registers 5

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    .line 595
    sget-object v1, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_e

    .line 596
    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_10

    .line 597
    :cond_e
    const/4 v0, 0x1

    return v0

    .line 599
    :cond_10
    const-string/jumbo v1, "VideoFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current CameraMember is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method private aXo()V
    .registers 3

    .prologue
    .line 1105
    iget-boolean v0, p0, Lcom/android/video/n;->adv:Z

    if-nez v0, :cond_e

    .line 1106
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_f

    .line 1107
    :cond_e
    return-void

    .line 1109
    :cond_f
    invoke-direct {p0}, Lcom/android/video/n;->aXa()Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 1110
    invoke-direct {p0}, Lcom/android/video/n;->aXk()Z

    move-result v1

    .line 1111
    if-eqz v1, :cond_2a

    invoke-direct {p0}, Lcom/android/video/n;->aXj()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1112
    const-string/jumbo v1, "none"

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->lj()V

    .line 1104
    :cond_2a
    return-void
.end method

.method private aXp()V
    .registers 4

    .prologue
    .line 948
    new-instance v0, Lcom/android/video/y;

    invoke-direct {v0, p0}, Lcom/android/video/y;-><init>(Lcom/android/video/n;)V

    iput-object v0, p0, Lcom/android/video/n;->aIp:Landroid/content/BroadcastReceiver;

    .line 960
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 961
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 962
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/video/n;->aIp:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 965
    new-instance v0, Lcom/android/video/z;

    invoke-direct {v0, p0}, Lcom/android/video/z;-><init>(Lcom/android/video/n;)V

    iput-object v0, p0, Lcom/android/video/n;->aId:Landroid/content/BroadcastReceiver;

    .line 981
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 982
    const-string/jumbo v1, "android.media.action.STOP_CAMCORDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 983
    const-string/jumbo v1, "com.android.mms.NOTIFY_RECEIVER_SMS_OR_MMS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 984
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 985
    invoke-virtual {p0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/video/n;->aId:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 947
    return-void
.end method

.method private aXq()V
    .registers 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/video/n;->aIa:Lcom/android/common/setting/ListPreference;

    if-eqz v0, :cond_b

    .line 515
    iget-object v0, p0, Lcom/android/video/n;->aIa:Lcom/android/common/setting/ListPreference;

    iget-object v1, p0, Lcom/android/video/n;->aIc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 513
    :cond_b
    return-void
.end method

.method private aXr()V
    .registers 2

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXw(Z)V

    .line 261
    iget v0, p0, Lcom/android/video/n;->aHU:I

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXs(I)V

    .line 259
    return-void
.end method

.method private aXs(I)V
    .registers 5

    .prologue
    .line 250
    const-string/jumbo v0, "setAlarmVolume E"

    invoke-direct {p0, v0}, Lcom/android/video/n;->aWX(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 252
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 253
    const-string/jumbo v0, "setAlarmVolume X"

    invoke-direct {p0, v0}, Lcom/android/video/n;->aWX(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private aXt()V
    .registers 2

    .prologue
    .line 256
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXw(Z)V

    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXs(I)V

    .line 255
    return-void
.end method

.method private aXu(I)V
    .registers 5

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    if-eqz v0, :cond_2e

    .line 1093
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_2f

    const/4 v0, 0x1

    .line 1094
    :goto_f
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aeK()Z

    move-result v1

    .line 1095
    iget-object v2, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pf()Z

    move-result v2

    .line 1096
    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    if-eqz v2, :cond_31

    .line 1097
    :cond_27
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->ln(I)V

    .line 1091
    :cond_2e
    :goto_2e
    return-void

    .line 1093
    :cond_2f
    const/4 v0, 0x0

    goto :goto_f

    .line 1099
    :cond_31
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/t;->ln(I)V

    goto :goto_2e
.end method

.method private aXv(I)V
    .registers 4

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    if-nez v0, :cond_10

    .line 679
    iget-object v0, p0, Lcom/android/video/n;->aHZ:Lcom/android/common/ui/RotateTextImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 677
    :goto_f
    return-void

    .line 681
    :cond_10
    iget-object v0, p0, Lcom/android/video/n;->aHZ:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    goto :goto_f
.end method

.method private aXw(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 222
    const-string/jumbo v0, "ringerMode E"

    invoke-direct {p0, v0}, Lcom/android/video/n;->aWX(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/video/n;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 224
    const-string/jumbo v1, "audio"

    .line 223
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 225
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_1c

    .line 226
    return-void

    .line 228
    :cond_1c
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 229
    if-eqz p1, :cond_33

    .line 230
    if-lez v1, :cond_2c

    .line 231
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/video/n;->aIq:Z

    .line 232
    iput v1, p0, Lcom/android/video/n;->aHW:I

    .line 233
    invoke-virtual {v0, v4, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 243
    :cond_2c
    :goto_2c
    const-string/jumbo v0, "ringerMode X"

    invoke-direct {p0, v0}, Lcom/android/video/n;->aWX(Ljava/lang/String;)V

    .line 221
    return-void

    .line 236
    :cond_33
    if-lez v1, :cond_38

    .line 237
    iput v3, p0, Lcom/android/video/n;->aHW:I

    goto :goto_2c

    .line 239
    :cond_38
    iget v1, p0, Lcom/android/video/n;->aHW:I

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 240
    iput v3, p0, Lcom/android/video/n;->aHW:I

    goto :goto_2c
.end method

.method private aXx(I)V
    .registers 7

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_c

    .line 460
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    if-nez v0, :cond_d

    .line 462
    :cond_c
    return-void

    .line 461
    :cond_d
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xn()Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 464
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xn()Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->quality:I

    .line 465
    iget-object v1, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Np()Ljava/lang/String;

    move-result-object v1

    .line 466
    const-string/jumbo v2, "VideoFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hsr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v2, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pf()Z

    move-result v2

    if-nez v2, :cond_70

    .line 468
    invoke-static {}, Lcom/android/common/cameradevice/d;->JO()Lcom/android/common/cameradevice/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/d;->JP()Lcom/android/common/cameradevice/r;

    move-result-object v2

    sget-object v3, Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;->NR:Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;

    invoke-virtual {v2, v3}, Lcom/android/common/cameradevice/r;->Od(Lcom/android/common/cameradevice/CamcorderProfileEx$INDEX_QUALITY;)I

    move-result v2

    if-eq v0, v2, :cond_70

    .line 469
    const-string/jumbo v0, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 467
    if-eqz v0, :cond_70

    .line 470
    iget-object v0, p0, Lcom/android/video/n;->aIr:Lcom/android/video/VideoSnapButton;

    invoke-virtual {v0, p1}, Lcom/android/video/VideoSnapButton;->setVisibility(I)V

    .line 458
    :goto_6f
    return-void

    .line 472
    :cond_70
    iget-object v0, p0, Lcom/android/video/n;->aIr:Lcom/android/video/VideoSnapButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/video/VideoSnapButton;->setVisibility(I)V

    goto :goto_6f
.end method

.method private aXy(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 408
    const-string/jumbo v0, "debug_video"

    invoke-static {v0, p1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method private aXz()V
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/video/n;->aIf:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/video/n;->aIt:Lcom/android/common/ui/x;

    invoke-virtual {v0}, Lcom/android/common/ui/x;->stop()V

    .line 213
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 215
    invoke-virtual {p0}, Lcom/android/video/n;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_1f

    .line 216
    invoke-virtual {p0}, Lcom/android/video/n;->alq()V

    .line 218
    :cond_1f
    invoke-direct {p0}, Lcom/android/video/n;->aXe()V

    .line 210
    return-void
.end method

.method private start()V
    .registers 4

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-nez v0, :cond_29

    .line 531
    const-string/jumbo v0, "VideoFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Storage enough: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    return-void

    .line 534
    :cond_29
    iget-object v0, p0, Lcom/android/video/n;->adx:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afb:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 535
    return-void

    .line 537
    :cond_34
    const-string/jumbo v0, "start recording"

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXy(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 539
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KB(Z)V

    .line 540
    iget-object v0, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    invoke-virtual {v0}, Lcom/android/video/d;->aWk()V

    .line 529
    return-void
.end method


# virtual methods
.method public aWG(I)V
    .registers 3

    .prologue
    .line 1236
    if-nez p1, :cond_b

    .line 1237
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    if-eqz v0, :cond_b

    .line 1238
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->lq()V

    .line 1235
    :cond_b
    return-void
.end method

.method public aWH(I)V
    .registers 4

    .prologue
    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXy(Ljava/lang/String;)V

    .line 770
    invoke-direct {p0, p1}, Lcom/android/video/n;->aXB(I)V

    .line 768
    return-void
.end method

.method public aWI(ZZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 775
    if-nez p1, :cond_19

    .line 776
    iget-object v0, p0, Lcom/android/video/n;->aIt:Lcom/android/common/ui/x;

    invoke-virtual {v0, p3}, Lcom/android/common/ui/x;->xu(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/android/video/n;->aIt:Lcom/android/common/ui/x;

    invoke-virtual {v0}, Lcom/android/common/ui/x;->xx()Ljava/lang/String;

    move-result-object v0

    .line 778
    if-eqz v0, :cond_19

    .line 779
    invoke-direct {p0, v0, p3}, Lcom/android/video/n;->aXl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 780
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXG(Z)V

    .line 774
    :cond_19
    return-void
.end method

.method public aWJ(Lcom/android/video/f;)V
    .registers 4

    .prologue
    .line 753
    const-string/jumbo v0, "onVideoFileSaved"

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXy(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz p1, :cond_3c

    .line 755
    iput-object p1, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Video info( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    invoke-virtual {v1}, Lcom/android/video/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXy(Ljava/lang/String;)V

    .line 757
    invoke-direct {p0}, Lcom/android/video/n;->aXe()V

    .line 758
    invoke-direct {p0}, Lcom/android/video/n;->aXA()V

    .line 752
    :cond_3c
    return-void
.end method

.method public aWK(Z)V
    .registers 4

    .prologue
    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPause "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXy(Ljava/lang/String;)V

    .line 742
    if-eqz p1, :cond_24

    .line 743
    iget-object v0, p0, Lcom/android/video/n;->adx:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afc:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 744
    invoke-direct {p0}, Lcom/android/video/n;->aXC()V

    .line 740
    :goto_23
    return-void

    .line 746
    :cond_24
    iget-object v0, p0, Lcom/android/video/n;->adx:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afb:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 747
    invoke-direct {p0}, Lcom/android/video/n;->aXd()V

    goto :goto_23
.end method

.method public aWL()V
    .registers 3

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/video/n;->adx:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afb:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 763
    return-void
.end method

.method public aWM(I)V
    .registers 4

    .prologue
    .line 687
    if-eqz p1, :cond_1d

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXy(Ljava/lang/String;)V

    .line 689
    invoke-direct {p0, p1}, Lcom/android/video/n;->aXB(I)V

    .line 690
    return-void

    .line 692
    :cond_1d
    invoke-direct {p0}, Lcom/android/video/n;->aXt()V

    .line 693
    iget-object v0, p0, Lcom/android/video/n;->adx:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afb:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    .line 695
    invoke-virtual {p0}, Lcom/android/video/n;->alr()V

    .line 696
    invoke-direct {p0}, Lcom/android/video/n;->aXD()V

    .line 697
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXu(I)V

    .line 686
    return-void
.end method

.method public aWN(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onVideoStopEnd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXy(Ljava/lang/String;)V

    .line 723
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1d

    .line 724
    return-void

    .line 726
    :cond_1d
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 727
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 728
    :cond_2f
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x7

    if-ne p1, v0, :cond_58

    .line 729
    :cond_3e
    iget-object v0, p0, Lcom/android/video/n;->adx:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 730
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 731
    invoke-direct {p0, v2}, Lcom/android/video/n;->aXu(I)V

    .line 732
    iget-object v0, p0, Lcom/android/video/n;->aHZ:Lcom/android/common/ui/RotateTextImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateTextImageView;->setVisibility(I)V

    .line 733
    invoke-virtual {p0}, Lcom/android/video/n;->alq()V

    .line 736
    :cond_58
    invoke-direct {p0, p1}, Lcom/android/video/n;->aXB(I)V

    .line 720
    return-void
.end method

.method public aWO()V
    .registers 3

    .prologue
    .line 702
    const-string/jumbo v0, "onVideoStopStart"

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXy(Ljava/lang/String;)V

    .line 703
    invoke-direct {p0}, Lcom/android/video/n;->aXr()V

    .line 704
    iget-boolean v0, p0, Lcom/android/video/n;->adv:Z

    if-eqz v0, :cond_2d

    .line 705
    iget-object v0, p0, Lcom/android/video/n;->aIz:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->EA()V

    .line 706
    invoke-virtual {p0}, Lcom/android/video/n;->alq()V

    .line 707
    invoke-direct {p0}, Lcom/android/video/n;->aXe()V

    .line 708
    iget-object v0, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    if-nez v0, :cond_20

    .line 709
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXu(I)V

    .line 715
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/video/n;->aIf:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 716
    iget-object v0, p0, Lcom/android/video/n;->aIt:Lcom/android/common/ui/x;

    invoke-virtual {v0}, Lcom/android/common/ui/x;->stop()V

    .line 701
    return-void

    .line 712
    :cond_2d
    iget-object v0, p0, Lcom/android/video/n;->aIz:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->EA()V

    .line 713
    iget-object v0, p0, Lcom/android/video/n;->aIz:Lcom/android/common/ui/MultiFunctionImageView;

    iget-object v1, p0, Lcom/android/video/n;->aIy:Lcom/android/common/ui/af;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->EC(Lcom/android/common/ui/af;)V

    goto :goto_20
.end method

.method public aWT()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 669
    iget-object v0, p0, Lcom/android/video/n;->aIx:Lcom/android/common/ui/ZtemtShutterButton;

    if-eqz v0, :cond_14

    .line 670
    iget-object v0, p0, Lcom/android/video/n;->aIx:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 671
    iget-object v0, p0, Lcom/android/video/n;->aIx:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    .line 672
    const/4 v0, 0x1

    return v0

    .line 674
    :cond_14
    return v1
.end method

.method aWU(Z)V
    .registers 3

    .prologue
    .line 1118
    iget-boolean v0, p0, Lcom/android/video/n;->adv:Z

    if-eqz v0, :cond_5

    .line 1119
    return-void

    .line 1121
    :cond_5
    if-nez p1, :cond_a

    .line 1122
    invoke-direct {p0}, Lcom/android/video/n;->aXo()V

    .line 1117
    :cond_a
    return-void
.end method

.method public aWV()V
    .registers 1

    .prologue
    .line 1196
    return-void
.end method

.method public aXn()V
    .registers 3

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/video/n;->aXI()V

    .line 811
    iget-object v0, p0, Lcom/android/video/n;->adx:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afd:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 812
    return-void

    .line 814
    :cond_e
    iget-object v0, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    invoke-virtual {v0}, Lcom/android/video/d;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    .line 815
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 816
    iget-object v0, p0, Lcom/android/video/n;->adx:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afd:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 817
    iget-object v0, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    invoke-virtual {v0}, Lcom/android/video/d;->aWo()V

    .line 809
    :cond_2e
    return-void
.end method

.method public aij(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V
    .registers 6

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/video/n;->aHY:Lcom/android/common/appService/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/common/appService/n;->kd(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V

    .line 1211
    iget-object v0, p0, Lcom/android/video/n;->aHY:Lcom/android/common/appService/n;

    iget-object v1, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/n;->kb(Lcom/android/common/appService/t;)V

    .line 1209
    return-void
.end method

.method public aik()V
    .registers 3

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    if-eqz v0, :cond_a

    .line 1217
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->ll(Z)V

    .line 1215
    :cond_a
    return-void
.end method

.method protected aji(IIII)V
    .registers 7

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/video/n;->aIh:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v1, p3, p1

    if-ne v0, v1, :cond_14

    .line 1001
    iget-object v0, p0, Lcom/android/video/n;->aIh:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_37

    .line 1002
    :cond_14
    const-string/jumbo v0, "VideoFragment"

    const-string/jumbo v1, "relayout mPreviewRelativeContent"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v0, p0, Lcom/android/video/n;->aIh:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1004
    sub-int v1, p3, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1005
    sub-int v1, p4, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1006
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1007
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/video/n;->aIh:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1010
    :cond_37
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    if-eqz v0, :cond_44

    .line 1011
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    invoke-virtual {p0}, Lcom/android/video/n;->alD()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->kR(F)V

    .line 999
    :cond_44
    return-void
.end method

.method protected ajt(IZ)V
    .registers 5

    .prologue
    .line 367
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 368
    iput p1, p0, Lcom/android/video/n;->aIg:I

    .line 369
    iget-object v0, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    iget v1, p0, Lcom/android/video/n;->aIg:I

    invoke-virtual {v0, v1}, Lcom/android/video/d;->setOrientation(I)V

    .line 370
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    if-eqz v0, :cond_15

    .line 371
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/appService/t;->lo(IZ)V

    .line 366
    :cond_15
    return-void
.end method

.method protected akC()V
    .registers 2

    .prologue
    .line 1188
    invoke-super {p0}, Lcom/android/common/o/l;->akC()V

    .line 1189
    iget-object v0, p0, Lcom/android/video/n;->aIo:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_18

    .line 1190
    iget-object v0, p0, Lcom/android/video/n;->aIo:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 1191
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_18

    .line 1192
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 1187
    :cond_18
    return-void
.end method

.method public akI(ZZ)V
    .registers 5

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    if-nez v0, :cond_5

    .line 1225
    return-void

    .line 1227
    :cond_5
    if-nez p1, :cond_17

    invoke-virtual {p0}, Lcom/android/video/n;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_17

    .line 1228
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->ln(I)V

    .line 1223
    :goto_16
    return-void

    .line 1230
    :cond_17
    iget-object v1, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    if-eqz p1, :cond_20

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {v1, v0}, Lcom/android/common/appService/t;->ll(Z)V

    goto :goto_16

    :cond_20
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method protected alq()V
    .registers 3

    .prologue
    .line 397
    invoke-super {p0}, Lcom/android/common/o/l;->alq()V

    .line 398
    iget-object v0, p0, Lcom/android/video/n;->aHV:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    .line 399
    iget-object v0, p0, Lcom/android/video/n;->aHV:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 396
    :cond_e
    return-void
.end method

.method protected alr()V
    .registers 3

    .prologue
    .line 389
    invoke-super {p0}, Lcom/android/common/o/l;->alr()V

    .line 390
    iget-object v0, p0, Lcom/android/video/n;->aHV:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    .line 391
    iget-object v0, p0, Lcom/android/video/n;->aHV:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 388
    :cond_d
    return-void
.end method

.method protected aly()V
    .registers 2

    .prologue
    .line 383
    invoke-super {p0}, Lcom/android/common/o/l;->aly()V

    .line 384
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 382
    return-void
.end method

.method protected alz()V
    .registers 5

    .prologue
    .line 376
    invoke-super {p0}, Lcom/android/common/o/l;->alz()V

    .line 377
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/common/camerastate/b;

    sget-object v2, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 378
    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 379
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 377
    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amM([Lcom/android/common/camerastate/b;)V

    .line 375
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/video/n;->adv:Z

    if-eqz v0, :cond_9

    .line 356
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 358
    :cond_9
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->kN()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 359
    const-string/jumbo v0, "VideoFragment"

    const-string/jumbo v1, "Grid effect anim is Running, just consume the dipatch event"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x1

    return v0

    .line 362
    :cond_20
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 651
    iget-object v0, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    invoke-virtual {v0}, Lcom/android/video/d;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 662
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    if-eqz v0, :cond_1b

    .line 663
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->onBackPressed()Z

    move-result v0

    return v0

    .line 653
    :pswitch_15
    return v1

    .line 657
    :pswitch_16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXG(Z)V

    .line 658
    return v1

    .line 665
    :cond_1b
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0

    .line 651
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 823
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_3c

    .line 822
    :goto_8
    return-void

    .line 825
    :sswitch_9
    const-string/jumbo v0, "share the video"

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXy(Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/video/n;->aWZ(ZLcom/android/video/f;)V

    goto :goto_8

    .line 829
    :sswitch_16
    const-string/jumbo v0, "cancel share the video"

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXy(Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    invoke-virtual {v0}, Lcom/android/video/d;->aVI()V

    .line 831
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/n;->aIv:Lcom/android/video/f;

    .line 832
    invoke-direct {p0, v1}, Lcom/android/video/n;->aXu(I)V

    .line 833
    invoke-direct {p0}, Lcom/android/video/n;->aXc()V

    .line 834
    invoke-virtual {p0}, Lcom/android/video/n;->alq()V

    .line 835
    invoke-direct {p0, v1}, Lcom/android/video/n;->aXv(I)V

    goto :goto_8

    .line 838
    :sswitch_31
    const-string/jumbo v0, "start play the video"

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXy(Ljava/lang/String;)V

    .line 839
    invoke-direct {p0}, Lcom/android/video/n;->aXF()V

    goto :goto_8

    .line 823
    nop

    :sswitch_data_3c
    .sparse-switch
        0x7f100046 -> :sswitch_9
        0x7f100047 -> :sswitch_16
        0x7f1001a7 -> :sswitch_31
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 187
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 174
    iget-boolean v0, p0, Lcom/android/video/n;->adu:Z

    if-eqz v0, :cond_9

    return-object v1

    .line 175
    :cond_9
    invoke-virtual {p0}, Lcom/android/video/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/video/n;->aHT:Z

    .line 176
    const-string/jumbo v0, "VideoFragment"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const v0, 0x7f040087

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 178
    if-nez v0, :cond_31

    .line 179
    const-string/jumbo v1, "VideoFragment"

    const-string/jumbo v2, "view == null"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_31
    invoke-direct {p0, v0}, Lcom/android/video/n;->aXi(Landroid/view/View;)V

    .line 182
    new-instance v1, Lcom/android/video/d;

    iget-object v2, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/video/d;-><init>(Lcom/android/common/appService/W;)V

    iput-object v1, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    .line 183
    iget-object v1, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    invoke-virtual {v1, p0}, Lcom/android/video/d;->aWi(Lcom/android/video/e;)V

    .line 184
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/video/n;->adu:Z

    if-eqz v0, :cond_8

    .line 284
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroy()V

    .line 285
    return-void

    .line 287
    :cond_8
    invoke-direct {p0}, Lcom/android/video/n;->aXr()V

    .line 288
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroy()V

    .line 282
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/video/n;->adu:Z

    if-eqz v0, :cond_8

    .line 266
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 267
    return-void

    .line 269
    :cond_8
    const-string/jumbo v0, "VideoFragment"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lcom/android/video/n;->aXH()V

    .line 271
    invoke-direct {p0}, Lcom/android/video/n;->aXI()V

    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXG(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/video/n;->aIz:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->EA()V

    .line 274
    invoke-virtual {p0}, Lcom/android/video/n;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afm:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_2b

    .line 275
    invoke-virtual {p0}, Lcom/android/video/n;->alq()V

    .line 277
    :cond_2b
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->kP()V

    .line 278
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 264
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 192
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 193
    iget-boolean v0, p0, Lcom/android/video/n;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 195
    :cond_8
    const-string/jumbo v0, "VideoFragment"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/android/video/n;->aIx:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/ZtemtShutterButton;->xa(Lcom/android/common/ui/u;)V

    .line 197
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/video/n;->aHS:Z

    .line 199
    invoke-direct {p0}, Lcom/android/video/n;->aXp()V

    .line 200
    invoke-direct {p0}, Lcom/android/video/n;->aXf()V

    .line 201
    iget-object v0, p0, Lcom/android/video/n;->aHX:Lcom/android/common/appService/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->kM(Z)V

    .line 202
    invoke-direct {p0}, Lcom/android/video/n;->aXo()V

    .line 203
    const-string/jumbo v0, "pref_camera_video_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/android/video/n;->alx(Ljava/lang/String;)Lcom/android/common/setting/IconListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/n;->aIa:Lcom/android/common/setting/ListPreference;

    .line 204
    invoke-direct {p0}, Lcom/android/video/n;->aXz()V

    .line 206
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rX()Lcom/android/common/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/d;->aoe(I)V

    .line 207
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rX()Lcom/android/common/d;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/d;->aoe(I)V

    .line 191
    return-void
.end method

.method public xf()V
    .registers 3

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_1e

    .line 606
    iget-object v0, p0, Lcom/android/video/n;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    .line 605
    if-nez v0, :cond_1e

    .line 607
    iget-boolean v0, p0, Lcom/android/video/n;->adv:Z

    .line 605
    if-nez v0, :cond_1e

    .line 608
    invoke-direct {p0}, Lcom/android/video/n;->aXm()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 609
    invoke-virtual {p0}, Lcom/android/video/n;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_1f

    .line 611
    :cond_1e
    return-void

    .line 610
    :cond_1f
    invoke-virtual {p0}, Lcom/android/video/n;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_1e

    .line 613
    iget-boolean v0, p0, Lcom/android/video/n;->aHS:Z

    if-nez v0, :cond_2c

    return-void

    .line 614
    :cond_2c
    iget-object v0, p0, Lcom/android/video/n;->aIA:Lcom/android/video/o;

    if-eqz v0, :cond_42

    .line 615
    iget-object v0, p0, Lcom/android/video/n;->aIA:Lcom/android/video/o;

    invoke-virtual {v0}, Lcom/android/video/o;->isAlive()Z

    move-result v0

    .line 614
    if-eqz v0, :cond_42

    .line 616
    const-string/jumbo v0, "VideoFragment"

    const-string/jumbo v1, "video is being processed"

    invoke-static {v0, v1}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return-void

    .line 619
    :cond_42
    invoke-direct {p0}, Lcom/android/video/n;->aWY()V

    .line 620
    iget-object v0, p0, Lcom/android/video/n;->aIw:Lcom/android/video/d;

    invoke-virtual {v0}, Lcom/android/video/d;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    .line 604
    :goto_4e
    :pswitch_4e
    return-void

    .line 622
    :pswitch_4f
    invoke-direct {p0}, Lcom/android/video/n;->start()V

    goto :goto_4e

    .line 629
    :pswitch_53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/video/n;->aXG(Z)V

    .line 630
    invoke-virtual {p0}, Lcom/android/video/n;->aWV()V

    goto :goto_4e

    .line 620
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_53
        :pswitch_4e
        :pswitch_53
    .end packed-switch
.end method

.method public xg(Z)V
    .registers 3

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/android/video/n;->all()Lcom/android/common/appService/W;

    move-result-object v0

    if-eqz v0, :cond_7

    return-void

    .line 641
    :cond_7
    invoke-virtual {p0}, Lcom/android/video/n;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->pL(Z)V

    .line 639
    return-void
.end method

.method public xh()V
    .registers 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/android/video/n;->xf()V

    .line 645
    return-void
.end method
