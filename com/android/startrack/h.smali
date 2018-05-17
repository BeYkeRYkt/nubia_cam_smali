.class public Lcom/android/startrack/h;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/u;


# static fields
.field private static final synthetic aRA:[I


# instance fields
.field public aRn:Lcom/android/startrack/j;

.field public aRo:Ljava/lang/String;

.field public aRp:Ljava/lang/String;

.field public aRq:Lcom/android/startrack/b;

.field private aRr:Z

.field private aRs:Lcom/android/startrack/k;

.field private aRt:Lcom/android/common/appService/StarFuncState;

.field public aRu:Ljava/lang/String;

.field public aRv:Ljava/lang/String;

.field public aRw:Landroid/net/Uri;

.field private aRx:Lcom/android/common/f/b;

.field private aRy:Lcom/android/startrack/a;

.field private aRz:Lcom/android/common/appService/z;

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/android/startrack/h;->aRq:Lcom/android/startrack/b;

    .line 66
    new-instance v0, Lcom/android/startrack/j;

    invoke-direct {v0, p0}, Lcom/android/startrack/j;-><init>(Lcom/android/startrack/h;)V

    iput-object v0, p0, Lcom/android/startrack/h;->aRn:Lcom/android/startrack/j;

    .line 67
    iput-object v1, p0, Lcom/android/startrack/h;->aRw:Landroid/net/Uri;

    .line 68
    iput-object v1, p0, Lcom/android/startrack/h;->aRp:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/startrack/h;->aRo:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/android/startrack/h;->aRv:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/android/startrack/h;->aRu:Ljava/lang/String;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/startrack/h;->mStartTime:J

    .line 77
    sget-object v0, Lcom/android/common/appService/StarFuncState;->kN:Lcom/android/common/appService/StarFuncState;

    iput-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/startrack/h;->aRr:Z

    .line 98
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 65
    iput-object v1, p0, Lcom/android/startrack/h;->aRq:Lcom/android/startrack/b;

    .line 66
    new-instance v0, Lcom/android/startrack/j;

    invoke-direct {v0, p0}, Lcom/android/startrack/j;-><init>(Lcom/android/startrack/h;)V

    iput-object v0, p0, Lcom/android/startrack/h;->aRn:Lcom/android/startrack/j;

    .line 67
    iput-object v1, p0, Lcom/android/startrack/h;->aRw:Landroid/net/Uri;

    .line 68
    iput-object v1, p0, Lcom/android/startrack/h;->aRp:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/startrack/h;->aRo:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/android/startrack/h;->aRv:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/android/startrack/h;->aRu:Ljava/lang/String;

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/startrack/h;->mStartTime:J

    .line 77
    sget-object v0, Lcom/android/common/appService/StarFuncState;->kN:Lcom/android/common/appService/StarFuncState;

    iput-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/startrack/h;->aRr:Z

    .line 94
    return-void
.end method

.method public static bhO()Lcom/android/startrack/h;
    .registers 2

    .prologue
    .line 240
    new-instance v0, Lcom/android/startrack/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/startrack/h;-><init>(I)V

    return-object v0
.end method

.method private static bhS(Landroid/net/Uri;Landroid/content/ContentResolver;)I
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 314
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "orientation"

    aput-object v0, v2, v7

    .line 316
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    :try_start_f
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_f .. :try_end_12} :catch_27
    .catchall {:try_start_f .. :try_end_12} :catchall_4e

    move-result-object v1

    .line 317
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 318
    const-string/jumbo v0, "orientation"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 319
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_13 .. :try_end_20} :catch_58
    .catchall {:try_start_13 .. :try_end_20} :catchall_56

    move-result v0

    .line 323
    if-eqz v1, :cond_26

    .line 324
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_26
    :goto_26
    return v0

    .line 320
    :catch_27
    move-exception v0

    move-object v1, v6

    .line 321
    :goto_29
    :try_start_29
    const-string/jumbo v2, "StarTrackFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getOrientation fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDiskIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_56

    .line 323
    if-eqz v1, :cond_4c

    .line 324
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4c
    move v0, v7

    goto :goto_26

    .line 322
    :catchall_4e
    move-exception v0

    move-object v1, v6

    .line 323
    :goto_50
    if-eqz v1, :cond_55

    .line 324
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_55
    throw v0

    :catchall_56
    move-exception v0

    goto :goto_50

    .line 320
    :catch_58
    move-exception v0

    goto :goto_29
