.class Lcn/nubia/bigAperture/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/bigAperture/BigApertureProcess;


# instance fields
.field private bnR:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcn/nubia/bigAperture/k;->bnR:Landroid/os/IBinder;

    .line 210
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Landroid/net/Uri;IIIIIIIFFFI)Z
    .registers 20

    .prologue
    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 228
    :try_start_8
    const-string/jumbo v1, "cn.nubia.bigAperture.BigApertureProcess"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    if-eqz p2, :cond_5c

    .line 231
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v1, 0x0

    invoke-virtual {p2, v2, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 237
    :goto_1b
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    invoke-virtual {v2, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 245
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 246
    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 247
    move/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object v1, p0, Lcn/nubia/bigAperture/k;->bnR:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 249
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 250
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_51
    .catchall {:try_start_8 .. :try_end_51} :catchall_61

    move-result v1

    if-eqz v1, :cond_69

    const/4 v1, 0x1

    .line 253
    :goto_55
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 256
    return v1

    .line 235
    :cond_5c
    const/4 v1, 0x0

    :try_start_5d
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_1b

    .line 252
    :catchall_61
    move-exception v1

    .line 253
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 252
    throw v1

    .line 250
    :cond_69
    const/4 v1, 0x0

    goto :goto_55
.end method

.method public addTaskObject(Lcn/nubia/bigAperture/BigApertureTask;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 389
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 393
    :try_start_a
    const-string/jumbo v4, "cn.nubia.bigAperture.BigApertureProcess"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 394
    if-eqz p1, :cond_31

    .line 395
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Lcn/nubia/bigAperture/BigApertureTask;->writeToParcel(Landroid/os/Parcel;I)V

    .line 401
    :goto_1a
    iget-object v4, p0, Lcn/nubia/bigAperture/k;->bnR:Landroid/os/IBinder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 402
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 403
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_36

    move-result v4

    if-eqz v4, :cond_3e

    .line 406
    :goto_2a
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 409
    return v0

    .line 399
    :cond_31
    const/4 v4, 0x0

    :try_start_32
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_1a

    .line 405
    :catchall_36
    move-exception v0

    .line 406
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 407
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 405
    throw v0

    :cond_3e
    move v0, v1

    .line 403
    goto :goto_2a
.end method

.method public addTaskWithDualDac(Ljava/lang/String;Landroid/net/Uri;IIIIIIIIIFFFFIIII)Z
    .registers 26

    .prologue
    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 351
    :try_start_8
    const-string/jumbo v1, "cn.nubia.bigAperture.BigApertureProcess"

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    if-eqz p2, :cond_7a

    .line 354
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v1, 0x0

    invoke-virtual {p2, v2, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 360
    :goto_1b
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    invoke-virtual {v2, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 370
    move/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 371
    move/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 372
    move/from16 v0, p15

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 373
    move/from16 v0, p16

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    move/from16 v0, p17

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    move/from16 v0, p18

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    move/from16 v0, p19

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget-object v1, p0, Lcn/nubia/bigAperture/k;->bnR:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 378
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 379
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_6f
    .catchall {:try_start_8 .. :try_end_6f} :catchall_7f

    move-result v1

    if-eqz v1, :cond_87

    const/4 v1, 0x1

    .line 382
    :goto_73
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 385
    return v1

    .line 358
    :cond_7a
    const/4 v1, 0x0

    :try_start_7b
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    goto :goto_1b

    .line 381
    :catchall_7f
    move-exception v1

    .line 382
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 383
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 381
    throw v1

    .line 379
    :cond_87
    const/4 v1, 0x0

    goto :goto_73
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcn/nubia/bigAperture/k;->bnR:Landroid/os/IBinder;

    return-object v0
.end method

.method public getBigApertureTmpDir()Ljava/lang/String;
    .registers 6

    .prologue
    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 331
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 334
    :try_start_8
    const-string/jumbo v0, "cn.nubia.bigAperture.BigApertureProcess"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcn/nubia/bigAperture/k;->bnR:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 336
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 337
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result-object v0

    .line 340
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 343
    return-object v0

    .line 339
    :catchall_23
    move-exception v0

    .line 340
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    throw v0
.end method

.method public lockDepthData(Landroid/net/Uri;Landroid/os/Messenger;)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 264
    :try_start_a
    const-string/jumbo v4, "cn.nubia.bigAperture.BigApertureProcess"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 265
    if-eqz p1, :cond_3b

    .line 266
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 272
    :goto_1a
    if-eqz p2, :cond_48

    .line 273
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    .line 279
    :goto_24
    iget-object v4, p0, Lcn/nubia/bigAperture/k;->bnR:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 280
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 281
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_31
    .catchall {:try_start_a .. :try_end_31} :catchall_40

    move-result v4

    if-eqz v4, :cond_4d

    .line 284
    :goto_34
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 287
    return v0

    .line 270
    :cond_3b
    const/4 v4, 0x0

    :try_start_3c
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_1a

    .line 283
    :catchall_40
    move-exception v0

    .line 284
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 283
    throw v0

    .line 277
    :cond_48
    const/4 v4, 0x0

    :try_start_49
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_40

    goto :goto_24

    :cond_4d
    move v0, v1

    .line 281
    goto :goto_34
.end method

.method public setServiceStoppedAfterTasksDone(Z)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 318
    :try_start_9
    const-string/jumbo v3, "cn.nubia.bigAperture.BigApertureProcess"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :cond_12
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-object v0, p0, Lcn/nubia/bigAperture/k;->bnR:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 321
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_26

    .line 324
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    return-void

    .line 323
    :catchall_26
    move-exception v0

    .line 324
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 323
    throw v0
.end method

.method public unlockDepthData(Landroid/net/Uri;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 295
    :try_start_a
    const-string/jumbo v4, "cn.nubia.bigAperture.BigApertureProcess"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 296
    if-eqz p1, :cond_31

    .line 297
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 303
    :goto_1a
    iget-object v4, p0, Lcn/nubia/bigAperture/k;->bnR:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 304
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 305
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_36

    move-result v4

    if-eqz v4, :cond_3e

    .line 308
    :goto_2a
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 311
    return v0

    .line 301
    :cond_31
    const/4 v4, 0x0

    :try_start_32
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_1a

    .line 307
    :catchall_36
    move-exception v0

    .line 308
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 307
    throw v0

    :cond_3e
    move v0, v1

    .line 305
    goto :goto_2a
.end method
