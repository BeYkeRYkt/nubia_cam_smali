.class public Lcom/android/camera/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/y;


# static fields
.field private static final synthetic aot:[I


# instance fields
.field private aos:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/d;->aos:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/d;->aos:Ljava/util/HashMap;

    .line 56
    return-void
.end method

.method private aAs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4

    .prologue
    .line 98
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 99
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 97
    :cond_b
    return-void
.end method

.method private aAt(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/y;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 161
    invoke-direct {p0, p1}, Lcom/android/camera/d;->aAu(Lcom/android/common/appService/CameraMember;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 162
    return-object v0

    .line 165
    :cond_8
    iget-object v1, p0, Lcom/android/camera/d;->aos:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/common/appService/CameraMember;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 166
    iget-object v0, p0, Lcom/android/camera/d;->aos:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/common/appService/CameraMember;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/y;

    return-object v0

    .line 170
    :cond_21
    invoke-static {}, Lcom/android/camera/d;->aAv()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_f8

    .line 264
    :goto_2e
    iget-object v1, p0, Lcom/android/camera/d;->aos:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/common/appService/CameraMember;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    return-object v0

    .line 172
    :pswitch_38
    new-instance v0, Lcom/android/normal/f;

    invoke-direct {v0}, Lcom/android/normal/f;-><init>()V

    goto :goto_2e

    .line 175
    :pswitch_3e
    new-instance v0, Lcom/android/pretty/l;

    invoke-direct {v0}, Lcom/android/pretty/l;-><init>()V

    goto :goto_2e

    .line 178
    :pswitch_44
    new-instance v0, Lcom/android/funeffect/c;

    invoke-direct {v0}, Lcom/android/funeffect/c;-><init>()V

    goto :goto_2e

    .line 181
    :pswitch_4a
    new-instance v0, Lcom/android/multiexposure/b;

    invoke-direct {v0}, Lcom/android/multiexposure/b;-><init>()V

    goto :goto_2e

    .line 184
    :pswitch_50
    new-instance v0, Lcom/android/lightpainting/a;

    invoke-direct {v0}, Lcom/android/lightpainting/a;-><init>()V

    goto :goto_2e

    .line 187
    :pswitch_56
    new-instance v0, Lcom/android/intervalometer/e;

    invoke-direct {v0}, Lcom/android/intervalometer/e;-><init>()V

    goto :goto_2e

    .line 190
    :pswitch_5c
    new-instance v0, Lcom/android/electronicfno/e;

    invoke-direct {v0}, Lcom/android/electronicfno/e;-><init>()V

    goto :goto_2e

    .line 193
    :pswitch_62
    new-instance v0, Lcom/android/startrack/f;

    invoke-direct {v0}, Lcom/android/startrack/f;-><init>()V

    goto :goto_2e

    .line 196
    :pswitch_68
    new-instance v0, Lcom/android/panorama/l;

    invoke-direct {v0}, Lcom/android/panorama/l;-><init>()V

    goto :goto_2e

    .line 199
    :pswitch_6e
    new-instance v0, Lcom/android/slowshutter/d;

    invoke-direct {v0}, Lcom/android/slowshutter/d;-><init>()V

    goto :goto_2e

    .line 202
    :pswitch_74
    new-instance v0, Lcom/android/demister/a;

    invoke-direct {v0}, Lcom/android/demister/a;-><init>()V

    goto :goto_2e

    .line 205
    :pswitch_7a
    new-instance v0, Lcom/android/objectclear/h;

    invoke-direct {v0}, Lcom/android/objectclear/h;-><init>()V

    goto :goto_2e

    .line 208
    :pswitch_80
    new-instance v0, Lcom/android/trajectory/i;

    invoke-direct {v0}, Lcom/android/trajectory/i;-><init>()V

    goto :goto_2e

    .line 211
    :pswitch_86
    new-instance v0, Lcom/android/videomaker/q;

    invoke-direct {v0}, Lcom/android/videomaker/q;-><init>()V

    goto :goto_2e

    .line 214
    :pswitch_8c
    new-instance v0, Lcom/android/c/f;

    invoke-direct {v0}, Lcom/android/c/f;-><init>()V

    goto :goto_2e

    .line 217
    :pswitch_92
    new-instance v0, Lcom/android/front/c;

    invoke-direct {v0}, Lcom/android/front/c;-><init>()V

    goto :goto_2e

    .line 220
    :pswitch_98
    new-instance v0, Lcom/android/c/a;

    invoke-direct {v0}, Lcom/android/c/a;-><init>()V

    goto :goto_2e

    .line 223
    :pswitch_9e
    new-instance v0, Lcom/android/video/m;

    invoke-direct {v0}, Lcom/android/video/m;-><init>()V

    goto :goto_2e

    .line 226
    :pswitch_a4
    new-instance v0, Lcom/android/video/l;

    invoke-direct {v0}, Lcom/android/video/l;-><init>()V

    goto :goto_2e

    .line 229
    :pswitch_aa
    new-instance v0, Lcom/android/dng/m;

    invoke-direct {v0}, Lcom/android/dng/m;-><init>()V

    goto/16 :goto_2e

    .line 232
    :pswitch_b1
    new-instance v0, Lcom/android/clone/e;

    invoke-direct {v0}, Lcom/android/clone/e;-><init>()V

    goto/16 :goto_2e

    .line 235
    :pswitch_b8
    new-instance v0, Lcom/android/normal/a;

    invoke-direct {v0}, Lcom/android/normal/a;-><init>()V

    goto/16 :goto_2e

    .line 238
    :pswitch_bf
    new-instance v0, Lcom/android/c/e;

    invoke-direct {v0}, Lcom/android/c/e;-><init>()V

    goto/16 :goto_2e

    .line 241
    :pswitch_c6
    new-instance v0, Lcom/android/mono/a;

    invoke-direct {v0}, Lcom/android/mono/a;-><init>()V

    goto/16 :goto_2e

    .line 244
    :pswitch_cd
    new-instance v0, Lcom/android/e/e;

    invoke-direct {v0}, Lcom/android/e/e;-><init>()V

    goto/16 :goto_2e

    .line 247
    :pswitch_d4
    new-instance v0, Lcom/android/dualcameracalibration/c;

    invoke-direct {v0}, Lcom/android/dualcameracalibration/c;-><init>()V

    goto/16 :goto_2e

    .line 250
    :pswitch_db
    new-instance v0, Lcom/android/b/b;

    invoke-direct {v0}, Lcom/android/b/b;-><init>()V

    goto/16 :goto_2e

    .line 253
    :pswitch_e2
    new-instance v0, Lcom/android/triaxial/c;

    invoke-direct {v0}, Lcom/android/triaxial/c;-><init>()V

    goto/16 :goto_2e

    .line 256
    :pswitch_e9
    new-instance v0, Lcom/android/zoomblur/a;

    invoke-direct {v0}, Lcom/android/zoomblur/a;-><init>()V

    goto/16 :goto_2e

    .line 259
    :pswitch_f0
    new-instance v0, Lcom/android/d/a;

    invoke-direct {v0}, Lcom/android/d/a;-><init>()V

    goto/16 :goto_2e

    .line 170
    nop

    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_db
        :pswitch_8c
        :pswitch_b1
        :pswitch_74
        :pswitch_aa
        :pswitch_d4
        :pswitch_5c
        :pswitch_98
        :pswitch_92
        :pswitch_44
        :pswitch_56
        :pswitch_50
        :pswitch_cd
        :pswitch_c6
        :pswitch_4a
        :pswitch_38
        :pswitch_7a
        :pswitch_68
        :pswitch_f0
        :pswitch_3e
        :pswitch_b8
        :pswitch_6e
        :pswitch_62
        :pswitch_bf
        :pswitch_80
        :pswitch_e2
        :pswitch_86
        :pswitch_9e
        :pswitch_a4
        :pswitch_e9
    .end packed-switch
.end method

.method private aAu(Lcom/android/common/appService/CameraMember;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 104
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/android/camera/d;->aAv()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7a

    .line 156
    :pswitch_16
    return v3

    .line 110
    :pswitch_17
    return v3

    .line 112
    :pswitch_18
    invoke-interface {v0}, Lcom/android/common/custom/x;->adP()Z

    move-result v0

    return v0

    .line 114
    :pswitch_1d
    invoke-interface {v0}, Lcom/android/common/custom/x;->acw()Z

    move-result v0

    return v0

    .line 116
    :pswitch_22
    invoke-interface {v0}, Lcom/android/common/custom/x;->adJ()Z

    move-result v0

    return v0

    .line 118
    :pswitch_27
    invoke-interface {v0}, Lcom/android/common/custom/x;->acx()Z

    move-result v0

    return v0

    .line 120
    :pswitch_2c
    invoke-interface {v0}, Lcom/android/common/custom/x;->adI()Z

    move-result v0

    return v0

    .line 122
    :pswitch_31
    invoke-interface {v0}, Lcom/android/common/custom/x;->acv()Z

    move-result v0

    return v0

    .line 124
    :pswitch_36
    invoke-interface {v0}, Lcom/android/common/custom/x;->aei()Z

    move-result v0

    return v0

    .line 126
    :pswitch_3b
    invoke-interface {v0}, Lcom/android/common/custom/x;->aef()Z

    move-result v0

    return v0

    .line 128
    :pswitch_40
    invoke-interface {v0}, Lcom/android/common/custom/x;->aej()Z

    move-result v0

    return v0

    .line 130
    :pswitch_45
    invoke-interface {v0}, Lcom/android/common/custom/x;->adE()Z

    move-result v0

    return v0

    .line 132
    :pswitch_4a
    invoke-interface {v0}, Lcom/android/common/custom/x;->aek()Z

    move-result v0

    return v0

    .line 134
    :pswitch_4f
    invoke-interface {v0}, Lcom/android/common/custom/x;->acz()Z

    move-result v0

    return v0

    .line 136
    :pswitch_54
    invoke-interface {v0}, Lcom/android/common/custom/x;->ael()Z

    move-result v0

    return v0

    .line 138
    :pswitch_59
    return v3

    .line 140
    :pswitch_5a
    invoke-interface {v0}, Lcom/android/common/custom/x;->adi()Z

    move-result v0

    return v0

    .line 142
    :pswitch_5f
    invoke-interface {v0}, Lcom/android/common/custom/x;->acK()Z

    move-result v0

    return v0

    .line 144
    :pswitch_64
    invoke-interface {v0}, Lcom/android/common/custom/x;->acJ()Z

    move-result v0

    return v0

    .line 147
    :pswitch_69
    return v3

    .line 150
    :pswitch_6a
    invoke-interface {v0}, Lcom/android/common/custom/x;->adR()Z

    move-result v0

    return v0

    .line 152
    :pswitch_6f
    invoke-interface {v0}, Lcom/android/common/custom/x;->adT()Z

    move-result v0

    return v0

    .line 154
    :pswitch_74
    invoke-interface {v0}, Lcom/android/common/custom/x;->adU()Z

    move-result v0

    return v0

    .line 105
    nop

    :pswitch_data_7a
    .packed-switch 0x2
        :pswitch_17
        :pswitch_64
        :pswitch_45
        :pswitch_5f
        :pswitch_6a
        :pswitch_31
        :pswitch_17
        :pswitch_17
        :pswitch_1d
        :pswitch_2c
        :pswitch_27
        :pswitch_16
        :pswitch_69
        :pswitch_22
        :pswitch_17
        :pswitch_4a
        :pswitch_3b
        :pswitch_16
        :pswitch_18
        :pswitch_16
        :pswitch_40
        :pswitch_36
        :pswitch_16
        :pswitch_4f
        :pswitch_6f
        :pswitch_54
        :pswitch_59
        :pswitch_5a
        :pswitch_74
    .end packed-switch
.end method

.method private static synthetic aAv()[I
    .registers 3

    sget-object v0, Lcom/android/camera/d;->aot:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/camera/d;->aot:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_1f7

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/common/appService/CameraMember;->jg:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_1f4

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/common/appService/CameraMember;->jh:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_1f1

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/common/appService/CameraMember;->ji:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_1ee

    :goto_33
    :try_start_33
    sget-object v1, Lcom/android/common/appService/CameraMember;->jj:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3c} :catch_1eb

    :goto_3c
    :try_start_3c
    sget-object v1, Lcom/android/common/appService/CameraMember;->jk:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_45} :catch_1e8

    :goto_45
    :try_start_45
    sget-object v1, Lcom/android/common/appService/CameraMember;->jl:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4e} :catch_1e5

    :goto_4e
    :try_start_4e
    sget-object v1, Lcom/android/common/appService/CameraMember;->jm:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_57} :catch_1e2

    :goto_57
    :try_start_57
    sget-object v1, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_61} :catch_1df

    :goto_61
    :try_start_61
    sget-object v1, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_1dc

    :goto_6b
    :try_start_6b
    sget-object v1, Lcom/android/common/appService/CameraMember;->jp:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_1d9

    :goto_75
    :try_start_75
    sget-object v1, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_1d6

    :goto_7f
    :try_start_7f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_1d3

    :goto_89
    :try_start_89
    sget-object v1, Lcom/android/common/appService/CameraMember;->js:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_1d0

    :goto_93
    :try_start_93
    sget-object v1, Lcom/android/common/appService/CameraMember;->jt:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_1cd

    :goto_9d
    :try_start_9d
    sget-object v1, Lcom/android/common/appService/CameraMember;->ju:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_1ca

    :goto_a7
    :try_start_a7
    sget-object v1, Lcom/android/common/appService/CameraMember;->jv:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_1c7

    :goto_b1
    :try_start_b1
    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_1c4

    :goto_bb
    :try_start_bb
    sget-object v1, Lcom/android/common/appService/CameraMember;->jx:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_1c1

    :goto_c5
    :try_start_c5
    sget-object v1, Lcom/android/common/appService/CameraMember;->jy:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_1be

    :goto_cf
    :try_start_cf
    sget-object v1, Lcom/android/common/appService/CameraMember;->jz:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_1bb

    :goto_d9
    :try_start_d9
    sget-object v1, Lcom/android/common/appService/CameraMember;->jA:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_1b8

    :goto_e3
    :try_start_e3
    sget-object v1, Lcom/android/common/appService/CameraMember;->jB:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ed} :catch_1b5

    :goto_ed
    :try_start_ed
    sget-object v1, Lcom/android/common/appService/CameraMember;->jC:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f7} :catch_1b2

    :goto_f7
    :try_start_f7
    sget-object v1, Lcom/android/common/appService/CameraMember;->jD:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_101} :catch_1af

    :goto_101
    :try_start_101
    sget-object v1, Lcom/android/common/appService/CameraMember;->jE:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10b} :catch_1ac

    :goto_10b
    :try_start_10b
    sget-object v1, Lcom/android/common/appService/CameraMember;->jF:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_1a9

    :goto_115
    :try_start_115
    sget-object v1, Lcom/android/common/appService/CameraMember;->jG:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11f} :catch_1a6

    :goto_11f
    :try_start_11f
    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_1a4

    :goto_129
    :try_start_129
    sget-object v1, Lcom/android/common/appService/CameraMember;->jI:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_1a2

    :goto_133
    :try_start_133
    sget-object v1, Lcom/android/common/appService/CameraMember;->jJ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_133 .. :try_end_13d} :catch_1a0

    :goto_13d
    :try_start_13d
    sget-object v1, Lcom/android/common/appService/CameraMember;->jK:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_147
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13d .. :try_end_147} :catch_19e

    :goto_147
    :try_start_147
    sget-object v1, Lcom/android/common/appService/CameraMember;->jL:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_151
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_151} :catch_19c

    :goto_151
    :try_start_151
    sget-object v1, Lcom/android/common/appService/CameraMember;->jM:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_15b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_151 .. :try_end_15b} :catch_19a

    :goto_15b
    :try_start_15b
    sget-object v1, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15b .. :try_end_165} :catch_198

    :goto_165
    :try_start_165
    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

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

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_18d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_183 .. :try_end_18d} :catch_190

    :goto_18d
    sput-object v0, Lcom/android/camera/d;->aot:[I

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

    goto/16 :goto_11f

    :catch_1a9
    move-exception v1

    goto/16 :goto_115

    :catch_1ac
    move-exception v1

    goto/16 :goto_10b

    :catch_1af
    move-exception v1

    goto/16 :goto_101

    :catch_1b2
    move-exception v1

    goto/16 :goto_f7

    :catch_1b5
    move-exception v1

    goto/16 :goto_ed

    :catch_1b8
    move-exception v1

    goto/16 :goto_e3

    :catch_1bb
    move-exception v1

    goto/16 :goto_d9

    :catch_1be
    move-exception v1

    goto/16 :goto_cf

    :catch_1c1
    move-exception v1

    goto/16 :goto_c5

    :catch_1c4
    move-exception v1

    goto/16 :goto_bb

    :catch_1c7
    move-exception v1

    goto/16 :goto_b1

    :catch_1ca
    move-exception v1

    goto/16 :goto_a7

    :catch_1cd
    move-exception v1

    goto/16 :goto_9d

    :catch_1d0
    move-exception v1

    goto/16 :goto_93

    :catch_1d3
    move-exception v1

    goto/16 :goto_89

    :catch_1d6
    move-exception v1

    goto/16 :goto_7f

    :catch_1d9
    move-exception v1

    goto/16 :goto_75

    :catch_1dc
    move-exception v1

    goto/16 :goto_6b

    :catch_1df
    move-exception v1

    goto/16 :goto_61

    :catch_1e2
    move-exception v1

    goto/16 :goto_57

    :catch_1e5
    move-exception v1

    goto/16 :goto_4e

    :catch_1e8
    move-exception v1

    goto/16 :goto_45

    :catch_1eb
    move-exception v1

    goto/16 :goto_3c

    :catch_1ee
    move-exception v1

    goto/16 :goto_33

    :catch_1f1
    move-exception v1

    goto/16 :goto_29

    :catch_1f4
    move-exception v1

    goto/16 :goto_20

    :catch_1f7
    move-exception v1

    goto/16 :goto_17
.end method


# virtual methods
.method public kD()Ljava/util/ArrayList;
    .registers 7

    .prologue
    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-static {}, Lcom/android/common/appService/CameraMember;->values()[Lcom/android/common/appService/CameraMember;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v2

    :goto_b
    if-ge v0, v3, :cond_25

    aget-object v4, v2, v0

    .line 86
    invoke-direct {p0, v4}, Lcom/android/camera/d;->aAu(Lcom/android/common/appService/CameraMember;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 87
    invoke-direct {p0, v4}, Lcom/android/camera/d;->aAt(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/y;

    move-result-object v4

    .line 88
    if-eqz v4, :cond_22

    .line 89
    invoke-interface {v4}, Lcom/android/common/appService/y;->kD()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/camera/d;->aAs(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 85
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 94
    :cond_25
    return-object v1
.end method

.method public kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-direct {p0, p1}, Lcom/android/camera/d;->aAt(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/y;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_c

    .line 281
    invoke-interface {v0, p1}, Lcom/android/common/appService/y;->kE(Lcom/android/common/appService/CameraMember;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 283
    :cond_c
    return-object v1
.end method

.method public lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 62
    const-string/jumbo v0, "MemberConfigGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cameraMember = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p2}, Lcom/android/camera/d;->aAt(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/y;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_26

    .line 65
    invoke-interface {v0, p1, p2}, Lcom/android/common/appService/y;->lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;

    move-result-object v0

    return-object v0

    .line 68
    :cond_26
    return-object v3
.end method

.method public lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p3}, Lcom/android/camera/d;->aAt(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/y;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_c

    .line 75
    invoke-interface {v0, p1, p2, p3}, Lcom/android/common/appService/y;->lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;

    move-result-object v0

    return-object v0

    .line 78
    :cond_c
    return-object v1
.end method

.method public lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-direct {p0, p1}, Lcom/android/camera/d;->aAt(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/y;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_c

    .line 272
    invoke-interface {v0, p1}, Lcom/android/common/appService/y;->lK(Lcom/android/common/appService/CameraMember;)Lcom/android/common/appService/CameraMember;

    move-result-object v0

    return-object v0

    .line 274
    :cond_c
    return-object v1
.end method
