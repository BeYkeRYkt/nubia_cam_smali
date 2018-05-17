.class public Lcn/nubia/bigAperture/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private bnA:J

.field private final bnB:Z

.field private bnC:Z

.field private bnD:Landroid/os/Handler;

.field private bnE:Z

.field private bnF:J

.field private bnG:J

.field private bnH:Ljava/util/LinkedList;

.field private bnI:J

.field private bnJ:Ljava/util/ArrayList;

.field private bnK:Lcom/android/common/storagemanager/f;

.field private bnL:Lcn/nubia/bigAperture/p;

.field private bnM:Lcn/nubia/bigAperture/h;

.field private final bnl:Ljava/lang/String;

.field private final bnm:Ljava/lang/String;

.field private final bnn:Ljava/lang/String;

.field private final bno:Ljava/lang/String;

.field private final bnp:Ljava/lang/String;

.field private final bnq:I

.field private final bnr:I

.field private final bns:I

.field private final bnt:I

.field private bnu:Lcn/nubia/bigAperture/BigAperAlgorithm;

.field private bnv:J

.field private bnw:J

.field private bnx:Landroid/content/ContentResolver;

.field private bny:Landroid/content/Context;

.field private bnz:Lcn/nubia/bigAperture/BigApertureTask;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;Lcom/android/common/storagemanager/f;)V
    .registers 10

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 99
    const-string/jumbo v0, "BigApertureProcess"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v0, "LOCK SUCCESS"

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bnp:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "CANCEL_NEW_LOCK_RECEIVED"

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bnl:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "USER CANCEL"

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bno:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "NO DEPTH CAN LOCK"

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bnm:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "SERVICE IN CAMERA CANCEL"

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bnn:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcn/nubia/bigAperture/g;->bny:Landroid/content/Context;

    .line 78
    iput-object v1, p0, Lcn/nubia/bigAperture/g;->bnx:Landroid/content/ContentResolver;

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bnJ:Ljava/util/ArrayList;

    .line 81
    iput-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    .line 82
    iput-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    .line 83
    iput-boolean v4, p0, Lcn/nubia/bigAperture/g;->bnC:Z

    .line 87
    iput-wide v2, p0, Lcn/nubia/bigAperture/g;->bnG:J

    .line 88
    iput-wide v2, p0, Lcn/nubia/bigAperture/g;->bnA:J

    .line 89
    iput-wide v2, p0, Lcn/nubia/bigAperture/g;->bnw:J

    .line 90
    iput-wide v2, p0, Lcn/nubia/bigAperture/g;->bnF:J

    .line 91
    iput-wide v2, p0, Lcn/nubia/bigAperture/g;->bnv:J

    .line 92
    iput-wide v2, p0, Lcn/nubia/bigAperture/g;->bnI:J

    .line 94
    iput-object v1, p0, Lcn/nubia/bigAperture/g;->bnL:Lcn/nubia/bigAperture/p;

    .line 210
    iput-boolean v4, p0, Lcn/nubia/bigAperture/g;->bnE:Z

    .line 713
    iput v4, p0, Lcn/nubia/bigAperture/g;->bnq:I

    .line 714
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/bigAperture/g;->bnr:I

    .line 715
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/bigAperture/g;->bnt:I

    .line 716
    iput v5, p0, Lcn/nubia/bigAperture/g;->bns:I

    .line 922
    new-instance v0, Lcn/nubia/bigAperture/t;

    invoke-direct {v0, p0}, Lcn/nubia/bigAperture/t;-><init>(Lcn/nubia/bigAperture/g;)V

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bnD:Landroid/os/Handler;

    .line 971
    const-string/jumbo v0, "ApertureBackground"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/bigAperture/g;->bnB:Z

    .line 100
    iput-object p2, p0, Lcn/nubia/bigAperture/g;->bny:Landroid/content/Context;

    .line 101
    iput-object p1, p0, Lcn/nubia/bigAperture/g;->bnx:Landroid/content/ContentResolver;

    .line 102
    new-instance v0, Lcn/nubia/bigAperture/m;

    sget-boolean v1, Lcn/nubia/bigAperture/BigApertureService;->bnS:Z

    invoke-direct {v0, v1}, Lcn/nubia/bigAperture/m;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bnL:Lcn/nubia/bigAperture/p;

    .line 103
    new-instance v0, Lcn/nubia/bigAperture/BigAperAlgorithm;

    invoke-direct {v0}, Lcn/nubia/bigAperture/BigAperAlgorithm;-><init>()V

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bnu:Lcn/nubia/bigAperture/BigAperAlgorithm;

    .line 104
    iput-object p3, p0, Lcn/nubia/bigAperture/g;->bnK:Lcom/android/common/storagemanager/f;

    .line 98
    return-void
.end method