.end method

.method private bhT()V
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/startrack/h;->aRx:Lcom/android/common/f/b;

    if-nez v0, :cond_1f

    .line 144
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agc:Z

    .line 143
    if-eqz v0, :cond_1f

    .line 145
    :cond_c
    new-instance v1, Lcom/android/common/f/b;

    invoke-virtual {p0}, Lcom/android/startrack/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-direct {v1, v0}, Lcom/android/common/f/b;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v1, p0, Lcom/android/startrack/h;->aRx:Lcom/android/common/f/b;

    .line 146
    iget-object v0, p0, Lcom/android/startrack/h;->aRx:Lcom/android/common/f/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/f/b;->aan(I)V

    .line 142
    :cond_1f
    return-void
.end method

.method private bhU(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 206
    new-instance v0, Lcom/android/startrack/a;

    iget-object v1, p0, Lcom/android/startrack/h;->aRn:Lcom/android/startrack/j;

    iget-object v2, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/startrack/a;-><init>(Lcom/android/startrack/h;Landroid/os/Handler;Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    .line 207
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {v0, p1}, Lcom/android/startrack/a;->bha(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-direct {p0}, Lcom/android/startrack/h;->bhV()Z

    move-result v1

    iget-object v2, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1, v2}, Lcom/android/startrack/a;->bhl(ZLcom/android/common/appService/W;)V

    .line 209
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    new-instance v1, Lcom/android/startrack/n;

    invoke-direct {v1, p0}, Lcom/android/startrack/n;-><init>(Lcom/android/startrack/h;)V

    invoke-virtual {v0, v1}, Lcom/android/startrack/a;->bhf(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {v0}, Lcom/android/startrack/a;->bhb()[Lcom/android/common/ui/h;

    move-result-object v0

    iput-object v0, p0, Lcom/android/startrack/h;->adw:[Lcom/android/common/ui/h;

    .line 205
    return-void
.end method

.method private bhV()Z
    .registers 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private bhW()V
    .registers 3

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 493
    return-void
.end method

.method private bhX()V
    .registers 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 471
    return-void
.end method

.method private bhY()V
    .registers 3

    .prologue
    .line 497
    invoke-virtual {p0}, Lcom/android/startrack/h;->alr()V

    .line 498
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {p0}, Lcom/android/startrack/h;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/startrack/a;->bhm(Landroid/view/View;)V

    .line 499
    invoke-direct {p0}, Lcom/android/startrack/h;->bid()V

    .line 496
    return-void
.end method

.method private bhZ()V
    .registers 3

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/android/startrack/h;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_9

    .line 591
    return-void

    .line 593
    :cond_9
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {p0}, Lcom/android/startrack/h;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/startrack/a;->bho(Landroid/view/View;)V

    .line 594
    invoke-virtual {p0}, Lcom/android/startrack/h;->aly()V

    .line 595
    invoke-virtual {p0}, Lcom/android/startrack/h;->alq()V

    .line 596
    invoke-virtual {p0}, Lcom/android/startrack/h;->big()V

    .line 589
    return-void
.end method

.method private bia()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    .line 135
    if-nez v0, :cond_9

    .line 136
    return-void

    .line 138
    :cond_9
    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/startrack/h;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qq()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 139
    :cond_19
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/m/c;->ahq()V

    .line 133
    :cond_22
    return-void
.end method

.method private bib()V
    .registers 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    sget-object v1, Lcom/android/common/appService/StarFuncState;->kN:Lcom/android/common/appService/StarFuncState;

    if-eq v0, v1, :cond_7

    .line 477
    return-void

    .line 479
    :cond_7
    sget-object v0, Lcom/android/common/appService/StarFuncState;->kL:Lcom/android/common/appService/StarFuncState;

    iput-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    .line 480
    invoke-direct {p0}, Lcom/android/startrack/h;->bhY()V

    .line 483
    invoke-direct {p0}, Lcom/android/startrack/h;->bhW()V

    .line 484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/startrack/h;->aRu:Ljava/lang/String;

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    invoke-static {v1}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/startrack/h;->aRu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/startrack/h;->aRo:Ljava/lang/String;

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/startrack/h;->aRo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_StarTrackDIR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/startrack/h;->aRp:Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/common/appService/W;->lr:Z

    .line 488
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    new-instance v1, Lcom/android/startrack/g;

    iget-object v2, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2, p0}, Lcom/android/startrack/g;-><init>(Lcom/android/common/appService/W;Lcom/android/startrack/h;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sm(Landroid/hardware/Camera$PictureCallback;)V

    .line 489
    new-instance v0, Lcom/android/startrack/b;

    invoke-virtual {p0}, Lcom/android/startrack/h;->all()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/startrack/b;-><init>(Lcom/android/common/appService/W;Lcom/android/startrack/h;)V

    iput-object v0, p0, Lcom/android/startrack/h;->aRq:Lcom/android/startrack/b;

    .line 490
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 475
    return-void
.end method

.method private bic()V
    .registers 7

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    .line 422
    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    .line 421
    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 423
    const-string/jumbo v0, "StarTrackFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can\'t start countdown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 424
    iget-object v2, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 423
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    return-void

    .line 427
    :cond_33
    iget-object v0, p0, Lcom/android/startrack/h;->adx:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amK(Lcom/android/common/camerastate/FunctionState;)V

    .line 428
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 429
    new-instance v0, Lcom/android/startrack/k;

    const-wide/16 v2, 0xdac

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/startrack/k;-><init>(Lcom/android/startrack/h;JJ)V

    iput-object v0, p0, Lcom/android/startrack/h;->aRs:Lcom/android/startrack/k;

    .line 430
    iget-object v0, p0, Lcom/android/startrack/h;->aRs:Lcom/android/startrack/k;

    invoke-virtual {v0}, Lcom/android/startrack/k;->start()Landroid/os/CountDownTimer;

    .line 431
    sget-object v0, Lcom/android/common/appService/StarFuncState;->kM:Lcom/android/common/appService/StarFuncState;

    iput-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    .line 432
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {v0}, Lcom/android/startrack/a;->bhn()V

    .line 433
    invoke-virtual {p0}, Lcom/android/startrack/h;->alz()V

    .line 420
    return-void
.end method

.method private bid()V
    .registers 5

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/startrack/h;->aRn:Lcom/android/startrack/j;

    const-wide/16 v2, 0x3e8

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/startrack/j;->sendEmptyMessageDelayed(IJ)Z

    .line 226
    iget-wide v0, p0, Lcom/android/startrack/h;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/startrack/h;->mStartTime:J

    .line 229
    :cond_16
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    iget-wide v2, p0, Lcom/android/startrack/h;->mStartTime:J

    invoke-virtual {v0, v2, v3}, Lcom/android/startrack/a;->bhq(J)V

    .line 224
    return-void
.end method

.method private bie()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 448
    iget-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    sget-object v1, Lcom/android/common/appService/StarFuncState;->kL:Lcom/android/common/appService/StarFuncState;

    if-eq v0, v1, :cond_9

    .line 449
    return-void

    .line 451
    :cond_9
    invoke-virtual {p0}, Lcom/android/startrack/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "startrack_1"

    const-string/jumbo v2, "StarTrackFragment"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->pM(Z)V

    .line 455
    sget-object v0, Lcom/android/common/appService/StarFuncState;->kO:Lcom/android/common/appService/StarFuncState;

    iput-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    .line 456
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/startrack/a;->bhp(Z)V

    .line 458
    invoke-virtual {p0}, Lcom/android/startrack/h;->alz()V

    .line 459
    invoke-virtual {p0}, Lcom/android/startrack/h;->big()V

    .line 460
    invoke-direct {p0}, Lcom/android/startrack/h;->bhX()V

    .line 461
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 462
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/common/cameradevice/j;->KB(Z)V

    .line 464
    :cond_3f
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    iput-boolean v3, v0, Lcom/android/common/appService/W;->lr:Z

    .line 465
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v4}, Lcom/android/common/appService/W;->sm(Landroid/hardware/Camera$PictureCallback;)V

    .line 467
    iget-object v0, p0, Lcom/android/startrack/h;->aRq:Lcom/android/startrack/b;

    if-eqz v0, :cond_51

    .line 468
    iget-object v0, p0, Lcom/android/startrack/h;->aRq:Lcom/android/startrack/b;

    invoke-virtual {v0}, Lcom/android/startrack/b;->bhv()V

    .line 447
    :cond_51
    return-void
.end method

.method private bif()Z
    .registers 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    sget-object v1, Lcom/android/common/appService/StarFuncState;->kM:Lcom/android/common/appService/StarFuncState;

    if-eq v0, v1, :cond_8

    .line 438
    const/4 v0, 0x0

    return v0

    .line 440
    :cond_8
    iget-object v0, p0, Lcom/android/startrack/h;->aRs:Lcom/android/startrack/k;

    invoke-virtual {v0}, Lcom/android/startrack/k;->cancel()V

    .line 441
    sget-object v0, Lcom/android/common/appService/StarFuncState;->kN:Lcom/android/common/appService/StarFuncState;

    iput-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    .line 442
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {v0}, Lcom/android/startrack/a;->bhd()V

    .line 443
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 444
    const/4 v0, 0x1

    return v0
.end method

.method private bih(Landroid/net/Uri;)V
    .registers 8

    .prologue
    const/16 v4, 0xb4

    const/4 v2, 0x0

    .line 278
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 279
    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 282
    :try_start_b
    invoke-virtual {p0}, Lcom/android/startrack/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_16} :catch_7f
    .catchall {:try_start_b .. :try_end_16} :catchall_8f

    move-result-object v1

    .line 283
    const/4 v3, 0x0

    :try_start_18
    invoke-static {v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1b} :catch_a5
    .catchall {:try_start_18 .. :try_end_1b} :catchall_a2

    move-result-object v2

    .line 287
    if-eqz v1, :cond_21

    .line 289
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_7a

    .line 297
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/android/startrack/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/startrack/h;->bhS(Landroid/net/Uri;Landroid/content/ContentResolver;)I

    move-result v0

    .line 296
    invoke-static {v2, v0}, Lcom/android/common/D;->awa(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qv()I

    move-result v1

    .line 300
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ge v2, v3, :cond_9b

    .line 301
    rsub-int v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    invoke-static {v0, v1}, Lcom/android/common/D;->awa(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 306
    :cond_49
    :goto_49
    const-string/jumbo v1, "StarTrackFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPreviewImage before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {v1, v0}, Lcom/android/startrack/a;->bhk(Landroid/graphics/Bitmap;)V

    .line 308
    const-string/jumbo v0, "StarTrackFragment"

    const-string/jumbo v1, "setPreviewImage end"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void

    .line 290
    :catch_7a
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 284
    :catch_7f
    move-exception v0

    move-object v1, v2

    .line 285
    :goto_81
    :try_start_81
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_a2

    .line 287
    if-eqz v1, :cond_21

    .line 289
    :try_start_86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_21

    .line 290
    :catch_8a
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21

    .line 286
    :catchall_8f
    move-exception v0

    .line 287
    :goto_90
    if-eqz v2, :cond_95

    .line 289
    :try_start_92
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    .line 286
    :cond_95
    :goto_95
    throw v0

    .line 290
    :catch_96
    move-exception v1

    .line 291
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_95

    .line 303
    :cond_9b
    if-ne v1, v4, :cond_49

    .line 304
    invoke-static {v0, v4}, Lcom/android/common/D;->awa(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_49

    .line 286
    :catchall_a2
    move-exception v0

    move-object v2, v1

    goto :goto_90

    .line 284
    :catch_a5
    move-exception v0

    goto :goto_81
.end method

.method private bij()V
    .registers 5

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/startrack/h;->aRw:Landroid/net/Uri;

    if-eqz v0, :cond_1a

    .line 601
    iget-object v0, p0, Lcom/android/startrack/h;->aRv:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/startrack/h;->aRw:Landroid/net/Uri;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/m/a;->ahc(Ljava/lang/String;Landroid/net/Uri;II)Lcom/android/common/m/a;

    move-result-object v0

    .line 602
    invoke-virtual {p0}, Lcom/android/startrack/h;->all()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/m/c;->ahj(Lcom/android/common/m/a;)V

    .line 599
    :cond_1a
    return-void
.end method

.method static synthetic bik(Lcom/android/startrack/h;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic bil(Lcom/android/startrack/h;)Lcom/android/common/f/b;
    .registers 2

    iget-object v0, p0, Lcom/android/startrack/h;->aRx:Lcom/android/common/f/b;

    return-object v0
.end method

.method static synthetic bim(Lcom/android/startrack/h;)Lcom/android/startrack/a;
    .registers 2

    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    return-object v0
.end method

.method static synthetic bin(Lcom/android/startrack/h;)Lcom/android/common/appService/z;
    .registers 2

    iget-object v0, p0, Lcom/android/startrack/h;->aRz:Lcom/android/common/appService/z;

    return-object v0
.end method

.method static synthetic bio(Lcom/android/startrack/h;Lcom/android/common/appService/StarFuncState;)Lcom/android/common/appService/StarFuncState;
    .registers 2

    iput-object p1, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    return-object p1
.end method

.method static synthetic bip(Lcom/android/startrack/h;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/startrack/h;->bif()Z

    move-result v0

    return v0
.end method

.method static synthetic biq(Lcom/android/startrack/h;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/startrack/h;->ajt(IZ)V

    return-void
.end method

.method static synthetic bir(Lcom/android/startrack/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/startrack/h;->bhZ()V

    return-void
.end method

.method static synthetic bis(Lcom/android/startrack/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/startrack/h;->bib()V

    return-void
.end method

.method static synthetic bit(Lcom/android/startrack/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/startrack/h;->bid()V

    return-void
.end method

.method static synthetic biu(Lcom/android/startrack/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/startrack/h;->bie()V

    return-void
.end method

.method static synthetic biv(Lcom/android/startrack/h;Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/startrack/h;->bih(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic biw(Lcom/android/startrack/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/startrack/h;->bij()V

    return-void
.end method

.method private static synthetic bix()[I
    .registers 3

    sget-object v0, Lcom/android/startrack/h;->aRA:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/startrack/h;->aRA:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/common/appService/StarFuncState;->values()[Lcom/android/common/appService/StarFuncState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/common/appService/StarFuncState;->kL:Lcom/android/common/appService/StarFuncState;

    invoke-virtual {v1}, Lcom/android/common/appService/StarFuncState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/common/appService/StarFuncState;->kM:Lcom/android/common/appService/StarFuncState;

    invoke-virtual {v1}, Lcom/android/common/appService/StarFuncState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/common/appService/StarFuncState;->kN:Lcom/android/common/appService/StarFuncState;

    invoke-virtual {v1}, Lcom/android/common/appService/StarFuncState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/common/appService/StarFuncState;->kO:Lcom/android/common/appService/StarFuncState;

    invoke-virtual {v1}, Lcom/android/common/appService/StarFuncState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/android/startrack/h;->aRA:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method


# virtual methods
.method protected aji(IIII)V
    .registers 6

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    if-eqz v0, :cond_9

    .line 665
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/startrack/a;->bhh(IIII)V

    .line 663
    :cond_9
    return-void
.end method

.method protected aly()V
    .registers 2

    .prologue
    .line 642
    invoke-super {p0}, Lcom/android/common/o/l;->aly()V

    .line 643
    iget-object v0, p0, Lcom/android/startrack/h;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 641
    return-void
.end method

.method protected alz()V
    .registers 5

    .prologue
    .line 648
    invoke-super {p0}, Lcom/android/common/o/l;->alz()V

    .line 649
    iget-object v0, p0, Lcom/android/startrack/h;->adx:Lcom/android/common/camerastate/a;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/common/camerastate/b;

    .line 650
    sget-object v2, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 651
    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 652
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 653
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 654
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 649
    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amM([Lcom/android/common/camerastate/b;)V

    .line 647
    return-void
.end method

.method bhN([BI)V
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 252
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 253
    const/4 v1, 0x4

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 254
    array-length v1, p1

    invoke-static {p1, v8, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 255
    iget-object v0, p0, Lcom/android/startrack/h;->aRx:Lcom/android/common/f/b;

    if-eqz v0, :cond_63

    .line 256
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 257
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 259
    and-int/lit8 v3, v1, 0xf

    if-eqz v3, :cond_25

    .line 260
    shr-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x4

    .line 262
    :cond_25
    and-int/lit8 v3, v0, 0xf

    if-eqz v3, :cond_2f

    .line 263
    shr-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x4

    .line 265
    :cond_2f
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 266
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 268
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 269
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 267
    invoke-virtual {v4, v2, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 270
    invoke-static {v3, p2}, Lcom/android/common/D;->awa(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 271
    const-string/jumbo v1, "StarTrackFragment"

    const-string/jumbo v2, "updatePreviewBitmap"

    invoke-static {v1, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/android/startrack/h;->aRx:Lcom/android/common/f/b;

    iget-object v2, p0, Lcom/android/startrack/h;->aRp:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/common/f/b;->aaq(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 251
    :cond_63
    return-void
.end method

.method public bhP()V
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    if-eqz v0, :cond_9

    .line 629
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {v0}, Lcom/android/startrack/a;->bhi()V

    .line 627
    :cond_9
    return-void
.end method

.method public bhQ()Z
    .registers 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    sget-object v1, Lcom/android/common/appService/StarFuncState;->kL:Lcom/android/common/appService/StarFuncState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bhR()Z
    .registers 3

    .prologue
    .line 659
    iget-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    sget-object v1, Lcom/android/common/appService/StarFuncState;->kN:Lcom/android/common/appService/StarFuncState;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public big()V
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/startrack/h;->aRn:Lcom/android/startrack/j;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/startrack/j;->removeMessages(I)V

    .line 235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/startrack/h;->mStartTime:J

    .line 236
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {v0}, Lcom/android/startrack/a;->bhc()V

    .line 233
    return-void
.end method

.method public bii()V
    .registers 10

    .prologue
    const/16 v8, 0xb4

    .line 331
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/android/startrack/h;->aRv:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 332
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 333
    const/4 v0, 0x4

    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 334
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 335
    invoke-static {v3, v0, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/android/startrack/h;->aRx:Lcom/android/common/f/b;

    if-eqz v1, :cond_52

    .line 337
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 338
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 340
    and-int/lit8 v5, v2, 0xf

    if-eqz v5, :cond_30

    .line 341
    shr-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x4

    .line 343
    :cond_30
    and-int/lit8 v5, v1, 0xf

    if-eqz v5, :cond_3a

    .line 344
    shr-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x4

    .line 346
    :cond_3a
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 347
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 348
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 349
    iget-object v2, p0, Lcom/android/startrack/h;->aRx:Lcom/android/common/f/b;

    iget-object v5, p0, Lcom/android/startrack/h;->aRp:Ljava/lang/String;

    invoke-virtual {v2, v1, v5}, Lcom/android/common/f/b;->aaq(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 351
    :cond_52
    iget-object v1, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qv()I

    move-result v1

    .line 352
    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ge v2, v4, :cond_6f

    .line 353
    rsub-int v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    invoke-static {v0, v1}, Lcom/android/common/D;->awa(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 359
    :cond_66
    :goto_66
    iget-object v1, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {v1, v0}, Lcom/android/startrack/a;->bhk(Landroid/graphics/Bitmap;)V

    .line 360
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 329
    :goto_6e
    return-void

    .line 355
    :cond_6f
    if-ne v1, v8, :cond_66

    .line 356
    const/16 v1, 0xb4

    invoke-static {v0, v1}, Lcom/android/common/D;->awa(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_76} :catch_78
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_76} :catch_83

    move-result-object v0

    goto :goto_66

    .line 361
    :catch_78
    move-exception v0

    .line 362
    const-string/jumbo v0, "StarTrackFragment"

    const-string/jumbo v1, "updatePreviewBitmap failed"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 363
    :catch_83
    move-exception v0

    goto :goto_6e
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {v0}, Lcom/android/startrack/a;->bhe()V

    .line 586
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 176
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "onbackpressed"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    sget-object v1, Lcom/android/common/appService/StarFuncState;->kL:Lcom/android/common/appService/StarFuncState;

    if-ne v0, v1, :cond_1c

    .line 178
    iget-object v0, p0, Lcom/android/startrack/h;->aRz:Lcom/android/common/appService/z;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/z;->lL(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 179
    invoke-direct {p0}, Lcom/android/startrack/h;->bie()V

    .line 181
    :cond_1b
    return v2

    .line 183
    :cond_1c
    invoke-direct {p0}, Lcom/android/startrack/h;->bif()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 184
    invoke-virtual {p0}, Lcom/android/startrack/h;->aly()V

    .line 185
    return v2

    .line 187
    :cond_26
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 115
    iget-boolean v0, p0, Lcom/android/startrack/h;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 116
    :cond_8
    new-instance v0, Lcom/android/common/appService/z;

    invoke-virtual {p0}, Lcom/android/startrack/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/appService/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/startrack/h;->aRz:Lcom/android/common/appService/z;

    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 106
    iget-boolean v0, p0, Lcom/android/startrack/h;->adu:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_9
    const v0, 0x7f04000b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 108
    invoke-direct {p0, v0}, Lcom/android/startrack/h;->bhU(Landroid/view/View;)V

    .line 109
    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    sget-object v1, Lcom/android/common/appService/StarFuncState;->kN:Lcom/android/common/appService/StarFuncState;

    if-eq v0, v1, :cond_c

    .line 414
    const/16 v0, 0x52

    if-ne p1, v0, :cond_c

    .line 415
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_c
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    iget-boolean v0, p0, Lcom/android/startrack/h;->adu:Z

    if-eqz v0, :cond_a

    .line 153
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 154
    return-void

    .line 156
    :cond_a
    invoke-direct {p0}, Lcom/android/startrack/h;->bif()Z

    .line 157
    invoke-direct {p0}, Lcom/android/startrack/h;->bhZ()V

    .line 158
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    iput-boolean v2, v0, Lcom/android/common/appService/W;->lr:Z

    .line 159
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {v0, v2}, Lcom/android/startrack/a;->bhp(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/android/startrack/h;->aly()V

    .line 162
    iget-object v0, p0, Lcom/android/startrack/h;->aRq:Lcom/android/startrack/b;

    if-eqz v0, :cond_2c

    .line 163
    iget-object v0, p0, Lcom/android/startrack/h;->aRq:Lcom/android/startrack/b;

    invoke-virtual {v0}, Lcom/android/startrack/b;->bhv()V

    .line 164
    iget-object v0, p0, Lcom/android/startrack/h;->aRq:Lcom/android/startrack/b;

    invoke-virtual {v0}, Lcom/android/startrack/b;->bhz()V

    .line 165
    iput-object v1, p0, Lcom/android/startrack/h;->aRq:Lcom/android/startrack/b;

    .line 167
    :cond_2c
    iget-object v0, p0, Lcom/android/startrack/h;->aRx:Lcom/android/common/f/b;

    if-eqz v0, :cond_37

    .line 168
    iget-object v0, p0, Lcom/android/startrack/h;->aRx:Lcom/android/common/f/b;

    invoke-virtual {v0}, Lcom/android/common/f/b;->release()V

    .line 169
    iput-object v1, p0, Lcom/android/startrack/h;->aRx:Lcom/android/common/f/b;

    .line 171
    :cond_37
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 151
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 121
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 122
    iget-boolean v0, p0, Lcom/android/startrack/h;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 123
    :cond_8
    sget-object v0, Lcom/android/common/appService/StarFuncState;->kN:Lcom/android/common/appService/StarFuncState;

    iput-object v0, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    .line 124
    invoke-direct {p0}, Lcom/android/startrack/h;->bhT()V

    .line 125
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-direct {p0}, Lcom/android/startrack/h;->bhV()Z

    move-result v1

    iget-object v2, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1, v2}, Lcom/android/startrack/a;->bhl(ZLcom/android/common/appService/W;)V

    .line 126
    invoke-direct {p0}, Lcom/android/startrack/h;->bia()V

    .line 127
    invoke-virtual {p0}, Lcom/android/startrack/h;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_28

    .line 128
    invoke-virtual {p0}, Lcom/android/startrack/h;->alq()V

    .line 120
    :cond_28
    return-void
.end method

.method public xf()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_6

    .line 371
    return-void

    .line 374
    :cond_6
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 375
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 376
    invoke-virtual {p0}, Lcom/android/startrack/h;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_7d

    .line 381
    :cond_1e
    const-string/jumbo v0, "StarTrackFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity pause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    const-string/jumbo v2, "; storageLeftEnough: "

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 382
    iget-object v2, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    const-string/jumbo v2, "; uiState: "

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 383
    invoke-virtual {p0}, Lcom/android/startrack/h;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v2

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    const-string/jumbo v2, "; functionState: "

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    invoke-virtual {p0}, Lcom/android/startrack/h;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    const-string/jumbo v2, "; DeviceState: "

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 385
    invoke-virtual {p0}, Lcom/android/startrack/h;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v2

    .line 381
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void

    .line 377
    :cond_7d
    invoke-virtual {p0}, Lcom/android/startrack/h;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_8d

    .line 378
    invoke-virtual {p0}, Lcom/android/startrack/h;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_1e

    .line 379
    :cond_8d
    invoke-virtual {p0}, Lcom/android/startrack/h;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_9d

    .line 380
    invoke-virtual {p0}, Lcom/android/startrack/h;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_1e

    .line 389
    :cond_9d
    invoke-static {}, Lcom/android/startrack/h;->bix()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/startrack/h;->aRt:Lcom/android/common/appService/StarFuncState;

    invoke-virtual {v1}, Lcom/android/common/appService/StarFuncState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_d2

    .line 406
    :cond_ac
    :goto_ac
    :pswitch_ac
    iget-object v0, p0, Lcom/android/startrack/h;->aRy:Lcom/android/startrack/a;

    invoke-virtual {v0}, Lcom/android/startrack/a;->bhe()V

    .line 369
    return-void

    .line 391
    :pswitch_b2
    invoke-direct {p0}, Lcom/android/startrack/h;->bic()V

    goto :goto_ac

    .line 394
    :pswitch_b6
    invoke-direct {p0}, Lcom/android/startrack/h;->bif()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 395
    iget-object v0, p0, Lcom/android/startrack/h;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->pM(Z)V

    .line 396
    invoke-virtual {p0}, Lcom/android/startrack/h;->aly()V

    goto :goto_ac

    .line 400
    :pswitch_c5
    iget-object v0, p0, Lcom/android/startrack/h;->aRz:Lcom/android/common/appService/z;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/z;->lL(I)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 401
    invoke-direct {p0}, Lcom/android/startrack/h;->bie()V

    goto :goto_ac

    .line 389
    nop

    :pswitch_data_d2
    .packed-switch 0x1
        :pswitch_c5
        :pswitch_b6
        :pswitch_b2
        :pswitch_ac
    .end packed-switch
.end method

.method public xg(Z)V
    .registers 2

    .prologue
    .line 244
    return-void
.end method

.method public xh()V
    .registers 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/startrack/h;->xf()V

    .line 247
    return-void
.end method
