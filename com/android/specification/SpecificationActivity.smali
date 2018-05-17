.class public Lcom/android/specification/SpecificationActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final synthetic aYZ:[I


# instance fields
.field private aYX:Landroid/content/BroadcastReceiver;

.field private aYY:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/specification/SpecificationActivity;->aYY:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/specification/SpecificationActivity;->aYX:Landroid/content/BroadcastReceiver;

    .line 16
    return-void
.end method

.method private bpM(I)Landroid/app/Fragment;
    .registers 5

    .prologue
    .line 50
    const-string/jumbo v0, "SpecificationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFragmentByType type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p1}, Lcom/android/common/appService/CameraMember;->md(I)Lcom/android/common/appService/CameraMember;

    move-result-object v1

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-static {}, Lcom/android/specification/SpecificationActivity;->bpQ()[I

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_64

    .line 84
    :goto_2c
    return-object v0

    .line 55
    :pswitch_2d
    new-instance v0, Lcom/android/specification/e;

    invoke-direct {v0}, Lcom/android/specification/e;-><init>()V

    goto :goto_2c

    .line 58
    :pswitch_33
    new-instance v0, Lcom/android/specification/h;

    invoke-direct {v0}, Lcom/android/specification/h;-><init>()V

    goto :goto_2c

    .line 61
    :pswitch_39
    new-instance v0, Lcom/android/specification/d;

    invoke-direct {v0}, Lcom/android/specification/d;-><init>()V

    goto :goto_2c

    .line 64
    :pswitch_3f
    new-instance v0, Lcom/android/specification/b;

    invoke-direct {v0}, Lcom/android/specification/b;-><init>()V

    goto :goto_2c

    .line 67
    :pswitch_45
    new-instance v0, Lcom/android/specification/g;

    invoke-direct {v0}, Lcom/android/specification/g;-><init>()V

    goto :goto_2c

    .line 70
    :pswitch_4b
    new-instance v0, Lcom/android/specification/a;

    invoke-direct {v0}, Lcom/android/specification/a;-><init>()V

    goto :goto_2c

    .line 73
    :pswitch_51
    new-instance v0, Lcom/android/specification/f;

    invoke-direct {v0}, Lcom/android/specification/f;-><init>()V

    goto :goto_2c

    .line 76
    :pswitch_57
    new-instance v0, Lcom/android/specification/i;

    invoke-direct {v0}, Lcom/android/specification/i;-><init>()V

    goto :goto_2c

    .line 79
    :pswitch_5d
    new-instance v0, Lcom/android/specification/c;

    invoke-direct {v0}, Lcom/android/specification/c;-><init>()V

    goto :goto_2c

    .line 53
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_45
        :pswitch_2d
        :pswitch_33
        :pswitch_51
        :pswitch_39
        :pswitch_3f
        :pswitch_57
        :pswitch_5d
    .end packed-switch
.end method

.method private bpN()V
    .registers 3

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/specification/SpecificationActivity;->aYY:Z

    if-eqz v0, :cond_5

    .line 92
    return-void

    .line 94
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v1, Lcom/android/specification/j;

    invoke-direct {v1, p0}, Lcom/android/specification/j;-><init>(Lcom/android/specification/SpecificationActivity;)V

    iput-object v1, p0, Lcom/android/specification/SpecificationActivity;->aYX:Landroid/content/BroadcastReceiver;

    .line 112
    iget-object v1, p0, Lcom/android/specification/SpecificationActivity;->aYX:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/specification/SpecificationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/specification/SpecificationActivity;->aYY:Z

    .line 90
    return-void
.end method

.method private bpO()V
    .registers 5

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/specification/SpecificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "Specification"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/android/specification/SpecificationActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 39
    invoke-direct {p0, v0}, Lcom/android/specification/SpecificationActivity;->bpM(I)Landroid/app/Fragment;

    move-result-object v2

    .line 40
    if-nez v2, :cond_38

    .line 41
    const-string/jumbo v1, "SpecificationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fragment is null, type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/specification/SpecificationActivity;->finish()V

    .line 43
    return-void

    .line 45
    :cond_38
    const v0, 0x7f10017f

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 46
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 35
    return-void
.end method

.method private bpP()V
    .registers 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/specification/SpecificationActivity;->aYY:Z

    if-eqz v0, :cond_f

    .line 118
    iget-object v0, p0, Lcom/android/specification/SpecificationActivity;->aYX:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/specification/SpecificationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/specification/SpecificationActivity;->aYX:Landroid/content/BroadcastReceiver;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/specification/SpecificationActivity;->aYY:Z

    .line 116
    :cond_f
    return-void
.end method

.method private static synthetic bpQ()[I
    .registers 3

    sget-object v0, Lcom/android/specification/SpecificationActivity;->aYZ:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/specification/SpecificationActivity;->aYZ:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/common/appService/CameraMember;->values()[Lcom/android/common/appService/CameraMember;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/common/appService/CameraMember;->jf:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_18} :catch_1f7

    :goto_18
    :try_start_18
    sget-object v1, Lcom/android/common/appService/CameraMember;->jg:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_22} :catch_1f4

    :goto_22
    :try_start_22
    sget-object v1, Lcom/android/common/appService/CameraMember;->jh:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_1f1

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/android/common/appService/CameraMember;->ji:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_35} :catch_1ee

    :goto_35
    :try_start_35
    sget-object v1, Lcom/android/common/appService/CameraMember;->jj:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_3f} :catch_1eb

    :goto_3f
    :try_start_3f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_48} :catch_1e8

    :goto_48
    :try_start_48
    sget-object v1, Lcom/android/common/appService/CameraMember;->jl:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_52} :catch_1e5

    :goto_52
    :try_start_52
    sget-object v1, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5b} :catch_1e2

    :goto_5b
    :try_start_5b
    sget-object v1, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_65} :catch_1df

    :goto_65
    :try_start_65
    sget-object v1, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_1dc

    :goto_6f
    :try_start_6f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jp:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_1d9

    :goto_79
    :try_start_79
    sget-object v1, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_1d6

    :goto_83
    :try_start_83
    sget-object v1, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8c} :catch_1d3

    :goto_8c
    :try_start_8c
    sget-object v1, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_96} :catch_1d0

    :goto_96
    :try_start_96
    sget-object v1, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a0} :catch_1cd

    :goto_a0
    :try_start_a0
    sget-object v1, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_aa} :catch_1ca

    :goto_aa
    :try_start_aa
    sget-object v1, Lcom/android/common/appService/CameraMember;->jv:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b4} :catch_1c7

    :goto_b4
    :try_start_b4
    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_be} :catch_1c4

    :goto_be
    :try_start_be
    sget-object v1, Lcom/android/common/appService/CameraMember;->jx:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_be .. :try_end_c8} :catch_1c1

    :goto_c8
    :try_start_c8
    sget-object v1, Lcom/android/common/appService/CameraMember;->jy:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c8 .. :try_end_d2} :catch_1be

    :goto_d2
    :try_start_d2
    sget-object v1, Lcom/android/common/appService/CameraMember;->jz:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_dc} :catch_1bb

    :goto_dc
    :try_start_dc
    sget-object v1, Lcom/android/common/appService/CameraMember;->jA:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_dc .. :try_end_e6} :catch_1b8

    :goto_e6
    :try_start_e6
    sget-object v1, Lcom/android/common/appService/CameraMember;->jB:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e6 .. :try_end_f0} :catch_1b5

    :goto_f0
    :try_start_f0
    sget-object v1, Lcom/android/common/appService/CameraMember;->jC:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fa} :catch_1b2

    :goto_fa
    :try_start_fa
    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_104
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fa .. :try_end_104} :catch_1af

    :goto_104
    :try_start_104
    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_10d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_104 .. :try_end_10d} :catch_1ac

    :goto_10d
    :try_start_10d
    sget-object v1, Lcom/android/common/appService/CameraMember;->jF:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_116
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_116} :catch_1a9

    :goto_116
    :try_start_116
    sget-object v1, Lcom/android/common/appService/CameraMember;->jG:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_120
    .catch Ljava/lang/NoSuchFieldError; {:try_start_116 .. :try_end_120} :catch_1a6

    :goto_120
    :try_start_120
    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_120 .. :try_end_129} :catch_1a4

    :goto_129
    :try_start_129
    sget-object v1, Lcom/android/common/appService/CameraMember;->jI:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_1a2

    :goto_133
    :try_start_133
    sget-object v1, Lcom/android/common/appService/CameraMember;->jJ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_133 .. :try_end_13d} :catch_1a0

    :goto_13d
    :try_start_13d
    sget-object v1, Lcom/android/common/appService/CameraMember;->jK:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_147
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13d .. :try_end_147} :catch_19e

    :goto_147
    :try_start_147
    sget-object v1, Lcom/android/common/appService/CameraMember;->jL:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_151
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_151} :catch_19c

    :goto_151
    :try_start_151
    sget-object v1, Lcom/android/common/appService/CameraMember;->jM:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_15b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_151 .. :try_end_15b} :catch_19a

    :goto_15b
    :try_start_15b
    sget-object v1, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15b .. :try_end_165} :catch_198

    :goto_165
    :try_start_165
    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_16f} :catch_196

    :goto_16f
    :try_start_16f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jP:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_179
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16f .. :try_end_179} :catch_194

    :goto_179
    :try_start_179
    sget-object v1, Lcom/android/common/appService/CameraMember;->jQ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_183
    .catch Ljava/lang/NoSuchFieldError; {:try_start_179 .. :try_end_183} :catch_192

    :goto_183
    :try_start_183
    sget-object v1, Lcom/android/common/appService/CameraMember;->jR:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_18d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_183 .. :try_end_18d} :catch_190

    :goto_18d
    sput-object v0, Lcom/android/specification/SpecificationActivity;->aYZ:[I

    return-object v0

    :catch_190
    move-exception v1

    goto :goto_18d

    :catch_192
    move-exception v1

    goto :goto_183

    :catch_194
    move-exception v1

    goto :goto_179

    :catch_196
    move-exception v1

    goto :goto_16f

    :catch_198
    move-exception v1

    goto :goto_165

    :catch_19a
    move-exception v1

    goto :goto_15b

    :catch_19c
    move-exception v1

    goto :goto_151

    :catch_19e
    move-exception v1

    goto :goto_147

    :catch_1a0
    move-exception v1

    goto :goto_13d

    :catch_1a2
    move-exception v1

    goto :goto_133

    :catch_1a4
    move-exception v1

    goto :goto_129

    :catch_1a6
    move-exception v1

    goto/16 :goto_120

    :catch_1a9
    move-exception v1

    goto/16 :goto_116

    :catch_1ac
    move-exception v1

    goto/16 :goto_10d

    :catch_1af
    move-exception v1

    goto/16 :goto_104

    :catch_1b2
    move-exception v1

    goto/16 :goto_fa

    :catch_1b5
    move-exception v1

    goto/16 :goto_f0

    :catch_1b8
    move-exception v1

    goto/16 :goto_e6

    :catch_1bb
    move-exception v1

    goto/16 :goto_dc

    :catch_1be
    move-exception v1

    goto/16 :goto_d2

    :catch_1c1
    move-exception v1

    goto/16 :goto_c8

    :catch_1c4
    move-exception v1

    goto/16 :goto_be

    :catch_1c7
    move-exception v1

    goto/16 :goto_b4

    :catch_1ca
    move-exception v1

    goto/16 :goto_aa

    :catch_1cd
    move-exception v1

    goto/16 :goto_a0

    :catch_1d0
    move-exception v1

    goto/16 :goto_96

    :catch_1d3
    move-exception v1

    goto/16 :goto_8c

    :catch_1d6
    move-exception v1

    goto/16 :goto_83

    :catch_1d9
    move-exception v1

    goto/16 :goto_79

    :catch_1dc
    move-exception v1

    goto/16 :goto_6f

    :catch_1df
    move-exception v1

    goto/16 :goto_65

    :catch_1e2
    move-exception v1

    goto/16 :goto_5b

    :catch_1e5
    move-exception v1

    goto/16 :goto_52

    :catch_1e8
    move-exception v1

    goto/16 :goto_48

    :catch_1eb
    move-exception v1

    goto/16 :goto_3f

    :catch_1ee
    move-exception v1

    goto/16 :goto_35

    :catch_1f1
    move-exception v1

    goto/16 :goto_2b

    :catch_1f4
    move-exception v1

    goto/16 :goto_22

    :catch_1f7
    move-exception v1

    goto/16 :goto_18
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/android/specification/SpecificationActivity;->setContentView(I)V

    .line 23
    invoke-direct {p0}, Lcom/android/specification/SpecificationActivity;->bpO()V

    .line 24
    const-string/jumbo v0, "SpecificationActivity"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lcom/android/specification/SpecificationActivity;->bpN()V

    .line 20
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 30
    const-string/jumbo v0, "SpecificationActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/android/specification/SpecificationActivity;->bpP()V

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 29
    return-void
.end method