.method private bJA(Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 4

    .prologue
    .line 869
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v0

    .line 870
    :try_start_3
    invoke-virtual {p1}, Lcn/nubia/bigAperture/BigApertureTask;->bJl()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 868
    return-void

    .line 869
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private bJB(Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 4

    .prologue
    .line 856
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v0

    .line 857
    :try_start_3
    invoke-virtual {p1}, Lcn/nubia/bigAperture/BigApertureTask;->bJm()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 855
    return-void

    .line 856
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private bJC(Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 4

    .prologue
    .line 850
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v0

    .line 851
    :try_start_3
    invoke-virtual {p1}, Lcn/nubia/bigAperture/BigApertureTask;->bJn()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 849
    return-void

    .line 850
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private bJD(Lcn/nubia/bigAperture/BigApertureTask;Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/c;)Lcom/nubia/camera/common/Native/BufferCell;
    .registers 22

    .prologue
    .line 679
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcn/nubia/bigAperture/g;->bnw:J

    .line 681
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->adr()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    .line 682
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcn/nubia/arcsoft/b;->bMI(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/BigApertureTask;)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v2

    .line 693
    :goto_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[perf test] caculateBigAperatureImage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcn/nubia/bigAperture/g;->bnw:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 694
    return-object v2

    .line 685
    :cond_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/bigAperture/g;->bnu:Lcn/nubia/bigAperture/BigAperAlgorithm;

    .line 687
    move-object/from16 v0, p1

    iget v5, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    move-object/from16 v0, p1

    iget v6, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    .line 688
    move-object/from16 v0, p1

    iget v7, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmP:I

    move-object/from16 v0, p1

    iget v8, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmQ:I

    .line 689
    move-object/from16 v0, p1

    iget v9, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmT:F

    move-object/from16 v0, p1

    iget v10, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmU:F

    move-object/from16 v0, p1

    iget v11, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmV:F

    move-object/from16 v0, p1

    iget v12, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    .line 690
    move-object/from16 v0, p1

    iget v13, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmS:I

    move-object/from16 v0, p4

    iget v14, v0, Lcn/nubia/bigAperture/c;->bmv:I

    move-object/from16 v0, p4

    iget v15, v0, Lcn/nubia/bigAperture/c;->bmu:F

    move-object/from16 v0, p4

    iget v0, v0, Lcn/nubia/bigAperture/c;->bmt:F

    move/from16 v16, v0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 685
    invoke-virtual/range {v2 .. v16}, Lcn/nubia/bigAperture/BigAperAlgorithm;->bJv(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;IIIIFFFIIIFF)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v2

    goto :goto_22
.end method

.method private bJE(Ljava/io/File;Ljava/io/File;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/BigApertureTask;)Lcom/nubia/camera/common/Native/BufferCell;
    .registers 11

    .prologue
    .line 640
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/bigAperture/g;->bnA:J

    .line 642
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnu:Lcn/nubia/bigAperture/BigAperAlgorithm;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 643
    iget v1, p4, Lcn/nubia/bigAperture/BigApertureTask;->bng:I

    iget v2, p4, Lcn/nubia/bigAperture/BigApertureTask;->bnf:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    .line 642
    invoke-static {v0, v1}, Lcn/nubia/bigAperture/BigAperAlgorithm;->bJw(Ljava/lang/String;I)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v1

    .line 646
    if-eqz p2, :cond_60

    .line 647
    iget v0, p4, Lcn/nubia/bigAperture/BigApertureTask;->bmP:I

    iget v2, p4, Lcn/nubia/bigAperture/BigApertureTask;->bmQ:I

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Lcn/nubia/bigAperture/a;->bIT(Ljava/io/File;I)[B

    move-result-object v2

    .line 648
    if-nez v2, :cond_5a

    .line 649
    invoke-static {p2}, Lcn/nubia/bigAperture/a;->bIP(Ljava/io/File;)V

    .line 650
    invoke-direct {p0, p3, v1, p4}, Lcn/nubia/bigAperture/g;->bJO(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/BigApertureTask;)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v0

    .line 658
    :goto_2f
    if-eqz v1, :cond_34

    .line 659
    invoke-virtual {v1}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 661
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[perf test] GenerateAltekDepth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/bigAperture/g;->bnA:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 662
    return-object v0

    .line 652
    :cond_5a
    new-instance v0, Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {v0, v2}, Lcom/nubia/camera/common/Native/BufferCell;-><init>([B)V

    goto :goto_2f

    .line 655
    :cond_60
    invoke-direct {p0, p3, v1, p4}, Lcn/nubia/bigAperture/g;->bJO(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/BigApertureTask;)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v0

    goto :goto_2f
.end method

.method private bJG(Lcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/l;[BLcom/nubia/camera/common/Native/BufferCell;)Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 804
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-nez v1, :cond_17

    .line 802
    :goto_7
    invoke-direct {p0, p1, v0, v2}, Lcn/nubia/bigAperture/g;->bJK(Lcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/BigApertureTask;Z)I

    move-result v0

    .line 806
    if-ne v0, v3, :cond_1c

    .line 807
    invoke-virtual {p2}, Lcn/nubia/bigAperture/l;->bKu()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_16

    .line 808
    invoke-virtual {p2, p3}, Lcn/nubia/bigAperture/l;->bKv([B)V

    .line 811
    :cond_16
    return v3

    .line 804
    :cond_17
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    goto :goto_7

    .line 812
    :cond_1c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    .line 813
    invoke-virtual {p2}, Lcn/nubia/bigAperture/l;->bKu()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_28

    .line 814
    invoke-virtual {p2, p3}, Lcn/nubia/bigAperture/l;->bKv([B)V

    .line 816
    :cond_28
    invoke-virtual {p2}, Lcn/nubia/bigAperture/l;->bKs()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_35

    .line 817
    invoke-virtual {p4}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcn/nubia/bigAperture/l;->bKt([B)V

    .line 819
    :cond_35
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnN:Landroid/os/Messenger;

    invoke-direct {p0, v0, p1}, Lcn/nubia/bigAperture/g;->bJZ(Landroid/os/Messenger;Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 821
    return v2

    .line 823
    :cond_3d
    return v2
.end method

.method private bJH(Lcn/nubia/bigAperture/BigApertureTask;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/l;)Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 756
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-nez v1, :cond_21

    .line 754
    :goto_7
    invoke-direct {p0, p1, v0, v2}, Lcn/nubia/bigAperture/g;->bJK(Lcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/BigApertureTask;Z)I

    move-result v0

    .line 758
    if-ne v0, v3, :cond_26

    .line 760
    invoke-virtual {p3}, Lcn/nubia/bigAperture/l;->bKs()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 761
    invoke-virtual {p2}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Lcn/nubia/bigAperture/l;->bKt([B)V

    .line 764
    :cond_1a
    const-string/jumbo v0, "Break Point arrived, save Depth File"

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 765
    return v3

    .line 756
    :cond_21
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    goto :goto_7

    .line 766
    :cond_26
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    .line 767
    invoke-virtual {p3}, Lcn/nubia/bigAperture/l;->bKs()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_36

    .line 768
    invoke-virtual {p2}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Lcn/nubia/bigAperture/l;->bKt([B)V

    .line 770
    :cond_36
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnN:Landroid/os/Messenger;

    invoke-direct {p0, v0, p1}, Lcn/nubia/bigAperture/g;->bJZ(Landroid/os/Messenger;Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 771
    return v2

    .line 773
    :cond_3e
    return v2
.end method

.method private bJI(Lcn/nubia/bigAperture/BigApertureTask;[B[BLcn/nubia/bigAperture/l;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 829
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-nez v1, :cond_48

    .line 830
    :goto_5
    const/4 v1, 0x1

    .line 827
    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/bigAperture/g;->bJK(Lcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/BigApertureTask;Z)I

    move-result v0

    .line 831
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    .line 832
    invoke-virtual {p4}, Lcn/nubia/bigAperture/l;->bKu()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_16

    .line 833
    invoke-virtual {p4, p2}, Lcn/nubia/bigAperture/l;->bKv([B)V

    .line 835
    :cond_16
    invoke-virtual {p4}, Lcn/nubia/bigAperture/l;->bKs()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_25

    .line 836
    const-string/jumbo v1, "save depth after gallery"

    invoke-direct {p0, v1}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p4, p3}, Lcn/nubia/bigAperture/l;->bKt([B)V

    .line 839
    :cond_25
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v1, v1, Lcn/nubia/bigAperture/h;->bnN:Landroid/os/Messenger;

    invoke-direct {p0, v1, p1}, Lcn/nubia/bigAperture/g;->bJZ(Landroid/os/Messenger;Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 840
    :cond_2c
    if-nez v0, :cond_47

    .line 841
    sget-boolean v0, Lcn/nubia/bigAperture/BigApertureService;->bnS:Z

    if-nez v0, :cond_3c

    .line 842
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/bigAperture/a;->bIP(Ljava/io/File;)V

    .line 844
    :cond_3c
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnL:Lcn/nubia/bigAperture/p;

    invoke-virtual {v0, p1}, Lcn/nubia/bigAperture/p;->bKz(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 845
    const-string/jumbo v0, "delete temp directory"

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 826
    :cond_47
    return-void

    .line 829
    :cond_48
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    goto :goto_5
.end method

.method private bJJ(Lcn/nubia/bigAperture/BigApertureTask;[BLcn/nubia/bigAperture/l;Lcom/nubia/camera/common/Native/BufferCell;)Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 779
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-nez v1, :cond_17

    .line 777
    :goto_7
    invoke-direct {p0, p1, v0, v2}, Lcn/nubia/bigAperture/g;->bJK(Lcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/BigApertureTask;Z)I

    move-result v0

    .line 782
    if-ne v0, v3, :cond_1c

    .line 783
    invoke-virtual {p3}, Lcn/nubia/bigAperture/l;->bKu()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_16

    .line 784
    invoke-virtual {p3, p2}, Lcn/nubia/bigAperture/l;->bKv([B)V

    .line 786
    :cond_16
    return v3

    .line 779
    :cond_17
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    goto :goto_7

    .line 787
    :cond_1c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3d

    .line 788
    invoke-virtual {p3}, Lcn/nubia/bigAperture/l;->bKu()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_28

    .line 789
    invoke-virtual {p3, p2}, Lcn/nubia/bigAperture/l;->bKv([B)V

    .line 791
    :cond_28
    invoke-virtual {p3}, Lcn/nubia/bigAperture/l;->bKs()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_35

    .line 792
    invoke-virtual {p4}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Lcn/nubia/bigAperture/l;->bKt([B)V

    .line 794
    :cond_35
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnN:Landroid/os/Messenger;

    invoke-direct {p0, v0, p1}, Lcn/nubia/bigAperture/g;->bJZ(Landroid/os/Messenger;Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 795
    return v2

    .line 798
    :cond_3d
    return v2
.end method

.method private bJK(Lcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/BigApertureTask;Z)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 718
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v1

    .line 720
    if-nez p2, :cond_8

    monitor-exit v1

    .line 721
    return v0

    .line 723
    :cond_8
    :try_start_8
    invoke-direct {p0, p1}, Lcn/nubia/bigAperture/g;->bJV(Lcn/nubia/bigAperture/BigApertureTask;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 724
    if-eqz p3, :cond_21

    .line 728
    :cond_10
    invoke-direct {p0, p1}, Lcn/nubia/bigAperture/g;->bJS(Lcn/nubia/bigAperture/BigApertureTask;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 729
    const/4 v0, 0x2

    .line 730
    if-nez p3, :cond_2c

    .line 731
    invoke-direct {p0, p2}, Lcn/nubia/bigAperture/g;->bJB(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 732
    invoke-direct {p0, p1}, Lcn/nubia/bigAperture/g;->bJB(Lcn/nubia/bigAperture/BigApertureTask;)V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_29

    :cond_1f
    :goto_1f
    monitor-exit v1

    .line 749
    return v0

    .line 725
    :cond_21
    const/4 v0, 0x1

    .line 726
    :try_start_22
    invoke-direct {p0, p1}, Lcn/nubia/bigAperture/g;->bJA(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 727
    invoke-virtual {p0, p1}, Lcn/nubia/bigAperture/g;->bJx(Lcn/nubia/bigAperture/BigApertureTask;)V
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_29

    goto :goto_1f

    .line 718
    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0

    .line 734
    :cond_2c
    :try_start_2c
    invoke-direct {p0, p2}, Lcn/nubia/bigAperture/g;->bJz(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 735
    invoke-direct {p0, p1}, Lcn/nubia/bigAperture/g;->bJz(Lcn/nubia/bigAperture/BigApertureTask;)V

    goto :goto_1f

    .line 737
    :cond_33
    invoke-direct {p0, p1}, Lcn/nubia/bigAperture/g;->bJR(Lcn/nubia/bigAperture/BigApertureTask;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 738
    const/4 v0, 0x3

    .line 739
    if-eqz p3, :cond_1f

    .line 740
    invoke-direct {p0, p2}, Lcn/nubia/bigAperture/g;->bJz(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 741
    invoke-direct {p0, p1}, Lcn/nubia/bigAperture/g;->bJz(Lcn/nubia/bigAperture/BigApertureTask;)V

    goto :goto_1f

    .line 743
    :cond_43
    if-eqz p3, :cond_1f

    .line 744
    invoke-virtual {p1}, Lcn/nubia/bigAperture/BigApertureTask;->bJi()V

    .line 745
    sget-boolean v2, Lcn/nubia/bigAperture/BigApertureService;->bnS:Z

    if-eqz v2, :cond_1f

    .line 746
    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnL:Lcn/nubia/bigAperture/p;

    invoke-virtual {v2, p1}, Lcn/nubia/bigAperture/p;->bKD(Lcn/nubia/bigAperture/BigApertureTask;)V
    :try_end_51
    .catchall {:try_start_2c .. :try_end_51} :catchall_29

    goto :goto_1f
.end method

.method private bJL(Lcn/nubia/bigAperture/l;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/BigApertureTask;)[B
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/bigAperture/g;->bnF:J

    .line 700
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/0.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 702
    invoke-static {v0}, Lcn/nubia/bigAperture/a;->bIS(Ljava/io/File;)[B

    move-result-object v0

    .line 703
    if-nez v0, :cond_36

    .line 704
    iget v0, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    iget v1, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    invoke-static {p2, v0, v1, v3}, Lcn/nubia/bigAperture/a;->bIM(Lcom/nubia/camera/common/Native/BufferCell;III)[B

    move-result-object v0

    .line 709
    :cond_36
    :goto_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[perf test] compressOriginalJpeg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/bigAperture/g;->bnF:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 710
    return-object v0

    .line 707
    :cond_5c
    iget v0, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    iget v1, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    invoke-static {p2, v0, v1, v3}, Lcn/nubia/bigAperture/a;->bIM(Lcom/nubia/camera/common/Native/BufferCell;III)[B

    move-result-object v0

    goto :goto_36
.end method

.method private bJM(Lcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/b;Z)V
    .registers 7

    .prologue
    .line 465
    if-eqz p3, :cond_7

    .line 466
    if-eqz p2, :cond_38

    .line 467
    :goto_4
    invoke-direct {p0, p2, p1}, Lcn/nubia/bigAperture/g;->bJW(Lcn/nubia/bigAperture/b;Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 469
    :cond_7
    sget-boolean v0, Lcn/nubia/bigAperture/BigApertureService;->bnS:Z

    if-nez v0, :cond_15

    .line 470
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/bigAperture/a;->bIP(Ljava/io/File;)V

    .line 472
    :cond_15
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnL:Lcn/nubia/bigAperture/p;

    invoke-virtual {v0, p1}, Lcn/nubia/bigAperture/p;->bKz(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 474
    invoke-direct {p0, p1}, Lcn/nubia/bigAperture/g;->bJS(Lcn/nubia/bigAperture/BigApertureTask;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 475
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnN:Landroid/os/Messenger;

    .line 476
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v1, v1, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v1, v1, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    const-string/jumbo v2, "NO DEPTH CAN LOCK"

    .line 475
    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/bigAperture/g;->bJY(Landroid/os/Messenger;Landroid/net/Uri;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v0

    .line 479
    const/4 v1, 0x0

    :try_start_34
    iput-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_41

    monitor-exit v0

    .line 464
    :cond_37
    return-void

    .line 466
    :cond_38
    iget-object v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnx:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcn/nubia/bigAperture/a;->bIU(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcn/nubia/bigAperture/b;

    move-result-object p2

    goto :goto_4

    .line 478
    :catchall_41
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private bJN(Landroid/net/Uri;)Lcn/nubia/bigAperture/BigApertureTask;
    .registers 6

    .prologue
    .line 948
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v1

    .line 949
    :try_start_3
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnJ:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/bigAperture/BigApertureTask;

    .line 950
    iget-object v3, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_22

    move-result v3

    if-eqz v3, :cond_9

    monitor-exit v1

    .line 951
    return-object v0

    .line 954
    :cond_1f
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 948
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bJO(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/BigApertureTask;)Lcom/nubia/camera/common/Native/BufferCell;
    .registers 16

    .prologue
    .line 666
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adr()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 667
    invoke-static {p1, p2, p3}, Lcn/nubia/arcsoft/b;->bMH(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/BigApertureTask;)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v0

    return-object v0

    .line 669
    :cond_13
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnu:Lcn/nubia/bigAperture/BigAperAlgorithm;

    .line 671
    iget v3, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    iget v4, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    .line 672
    iget v5, p3, Lcn/nubia/bigAperture/BigApertureTask;->bng:I

    iget v6, p3, Lcn/nubia/bigAperture/BigApertureTask;->bnf:I

    .line 673
    iget v7, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmP:I

    iget v8, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmQ:I

    .line 674
    iget v9, p3, Lcn/nubia/bigAperture/BigApertureTask;->bmS:I

    iget v10, p3, Lcn/nubia/bigAperture/BigApertureTask;->bnc:I

    iget v11, p3, Lcn/nubia/bigAperture/BigApertureTask;->bni:I

    move-object v1, p1

    move-object v2, p2

    .line 669
    invoke-virtual/range {v0 .. v11}, Lcn/nubia/bigAperture/BigAperAlgorithm;->bJu(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;IIIIIIIII)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v0

    return-object v0
.end method

.method private bJP(Lcn/nubia/bigAperture/BigApertureTask;)Z
    .registers 5

    .prologue
    .line 633
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v1

    .line 634
    :try_start_3
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->mState:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d

    const/4 v2, 0x4

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit v1

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    .line 633
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bJQ(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 889
    const-string/jumbo v0, "activity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 890
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 891
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 892
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 893
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v0, v4, :cond_65

    const/4 v0, 0x1

    .line 897
    :goto_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PackageName: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "; isPackageInForeGround "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 898
    return v0

    :cond_65
    move v0, v1

    .line 893
    goto :goto_31

    :cond_67
    move v0, v1

    goto :goto_31
.end method

.method private bJR(Lcn/nubia/bigAperture/BigApertureTask;)Z
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 614
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v1

    .line 615
    :try_start_4
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    if-eq v0, v2, :cond_22

    .line 616
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-eqz v0, :cond_24

    .line 617
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    if-ne v0, v2, :cond_24

    .line 618
    iget-object v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v2, v2, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v2, v2, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_26

    move-result v0

    :goto_20
    monitor-exit v1

    .line 615
    return v0

    :cond_22
    const/4 v0, 0x1

    goto :goto_20

    .line 616
    :cond_24
    const/4 v0, 0x0

    goto :goto_20

    .line 614
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bJS(Lcn/nubia/bigAperture/BigApertureTask;)Z
    .registers 5

    .prologue
    .line 606
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v1

    .line 607
    :try_start_3
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-eqz v0, :cond_1e

    .line 608
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    .line 609
    iget-object v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v2, v2, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v2, v2, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_20

    move-result v0

    :goto_1c
    monitor-exit v1

    .line 607
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1c

    .line 606
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bJT(Lcn/nubia/bigAperture/BigApertureTask;)Z
    .registers 6

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 623
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v1

    .line 624
    :try_start_5
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    if-eq v0, v3, :cond_d

    .line 625
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->mState:I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_33

    if-ne v0, v2, :cond_10

    .line 624
    :cond_d
    const/4 v0, 0x1

    :goto_e
    monitor-exit v1

    return v0

    .line 626
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-eqz v0, :cond_31

    .line 627
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    if-eq v0, v3, :cond_24

    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    if-ne v0, v2, :cond_31

    .line 628
    :cond_24
    iget-object v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v2, v2, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v2, v2, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_33

    move-result v0

    goto :goto_e

    .line 626
    :cond_31
    const/4 v0, 0x0

    goto :goto_e

    .line 623
    :catchall_33
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private bJU(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 973
    iget-boolean v0, p0, Lcn/nubia/bigAperture/g;->bnB:Z

    if-eqz v0, :cond_a

    .line 974
    const-string/jumbo v0, "BigApertureProcessTread"

    invoke-static {v0, p1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    :cond_a
    return-void
.end method

.method private bJV(Lcn/nubia/bigAperture/BigApertureTask;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 598
    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v2

    .line 599
    :try_start_5
    iget-object v3, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-eqz v3, :cond_1f

    .line 600
    iget-object v3, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v3, v3, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget v3, v3, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    if-ne v3, v1, :cond_1f

    .line 601
    iget-object v3, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    iget-object v4, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v4, v4, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v4, v4, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_23

    move-result v3

    if-eqz v3, :cond_21

    :cond_1f
    :goto_1f
    monitor-exit v2

    .line 599
    return v0

    :cond_21
    move v0, v1

    .line 601
    goto :goto_1f

    .line 598
    :catchall_23
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private bJW(Lcn/nubia/bigAperture/b;Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 9

    .prologue
    .line 485
    if-eqz p1, :cond_3a

    .line 486
    iget-object v0, p1, Lcn/nubia/bigAperture/b;->bms:Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 487
    const-string/jumbo v0, "BigApertureProcessTread"

    const-string/jumbo v1, "resetState"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 490
    sget v1, Lcom/android/common/exif/o;->PI:I

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    iget-object v1, p1, Lcn/nubia/bigAperture/b;->bms:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/common/h;->aph(Ljava/lang/String;Landroid/util/SparseArray;)Ljava/io/ByteArrayOutputStream;

    .line 494
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 495
    const-string/jumbo v1, "datetaken"

    iget-wide v2, p1, Lcn/nubia/bigAperture/b;->bmr:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    iget-object v1, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-direct {p0, v1, v0}, Lcn/nubia/bigAperture/g;->bKc(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 484
    :cond_3a
    return-void
.end method

.method private bJX()V
    .registers 3

    .prologue
    .line 506
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnL:Lcn/nubia/bigAperture/p;

    new-instance v1, Lcn/nubia/bigAperture/u;

    invoke-direct {v1, p0}, Lcn/nubia/bigAperture/u;-><init>(Lcn/nubia/bigAperture/g;)V

    invoke-virtual {v0, v1}, Lcn/nubia/bigAperture/p;->bKC(Lcn/nubia/bigAperture/q;)V

    .line 505
    return-void
.end method

.method private bJY(Landroid/os/Messenger;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 521
    const/4 v0, 0x0

    const/4 v1, 0x4

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 522
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 523
    const-string/jumbo v2, "depth_uri"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 524
    const-string/jumbo v2, "apert_result"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string/jumbo v2, "BigApertureProcessTread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cancelMsg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 527
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_37} :catch_38

    .line 519
    :goto_37
    return-void

    .line 528
    :catch_38
    move-exception v0

    .line 529
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_37
.end method

.method private bJZ(Landroid/os/Messenger;Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 12

    .prologue
    .line 535
    :try_start_0
    new-instance v3, Lcom/android/common/exif/o;

    invoke-direct {v3}, Lcom/android/common/exif/o;-><init>()V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/0.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/common/exif/o;->QF(Ljava/lang/String;)V

    .line 538
    const/16 v2, 0x64

    .line 539
    const/4 v1, 0x0

    const v0, 0x400ccccd    # 2.2f

    .line 541
    sget v4, Lcom/android/common/exif/o;->PJ:I

    invoke-virtual {v3, v4}, Lcom/android/common/exif/o;->QI(I)Ljava/lang/Integer;

    move-result-object v4

    .line 542
    if-eqz v4, :cond_30

    .line 543
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 545
    :cond_30
    sget v4, Lcom/android/common/exif/o;->PK:I

    invoke-virtual {v3, v4}, Lcom/android/common/exif/o;->QJ(I)Lcom/android/common/exif/m;

    move-result-object v4

    .line 546
    if-eqz v4, :cond_3d

    .line 547
    invoke-virtual {v4}, Lcom/android/common/exif/m;->Qq()D

    move-result-wide v4

    double-to-float v1, v4

    .line 549
    :cond_3d
    sget v4, Lcom/android/common/exif/o;->PE:I

    invoke-virtual {v3, v4}, Lcom/android/common/exif/o;->QJ(I)Lcom/android/common/exif/m;

    move-result-object v3

    .line 550
    if-eqz v3, :cond_4a

    .line 551
    invoke-virtual {v3}, Lcom/android/common/exif/m;->Qq()D

    move-result-wide v4

    double-to-float v0, v4

    .line 553
    :cond_4a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "iso: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", exposure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; fNumber:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 555
    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    .line 556
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 557
    const-string/jumbo v5, "depth_uri"

    iget-object v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 558
    const-string/jumbo v5, "apert_result"

    const-string/jumbo v6, "LOCK SUCCESS"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string/jumbo v5, "depth_data_path"

    iget-object v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string/jumbo v5, "apert_yuv_width"

    iget v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 561
    const-string/jumbo v5, "apert_yuv_height"

    iget v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    const-string/jumbo v5, "apert_depth_width"

    iget v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmP:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    const-string/jumbo v5, "apert_depth_height"

    iget v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmQ:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    const/4 v5, 0x2

    new-array v5, v5, [F

    iget v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmT:F

    const/4 v7, 0x0

    aput v6, v5, v7

    iget v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmU:F

    const/4 v7, 0x1

    aput v6, v5, v7

    .line 565
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/common/custom/x;->adr()Z

    move-result v6

    if-eqz v6, :cond_e8

    .line 566
    const/4 v6, 0x2

    new-array v6, v6, [F

    iget v7, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmT:F

    const/4 v8, 0x0

    aput v7, v6, v8

    iget v7, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmU:F

    const/4 v8, 0x1

    aput v7, v6, v8

    iget v7, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    invoke-static {v6, v7, v5}, Lcn/nubia/arcsoft/a;->bMx([FI[F)V

    .line 568
    :cond_e8
    const-string/jumbo v6, "apert_focus_x"

    const/4 v7, 0x0

    aget v7, v5, v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 569
    const-string/jumbo v6, "apert_focus_y"

    const/4 v7, 0x1

    aget v5, v5, v7

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 570
    const-string/jumbo v5, "key_skin_smooth"

    iget v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmM:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 571
    const-string/jumbo v5, "key_skin_tone"

    iget v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmN:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 572
    const-string/jumbo v5, "key_face_slime"

    iget v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmO:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    const-string/jumbo v5, "apert_focus_length"

    iget v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmV:F

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 575
    const-string/jumbo v5, "apert_image_rotation"

    iget v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    const-string/jumbo v5, "apert_main_dac_value"

    iget v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmS:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 577
    const-string/jumbo v5, "apert_F_number"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 578
    const-string/jumbo v0, "apert_exposure_time"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 579
    const-string/jumbo v0, "apert_iso"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 580
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adr()Z

    move-result v0

    if-eqz v0, :cond_165

    .line 581
    const-string/jumbo v0, "apert_algorithm_version"

    const/4 v1, 0x2

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 585
    :goto_151
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 586
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnN:Landroid/os/Messenger;

    invoke-virtual {v0, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 587
    const-string/jumbo v0, "BigApertureProcessTread"

    const-string/jumbo v1, "successMsg: LOCK SUCCESS"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_164
    return-void

    .line 583
    :cond_165
    const-string/jumbo v0, "apert_algorithm_version"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_16c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16c} :catch_16d
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_16c} :catch_177
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16c} :catch_172

    goto :goto_151

    .line 588
    :catch_16d
    move-exception v0

    .line 589
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_164

    .line 592
    :catch_172
    move-exception v0

    .line 593
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_164

    .line 590
    :catch_177
    move-exception v0

    .line 591
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_164
.end method

.method private bJy(Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 4

    .prologue
    .line 875
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v0

    .line 876
    :try_start_3
    invoke-virtual {p1}, Lcn/nubia/bigAperture/BigApertureTask;->bJj()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 874
    return-void

    .line 875
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private bJz(Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 4

    .prologue
    .line 862
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v0

    .line 863
    :try_start_3
    invoke-virtual {p1}, Lcn/nubia/bigAperture/BigApertureTask;->bJk()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_d

    monitor-exit v0

    .line 865
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnL:Lcn/nubia/bigAperture/p;

    invoke-virtual {v0, p1}, Lcn/nubia/bigAperture/p;->bKD(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 861
    return-void

    .line 862
    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private bKa()V
    .registers 4

    .prologue
    .line 917
    const-string/jumbo v0, "BigApertureProcessTread"

    const-string/jumbo v1, "stopService"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bny:Landroid/content/Context;

    const-class v2, Lcn/nubia/bigAperture/BigApertureService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 919
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bny:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 916
    return-void
.end method

.method private bKc(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 502
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnx:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 501
    return-void
.end method

.method static synthetic bKd(Lcn/nubia/bigAperture/g;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bny:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic bKe(Lcn/nubia/bigAperture/g;)Z
    .registers 2

    iget-boolean v0, p0, Lcn/nubia/bigAperture/g;->bnE:Z

    return v0
.end method

.method static synthetic bKf(Lcn/nubia/bigAperture/g;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic bKg(Lcn/nubia/bigAperture/g;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnJ:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic bKh(Lcn/nubia/bigAperture/g;)Lcn/nubia/bigAperture/h;
    .registers 2

    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    return-object v0
.end method

.method static synthetic bKi(Lcn/nubia/bigAperture/g;Ljava/lang/String;Landroid/content/Context;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcn/nubia/bigAperture/g;->bJQ(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic bKj(Lcn/nubia/bigAperture/g;Lcn/nubia/bigAperture/BigApertureTask;[B[BLcn/nubia/bigAperture/l;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/bigAperture/g;->bJI(Lcn/nubia/bigAperture/BigApertureTask;[B[BLcn/nubia/bigAperture/l;)V

    return-void
.end method

.method static synthetic bKk(Lcn/nubia/bigAperture/g;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic bKl(Lcn/nubia/bigAperture/g;)V
    .registers 1

    invoke-direct {p0}, Lcn/nubia/bigAperture/g;->bKa()V

    return-void
.end method


# virtual methods
.method public bJF()V
    .registers 3

    .prologue
    .line 219
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v1

    .line 220
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcn/nubia/bigAperture/g;->bnC:Z

    .line 221
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->notifyAll()V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    monitor-exit v1

    .line 218
    return-void

    .line 219
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bJx(Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 4

    .prologue
    .line 108
    if-nez p1, :cond_3

    .line 109
    return-void

    .line 111
    :cond_3
    const-string/jumbo v0, "addTask"

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v1

    .line 116
    :try_start_c
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->notifyAll()V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_18

    monitor-exit v1

    .line 107
    return-void

    .line 113
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bKb(Landroid/net/Uri;Z)Z
    .registers 8

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 176
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v1

    .line 177
    :try_start_5
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-eqz v0, :cond_90

    .line 178
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 177
    if-eqz v0, :cond_90

    .line 179
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    .line 180
    if-eq v0, v4, :cond_1f

    .line 181
    if-ne v0, v3, :cond_62

    .line 183
    :cond_1f
    if-ne v0, v3, :cond_88

    .line 184
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJy(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 188
    :goto_28
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJN(Landroid/net/Uri;)Lcn/nubia/bigAperture/BigApertureTask;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 189
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v2, v2, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_3d
    if-nez p2, :cond_4f

    .line 193
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnN:Landroid/os/Messenger;

    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v2, v2, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v2, v2, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    const-string/jumbo v3, "SERVICE IN CAMERA CANCEL"

    invoke-direct {p0, v0, v2, v3}, Lcn/nubia/bigAperture/g;->bJY(Landroid/os/Messenger;Landroid/net/Uri;Ljava/lang/String;)V

    .line 199
    :cond_4f
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    .line 200
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->notifyAll()V

    .line 201
    const-string/jumbo v0, "BigApertureProcessTread"

    const-string/jumbo v2, "unlock success"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_85

    monitor-exit v1

    .line 202
    return v4

    .line 182
    :cond_62
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1f

    .line 196
    :try_start_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UrgentTask.state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v3, v3, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget v3, v3, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_85
    .catchall {:try_start_65 .. :try_end_85} :catchall_85

    .line 176
    :catchall_85
    move-exception v0

    monitor-exit v1

    throw v0

    .line 186
    :cond_88
    :try_start_88
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJA(Lcn/nubia/bigAperture/BigApertureTask;)V

    goto :goto_28

    .line 204
    :cond_90
    const-string/jumbo v0, "BigApertureProcessTread"

    const-string/jumbo v2, "unlock fail"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_99
    .catchall {:try_start_88 .. :try_end_99} :catchall_85

    .line 205
    const/4 v0, 0x0

    monitor-exit v1

    return v0
.end method

.method public lockDepthData(Landroid/net/Uri;Landroid/os/Messenger;)Z
    .registers 8

    .prologue
    .line 122
    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v2

    .line 125
    :try_start_3
    invoke-direct {p0, p1}, Lcn/nubia/bigAperture/g;->bJN(Landroid/net/Uri;)Lcn/nubia/bigAperture/BigApertureTask;

    move-result-object v1

    .line 126
    if-nez v1, :cond_c5

    .line 127
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/bigAperture/BigApertureTask;

    .line 128
    iget-object v4, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 134
    :goto_23
    if-nez v0, :cond_39

    .line 135
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-eqz v1, :cond_90

    .line 136
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v1, v1, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v1, v1, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 135
    if-eqz v1, :cond_90

    .line 137
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    .line 145
    :cond_39
    :goto_39
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-eqz v1, :cond_6e

    .line 146
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v1, v1, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget v1, v1, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_a8

    .line 147
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v1, v1, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v1}, Lcn/nubia/bigAperture/g;->bJy(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 152
    :goto_4d
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    iget-object v3, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v3, v3, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v1, v1, Lcn/nubia/bigAperture/h;->bnN:Landroid/os/Messenger;

    .line 154
    iget-object v3, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v3, v3, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v3, v3, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    .line 155
    const-string/jumbo v4, "CANCEL_NEW_LOCK_RECEIVED"

    .line 153
    invoke-direct {p0, v1, v3, v4}, Lcn/nubia/bigAperture/g;->bJY(Landroid/os/Messenger;Landroid/net/Uri;Ljava/lang/String;)V

    .line 156
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    .line 157
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->notifyAll()V

    .line 160
    :cond_6e
    if-eqz v0, :cond_b3

    .line 161
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 162
    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJC(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 163
    new-instance v1, Lcn/nubia/bigAperture/h;

    invoke-direct {v1, p0, v0, p2}, Lcn/nubia/bigAperture/h;-><init>(Lcn/nubia/bigAperture/g;Lcn/nubia/bigAperture/BigApertureTask;Landroid/os/Messenger;)V

    iput-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    .line 164
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->notifyAll()V

    .line 165
    const-string/jumbo v0, "BigApertureProcessTread"

    const-string/jumbo v1, "lock success"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_b0

    .line 166
    const/4 v0, 0x1

    monitor-exit v2

    return v0

    .line 138
    :cond_90
    :try_start_90
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    if-eqz v1, :cond_39

    .line 139
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v1, v1, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    const/4 v3, 0x5

    if-eq v1, v3, :cond_39

    .line 140
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v1, v1, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 138
    if-eqz v1, :cond_39

    .line 141
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    goto :goto_39

    .line 149
    :cond_a8
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v1, v1, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v1}, Lcn/nubia/bigAperture/g;->bJA(Lcn/nubia/bigAperture/BigApertureTask;)V
    :try_end_af
    .catchall {:try_start_90 .. :try_end_af} :catchall_b0

    goto :goto_4d

    .line 122
    :catchall_b0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 168
    :cond_b3
    :try_start_b3
    const-string/jumbo v0, "NO DEPTH CAN LOCK"

    invoke-direct {p0, p2, p1, v0}, Lcn/nubia/bigAperture/g;->bJY(Landroid/os/Messenger;Landroid/net/Uri;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v0, "BigApertureProcessTread"

    const-string/jumbo v1, "lock fail"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c2
    .catchall {:try_start_b3 .. :try_end_c2} :catchall_b0

    .line 170
    const/4 v0, 0x0

    monitor-exit v2

    return v0

    :cond_c5
    move-object v0, v1

    goto/16 :goto_23
.end method

.method public run()V
    .registers 14

    .prologue
    .line 227
    const-string/jumbo v0, "BigApertureProcessTread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/bigAperture/g;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 229
    invoke-direct {p0}, Lcn/nubia/bigAperture/g;->bJX()V

    .line 231
    :cond_24
    :goto_24
    iget-boolean v0, p0, Lcn/nubia/bigAperture/g;->bnC:Z

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    :goto_2e
    if-nez v0, :cond_9f

    .line 232
    const-string/jumbo v0, "Enter a new task process loop"

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v1

    .line 234
    :try_start_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsStop: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcn/nubia/bigAperture/g;->bnC:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    const-string/jumbo v2, "; Queue\uff1a "

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 235
    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    const-string/jumbo v2, "; Urgent: "

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 236
    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    const-string/jumbo v2, "; NeedStoppedAfterTaskDone: "

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    iget-boolean v2, p0, Lcn/nubia/bigAperture/g;->bnE:Z

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    const-string/jumbo v2, "; Saving: "

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 238
    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnJ:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 239
    iget-boolean v0, p0, Lcn/nubia/bigAperture/g;->bnC:Z

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;
    :try_end_9c
    .catchall {:try_start_39 .. :try_end_9c} :catchall_143

    if-nez v0, :cond_d3

    monitor-exit v1

    .line 454
    :cond_9f
    sget-boolean v0, Lcn/nubia/bigAperture/BigApertureService;->bnS:Z

    if-nez v0, :cond_b1

    .line 455
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v1

    .line 456
    :try_start_a6
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcn/nubia/bigAperture/BigApertureService;->bnT:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/bigAperture/a;->bIP(Ljava/io/File;)V
    :try_end_b0
    .catchall {:try_start_a6 .. :try_end_b0} :catchall_43b

    monitor-exit v1

    .line 460
    :cond_b1
    const-string/jumbo v0, "BigApertureProcessTread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "End: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/bigAperture/g;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void

    .line 231
    :cond_d0
    const/4 v0, 0x0

    goto/16 :goto_2e

    .line 243
    :cond_d3
    :try_start_d3
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnD:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_146

    .line 246
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJT(Lcn/nubia/bigAperture/BigApertureTask;)Z

    move-result v0

    if-nez v0, :cond_fb

    .line 247
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJN(Landroid/net/Uri;)Lcn/nubia/bigAperture/BigApertureTask;
    :try_end_f8
    .catchall {:try_start_d3 .. :try_end_f8} :catchall_143

    move-result-object v0

    if-eqz v0, :cond_146

    .line 249
    :cond_fb
    :try_start_fb
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-nez v0, :cond_118

    .line 250
    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnD:Landroid/os/Handler;

    .line 251
    iget-boolean v0, p0, Lcn/nubia/bigAperture/g;->bnE:Z

    if-eqz v0, :cond_114

    const/16 v0, 0x7530

    :goto_107
    int-to-long v4, v0

    .line 250
    const/4 v0, 0x3

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 260
    :cond_10c
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->wait()V
    :try_end_111
    .catch Ljava/lang/InterruptedException; {:try_start_fb .. :try_end_111} :catch_13e
    .catchall {:try_start_fb .. :try_end_111} :catchall_143

    :goto_111
    monitor-exit v1

    goto/16 :goto_24

    .line 251
    :cond_114
    const v0, 0x1d4c0

    goto :goto_107

    .line 252
    :cond_118
    :try_start_118
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-eqz v0, :cond_10c

    .line 253
    iget-boolean v0, p0, Lcn/nubia/bigAperture/g;->bnE:Z

    if-nez v0, :cond_10c

    .line 254
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJT(Lcn/nubia/bigAperture/BigApertureTask;)Z

    move-result v0

    .line 252
    if-eqz v0, :cond_10c

    .line 256
    const-string/jumbo v0, "BigApertureProcessTread"

    const-string/jumbo v2, "directly call unlock in camera"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcn/nubia/bigAperture/g;->bKb(Landroid/net/Uri;Z)Z
    :try_end_13d
    .catch Ljava/lang/InterruptedException; {:try_start_118 .. :try_end_13d} :catch_13e
    .catchall {:try_start_118 .. :try_end_13d} :catchall_143

    goto :goto_111

    .line 261
    :catch_13e
    move-exception v0

    .line 262
    :try_start_13f
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_142
    .catchall {:try_start_13f .. :try_end_142} :catchall_143

    goto :goto_111

    .line 233
    :catchall_143
    move-exception v0

    monitor-exit v1

    throw v0

    .line 266
    :cond_146
    :try_start_146
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    if-eqz v0, :cond_154

    .line 267
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJT(Lcn/nubia/bigAperture/BigApertureTask;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 272
    :cond_154
    iget-boolean v0, p0, Lcn/nubia/bigAperture/g;->bnE:Z

    if-eqz v0, :cond_1a7

    .line 273
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/bigAperture/BigApertureTask;

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;
    :try_end_162
    .catchall {:try_start_146 .. :try_end_162} :catchall_143

    :goto_162
    monitor-exit v1

    .line 281
    const-string/jumbo v0, "A new process loop start"

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/bigAperture/g;->bnG:J

    .line 283
    iget-wide v0, p0, Lcn/nubia/bigAperture/g;->bnG:J

    iput-wide v0, p0, Lcn/nubia/bigAperture/g;->bnA:J

    .line 284
    iget-wide v0, p0, Lcn/nubia/bigAperture/g;->bnG:J

    iput-wide v0, p0, Lcn/nubia/bigAperture/g;->bnw:J

    .line 285
    iget-wide v0, p0, Lcn/nubia/bigAperture/g;->bnG:J

    iput-wide v0, p0, Lcn/nubia/bigAperture/g;->bnF:J

    .line 286
    iget-wide v0, p0, Lcn/nubia/bigAperture/g;->bnG:J

    iput-wide v0, p0, Lcn/nubia/bigAperture/g;->bnv:J

    .line 287
    iget-wide v0, p0, Lcn/nubia/bigAperture/g;->bnG:J

    iput-wide v0, p0, Lcn/nubia/bigAperture/g;->bnI:J

    .line 289
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    if-eqz v0, :cond_24

    .line 295
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1b2

    .line 296
    const-string/jumbo v0, "BigApertureProcessTread"

    const-string/jumbo v1, "The task has been processed >2 times failed, just ignore it"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/bigAperture/g;->bJM(Lcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/b;Z)V

    goto/16 :goto_24

    .line 268
    :cond_1a0
    :try_start_1a0
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnM:Lcn/nubia/bigAperture/h;

    iget-object v0, v0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    goto :goto_162

    .line 275
    :cond_1a7
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/bigAperture/BigApertureTask;

    iput-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;
    :try_end_1b1
    .catchall {:try_start_1a0 .. :try_end_1b1} :catchall_143

    goto :goto_162

    .line 301
    :cond_1b2
    const/4 v1, 0x0

    .line 305
    :try_start_1b3
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v2, v0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    .line 306
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnL:Lcn/nubia/bigAperture/p;

    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-virtual {v0, v2}, Lcn/nubia/bigAperture/p;->bKD(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 308
    new-instance v9, Lcn/nubia/bigAperture/l;

    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-direct {v9, v0}, Lcn/nubia/bigAperture/l;-><init>(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget-object v0, v0, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnx:Landroid/content/ContentResolver;

    invoke-static {v0, v2}, Lcn/nubia/bigAperture/a;->bIU(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcn/nubia/bigAperture/b;
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_1b3 .. :try_end_1d4} :catch_43e
    .catch Ljava/lang/Throwable; {:try_start_1b3 .. :try_end_1d4} :catch_442

    move-result-object v11

    .line 311
    :try_start_1d5
    invoke-virtual {v9}, Lcn/nubia/bigAperture/l;->bKp()Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 312
    if-nez v11, :cond_224

    .line 314
    :cond_1dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Uri or file is unvalidate, or currentExecutedTask is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 316
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJP(Lcn/nubia/bigAperture/BigApertureTask;)Z

    move-result v0

    if-eqz v0, :cond_282

    const-string/jumbo v0, "done"

    .line 314
    :goto_1f4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 317
    const-string/jumbo v1, "delete all the files"

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v11, v1}, Lcn/nubia/bigAperture/g;->bJM(Lcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/b;Z)V
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_20c} :catch_20e
    .catch Ljava/lang/Throwable; {:try_start_1d5 .. :try_end_20c} :catch_26b

    goto/16 :goto_24

    .line 441
    :catch_20e
    move-exception v0

    .line 442
    :goto_20f
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    if-eqz v1, :cond_219

    .line 443
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v11, v2}, Lcn/nubia/bigAperture/g;->bJM(Lcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/b;Z)V

    .line 445
    :cond_219
    const-string/jumbo v1, "BigApertureProcessTread"

    const-string/jumbo v2, "Error occured!!!"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 313
    :cond_224
    :try_start_224
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJP(Lcn/nubia/bigAperture/BigApertureTask;)Z

    move-result v0

    .line 311
    if-nez v0, :cond_1dd

    .line 322
    iget-boolean v0, p0, Lcn/nubia/bigAperture/g;->bnB:Z

    if-eqz v0, :cond_235

    .line 323
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-virtual {v0}, Lcn/nubia/bigAperture/BigApertureTask;->bJo()V

    .line 328
    :cond_235
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnu:Lcn/nubia/bigAperture/BigAperAlgorithm;

    invoke-virtual {v9}, Lcn/nubia/bigAperture/l;->bKq()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v1, v1, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v2, v2, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    .line 328
    invoke-static {v0, v1}, Lcn/nubia/bigAperture/BigAperAlgorithm;->bJw(Ljava/lang/String;I)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v0

    .line 333
    invoke-virtual {v9}, Lcn/nubia/bigAperture/l;->bKr()Ljava/io/File;

    move-result-object v1

    .line 334
    invoke-virtual {v9}, Lcn/nubia/bigAperture/l;->bKs()Ljava/io/File;

    move-result-object v2

    .line 335
    iget-object v3, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    .line 332
    invoke-direct {p0, v1, v2, v0, v3}, Lcn/nubia/bigAperture/g;->bJE(Ljava/io/File;Ljava/io/File;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/BigApertureTask;)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v12

    .line 337
    if-nez v12, :cond_287

    .line 338
    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 339
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v11, v1}, Lcn/nubia/bigAperture/g;->bJM(Lcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/b;Z)V
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_269} :catch_20e
    .catch Ljava/lang/Throwable; {:try_start_224 .. :try_end_269} :catch_26b

    goto/16 :goto_24

    .line 446
    :catch_26b
    move-exception v0

    move-object v1, v11

    .line 447
    :goto_26d
    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    if-eqz v2, :cond_277

    .line 448
    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcn/nubia/bigAperture/g;->bJM(Lcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/b;Z)V

    .line 450
    :cond_277
    const-string/jumbo v1, "BigApertureProcessTread"

    const-string/jumbo v2, "Error occured!!!"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 316
    :cond_282
    :try_start_282
    const-string/jumbo v0, "undo"

    goto/16 :goto_1f4

    .line 343
    :cond_287
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v1, v12, v9}, Lcn/nubia/bigAperture/g;->bJH(Lcn/nubia/bigAperture/BigApertureTask;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/l;)Z

    move-result v1

    if-eqz v1, :cond_2a6

    .line 344
    invoke-virtual {v12}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 345
    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 348
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v1, v0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    .line 349
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnL:Lcn/nubia/bigAperture/p;

    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-virtual {v0, v1}, Lcn/nubia/bigAperture/p;->bKD(Lcn/nubia/bigAperture/BigApertureTask;)V

    goto/16 :goto_24

    .line 353
    :cond_2a6
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v1, v1, Lcn/nubia/bigAperture/BigApertureTask;->bmM:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2fd

    .line 354
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v1, v1, Lcn/nubia/bigAperture/BigApertureTask;->bmN:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2fd

    .line 355
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v1, v1, Lcn/nubia/bigAperture/BigApertureTask;->bmO:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2fd

    .line 356
    const-string/jumbo v1, "do prettyEffect E"

    invoke-direct {p0, v1}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v1, v1, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    .line 358
    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v2, v2, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    .line 359
    iget-object v3, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v3, v3, Lcn/nubia/bigAperture/BigApertureTask;->bmM:I

    .line 360
    iget-object v4, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v4, v4, Lcn/nubia/bigAperture/BigApertureTask;->bmN:I

    .line 361
    iget-object v5, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v5, v5, Lcn/nubia/bigAperture/BigApertureTask;->bmO:I

    .line 357
    invoke-static/range {v0 .. v5}, Lcom/nubia/camera/common/Native/PrettyWaterMarkEffect;->btQ(Lcom/nubia/camera/common/Native/BufferCell;IIIII)V

    .line 363
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v1, v12, v9}, Lcn/nubia/bigAperture/g;->bJH(Lcn/nubia/bigAperture/BigApertureTask;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/l;)Z

    move-result v1

    if-eqz v1, :cond_2f7

    .line 364
    invoke-virtual {v12}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 365
    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 368
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v1, v0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    .line 369
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnL:Lcn/nubia/bigAperture/p;

    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-virtual {v0, v1}, Lcn/nubia/bigAperture/p;->bKD(Lcn/nubia/bigAperture/BigApertureTask;)V

    goto/16 :goto_24

    .line 372
    :cond_2f7
    const-string/jumbo v1, "do prettyEffect X"

    invoke-direct {p0, v1}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 375
    :cond_2fd
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v9, v0, v1}, Lcn/nubia/bigAperture/g;->bJL(Lcn/nubia/bigAperture/l;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/BigApertureTask;)[B

    move-result-object v6

    .line 376
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v1, v6, v9, v12}, Lcn/nubia/bigAperture/g;->bJJ(Lcn/nubia/bigAperture/BigApertureTask;[BLcn/nubia/bigAperture/l;Lcom/nubia/camera/common/Native/BufferCell;)Z

    move-result v1

    if-eqz v1, :cond_325

    .line 377
    invoke-virtual {v12}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 378
    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 381
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 384
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v1, v0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    .line 385
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnL:Lcn/nubia/bigAperture/p;

    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-virtual {v0, v1}, Lcn/nubia/bigAperture/p;->bKD(Lcn/nubia/bigAperture/BigApertureTask;)V

    goto/16 :goto_24

    .line 389
    :cond_325
    invoke-static {v6}, Lcn/nubia/bigAperture/a;->bIV([B)Lcn/nubia/bigAperture/c;

    move-result-object v7

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iso: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcn/nubia/bigAperture/c;->bmv:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    const-string/jumbo v2, ", exposure"

    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    iget v2, v7, Lcn/nubia/bigAperture/c;->bmt:F

    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    const-string/jumbo v2, "; fNumber:"

    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    iget v2, v7, Lcn/nubia/bigAperture/c;->bmu:F

    .line 390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    .line 395
    invoke-direct {p0, v1, v0, v12, v7}, Lcn/nubia/bigAperture/g;->bJD(Lcn/nubia/bigAperture/BigApertureTask;Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/c;)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v3

    .line 399
    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 400
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {p0, v0, v9, v6, v12}, Lcn/nubia/bigAperture/g;->bJG(Lcn/nubia/bigAperture/BigApertureTask;Lcn/nubia/bigAperture/l;[BLcom/nubia/camera/common/Native/BufferCell;)Z

    move-result v0

    if-eqz v0, :cond_387

    .line 401
    invoke-virtual {v12}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 402
    invoke-virtual {v3}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 405
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 408
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    iget v1, v0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    .line 409
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnL:Lcn/nubia/bigAperture/p;

    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-virtual {v0, v1}, Lcn/nubia/bigAperture/p;->bKD(Lcn/nubia/bigAperture/BigApertureTask;)V

    goto/16 :goto_24

    .line 413
    :cond_387
    new-instance v0, Lcn/nubia/bigAperture/d;

    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnx:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    .line 416
    iget-object v8, p0, Lcn/nubia/bigAperture/g;->bnL:Lcn/nubia/bigAperture/p;

    .line 417
    new-instance v10, Lcn/nubia/bigAperture/i;

    const/4 v4, 0x0

    invoke-direct {v10, p0, v4}, Lcn/nubia/bigAperture/i;-><init>(Lcn/nubia/bigAperture/g;Lcn/nubia/bigAperture/i;)V

    move-object v4, v12

    move-object v5, v11

    .line 413
    invoke-direct/range {v0 .. v10}, Lcn/nubia/bigAperture/d;-><init>(Landroid/content/ContentResolver;Lcn/nubia/bigAperture/BigApertureTask;Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/b;[BLcn/nubia/bigAperture/c;Lcn/nubia/bigAperture/p;Lcn/nubia/bigAperture/l;Lcn/nubia/bigAperture/e;)V

    .line 418
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnK:Lcom/android/common/storagemanager/f;

    new-instance v2, Lcn/nubia/bigAperture/r;

    invoke-direct {v2, v0}, Lcn/nubia/bigAperture/r;-><init>(Lcn/nubia/bigAperture/d;)V

    invoke-virtual {v1, v2}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    move-result-object v1

    .line 419
    sget-object v2, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaE:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    if-eq v1, v2, :cond_428

    .line 420
    invoke-virtual {v0}, Lcn/nubia/bigAperture/d;->bJc()V

    .line 428
    :goto_3ac
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[perf test] Total Process time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/nubia/bigAperture/g;->bnG:J

    sub-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    const-string/jumbo v1, "ms. Including (depthStart -> originalImageStart: "

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    iget-wide v2, p0, Lcn/nubia/bigAperture/g;->bnF:J

    iget-wide v4, p0, Lcn/nubia/bigAperture/g;->bnA:J

    sub-long/2addr v2, v4

    .line 431
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    const-string/jumbo v1, "ms; (originalImageStart -> bigApertureImageStart: "

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    iget-wide v2, p0, Lcn/nubia/bigAperture/g;->bnw:J

    iget-wide v4, p0, Lcn/nubia/bigAperture/g;->bnF:J

    sub-long/2addr v2, v4

    .line 431
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 434
    const-string/jumbo v1, "ms; (bigApertureImageStart -> bigApertureImageCompressStart: "

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 434
    iget-wide v2, p0, Lcn/nubia/bigAperture/g;->bnv:J

    iget-wide v4, p0, Lcn/nubia/bigAperture/g;->bnw:J

    sub-long/2addr v2, v4

    .line 431
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    const-string/jumbo v1, "ms; (bigApertureImageCompressStart -> saveStart: "

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    iget-wide v2, p0, Lcn/nubia/bigAperture/g;->bnI:J

    iget-wide v4, p0, Lcn/nubia/bigAperture/g;->bnv:J

    sub-long/2addr v2, v4

    .line 431
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    const-string/jumbo v1, "ms; (saveStart -> end: "

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/nubia/bigAperture/g;->bnI:J

    sub-long/2addr v2, v4

    .line 431
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/g;->bJU(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v0
    :try_end_422
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_422} :catch_20e
    .catch Ljava/lang/Throwable; {:try_start_282 .. :try_end_422} :catch_26b

    .line 439
    const/4 v1, 0x0

    :try_start_423
    iput-object v1, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;
    :try_end_425
    .catchall {:try_start_423 .. :try_end_425} :catchall_438

    :try_start_425
    monitor-exit v0

    goto/16 :goto_24

    .line 422
    :cond_428
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_42b
    .catch Ljava/lang/Exception; {:try_start_425 .. :try_end_42b} :catch_20e
    .catch Ljava/lang/Throwable; {:try_start_425 .. :try_end_42b} :catch_26b

    .line 423
    :try_start_42b
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnJ:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/bigAperture/g;->bnz:Lcn/nubia/bigAperture/BigApertureTask;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_432
    .catchall {:try_start_42b .. :try_end_432} :catchall_435

    :try_start_432
    monitor-exit v1

    goto/16 :goto_3ac

    .line 422
    :catchall_435
    move-exception v0

    monitor-exit v1

    throw v0

    .line 438
    :catchall_438
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_43b
    .catch Ljava/lang/Exception; {:try_start_432 .. :try_end_43b} :catch_20e
    .catch Ljava/lang/Throwable; {:try_start_432 .. :try_end_43b} :catch_26b

    .line 455
    :catchall_43b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 441
    :catch_43e
    move-exception v0

    move-object v11, v1

    goto/16 :goto_20f

    .line 446
    :catch_442
    move-exception v0

    goto/16 :goto_26d
.end method

.method public setServiceStoppedAfterTasksDone(Z)V
    .registers 4

    .prologue
    .line 212
    iget-object v1, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    monitor-enter v1

    .line 213
    :try_start_3
    iput-boolean p1, p0, Lcn/nubia/bigAperture/g;->bnE:Z

    .line 214
    iget-object v0, p0, Lcn/nubia/bigAperture/g;->bnH:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->notify()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v1

    .line 211
    return-void

    .line 212
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
