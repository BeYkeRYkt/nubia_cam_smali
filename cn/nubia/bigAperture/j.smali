.class public abstract Lcn/nubia/bigAperture/j;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/bigAperture/BigApertureProcess;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "cn.nubia.bigAperture.BigApertureProcess"

    invoke-virtual {p0, p0, v0}, Lcn/nubia/bigAperture/j;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static bKm(Landroid/os/IBinder;)Lcn/nubia/bigAperture/BigApertureProcess;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 23
    if-nez p0, :cond_4

    .line 24
    return-object v0

    .line 26
    :cond_4
    const-string/jumbo v0, "cn.nubia.bigAperture.BigApertureProcess"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcn/nubia/bigAperture/BigApertureProcess;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcn/nubia/bigAperture/BigApertureProcess;

    return-object v0

    .line 30
    :cond_14
    new-instance v0, Lcn/nubia/bigAperture/k;

    invoke-direct {v0, p0}, Lcn/nubia/bigAperture/k;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_1bc

    .line 205
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 42
    :sswitch_8
    const-string/jumbo v1, "cn.nubia.bigAperture.BigApertureProcess"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    return v1

    .line 47
    :sswitch_12
    const-string/jumbo v1, "cn.nubia.bigAperture.BigApertureProcess"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6e

    .line 52
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object v3, v1

    .line 58
    :goto_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 64
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v11

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v12

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v1, p0

    .line 79
    invoke-virtual/range {v1 .. v14}, Lcn/nubia/bigAperture/j;->addTask(Ljava/lang/String;Landroid/net/Uri;IIIIIIIFFFI)Z

    move-result v1

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v1, :cond_70

    const/4 v1, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v1, 0x1

    return v1

    .line 55
    :cond_6e
    const/4 v3, 0x0

    goto :goto_2f

    .line 81
    :cond_70
    const/4 v1, 0x0

    goto :goto_67

    .line 86
    :sswitch_72
    const-string/jumbo v1, "cn.nubia.bigAperture.BigApertureProcess"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_ae

    .line 89
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object v2, v1

    .line 95
    :goto_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b1

    .line 96
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    .line 101
    :goto_9b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v1}, Lcn/nubia/bigAperture/j;->lockDepthData(Landroid/net/Uri;Landroid/os/Messenger;)Z

    move-result v1

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    if-eqz v1, :cond_b3

    const/4 v1, 0x1

    :goto_a7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    const/4 v1, 0x1

    return v1

    .line 92
    :cond_ae
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_8b

    .line 99
    :cond_b1
    const/4 v1, 0x0

    goto :goto_9b

    .line 103
    :cond_b3
    const/4 v1, 0x0

    goto :goto_a7

    .line 108
    :sswitch_b5
    const-string/jumbo v1, "cn.nubia.bigAperture.BigApertureProcess"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e0

    .line 111
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 116
    :goto_cd
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcn/nubia/bigAperture/j;->unlockDepthData(Landroid/net/Uri;)Z

    move-result v1

    .line 117
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v1, :cond_e2

    const/4 v1, 0x1

    :goto_d9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/4 v1, 0x1

    return v1

    .line 114
    :cond_e0
    const/4 v1, 0x0

    goto :goto_cd

    .line 118
    :cond_e2
    const/4 v1, 0x0

    goto :goto_d9

    .line 123
    :sswitch_e4
    const-string/jumbo v1, "cn.nubia.bigAperture.BigApertureProcess"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_fd

    const/4 v1, 0x1

    .line 126
    :goto_f3
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcn/nubia/bigAperture/j;->setServiceStoppedAfterTasksDone(Z)V

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    const/4 v1, 0x1

    return v1

    .line 125
    :cond_fd
    const/4 v1, 0x0

    goto :goto_f3

    .line 132
    :sswitch_ff
    const-string/jumbo v1, "cn.nubia.bigAperture.BigApertureProcess"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/bigAperture/j;->getBigApertureTmpDir()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    const/4 v1, 0x1

    return v1

    .line 140
    :sswitch_115
    const-string/jumbo v1, "cn.nubia.bigAperture.BigApertureProcess"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_189

    .line 145
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    move-object v3, v1

    .line 151
    :goto_132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v14

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v15

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v16

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object/from16 v1, p0

    .line 184
    invoke-virtual/range {v1 .. v20}, Lcn/nubia/bigAperture/j;->addTaskWithDualDac(Ljava/lang/String;Landroid/net/Uri;IIIIIIIIIFFFFIIII)Z

    move-result v1

    .line 185
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v1, :cond_18b

    const/4 v1, 0x1

    :goto_182
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v1, 0x1

    return v1

    .line 148
    :cond_189
    const/4 v3, 0x0

    goto :goto_132

    .line 186
    :cond_18b
    const/4 v1, 0x0

    goto :goto_182

    .line 191
    :sswitch_18d
    const-string/jumbo v1, "cn.nubia.bigAperture.BigApertureProcess"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1b8

    .line 194
    sget-object v1, Lcn/nubia/bigAperture/BigApertureTask;->bmZ:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/bigAperture/BigApertureTask;

    .line 199
    :goto_1a5
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcn/nubia/bigAperture/j;->addTaskObject(Lcn/nubia/bigAperture/BigApertureTask;)Z

    move-result v1

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v1, :cond_1ba

    const/4 v1, 0x1

    :goto_1b1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v1, 0x1

    return v1

    .line 197
    :cond_1b8
    const/4 v1, 0x0

    goto :goto_1a5

    .line 201
    :cond_1ba
    const/4 v1, 0x0

    goto :goto_1b1

    .line 38
    :sswitch_data_1bc
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_72
        0x3 -> :sswitch_b5
        0x4 -> :sswitch_e4
        0x5 -> :sswitch_ff
        0x6 -> :sswitch_115
        0x7 -> :sswitch_18d
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
