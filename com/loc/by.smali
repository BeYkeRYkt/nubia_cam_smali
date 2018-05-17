.class public Lcom/loc/by;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I

.field static b:I

.field private static bhD:Ljava/util/Hashtable;

.field private static bhE:Lcom/loc/aV;

.field private static bhF:Ljava/util/Hashtable;

.field private static bhG:Landroid/telephony/TelephonyManager;

.field private static volatile c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    sput-object v1, Lcom/loc/by;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/loc/by;->bhD:Ljava/util/Hashtable;

    new-instance v0, Lcom/loc/aV;

    invoke-direct {v0}, Lcom/loc/aV;-><init>()V

    sput-object v0, Lcom/loc/by;->bhE:Lcom/loc/aV;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/loc/by;->bhF:Ljava/util/Hashtable;

    sput-object v1, Lcom/loc/by;->bhG:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    aput v2, v0, v1

    sput-object v0, Lcom/loc/by;->a:[I

    const v0, 0x34383

    sput v0, Lcom/loc/by;->b:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static a(I)I
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x20

    new-array v2, v1, [I

    move v1, v0

    :goto_6
    const/4 v3, 0x4

    if-lt v0, v3, :cond_d

    sget v0, Lcom/loc/by;->b:I

    add-int/2addr v0, v1

    return v0

    :cond_d
    mul-int/lit8 v3, v0, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v0

    aget v3, v2, v0

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    aget v4, v2, v0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    add-int/2addr v3, v4

    aput v3, v2, v0

    aget v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    rsub-int/lit8 v4, v0, 0x3

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private static a(Ljava/lang/String;)I
    .registers 5

    const/16 v0, 0x9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    const-string/jumbo v1, "cgi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x7

    if-eq v2, v3, :cond_24

    array-length v1, v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :cond_24
    const/4 v0, 0x1

    goto :goto_8
.end method

.method private static a(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-string/jumbo v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    packed-switch p0, :pswitch_data_30

    :goto_b
    return-object v0

    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_2b
    const/4 v0, 0x3

    aget-object v0, v1, v0

    goto :goto_b

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_c
        :pswitch_2b
    .end packed-switch
.end method

.method public static a()V
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Lcom/loc/by;->bhE:Lcom/loc/aV;

    invoke-virtual {v0}, Lcom/loc/aV;->a()V

    sget-object v0, Lcom/loc/by;->bhD:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    sget-object v0, Lcom/loc/by;->bhF:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    sget-object v0, Lcom/loc/by;->a:[I

    aput v2, v0, v2

    sget-object v0, Lcom/loc/by;->a:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/loc/by;->bhF:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_25

    :cond_15
    :goto_15
    return-void

    :cond_16
    sget-object v0, Lcom/loc/by;->bhF:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    :cond_25
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_15

    :try_start_2b
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "r"

    invoke-direct {v1, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_33} :catch_f1
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_33} :catch_ee
    .catchall {:try_start_2b .. :try_end_33} :catchall_d8

    const-wide/16 v4, 0x8

    :try_start_35
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v3

    :goto_42
    if-lt v0, v2, :cond_66

    sget-object v0, Lcom/loc/by;->bhF:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_55} :catch_97
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_55} :catch_bb
    .catchall {:try_start_35 .. :try_end_55} :catchall_ec

    if-eqz v1, :cond_15

    :try_start_57
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_15

    :catch_5b
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "loadFcFea part3"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_66
    :try_start_66
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8c

    :goto_85
    add-int/lit8 v3, v2, -0x1

    if-eq v0, v3, :cond_b4

    :goto_89
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_8c
    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_96
    .catch Ljava/io/FileNotFoundException; {:try_start_66 .. :try_end_96} :catch_97
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_96} :catch_bb
    .catchall {:try_start_66 .. :try_end_96} :catchall_ec

    goto :goto_85

    :catch_97
    move-exception v0

    :goto_98
    :try_start_98
    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "loadFcFea part1"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_ec

    if-eqz v1, :cond_15

    :try_start_a3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a6} :catch_a8

    goto/16 :goto_15

    :catch_a8
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "loadFcFea part3"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_b4
    :try_start_b4
    const-string/jumbo v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ba
    .catch Ljava/io/FileNotFoundException; {:try_start_b4 .. :try_end_ba} :catch_97
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_ba} :catch_bb
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_ec

    goto :goto_89

    :catch_bb
    move-exception v0

    :goto_bc
    :try_start_bc
    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "loadFcFea part2"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_bc .. :try_end_c5} :catchall_ec

    if-eqz v1, :cond_15

    :try_start_c7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ca
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_ca} :catch_cc

    goto/16 :goto_15

    :catch_cc
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "loadFcFea part3"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15

    :catchall_d8
    move-exception v0

    move-object v1, v2

    :goto_da
    if-nez v1, :cond_dd

    :goto_dc
    throw v0

    :cond_dd
    :try_start_dd
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e0
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_dc

    :catch_e1
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "loadFcFea part3"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dc

    :catchall_ec
    move-exception v0

    goto :goto_da

    :catch_ee
    move-exception v0

    move-object v1, v2

    goto :goto_bc

    :catch_f1
    move-exception v0

    move-object v1, v2

    goto :goto_98
.end method

.method public static b()Z
    .registers 2

    const/4 v0, 0x0

    sget-object v1, Lcom/loc/by;->bhF:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static bBE(DDLjava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/16 v5, 0x32

    const/16 v4, 0x19

    const/4 v2, 0x0

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p0, p1, p2, p3}, Lcom/loc/bB;->bCe(DD)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Lcom/loc/bB;->bCe(DD)Ljava/lang/String;

    move-result-object p4

    :goto_15
    aput-object v0, v1, v2

    aput-object p4, v1, v4

    invoke-static {v0}, Lcom/loc/bB;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    :goto_1e
    if-lt v0, v4, :cond_2b

    invoke-static {p4}, Lcom/loc/bB;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x1a

    :goto_26
    if-lt v0, v5, :cond_34

    return-object v1

    :cond_29
    move-object v0, p4

    goto :goto_15

    :cond_2b
    add-int/lit8 v3, v0, -0x1

    aget-object v3, v2, v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_34
    add-int/lit8 v3, v0, -0x1a

    aget-object v3, v2, v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method public static bBF([DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;[I)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 36

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_82

    const-string/jumbo v4, "gps"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_84

    invoke-static/range {p2 .. p2}, Lcom/loc/by;->a(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/loc/by;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/util/Hashtable;

    invoke-direct/range {v16 .. v16}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    invoke-static {v14, v0, v1, v2}, Lcom/loc/by;->bBG(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V

    new-instance v17, Ljava/util/Hashtable;

    invoke-direct/range {v17 .. v17}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/loc/by;->bBH(Ljava/lang/String;Ljava/util/Hashtable;)V

    invoke-static {}, Lcom/loc/by;->c()Ljava/lang/StringBuilder;

    move-result-object v18

    if-eqz p0, :cond_86

    const/4 v4, 0x0

    aget-wide v4, p0, v4

    const/4 v6, 0x1

    aget-wide v6, p0, v6

    move-object/from16 v0, p1

    invoke-static {v4, v5, v6, v7, v0}, Lcom/loc/by;->bBE(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :goto_47
    move-object v6, v4

    const/4 v7, 0x0

    const/4 v5, 0x0

    array-length v4, v6

    div-int/lit8 v19, v4, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x1

    move/from16 v0, p4

    if-le v8, v0, :cond_91

    :goto_53
    move/from16 p4, v4

    :cond_55
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->size()I

    move-result v4

    sput v4, Lcom/loc/bx;->bhz:I

    const/4 v4, 0x0

    move v8, v5

    move v5, v7

    move v7, v4

    :goto_5f
    array-length v4, v6

    if-lt v7, v4, :cond_97

    :cond_62
    const/4 v4, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget v4, p6, v4

    const/4 v5, 0x1

    aget v5, p6, v5

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4, v5}, Lcom/loc/by;->bBI(Ljava/util/Hashtable;Ljava/util/Hashtable;II)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v4

    invoke-static {v4}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v5

    if-nez v5, :cond_4e8

    const/4 v4, 0x0

    return-object v4

    :cond_82
    const/4 v4, 0x0

    return-object v4

    :cond_84
    const/4 v4, 0x0

    return-object v4

    :cond_86
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v4, v5, v6, v7, v0}, Lcom/loc/by;->bBE(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_47

    :cond_91
    const/4 v8, 0x3

    move/from16 v0, p4

    if-le v0, v8, :cond_55

    goto :goto_53

    :cond_97
    sget-boolean v4, Lcom/loc/bx;->bhy:Z

    if-eqz v4, :cond_62

    move/from16 v0, v19

    if-lt v7, v0, :cond_c7

    :goto_9f
    move/from16 v0, v19

    if-ge v7, v0, :cond_d0

    :goto_a3
    move/from16 v0, v19

    if-ge v7, v0, :cond_d9

    :cond_a7
    :goto_a7
    const/4 v4, 0x1

    move/from16 v0, p4

    if-eq v0, v4, :cond_dc

    const/4 v4, 0x2

    move/from16 v0, p4

    if-eq v0, v4, :cond_df

    :goto_b1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v0, v19

    if-lt v7, v0, :cond_ed

    :cond_b9
    :goto_b9
    move/from16 v28, v8

    move v8, v5

    move/from16 v5, v28

    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move/from16 v28, v5

    move v5, v8

    move/from16 v8, v28

    goto :goto_5f

    :cond_c7
    if-gtz v5, :cond_a7

    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a7

    goto :goto_9f

    :cond_d0
    if-gtz v8, :cond_a7

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a7

    goto :goto_a3

    :cond_d9
    if-gtz v5, :cond_a7

    goto :goto_a7

    :cond_dc
    if-nez v7, :cond_62

    goto :goto_b1

    :cond_df
    const/16 v4, 0x8

    if-gt v7, v4, :cond_e8

    :goto_e3
    const/16 v4, 0x21

    if-gt v7, v4, :cond_62

    goto :goto_b1

    :cond_e8
    const/16 v4, 0x19

    if-lt v7, v4, :cond_b9

    goto :goto_e3

    :cond_ed
    packed-switch v14, :pswitch_data_4ec

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, p6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, p6, v9

    :goto_f8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v9, v6, v7

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    sget-object v4, Lcom/loc/by;->c:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b9

    sget-object v21, Lcom/loc/by;->bhE:Lcom/loc/aV;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/aV;->bzq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/loc/cb;

    const/4 v10, 0x0

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_239

    const/4 v9, 0x1

    move-object v10, v4

    :goto_140
    const/4 v4, 0x0

    if-eqz v10, :cond_b9

    const-wide/16 v22, 0x0

    :try_start_145
    move-wide/from16 v0, v22

    invoke-virtual {v10, v0, v1}, Lcom/loc/cb;->a(J)V

    invoke-virtual {v10}, Lcom/loc/cb;->c()J
    :try_end_14d
    .catch Ljava/lang/Throwable; {:try_start_145 .. :try_end_14d} :catch_28f

    move-result-wide v22

    move/from16 v0, v19

    if-lt v7, v0, :cond_289

    :goto_152
    :try_start_152
    invoke-virtual {v10}, Lcom/loc/cb;->g()J
    :try_end_155
    .catch Ljava/lang/Throwable; {:try_start_152 .. :try_end_155} :catch_2a4

    move-result-wide v24

    const/16 v11, 0x8

    move/from16 v0, v19

    if-lt v7, v0, :cond_2b9

    :goto_15c
    const-wide v26, 0x1cf7c5800L

    add-long v22, v22, v26

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v26

    cmp-long v4, v22, v26

    if-ltz v4, :cond_2c2

    const/4 v4, 0x1

    :goto_16c
    if-nez v4, :cond_2e1

    if-nez v10, :cond_2c5

    :goto_170
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    sget-object v4, Lcom/loc/by;->bhD:Ljava/util/Hashtable;

    aget-object v9, v6, v7

    invoke-virtual {v4, v9}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b9

    :pswitch_17c
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, p6, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, p6, v9

    :pswitch_184
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v9, v6, v7

    const-string/jumbo v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1fd

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v9, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1c6
    aget-object v9, v6, v7

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    aget-object v10, v6, v7

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_21e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v10, v6, v7

    add-int/lit8 v11, v9, 0x3

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_f8

    :cond_1fd
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v9, v6, v7

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1c6

    :cond_21e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v10, v6, v7

    add-int/lit8 v11, v9, 0x4

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_f8

    :cond_239
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_b9

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b9

    new-instance v9, Lcom/loc/I;

    invoke-direct {v9}, Lcom/loc/I;-><init>()V

    :try_start_254
    new-instance v4, Lcom/loc/cb;

    invoke-direct {v4, v12, v9}, Lcom/loc/cb;-><init>(Ljava/io/File;Lcom/loc/I;)V
    :try_end_259
    .catch Ljava/io/FileNotFoundException; {:try_start_254 .. :try_end_259} :catch_25d
    .catch Ljava/lang/Throwable; {:try_start_254 .. :try_end_259} :catch_269

    :goto_259
    move v9, v10

    move-object v10, v4

    goto/16 :goto_140

    :catch_25d
    move-exception v4

    const-string/jumbo v9, "Off"

    const-string/jumbo v10, "search part1"

    invoke-static {v4, v9, v10}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b9

    :catch_269
    move-exception v4

    const-string/jumbo v11, "Off"

    const-string/jumbo v13, "search part2"

    invoke-static {v4, v11, v13}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/loc/I;->a:Z

    :try_start_276
    new-instance v4, Lcom/loc/cb;

    invoke-direct {v4, v12, v9}, Lcom/loc/cb;-><init>(Ljava/io/File;Lcom/loc/I;)V
    :try_end_27b
    .catch Ljava/lang/Throwable; {:try_start_276 .. :try_end_27b} :catch_27c

    goto :goto_259

    :catch_27c
    move-exception v4

    const/4 v9, 0x0

    const-string/jumbo v11, "Off"

    const-string/jumbo v13, "search part3"

    invoke-static {v4, v11, v13}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v9

    goto :goto_259

    :cond_289
    :try_start_289
    invoke-virtual {v10}, Lcom/loc/cb;->d()I
    :try_end_28c
    .catch Ljava/lang/Throwable; {:try_start_289 .. :try_end_28c} :catch_28f

    move-result v4

    goto/16 :goto_152

    :catch_28f
    move-exception v4

    const-string/jumbo v10, "Off"

    const-string/jumbo v11, "search part4"

    invoke-static {v4, v10, v11}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_b9

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/aV;->bzr(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b9

    :catch_2a4
    move-exception v4

    const-string/jumbo v10, "Off"

    const-string/jumbo v11, "search part5"

    invoke-static {v4, v10, v11}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_b9

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/aV;->bzr(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b9

    :cond_2b9
    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x8

    move v11, v4

    goto/16 :goto_15c

    :cond_2c2
    const/4 v4, 0x0

    goto/16 :goto_16c

    :cond_2c5
    if-nez v9, :cond_2d8

    :try_start_2c7
    invoke-virtual {v10}, Lcom/loc/cb;->b()V
    :try_end_2ca
    .catch Ljava/lang/Throwable; {:try_start_2c7 .. :try_end_2ca} :catch_2cc

    goto/16 :goto_170

    :catch_2cc
    move-exception v4

    const-string/jumbo v9, "Off"

    const-string/jumbo v10, "search part6"

    invoke-static {v4, v9, v10}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_170

    :cond_2d8
    :try_start_2d8
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/loc/aV;->bzr(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2df
    .catch Ljava/lang/Throwable; {:try_start_2d8 .. :try_end_2df} :catch_2cc

    goto/16 :goto_170

    :cond_2e1
    const-wide/16 v22, 0x8

    cmp-long v4, v24, v22

    if-gtz v4, :cond_307

    const/4 v4, 0x1

    :goto_2e8
    if-nez v4, :cond_2f9

    int-to-long v0, v11

    move-wide/from16 v22, v0

    sub-long v22, v24, v22

    const-wide/16 v24, 0x10

    rem-long v22, v22, v24

    const-wide/16 v24, 0x0

    cmp-long v4, v22, v24

    if-eqz v4, :cond_318

    :cond_2f9
    if-nez v10, :cond_309

    :goto_2fb
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    sget-object v4, Lcom/loc/by;->bhD:Ljava/util/Hashtable;

    aget-object v9, v6, v7

    invoke-virtual {v4, v9}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b9

    :cond_307
    const/4 v4, 0x0

    goto :goto_2e8

    :cond_309
    :try_start_309
    invoke-virtual {v10}, Lcom/loc/cb;->b()V
    :try_end_30c
    .catch Ljava/lang/Throwable; {:try_start_309 .. :try_end_30c} :catch_30d

    goto :goto_2fb

    :catch_30d
    move-exception v4

    const-string/jumbo v9, "Off"

    const-string/jumbo v10, "search part7"

    invoke-static {v4, v9, v10}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2fb

    :cond_318
    move/from16 v0, v19

    if-lt v7, v0, :cond_33d

    :cond_31c
    const/4 v4, 0x0

    move v13, v4

    :goto_31e
    move/from16 v0, v19

    if-ge v7, v0, :cond_34a

    :cond_322
    const/4 v4, 0x0

    move v12, v4

    :goto_324
    if-nez v13, :cond_357

    move v13, v5

    :cond_327
    if-nez v12, :cond_40a

    :cond_329
    :goto_329
    move v5, v13

    if-eqz v10, :cond_b9

    invoke-virtual {v10}, Lcom/loc/cb;->a()Z

    move-result v4

    if-eqz v4, :cond_4d7

    if-nez v9, :cond_b9

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/loc/aV;->bzo(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b9

    :cond_33d
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31c

    sget v4, Lcom/loc/bx;->bhz:I

    if-ge v5, v4, :cond_31c

    const/4 v4, 0x1

    move v13, v4

    goto :goto_31e

    :cond_34a
    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_322

    const/16 v4, 0xf

    if-ge v8, v4, :cond_322

    const/4 v4, 0x1

    move v12, v4

    goto :goto_324

    :cond_357
    :try_start_357
    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_35e
    .catch Ljava/lang/Throwable; {:try_start_357 .. :try_end_35e} :catch_4ca

    move-result-object v22

    move v13, v5

    :goto_360
    :try_start_360
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_327

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v11, v10, v5, v0}, Lcom/loc/by;->bBL(ILcom/loc/cb;Ljava/lang/String;I)[D

    move-result-object v5

    if-nez v5, :cond_383

    :goto_380
    move v4, v13

    move v13, v4

    goto :goto_360

    :cond_383
    add-int/lit8 v13, v13, 0x1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    aget-wide v24, v5, v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "|"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-wide v24, v5, v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "|"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2

    aget-wide v24, v5, v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v23, "|"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v4, Lcom/loc/bx;->bhz:I

    if-ge v13, v4, :cond_327

    goto/16 :goto_380

    :cond_40a
    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_412
    if-eqz v12, :cond_329

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_329

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-static {v11, v10, v5, v0}, Lcom/loc/by;->bBL(ILcom/loc/cb;Ljava/lang/String;I)[D

    move-result-object v5

    if-nez v5, :cond_437

    :goto_434
    move v4, v8

    move v8, v4

    goto :goto_412

    :cond_437
    add-int/lit8 v8, v8, 0x1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x0

    aget-wide v24, v5, v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "|"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x1

    aget-wide v24, v5, v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "|"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x2

    aget-wide v24, v5, v23

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v22, "|"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c4
    .catch Ljava/lang/Throwable; {:try_start_360 .. :try_end_4c4} :catch_4e9

    const/16 v4, 0xf

    if-ge v8, v4, :cond_329

    goto/16 :goto_434

    :catch_4ca
    move-exception v4

    move v13, v5

    :goto_4cc
    const-string/jumbo v5, "Off"

    const-string/jumbo v11, "search part8"

    invoke-static {v4, v5, v11}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_329

    :cond_4d7
    :try_start_4d7
    invoke-virtual {v10}, Lcom/loc/cb;->b()V
    :try_end_4da
    .catch Ljava/lang/Throwable; {:try_start_4d7 .. :try_end_4da} :catch_4dc

    goto/16 :goto_b9

    :catch_4dc
    move-exception v4

    const-string/jumbo v9, "Off"

    const-string/jumbo v10, "search part9"

    invoke-static {v4, v9, v10}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b9

    :cond_4e8
    return-object v4

    :catch_4e9
    move-exception v4

    goto :goto_4cc

    nop

    :pswitch_data_4ec
    .packed-switch 0x1
        :pswitch_17c
        :pswitch_184
    .end packed-switch
.end method

.method private static bBG(ILjava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 8

    const/4 v3, 0x4

    const/4 v2, 0x3

    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_72

    :cond_c
    :goto_c
    return-void

    :pswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "access"

    invoke-virtual {p3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_c

    goto :goto_c

    :pswitch_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "access"

    invoke-virtual {p3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_d
        :pswitch_40
    .end packed-switch
.end method

.method private static bBH(Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 9

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_13
    if-lt v0, v3, :cond_17

    return-void

    :cond_16
    return-void

    :cond_17
    aget-object v4, v2, v0

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {p1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method private static bBI(Ljava/util/Hashtable;Ljava/util/Hashtable;II)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 13

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/loc/cy;

    invoke-direct {v5}, Lcom/loc/cy;-><init>()V

    :try_start_8
    invoke-virtual {p0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_e
    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_11} :catch_70

    move-result v0

    if-eqz v0, :cond_7f

    :cond_14
    :goto_14
    int-to-double v2, p3

    int-to-double v6, p2

    :try_start_16
    invoke-virtual {v5, v2, v3, v6, v7}, Lcom/loc/cy;->bGZ(DD)Ljava/util/ArrayList;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_19} :catch_be

    move-result-object v0

    move-object v3, v0

    :goto_1b
    if-nez v3, :cond_cb

    :cond_1d
    move-object v0, v1

    :goto_1e
    invoke-static {v0}, Lcom/loc/X;->bxc(Lcom/autonavi/aps/amapapi/model/AmapLoc;)Z

    move-result v2

    if-nez v2, :cond_10a

    :goto_24
    return-object v1

    :cond_25
    :try_start_25
    invoke-virtual {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2d
    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "access"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7b

    move v3, v4

    :goto_49
    const-string/jumbo v7, "|"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v7, 0x0

    const-string/jumbo v8, "|"

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_5d} :catch_70

    move-result-object v7

    if-nez v3, :cond_7d

    const/4 v0, 0x2

    :goto_61
    :try_start_61
    invoke-virtual {v5, v0, v7}, Lcom/loc/cy;->a(ILjava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_64} :catch_65
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_64} :catch_70

    goto :goto_2d

    :catch_65
    move-exception v0

    :try_start_66
    const-string/jumbo v3, "Off"

    const-string/jumbo v7, "calLoc part1"

    invoke-static {v0, v3, v7}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_6f} :catch_70

    goto :goto_2d

    :catch_70
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "calLoc part3"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_7b
    move v3, v2

    goto :goto_49

    :cond_7d
    move v0, v2

    goto :goto_61

    :cond_7f
    :try_start_7f
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_87
    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_87

    const/4 v3, 0x0

    const-string/jumbo v6, "|"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_ad
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_ad} :catch_70

    move-result-object v0

    const/4 v3, 0x0

    :try_start_af
    invoke-virtual {v5, v3, v0}, Lcom/loc/cy;->a(ILjava/lang/String;)V
    :try_end_b2
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_b2} :catch_b3
    .catch Ljava/lang/Throwable; {:try_start_af .. :try_end_b2} :catch_70

    goto :goto_87

    :catch_b3
    move-exception v0

    :try_start_b4
    const-string/jumbo v3, "Off"

    const-string/jumbo v6, "calLoc part2"

    invoke-static {v0, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_bd} :catch_70

    goto :goto_87

    :catch_be
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "calLoc part4"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    goto/16 :goto_1b

    :cond_cb
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/aX;

    new-instance v2, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    const-string/jumbo v4, "network"

    invoke-virtual {v2, v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHH(Ljava/lang/String;)V

    iget-wide v4, v0, Lcom/loc/aX;->a:D

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHM(D)V

    iget-wide v4, v0, Lcom/loc/aX;->b:D

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHJ(D)V

    iget v4, v0, Lcom/loc/aX;->c:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHP(F)V

    iget-object v0, v0, Lcom/loc/aX;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIf(Ljava/lang/String;)V

    const-string/jumbo v0, "0"

    invoke-virtual {v2, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bID(Ljava/lang/String;)V

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHT(J)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object v0, v2

    goto/16 :goto_1e

    :cond_10a
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHV(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_24
.end method

.method public static bBJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZ)Z
    .registers 13

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p3, v1, p5}, Lcom/loc/by;->bBS(Landroid/content/Context;Ljava/lang/String;IZZ)Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p4, :cond_19

    if-eq p4, v2, :cond_1e

    const/16 v0, 0x18

    :goto_10
    invoke-static {v4, v5, v4, v5, p2}, Lcom/loc/by;->bBE(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v1, v2

    :goto_15
    if-lt v1, v0, :cond_21

    return v2

    :cond_18
    return v1

    :cond_19
    invoke-static {p0, p1, p2, p3, p6}, Lcom/loc/by;->bBK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    return v0

    :cond_1e
    const/16 v0, 0x8

    goto :goto_10

    :cond_21
    aget-object v4, v3, v1

    invoke-static {p0, p1, v4, p3, p6}, Lcom/loc/by;->bBK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method

.method private static bBK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .registers 16

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {p1, p2, p3, v6}, Lcom/loc/by;->bBR(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v0, Lcom/loc/by;->bhD:Ljava/util/Hashtable;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    :goto_14
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_18
    invoke-static {}, Lcom/loc/X;->b()J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "v"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/loc/bu;->bBk(Landroid/content/Context;Z)Lcom/loc/bu;

    move-result-object v5

    const-string/jumbo v7, "https://offline.aps.amap.com/LoadOfflineData/getData"

    const/4 v8, 0x0

    aget-object v8, v6, v8

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, p0, v7, v0, v8}, Lcom/loc/bu;->bBo(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;[B)Ljava/net/HttpURLConnection;
    :try_end_41
    .catch Ljava/net/UnknownHostException; {:try_start_18 .. :try_end_41} :catch_3f8
    .catch Ljava/net/SocketException; {:try_start_18 .. :try_end_41} :catch_3e7
    .catch Ljava/net/SocketTimeoutException; {:try_start_18 .. :try_end_41} :catch_3d6
    .catch Ljava/io/EOFException; {:try_start_18 .. :try_end_41} :catch_3c5
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_41} :catch_3b4
    .catchall {:try_start_18 .. :try_end_41} :catchall_260

    move-result-object v4

    if-eqz v4, :cond_91

    :try_start_44
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_47
    .catch Ljava/net/UnknownHostException; {:try_start_44 .. :try_end_47} :catch_25a
    .catch Ljava/net/SocketException; {:try_start_44 .. :try_end_47} :catch_3e7
    .catch Ljava/net/SocketTimeoutException; {:try_start_44 .. :try_end_47} :catch_3d6
    .catch Ljava/io/EOFException; {:try_start_44 .. :try_end_47} :catch_3c5
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_3b4
    .catchall {:try_start_44 .. :try_end_47} :catchall_260

    move-result v0

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_95

    const/16 v5, 0x194

    if-eq v0, v5, :cond_405

    move-object v0, v2

    move v2, v1

    move-object v1, v3

    :cond_53
    :goto_53
    if-nez v0, :cond_280

    :goto_55
    if-nez v1, :cond_291

    :goto_57
    if-nez v4, :cond_2a2

    :goto_59
    move v1, v2

    :cond_5a
    :goto_5a
    sget-object v0, Lcom/loc/by;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26a

    :goto_62
    return v1

    :cond_63
    const/4 v0, 0x0

    return v0

    :cond_65
    sget-object v0, Lcom/loc/by;->bhD:Ljava/util/Hashtable;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_86

    const/4 v0, 0x1

    :goto_82
    if-nez v0, :cond_88

    const/4 v0, 0x0

    return v0

    :cond_86
    const/4 v0, 0x0

    goto :goto_82

    :cond_88
    sget-object v0, Lcom/loc/by;->bhD:Ljava/util/Hashtable;

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_91
    if-nez v4, :cond_26f

    :goto_93
    const/4 v0, 0x0

    return v0

    :cond_95
    const/4 v5, 0x0

    :try_start_96
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d5

    move v0, v5

    :goto_a9
    const/16 v5, 0x104

    if-eq v0, v5, :cond_fa

    sget-boolean v0, Lcom/loc/bx;->bhy:Z
    :try_end_af
    .catch Ljava/net/UnknownHostException; {:try_start_96 .. :try_end_af} :catch_25a
    .catch Ljava/net/SocketException; {:try_start_96 .. :try_end_af} :catch_3e7
    .catch Ljava/net/SocketTimeoutException; {:try_start_96 .. :try_end_af} :catch_3d6
    .catch Ljava/io/EOFException; {:try_start_96 .. :try_end_af} :catch_3c5
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_af} :catch_3b4
    .catchall {:try_start_96 .. :try_end_af} :catchall_260

    if-nez v0, :cond_248

    :goto_b1
    move-object v0, v2

    move v2, v1

    move-object v1, v3

    :goto_b4
    if-eqz p4, :cond_53

    const/4 v3, 0x1

    :try_start_b7
    aget-object v3, v6, v3

    invoke-static {v3}, Lcom/loc/by;->b(Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/net/UnknownHostException; {:try_start_b7 .. :try_end_bc} :catch_bd
    .catch Ljava/net/SocketException; {:try_start_b7 .. :try_end_bc} :catch_3f0
    .catch Ljava/net/SocketTimeoutException; {:try_start_b7 .. :try_end_bc} :catch_3df
    .catch Ljava/io/EOFException; {:try_start_b7 .. :try_end_bc} :catch_3ce
    .catch Ljava/lang/Throwable; {:try_start_b7 .. :try_end_bc} :catch_3bd
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_3a8

    goto :goto_53

    :catch_bd
    move-exception v3

    move-object v10, v3

    move-object v3, v1

    move-object v1, v4

    move v4, v2

    move-object v2, v0

    move-object v0, v10

    :goto_c4
    :try_start_c4
    const-string/jumbo v5, "Off"

    const-string/jumbo v6, "c 2 part2"

    invoke-static {v0, v5, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cd
    .catchall {:try_start_c4 .. :try_end_cd} :catchall_3ae

    if-nez v2, :cond_2b3

    :goto_cf
    if-nez v3, :cond_2c4

    :goto_d1
    if-nez v1, :cond_2d5

    :goto_d3
    move v1, v4

    goto :goto_5a

    :cond_d5
    :try_start_d5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string/jumbo v8, "code"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_a9

    :cond_fa
    const/4 v0, 0x1

    aget-object v0, v6, v0

    sput-object v0, Lcom/loc/by;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_103
    .catch Ljava/net/UnknownHostException; {:try_start_d5 .. :try_end_103} :catch_25a
    .catch Ljava/net/SocketException; {:try_start_d5 .. :try_end_103} :catch_3e7
    .catch Ljava/net/SocketTimeoutException; {:try_start_d5 .. :try_end_103} :catch_3d6
    .catch Ljava/io/EOFException; {:try_start_d5 .. :try_end_103} :catch_3c5
    .catch Ljava/lang/Throwable; {:try_start_d5 .. :try_end_103} :catch_3b4
    .catchall {:try_start_d5 .. :try_end_103} :catchall_260

    move-result-object v5

    :try_start_104
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_109
    .catch Ljava/net/UnknownHostException; {:try_start_104 .. :try_end_109} :catch_3fe
    .catch Ljava/net/SocketException; {:try_start_104 .. :try_end_109} :catch_3ec
    .catch Ljava/net/SocketTimeoutException; {:try_start_104 .. :try_end_109} :catch_3db
    .catch Ljava/io/EOFException; {:try_start_104 .. :try_end_109} :catch_3ca
    .catch Ljava/lang/Throwable; {:try_start_104 .. :try_end_109} :catch_3b9
    .catchall {:try_start_104 .. :try_end_109} :catchall_3a1

    :try_start_109
    new-instance v2, Ljava/io/File;

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_11e

    :cond_117
    :goto_117
    if-nez v0, :cond_126

    :cond_119
    :goto_119
    move v0, v1

    move-object v1, v5

    move v2, v0

    move-object v0, v3

    goto :goto_b4

    :cond_11e
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_117

    const/4 v0, 0x0

    goto :goto_117

    :cond_126
    sget-boolean v0, Lcom/loc/bx;->bhy:Z

    if-eqz v0, :cond_119

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_195

    :goto_134
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x800

    invoke-direct {v2, v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    const/16 v0, 0x800

    new-array v0, v0, [B

    :goto_144
    const/4 v7, 0x0

    const/16 v8, 0x800

    invoke-virtual {v3, v0, v7, v8}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1ba

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    const/4 v1, 0x1

    sget-object v0, Lcom/loc/by;->bhD:Ljava/util/Hashtable;

    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    const-string/jumbo v0, "yyyyMMdd"

    invoke-static {v8, v9, v0}, Lcom/loc/X;->bxu(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/loc/by;->a:[I

    const/4 v7, 0x0

    aget v2, v2, v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_17a
    .catch Ljava/net/UnknownHostException; {:try_start_109 .. :try_end_17a} :catch_18d
    .catch Ljava/net/SocketException; {:try_start_109 .. :try_end_17a} :catch_199
    .catch Ljava/net/SocketTimeoutException; {:try_start_109 .. :try_end_17a} :catch_1bf
    .catch Ljava/io/EOFException; {:try_start_109 .. :try_end_17a} :catch_1ee
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_17a} :catch_227
    .catchall {:try_start_109 .. :try_end_17a} :catchall_3a5

    move-result v2

    if-nez v2, :cond_1e0

    :try_start_17d
    sget-object v2, Lcom/loc/by;->a:[I

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v7
    :try_end_186
    .catch Ljava/lang/Throwable; {:try_start_17d .. :try_end_186} :catch_20f
    .catch Ljava/net/UnknownHostException; {:try_start_17d .. :try_end_186} :catch_18d
    .catch Ljava/net/SocketException; {:try_start_17d .. :try_end_186} :catch_199
    .catch Ljava/net/SocketTimeoutException; {:try_start_17d .. :try_end_186} :catch_1bf
    .catch Ljava/io/EOFException; {:try_start_17d .. :try_end_186} :catch_1ee
    .catch Ljava/lang/Throwable; {:try_start_17d .. :try_end_186} :catch_227
    .catchall {:try_start_17d .. :try_end_186} :catchall_3a5

    :goto_186
    :try_start_186
    sget-object v0, Lcom/loc/by;->a:[I

    const/4 v2, 0x1

    const/4 v7, 0x1

    aput v7, v0, v2

    goto :goto_119

    :catch_18d
    move-exception v0

    move-object v2, v3

    move-object v3, v5

    move-object v10, v4

    move v4, v1

    move-object v1, v10

    goto/16 :goto_c4

    :cond_195
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_198
    .catch Ljava/net/UnknownHostException; {:try_start_186 .. :try_end_198} :catch_18d
    .catch Ljava/net/SocketException; {:try_start_186 .. :try_end_198} :catch_199
    .catch Ljava/net/SocketTimeoutException; {:try_start_186 .. :try_end_198} :catch_1bf
    .catch Ljava/io/EOFException; {:try_start_186 .. :try_end_198} :catch_1ee
    .catch Ljava/lang/Throwable; {:try_start_186 .. :try_end_198} :catch_227
    .catchall {:try_start_186 .. :try_end_198} :catchall_3a5

    goto :goto_134

    :catch_199
    move-exception v0

    :goto_19a
    :try_start_19a
    const-string/jumbo v2, "Off"

    const-string/jumbo v6, "c 2 part3"

    invoke-static {v0, v2, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a3
    .catchall {:try_start_19a .. :try_end_1a3} :catchall_3a5

    if-nez v3, :cond_2e6

    :goto_1a5
    if-nez v5, :cond_2f7

    :goto_1a7
    if-eqz v4, :cond_5a

    :try_start_1a9
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1ac
    .catch Ljava/lang/Throwable; {:try_start_1a9 .. :try_end_1ac} :catch_1ae

    goto/16 :goto_5a

    :catch_1ae
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part9"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    :cond_1ba
    const/4 v8, 0x0

    :try_start_1bb
    invoke-virtual {v2, v0, v8, v7}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1be
    .catch Ljava/net/UnknownHostException; {:try_start_1bb .. :try_end_1be} :catch_18d
    .catch Ljava/net/SocketException; {:try_start_1bb .. :try_end_1be} :catch_199
    .catch Ljava/net/SocketTimeoutException; {:try_start_1bb .. :try_end_1be} :catch_1bf
    .catch Ljava/io/EOFException; {:try_start_1bb .. :try_end_1be} :catch_1ee
    .catch Ljava/lang/Throwable; {:try_start_1bb .. :try_end_1be} :catch_227
    .catchall {:try_start_1bb .. :try_end_1be} :catchall_3a5

    goto :goto_144

    :catch_1bf
    move-exception v0

    :goto_1c0
    :try_start_1c0
    const-string/jumbo v2, "Off"

    const-string/jumbo v6, "c 2 part4"

    invoke-static {v0, v2, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c9
    .catchall {:try_start_1c0 .. :try_end_1c9} :catchall_3a5

    if-nez v3, :cond_308

    :goto_1cb
    if-nez v5, :cond_319

    :goto_1cd
    if-eqz v4, :cond_5a

    :try_start_1cf
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1d2
    .catch Ljava/lang/Throwable; {:try_start_1cf .. :try_end_1d2} :catch_1d4

    goto/16 :goto_5a

    :catch_1d4
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part9"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    :cond_1e0
    :try_start_1e0
    sget-object v0, Lcom/loc/by;->a:[I

    const/4 v2, 0x1

    sget-object v7, Lcom/loc/by;->a:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    aput v7, v0, v2
    :try_end_1ec
    .catch Ljava/net/UnknownHostException; {:try_start_1e0 .. :try_end_1ec} :catch_18d
    .catch Ljava/net/SocketException; {:try_start_1e0 .. :try_end_1ec} :catch_199
    .catch Ljava/net/SocketTimeoutException; {:try_start_1e0 .. :try_end_1ec} :catch_1bf
    .catch Ljava/io/EOFException; {:try_start_1e0 .. :try_end_1ec} :catch_1ee
    .catch Ljava/lang/Throwable; {:try_start_1e0 .. :try_end_1ec} :catch_227
    .catchall {:try_start_1e0 .. :try_end_1ec} :catchall_3a5

    goto/16 :goto_119

    :catch_1ee
    move-exception v0

    :goto_1ef
    :try_start_1ef
    const-string/jumbo v2, "Off"

    const-string/jumbo v6, "c 2 part5"

    invoke-static {v0, v2, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f8
    .catchall {:try_start_1ef .. :try_end_1f8} :catchall_3a5

    if-nez v3, :cond_32a

    :goto_1fa
    if-nez v5, :cond_33b

    :goto_1fc
    if-eqz v4, :cond_5a

    :try_start_1fe
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_201
    .catch Ljava/lang/Throwable; {:try_start_1fe .. :try_end_201} :catch_203

    goto/16 :goto_5a

    :catch_203
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part9"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    :catch_20f
    move-exception v0

    :try_start_210
    sget-object v2, Lcom/loc/by;->a:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v2, v7

    sget-object v2, Lcom/loc/by;->a:[I

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v2, v7

    const-string/jumbo v2, "Off"

    const-string/jumbo v7, "c 2 part1"

    invoke-static {v0, v2, v7}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_225
    .catch Ljava/net/UnknownHostException; {:try_start_210 .. :try_end_225} :catch_18d
    .catch Ljava/net/SocketException; {:try_start_210 .. :try_end_225} :catch_199
    .catch Ljava/net/SocketTimeoutException; {:try_start_210 .. :try_end_225} :catch_1bf
    .catch Ljava/io/EOFException; {:try_start_210 .. :try_end_225} :catch_1ee
    .catch Ljava/lang/Throwable; {:try_start_210 .. :try_end_225} :catch_227
    .catchall {:try_start_210 .. :try_end_225} :catchall_3a5

    goto/16 :goto_186

    :catch_227
    move-exception v0

    :goto_228
    :try_start_228
    const-string/jumbo v2, "Off"

    const-string/jumbo v6, "c 2 part6"

    invoke-static {v0, v2, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_231
    .catchall {:try_start_228 .. :try_end_231} :catchall_3a5

    if-nez v3, :cond_34c

    :goto_233
    if-nez v5, :cond_35d

    :goto_235
    if-eqz v4, :cond_5a

    :try_start_237
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_23a
    .catch Ljava/lang/Throwable; {:try_start_237 .. :try_end_23a} :catch_23c

    goto/16 :goto_5a

    :catch_23c
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part9"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    :cond_248
    :try_start_248
    sget-object v0, Lcom/loc/by;->bhD:Ljava/util/Hashtable;

    const/4 v5, 0x1

    aget-object v5, v6, v5

    invoke-static {}, Lcom/loc/X;->a()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_258
    .catch Ljava/net/UnknownHostException; {:try_start_248 .. :try_end_258} :catch_25a
    .catch Ljava/net/SocketException; {:try_start_248 .. :try_end_258} :catch_3e7
    .catch Ljava/net/SocketTimeoutException; {:try_start_248 .. :try_end_258} :catch_3d6
    .catch Ljava/io/EOFException; {:try_start_248 .. :try_end_258} :catch_3c5
    .catch Ljava/lang/Throwable; {:try_start_248 .. :try_end_258} :catch_3b4
    .catchall {:try_start_248 .. :try_end_258} :catchall_260

    goto/16 :goto_b1

    :catch_25a
    move-exception v0

    move-object v10, v4

    move v4, v1

    move-object v1, v10

    goto/16 :goto_c4

    :catchall_260
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    :goto_263
    if-nez v3, :cond_36e

    :goto_265
    if-nez v5, :cond_37f

    :goto_267
    if-nez v4, :cond_390

    :goto_269
    throw v0

    :cond_26a
    const/4 v0, 0x0

    sput-object v0, Lcom/loc/by;->c:Ljava/lang/String;

    goto/16 :goto_62

    :cond_26f
    :try_start_26f
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_272
    .catch Ljava/lang/Throwable; {:try_start_26f .. :try_end_272} :catch_274

    goto/16 :goto_93

    :catch_274
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "c 2 part9"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_93

    :cond_280
    :try_start_280
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_283
    .catch Ljava/lang/Throwable; {:try_start_280 .. :try_end_283} :catch_285

    goto/16 :goto_55

    :catch_285
    move-exception v0

    const-string/jumbo v3, "Off"

    const-string/jumbo v5, "c 2 part7"

    invoke-static {v0, v3, v5}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_55

    :cond_291
    :try_start_291
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_294
    .catch Ljava/lang/Throwable; {:try_start_291 .. :try_end_294} :catch_296

    goto/16 :goto_57

    :catch_296
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v0, v1, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_57

    :cond_2a2
    :try_start_2a2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2a5
    .catch Ljava/lang/Throwable; {:try_start_2a2 .. :try_end_2a5} :catch_2a7

    goto/16 :goto_59

    :catch_2a7
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v3, "c 2 part9"

    invoke-static {v0, v1, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_59

    :cond_2b3
    :try_start_2b3
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2b6
    .catch Ljava/lang/Throwable; {:try_start_2b3 .. :try_end_2b6} :catch_2b8

    goto/16 :goto_cf

    :catch_2b8
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v5, "c 2 part7"

    invoke-static {v0, v2, v5}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_cf

    :cond_2c4
    :try_start_2c4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2c7
    .catch Ljava/lang/Throwable; {:try_start_2c4 .. :try_end_2c7} :catch_2c9

    goto/16 :goto_d1

    :catch_2c9
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d1

    :cond_2d5
    :try_start_2d5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2d8
    .catch Ljava/lang/Throwable; {:try_start_2d5 .. :try_end_2d8} :catch_2da

    goto/16 :goto_d3

    :catch_2da
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "c 2 part9"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d3

    :cond_2e6
    :try_start_2e6
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2e9
    .catch Ljava/lang/Throwable; {:try_start_2e6 .. :try_end_2e9} :catch_2eb

    goto/16 :goto_1a5

    :catch_2eb
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part7"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a5

    :cond_2f7
    :try_start_2f7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2fa
    .catch Ljava/lang/Throwable; {:try_start_2f7 .. :try_end_2fa} :catch_2fc

    goto/16 :goto_1a7

    :catch_2fc
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1a7

    :cond_308
    :try_start_308
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_30b
    .catch Ljava/lang/Throwable; {:try_start_308 .. :try_end_30b} :catch_30d

    goto/16 :goto_1cb

    :catch_30d
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part7"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1cb

    :cond_319
    :try_start_319
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_31c
    .catch Ljava/lang/Throwable; {:try_start_319 .. :try_end_31c} :catch_31e

    goto/16 :goto_1cd

    :catch_31e
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1cd

    :cond_32a
    :try_start_32a
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_32d
    .catch Ljava/lang/Throwable; {:try_start_32a .. :try_end_32d} :catch_32f

    goto/16 :goto_1fa

    :catch_32f
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part7"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fa

    :cond_33b
    :try_start_33b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_33e
    .catch Ljava/lang/Throwable; {:try_start_33b .. :try_end_33e} :catch_340

    goto/16 :goto_1fc

    :catch_340
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1fc

    :cond_34c
    :try_start_34c
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_34f
    .catch Ljava/lang/Throwable; {:try_start_34c .. :try_end_34f} :catch_351

    goto/16 :goto_233

    :catch_351
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part7"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_233

    :cond_35d
    :try_start_35d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_360
    .catch Ljava/lang/Throwable; {:try_start_35d .. :try_end_360} :catch_362

    goto/16 :goto_235

    :catch_362
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_235

    :cond_36e
    :try_start_36e
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_371
    .catch Ljava/lang/Throwable; {:try_start_36e .. :try_end_371} :catch_373

    goto/16 :goto_265

    :catch_373
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part7"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_265

    :cond_37f
    :try_start_37f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_382
    .catch Ljava/lang/Throwable; {:try_start_37f .. :try_end_382} :catch_384

    goto/16 :goto_267

    :catch_384
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part8"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_267

    :cond_390
    :try_start_390
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_393
    .catch Ljava/lang/Throwable; {:try_start_390 .. :try_end_393} :catch_395

    goto/16 :goto_269

    :catch_395
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "c 2 part9"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_269

    :catchall_3a1
    move-exception v0

    move-object v3, v2

    goto/16 :goto_263

    :catchall_3a5
    move-exception v0

    goto/16 :goto_263

    :catchall_3a8
    move-exception v2

    move-object v3, v0

    move-object v5, v1

    move-object v0, v2

    goto/16 :goto_263

    :catchall_3ae
    move-exception v0

    move-object v4, v1

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_263

    :catch_3b4
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_228

    :catch_3b9
    move-exception v0

    move-object v3, v2

    goto/16 :goto_228

    :catch_3bd
    move-exception v3

    move-object v5, v1

    move v1, v2

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_228

    :catch_3c5
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_1ef

    :catch_3ca
    move-exception v0

    move-object v3, v2

    goto/16 :goto_1ef

    :catch_3ce
    move-exception v3

    move-object v5, v1

    move v1, v2

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_1ef

    :catch_3d6
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_1c0

    :catch_3db
    move-exception v0

    move-object v3, v2

    goto/16 :goto_1c0

    :catch_3df
    move-exception v3

    move-object v5, v1

    move v1, v2

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_1c0

    :catch_3e7
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    goto/16 :goto_19a

    :catch_3ec
    move-exception v0

    move-object v3, v2

    goto/16 :goto_19a

    :catch_3f0
    move-exception v3

    move-object v5, v1

    move v1, v2

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_19a

    :catch_3f8
    move-exception v0

    move-object v10, v4

    move v4, v1

    move-object v1, v10

    goto/16 :goto_c4

    :catch_3fe
    move-exception v0

    move-object v3, v5

    move-object v10, v4

    move v4, v1

    move-object v1, v10

    goto/16 :goto_c4

    :cond_405
    move-object v0, v2

    move v2, v1

    move-object v1, v3

    goto/16 :goto_53
.end method

.method private static bBL(ILcom/loc/cb;Ljava/lang/String;I)[D
    .registers 13

    const/4 v8, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_2c

    const-string/jumbo v6, "wifi"

    :goto_7
    :try_start_7
    invoke-virtual {p1}, Lcom/loc/cb;->g()J

    move-result-wide v0

    int-to-long v4, p0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_51

    const/4 v0, 0x1

    :goto_11
    if-nez v0, :cond_2a

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/loc/cb;->a(J)V

    invoke-virtual {p1}, Lcom/loc/cb;->g()J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v5, v0, -0x10

    const/4 v7, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p0

    invoke-static/range {v0 .. v7}, Lcom/loc/by;->bBM(ILcom/loc/cb;Ljava/lang/String;[IIILjava/lang/String;I)I
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_26} :catch_9c

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_53

    :cond_2a
    move-object v0, v8

    :cond_2b
    :goto_2b
    return-object v0

    :cond_2c
    const-string/jumbo v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    new-array v3, v0, [I

    const/4 v0, 0x0

    :goto_37
    array-length v2, v1

    if-lt v0, v2, :cond_42

    array-length v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4d

    const-string/jumbo v6, "cdma"

    goto :goto_7

    :cond_42
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_4d
    const-string/jumbo v6, "gsm"

    goto :goto_7

    :cond_51
    const/4 v0, 0x0

    goto :goto_11

    :cond_53
    add-int/lit8 v0, v0, 0x6

    int-to-long v0, v0

    :try_start_56
    invoke-virtual {p1, v0, v1}, Lcom/loc/cb;->a(J)V

    const/4 v0, 0x3

    new-array v0, v0, [D
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5c} :catch_9c

    const/4 v1, 0x0

    :try_start_5d
    invoke-virtual {p1}, Lcom/loc/cb;->e()I

    move-result v2

    invoke-static {v2}, Lcom/loc/by;->a(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/loc/cb;->e()I

    move-result v2

    invoke-static {v2}, Lcom/loc/by;->a(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/loc/cb;->d()I

    move-result v2

    int-to-double v2, v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Lcom/loc/X;->bwZ(D)Z

    move-result v1

    if-eqz v1, :cond_9a

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Lcom/loc/X;->bxa(D)Z
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_97} :catch_a8

    move-result v1

    if-nez v1, :cond_2b

    :cond_9a
    const/4 v0, 0x0

    goto :goto_2b

    :catch_9c
    move-exception v0

    :goto_9d
    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "binS"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    goto :goto_2b

    :catch_a8
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_9d
.end method

.method private static bBM(ILcom/loc/cb;Ljava/lang/String;[IIILjava/lang/String;I)I
    .registers 16

    const/4 v0, -0x1

    add-int/lit8 v7, p7, 0x1

    const/16 v1, 0x19

    if-gt v7, v1, :cond_2e

    add-int v1, p4, p5

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    add-int v5, v1, p0

    invoke-static {p1, p2, p3, v5, p6}, Lcom/loc/by;->bBN(Lcom/loc/cb;Ljava/lang/String;[IILjava/lang/String;)I

    move-result v1

    if-eq p4, v5, :cond_2f

    :cond_18
    const v2, 0x7fffffff

    if-eq v1, v2, :cond_35

    if-eqz v1, :cond_36

    if-ltz v1, :cond_37

    add-int/lit8 v4, v5, 0x10

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/loc/by;->bBM(ILcom/loc/cb;Ljava/lang/String;[IIILjava/lang/String;I)I

    move-result v0

    return v0

    :cond_2e
    return v0

    :cond_2f
    if-ne v5, p5, :cond_18

    if-eqz v1, :cond_34

    move p4, v0

    :cond_34
    return p4

    :cond_35
    return v0

    :cond_36
    return v5

    :cond_37
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/loc/by;->bBM(ILcom/loc/cb;Ljava/lang/String;[IIILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static bBN(Lcom/loc/cb;Ljava/lang/String;[IILjava/lang/String;)I
    .registers 15

    const/4 v9, 0x3

    const/4 v8, 0x6

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    int-to-long v2, p3

    :try_start_6
    invoke-virtual {p0, v2, v3}, Lcom/loc/cb;->a(J)V

    const-string/jumbo v0, "gsm"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "cdma"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    const-string/jumbo v0, "wifi"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_76

    :goto_24
    const v0, 0x7fffffff

    return v0

    :cond_28
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-virtual {p0}, Lcom/loc/cb;->d()I

    move-result v3

    invoke-virtual {p0}, Lcom/loc/cb;->e()I

    move-result v4

    if-lt v0, v3, :cond_3f

    if-gt v0, v3, :cond_40

    if-lt v2, v4, :cond_41

    if-gt v2, v4, :cond_42

    return v1

    :cond_3f
    return v7

    :cond_40
    return v6

    :cond_41
    return v7

    :cond_42
    return v6

    :cond_43
    const/4 v0, 0x3

    new-array v2, v0, [I

    const/4 v0, 0x0

    const/4 v3, 0x0

    aget v3, p2, v3

    aput v3, v2, v0

    const/4 v0, 0x1

    const/4 v3, 0x1

    aget v3, p2, v3

    aput v3, v2, v0

    const/4 v0, 0x2

    const/4 v3, 0x2

    aget v3, p2, v3

    aput v3, v2, v0

    const/4 v0, 0x3

    new-array v3, v0, [I

    move v0, v1

    :goto_5c
    if-lt v0, v9, :cond_5f

    return v1

    :cond_5f
    invoke-virtual {p0}, Lcom/loc/cb;->d()I

    move-result v4

    aput v4, v3, v0

    aget v4, v2, v0

    aget v5, v3, v0

    if-lt v4, v5, :cond_74

    aget v4, v2, v0

    aget v5, v3, v0

    if-gt v4, v5, :cond_75

    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    :cond_74
    return v7

    :cond_75
    return v6

    :cond_76
    invoke-static {p1}, Lcom/loc/X;->b(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v0, 0x6

    new-array v4, v0, [I

    move v2, v1

    :goto_7e
    if-lt v2, v8, :cond_87

    const/4 v0, 0x6

    new-array v2, v0, [I

    move v0, v1

    :goto_84
    if-lt v0, v8, :cond_98

    return v1

    :cond_87
    aget-byte v0, v3, v2

    if-ltz v0, :cond_93

    aget-byte v0, v3, v2

    :goto_8d
    aput v0, v4, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7e

    :cond_93
    aget-byte v0, v3, v2

    add-int/lit16 v0, v0, 0x100

    goto :goto_8d

    :cond_98
    invoke-virtual {p0}, Lcom/loc/cb;->f()I

    move-result v3

    aput v3, v2, v0

    aget v3, v4, v0

    aget v5, v2, v0

    if-lt v3, v5, :cond_ad

    aget v3, v4, v0

    aget v5, v2, v0
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_a8} :catch_af

    if-gt v3, v5, :cond_ae

    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    :cond_ad
    return v7

    :cond_ae
    return v6

    :catch_af
    move-exception v0

    const-string/jumbo v1, "Off"

    const-string/jumbo v2, "cmpItem"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24
.end method

.method public static bBO(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 9

    const/4 v0, 0x0

    sget-object v1, Lcom/loc/by;->bhF:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {p0}, Lcom/loc/by;->a(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    packed-switch v1, :pswitch_data_70

    :goto_17
    return-object v0

    :cond_18
    return-object v0

    :pswitch_19
    sget-object v1, Lcom/loc/by;->bhF:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    move-object v0, v2

    goto :goto_17

    :cond_2c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/loc/by;->bhF:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_61

    :cond_5e
    move-object v0, v2

    move-object v2, v0

    goto :goto_24

    :cond_61
    if-eqz v2, :cond_69

    :goto_63
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_5e

    return-object v2

    :cond_69
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_63

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method public static bBP(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 13

    const/16 v0, 0x19

    const-wide/16 v6, 0x0

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    if-eqz p3, :cond_20

    if-ne p3, v8, :cond_58

    :cond_11
    invoke-static {v6, v7, v6, v7, p1}, Lcom/loc/by;->bBE(DDLjava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eq p3, v8, :cond_5b

    if-eq p3, v4, :cond_5e

    move v2, v1

    :goto_1a
    if-eq p2, v8, :cond_60

    if-eq p2, v4, :cond_61

    return v1

    :cond_1f
    return v1

    :cond_20
    invoke-static {p0, p1, p2}, Lcom/loc/by;->bBQ(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    :cond_26
    :goto_26
    return v8

    :cond_27
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_48

    :cond_32
    :goto_32
    sget-object v1, Lcom/loc/by;->bhF:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    :goto_3a
    sget-object v1, Lcom/loc/by;->bhD:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object v1, Lcom/loc/by;->bhD:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_48
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_32

    :cond_52
    sget-object v1, Lcom/loc/by;->bhF:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :cond_58
    if-eq p3, v4, :cond_11

    return v1

    :cond_5b
    const/16 v2, 0x9

    goto :goto_1a

    :cond_5e
    move v2, v0

    goto :goto_1a

    :cond_60
    move v0, v1

    :cond_61
    sget-object v1, Lcom/loc/by;->bhF:Ljava/util/Hashtable;

    sget-object v4, Lcom/loc/by;->bhD:Ljava/util/Hashtable;

    :goto_65
    if-lt v0, v2, :cond_68

    return v8

    :cond_68
    aget-object v5, v3, v0

    invoke-static {p0, v5, p2}, Lcom/loc/by;->bBQ(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_73

    :cond_70
    :goto_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_73
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8e

    :cond_7e
    :goto_7e
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_98

    :goto_84
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    :cond_8e
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_7e

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_7e

    :cond_98
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_84
.end method

.method private static bBQ(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    return-object v1

    :cond_a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/loc/by;->c()Ljava/lang/StringBuilder;

    move-result-object v0

    packed-switch p2, :pswitch_data_b8

    return-object v1

    :pswitch_18
    invoke-static {p0}, Lcom/loc/by;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p0}, Lcom/loc/by;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6e

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_39
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_77

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_60
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6e
    const/4 v1, 0x4

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_77
    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    :pswitch_81
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_18
        :pswitch_81
    .end packed-switch
.end method

.method private static bBR(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 14

    const-wide/16 v4, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return v8

    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    if-nez p3, :cond_16

    :cond_15
    return v8

    :cond_16
    array-length v0, p3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    invoke-static {}, Lcom/loc/by;->c()Ljava/lang/StringBuilder;

    move-result-object v1

    packed-switch p2, :pswitch_data_1b4

    return v8

    :pswitch_22
    invoke-static {p0}, Lcom/loc/by;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p0}, Lcom/loc/by;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_dc

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_43
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e6

    add-int/lit8 v6, v2, 0x3

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6a
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    aget-object v2, p3, v9

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_128

    :cond_8d
    :goto_8d
    move-wide v2, v4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_93
    const-string/jumbo v4, "v"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "geohash"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "t"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "imei"

    sget-object v2, Lcom/loc/bx;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "imsi"

    sget-object v2, Lcom/loc/bx;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "src"

    sget-object v2, Lcom/loc/bx;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "license"

    sget-object v2, Lcom/loc/bx;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_d5} :catch_191

    :goto_d5
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v8

    return v9

    :cond_dc
    const/4 v2, 0x4

    invoke-virtual {p1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_43

    :cond_e6
    add-int/lit8 v6, v2, 0x4

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6a

    :pswitch_f1
    const-string/jumbo v0, "wifi"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v2, 0x3

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_73

    :cond_128
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_8d

    :try_start_12e
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v6, "r"

    invoke-direct {v2, v1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_136
    .catch Ljava/io/FileNotFoundException; {:try_start_12e .. :try_end_136} :catch_152
    .catch Ljava/lang/Throwable; {:try_start_12e .. :try_end_136} :catch_170
    .catchall {:try_start_12e .. :try_end_136} :catchall_18d

    const-wide/16 v6, 0x0

    :try_start_138
    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_13e
    .catch Ljava/io/FileNotFoundException; {:try_start_138 .. :try_end_13e} :catch_1b2
    .catch Ljava/lang/Throwable; {:try_start_138 .. :try_end_13e} :catch_1af
    .catchall {:try_start_138 .. :try_end_13e} :catchall_1ac

    move-result-wide v4

    if-eqz v2, :cond_8d

    :try_start_141
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_144
    .catch Ljava/lang/Throwable; {:try_start_141 .. :try_end_144} :catch_146

    goto/16 :goto_8d

    :catch_146
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "getRequestParams part3"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8d

    :catch_152
    move-exception v1

    move-object v2, v3

    :goto_154
    :try_start_154
    const-string/jumbo v3, "Off"

    const-string/jumbo v6, "getRequestParams part1"

    invoke-static {v1, v3, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15d
    .catchall {:try_start_154 .. :try_end_15d} :catchall_1ac

    if-eqz v2, :cond_8d

    :try_start_15f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_162
    .catch Ljava/lang/Throwable; {:try_start_15f .. :try_end_162} :catch_164

    goto/16 :goto_8d

    :catch_164
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "getRequestParams part3"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8d

    :catch_170
    move-exception v1

    :goto_171
    :try_start_171
    const-string/jumbo v2, "Off"

    const-string/jumbo v6, "getRequestParams part2"

    invoke-static {v1, v2, v6}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17a
    .catchall {:try_start_171 .. :try_end_17a} :catchall_18d

    if-eqz v3, :cond_8d

    :try_start_17c
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17f
    .catch Ljava/lang/Throwable; {:try_start_17c .. :try_end_17f} :catch_181

    goto/16 :goto_8d

    :catch_181
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "getRequestParams part3"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8d

    :catchall_18d
    move-exception v0

    :goto_18e
    if-nez v3, :cond_19d

    :goto_190
    throw v0

    :catch_191
    move-exception v0

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "getRequestParams part4"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d5

    :cond_19d
    :try_start_19d
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1a0
    .catch Ljava/lang/Throwable; {:try_start_19d .. :try_end_1a0} :catch_1a1

    goto :goto_190

    :catch_1a1
    move-exception v1

    const-string/jumbo v2, "Off"

    const-string/jumbo v3, "getRequestParams part3"

    invoke-static {v1, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_190

    :catchall_1ac
    move-exception v0

    move-object v3, v2

    goto :goto_18e

    :catch_1af
    move-exception v1

    move-object v3, v2

    goto :goto_171

    :catch_1b2
    move-exception v1

    goto :goto_154

    :pswitch_data_1b4
    .packed-switch 0x1
        :pswitch_22
        :pswitch_f1
    .end packed-switch
.end method

.method private static bBS(Landroid/content/Context;Ljava/lang/String;IZZ)Z
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_39

    if-eq p2, v2, :cond_3d

    :cond_6
    move v0, v1

    :goto_7
    const-string/jumbo v3, "cgi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_10
    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_42

    :cond_19
    sget-object v0, Lcom/loc/by;->a:[I

    aget v0, v0, v2

    const/16 v3, 0x7d0

    if-gt v0, v3, :cond_45

    invoke-static {p0}, Lcom/loc/X;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bu;->bBn(Landroid/net/NetworkInfo;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_46

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_47

    :cond_32
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_4a

    :cond_38
    :goto_38
    return v2

    :cond_39
    const/16 v0, 0x19

    if-ge p2, v0, :cond_6

    :cond_3d
    move v0, v2

    goto :goto_7

    :cond_3f
    if-eqz v0, :cond_10

    return v1

    :cond_42
    if-nez v0, :cond_19

    return v1

    :cond_45
    return v1

    :cond_46
    return v1

    :cond_47
    if-eqz p4, :cond_32

    return v1

    :cond_4a
    if-nez p4, :cond_38

    sget-object v0, Lcom/loc/by;->bhG:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_38

    const-string/jumbo v0, "phone"

    invoke-static {p0, v0}, Lcom/loc/X;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/loc/by;->bhG:Landroid/telephony/TelephonyManager;

    goto :goto_38
.end method

.method private static c()Ljava/lang/StringBuilder;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/loc/X;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "offline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/loc/X;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
