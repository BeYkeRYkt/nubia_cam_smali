.class public abstract Lcom/loc/aR;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b:I

.field private bgn:Lcom/loc/ag;

.field private bgo:Lcom/loc/bk;

.field private bgp:Lcom/loc/cD;


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/loc/aR;->b:I

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p2}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/loc/bZ;->bEm(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_9
.end method

.method private b(Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/aR;->bgp:Lcom/loc/cD;

    if-eqz v0, :cond_c

    :try_start_5
    iget-object v0, p0, Lcom/loc/aR;->bgp:Lcom/loc/cD;

    invoke-virtual {v0, p1}, Lcom/loc/cD;->bHl(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_d

    move-result v0

    :goto_b
    return v0

    :cond_c
    return v1

    :catch_d
    move-exception v0

    const-string/jumbo v2, "LogUpdateProcessor"

    const-string/jumbo v3, "deleteLogData"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_b
.end method

.method private bAd(Lcom/loc/bn;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 8

    invoke-static {p4}, Lcom/loc/D;->bwt(I)Lcom/loc/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/a;->a(I)V

    invoke-virtual {v0, p2}, Lcom/loc/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/loc/a;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/loc/bn;->bBa(Lcom/loc/a;)V

    return-void
.end method

.method private bAf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\"timestamp\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\",\"et\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\",\"classname\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\"detail\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bAg(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bAh(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/loc/bn;)Z
    .registers 15

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p1, p3}, Lcom/loc/D;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_12
    const/4 v0, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5000

    invoke-static {v2, v0, v3, v4, v5}, Lcom/loc/cD;->bHg(Ljava/io/File;IIJ)Lcom/loc/cD;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_50
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_19} :catch_5d
    .catchall {:try_start_3 .. :try_end_19} :catchall_78

    move-result-object v3

    :try_start_1a
    invoke-virtual {p0, p5}, Lcom/loc/aR;->bAe(Lcom/loc/bn;)Lcom/loc/bk;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/loc/cD;->bHf(Lcom/loc/bk;)V

    invoke-virtual {v3, p2}, Lcom/loc/cD;->a(Ljava/lang/String;)Lcom/loc/A;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_13d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_24} :catch_12d
    .catchall {:try_start_1a .. :try_end_24} :catchall_114

    move-result-object v2

    if-nez v2, :cond_4b

    :try_start_27
    invoke-static {p4}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, p2}, Lcom/loc/cD;->b(Ljava/lang/String;)Lcom/loc/bV;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/loc/bV;->a(I)Ljava/io/OutputStream;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_33} :catch_142
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_33} :catch_131
    .catchall {:try_start_27 .. :try_end_33} :catchall_118

    move-result-object v1

    :try_start_34
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Lcom/loc/bV;->a()V

    invoke-virtual {v3}, Lcom/loc/cD;->b()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3d} :catch_149
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_3d} :catch_137
    .catchall {:try_start_34 .. :try_end_3d} :catchall_11e

    if-nez v1, :cond_9a

    :goto_3f
    if-nez v2, :cond_a3

    :goto_41
    if-nez v3, :cond_ac

    :cond_43
    :goto_43
    return v7

    :cond_44
    :try_start_44
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_50
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_5d
    .catchall {:try_start_44 .. :try_end_47} :catchall_78

    move-result v0

    if-nez v0, :cond_12

    return v6

    :cond_4b
    if-nez v2, :cond_82

    :goto_4d
    if-nez v3, :cond_8b

    :cond_4f
    :goto_4f
    return v6

    :catch_50
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_53
    :try_start_53
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_124

    if-nez v3, :cond_bb

    :goto_58
    if-nez v1, :cond_c4

    :goto_5a
    if-nez v2, :cond_cd

    :cond_5c
    :goto_5c
    return v6

    :catch_5d
    move-exception v0

    move-object v3, v1

    move-object v2, v1

    :goto_60
    :try_start_60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_12a

    if-nez v2, :cond_dc

    :goto_65
    if-nez v1, :cond_e5

    :goto_67
    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Lcom/loc/cD;->a()Z

    move-result v0

    if-nez v0, :cond_5c

    :try_start_6f
    invoke-virtual {v3}, Lcom/loc/cD;->close()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_5c

    :catch_73
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5c

    :catchall_78
    move-exception v0

    move-object v3, v1

    move-object v2, v1

    :goto_7b
    if-nez v2, :cond_f0

    :goto_7d
    if-nez v1, :cond_f9

    :goto_7f
    if-nez v3, :cond_103

    :cond_81
    :goto_81
    throw v0

    :cond_82
    :try_start_82
    invoke-virtual {v2}, Lcom/loc/A;->close()V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_4d

    :catch_86
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4d

    :cond_8b
    invoke-virtual {v3}, Lcom/loc/cD;->a()Z

    move-result v0

    if-nez v0, :cond_4f

    :try_start_91
    invoke-virtual {v3}, Lcom/loc/cD;->close()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_4f

    :catch_95
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4f

    :cond_9a
    :try_start_9a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_9e

    goto :goto_3f

    :catch_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3f

    :cond_a3
    :try_start_a3
    invoke-virtual {v2}, Lcom/loc/A;->close()V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a6} :catch_a7

    goto :goto_41

    :catch_a7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_41

    :cond_ac
    invoke-virtual {v3}, Lcom/loc/cD;->a()Z

    move-result v0

    if-nez v0, :cond_43

    :try_start_b2
    invoke-virtual {v3}, Lcom/loc/cD;->close()V
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_43

    :catch_b6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_43

    :cond_bb
    :try_start_bb
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_be
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_58

    :catch_bf
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_58

    :cond_c4
    :try_start_c4
    invoke-virtual {v1}, Lcom/loc/A;->close()V
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_c7} :catch_c8

    goto :goto_5a

    :catch_c8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5a

    :cond_cd
    invoke-virtual {v2}, Lcom/loc/cD;->a()Z

    move-result v0

    if-nez v0, :cond_5c

    :try_start_d3
    invoke-virtual {v2}, Lcom/loc/cD;->close()V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_d6} :catch_d7

    goto :goto_5c

    :catch_d7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5c

    :cond_dc
    :try_start_dc
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_dc .. :try_end_df} :catch_e0

    goto :goto_65

    :catch_e0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_65

    :cond_e5
    :try_start_e5
    invoke-virtual {v1}, Lcom/loc/A;->close()V
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_e8} :catch_ea

    goto/16 :goto_67

    :catch_ea
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_67

    :cond_f0
    :try_start_f0
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_f0 .. :try_end_f3} :catch_f4

    goto :goto_7d

    :catch_f4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7d

    :cond_f9
    :try_start_f9
    invoke-virtual {v1}, Lcom/loc/A;->close()V
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_7f

    :catch_fd
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7f

    :cond_103
    invoke-virtual {v3}, Lcom/loc/cD;->a()Z

    move-result v1

    if-nez v1, :cond_81

    :try_start_109
    invoke-virtual {v3}, Lcom/loc/cD;->close()V
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_10c} :catch_10e

    goto/16 :goto_81

    :catch_10e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_81

    :catchall_114
    move-exception v0

    move-object v2, v1

    goto/16 :goto_7b

    :catchall_118
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_7b

    :catchall_11e
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_7b

    :catchall_124
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    goto/16 :goto_7b

    :catchall_12a
    move-exception v0

    goto/16 :goto_7b

    :catch_12d
    move-exception v0

    move-object v2, v1

    goto/16 :goto_60

    :catch_131
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_60

    :catch_137
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_60

    :catch_13d
    move-exception v0

    move-object v2, v3

    move-object v3, v1

    goto/16 :goto_53

    :catch_142
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v8

    goto/16 :goto_53

    :catch_149
    move-exception v0

    move-object v8, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v8

    goto/16 :goto_53
.end method

.method public static bAi([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    return v1

    :cond_4
    if-eqz p1, :cond_3

    :try_start_6
    const-string/jumbo v0, "<br/>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, p0

    move v2, v1

    :goto_f
    if-lt v2, v4, :cond_12

    :goto_11
    return v1

    :cond_12
    aget-object v5, p0, v2

    array-length v6, v3

    move v0, v1

    :goto_16
    if-lt v0, v6, :cond_1c

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    :cond_1c
    aget-object v7, v3, v0

    const-string/jumbo v8, "at"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2a

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2a
    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_2d} :catch_32

    move-result v7

    if-eqz v7, :cond_27

    const/4 v0, 0x1

    return v0

    :catch_32
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11
.end method

.method private bAj(Lcom/loc/bn;I)V
    .registers 6

    const/4 v0, 0x2

    :try_start_1
    invoke-static {p2}, Lcom/loc/D;->a(I)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/loc/bn;->bAZ(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/loc/aR;->bAl(Ljava/util/List;Lcom/loc/bn;I)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "processDeleteFail"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method private bAk(Ljava/lang/String;)I
    .registers 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/loc/bv;->bBu([B)[B

    move-result-object v1

    new-instance v3, Lcom/loc/bF;

    invoke-direct {v3, v1}, Lcom/loc/bF;-><init>([B)V

    :try_start_f
    invoke-static {}, Lcom/loc/U;->a()Lcom/loc/U;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/loc/U;->bwT(Lcom/loc/q;)[B

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-static {v1}, Lcom/loc/bv;->a([B)Ljava/lang/String;
    :try_end_1c
    .catch Lcom/loc/i; {:try_start_f .. :try_end_1c} :catch_3e

    move-result-object v1

    :try_start_1d
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "code"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2d

    :goto_2b
    return v0

    :cond_2c
    return v0

    :cond_2d
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_30} :catch_32
    .catch Lcom/loc/i; {:try_start_1d .. :try_end_30} :catch_3e

    move-result v0

    goto :goto_2b

    :catch_32
    move-exception v1

    :try_start_33
    const-string/jumbo v3, "LogProcessor"

    const-string/jumbo v4, "processUpdate"

    invoke-static {v1, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Lcom/loc/i; {:try_start_33 .. :try_end_3c} :catch_3e

    :goto_3c
    move v0, v2

    goto :goto_2b

    :catch_3e
    move-exception v1

    invoke-virtual {v1}, Lcom/loc/i;->b()I

    move-result v3

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_51

    :goto_47
    const-string/jumbo v0, "LogProcessor"

    const-string/jumbo v3, "processUpdate"

    invoke-static {v1, v0, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_51
    move v2, v0

    goto :goto_47
.end method

.method private bAl(Ljava/util/List;Lcom/loc/bn;I)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/a;

    invoke-virtual {v0}, Lcom/loc/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/loc/aR;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/loc/a;->a(I)V

    invoke-virtual {p2, v0}, Lcom/loc/bn;->bBb(Lcom/loc/a;)V

    goto :goto_d

    :cond_2b
    invoke-virtual {v0}, Lcom/loc/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Lcom/loc/bn;->bAW(Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_d
.end method

.method private bAm(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const/4 v7, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "{\"pinfo\":\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/loc/aR;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\",\"els\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    move v1, v0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_35

    if-nez v1, :cond_8b

    const-string/jumbo v0, "]}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/a;

    invoke-virtual {v0}, Lcom/loc/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/loc/aR;->bAn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_47

    move v0, v1

    goto :goto_21

    :cond_47
    const-string/jumbo v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_87

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "||"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/loc/a;->c()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_89

    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_74
    const-string/jumbo v5, "{\"log\":\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "\"}"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_21

    :cond_87
    move v0, v1

    goto :goto_21

    :cond_89
    move v1, v2

    goto :goto_74

    :cond_8b
    return-object v7
.end method

.method private bAn(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/loc/aR;->bgp:Lcom/loc/cD;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/loc/aR;->bgp:Lcom/loc/cD;

    invoke-virtual {v0, p1}, Lcom/loc/cD;->a(Ljava/lang/String;)Lcom/loc/A;

    move-result-object v0

    if-eqz v0, :cond_30

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/loc/A;->a(I)Ljava/io/InputStream;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_11} :catch_ac
    .catchall {:try_start_1 .. :try_end_11} :catchall_45

    move-result-object v3

    :try_start_12
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_17} :catch_b0
    .catchall {:try_start_12 .. :try_end_17} :catchall_a7

    const/16 v0, 0x400

    :try_start_19
    new-array v0, v0, [B

    :goto_1b
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_31

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->a([B)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_4d

    :goto_2c
    if-nez v3, :cond_5c

    :goto_2e
    return-object v0

    :cond_2f
    return-object v2

    :cond_30
    return-object v2

    :cond_31
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_35} :catch_36
    .catchall {:try_start_19 .. :try_end_35} :catchall_aa

    goto :goto_1b

    :catch_36
    move-exception v0

    :goto_37
    :try_start_37
    const-string/jumbo v4, "LogProcessor"

    const-string/jumbo v5, "readLog"

    invoke-static {v0, v4, v5}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_aa

    if-nez v1, :cond_6b

    :goto_42
    if-nez v3, :cond_7a

    :goto_44
    return-object v2

    :catchall_45
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_48
    if-nez v1, :cond_89

    :goto_4a
    if-nez v3, :cond_98

    :goto_4c
    throw v0

    :cond_4d
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_2c

    :catch_51
    move-exception v1

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_5c
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_2e

    :catch_60
    move-exception v1

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_6b
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_42

    :catch_6f
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    invoke-static {v0, v1, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_7a
    :try_start_7a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_44

    :catch_7e
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    invoke-static {v0, v1, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :cond_89
    :try_start_89
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_4a

    :catch_8d
    move-exception v1

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    :cond_98
    :try_start_98
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_4c

    :catch_9c
    move-exception v1

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :catchall_a7
    move-exception v0

    move-object v1, v2

    goto :goto_48

    :catchall_aa
    move-exception v0

    goto :goto_48

    :catch_ac
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_37

    :catch_b0
    move-exception v0

    move-object v1, v2

    goto :goto_37
.end method

.method private bAo(Landroid/content/Context;Ljava/lang/String;)Lcom/loc/cD;
    .registers 9

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1, p2}, Lcom/loc/D;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_10
    const/4 v0, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5000

    invoke-static {v2, v0, v3, v4, v5}, Lcom/loc/cD;->bHg(Ljava/io/File;IIJ)Lcom/loc/cD;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_2c

    move-result v0

    if-nez v0, :cond_10

    return-object v1

    :catch_20
    move-exception v0

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "initDiskLru"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2a
    move-object v0, v1

    goto :goto_18

    :catch_2c
    move-exception v0

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "initDiskLru"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public static bAp(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/loc/bv;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const-string/jumbo v1, "\n"

    const-string/jumbo v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/loc/bv;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/aR;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/loc/aR;->bAo(Landroid/content/Context;Ljava/lang/String;)Lcom/loc/cD;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aR;->bgp:Lcom/loc/cD;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "LogUpDateProcessor"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private e(Landroid/content/Context;)Ljava/util/List;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_15

    :try_start_6
    new-instance v0, Lcom/loc/aY;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, Lcom/loc/aY;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/loc/aY;->a()Ljava/util/List;

    move-result-object v1

    monitor-exit v2

    :goto_11
    return-object v1

    :catchall_12
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    :try_start_14
    throw v0
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_15} :catch_15

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/loc/bZ;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {v0}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/loc/bZ;->bEf(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_18

    move-result-object v0

    :goto_16
    return-object v0

    :cond_17
    return-object v1

    :catch_18
    move-exception v0

    const-string/jumbo v2, "LogProcessor"

    const-string/jumbo v3, "getPublicInfo"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_16
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/loc/aR;->b:I

    invoke-static {v0}, Lcom/loc/D;->bwu(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/loc/bU;->bDK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/loc/aR;->bAp(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v0

    :goto_5
    return-object v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method protected abstract a(Ljava/util/List;)Ljava/lang/String;
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method protected b()I
    .registers 2

    iget v0, p0, Lcom/loc/aR;->b:I

    return v0
.end method

.method b(Landroid/content/Context;)V
    .registers 19

    invoke-direct/range {p0 .. p1}, Lcom/loc/aR;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/loc/aR;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_16

    :cond_15
    return-void

    :cond_16
    const-string/jumbo v2, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/loc/aR;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aR;->bgn:Lcom/loc/ag;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/loc/bZ;->bEn(Landroid/content/Context;Lcom/loc/ag;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/loc/M;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "ANR"

    invoke-virtual/range {p0 .. p0}, Lcom/loc/aR;->b()I

    move-result v6

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/loc/aR;->bAf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_41

    :cond_40
    return-void

    :cond_41
    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/loc/aR;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/loc/aR;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/loc/aR;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    :try_start_61
    new-instance v12, Lcom/loc/bn;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/loc/bn;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/loc/aR;->bAh(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/loc/bn;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/loc/aR;->bgn:Lcom/loc/ag;

    invoke-virtual {v2}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/loc/aR;->bAd(Lcom/loc/bn;Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v3

    return-void

    :catchall_81
    move-exception v2

    monitor-exit v3
    :try_end_83
    .catchall {:try_start_61 .. :try_end_83} :catchall_81

    throw v2
.end method

.method bAa(Lcom/loc/ag;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 24

    invoke-virtual/range {p0 .. p1}, Lcom/loc/aR;->bAc(Lcom/loc/ag;)V

    invoke-direct/range {p0 .. p0}, Lcom/loc/aR;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/loc/bZ;->bEn(Landroid/content/Context;Lcom/loc/ag;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Lcom/loc/M;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/loc/aR;->bAg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1e

    :cond_1d
    return-void

    :cond_1e
    const-string/jumbo v2, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/loc/aR;->b()I

    move-result v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p5, :cond_4e

    :goto_32
    if-nez p6, :cond_5b

    :goto_34
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/loc/aR;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/loc/aR;->bAf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_76

    :cond_4d
    return-void

    :cond_4e
    const-string/jumbo v8, "class:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_5b
    const-string/jumbo v8, " method:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "<br/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_76
    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/loc/aR;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/loc/aR;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    :try_start_90
    new-instance v12, Lcom/loc/bn;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Lcom/loc/bn;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    invoke-direct/range {v7 .. v12}, Lcom/loc/aR;->bAh(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/loc/bn;)Z

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/loc/aR;->bAd(Lcom/loc/bn;Ljava/lang/String;Ljava/lang/String;IZ)V

    monitor-exit v3

    return-void

    :catchall_ac
    move-exception v2

    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_90 .. :try_end_ae} :catchall_ac

    throw v2
.end method

.method bAb(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    invoke-direct {p0, p1}, Lcom/loc/aR;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    return-void

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p2}, Lcom/loc/aR;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_14

    :cond_13
    return-void

    :cond_14
    const-string/jumbo v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_31

    const-string/jumbo v0, "com.amap.api.col"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    :goto_30
    return-void

    :cond_31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/ag;

    invoke-virtual {v1}, Lcom/loc/ag;->e()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/loc/aR;->bAi([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/loc/aR;->bAa(Lcom/loc/ag;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4a
    :try_start_4a
    new-instance v0, Lcom/loc/cx;

    const-string/jumbo v1, "collection"

    const-string/jumbo v2, "1.0"

    const-string/jumbo v3, "AMap_collection_1.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/loc/cx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.amap.api.collection"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/loc/cx;->bGS([Ljava/lang/String;)Lcom/loc/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/cx;->a()Lcom/loc/ag;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/loc/aR;->bAa(Lcom/loc/ag;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Lcom/loc/i; {:try_start_4a .. :try_end_71} :catch_72

    goto :goto_30

    :catch_72
    move-exception v0

    invoke-virtual {v0}, Lcom/loc/i;->printStackTrace()V

    goto :goto_30
.end method

.method protected bAc(Lcom/loc/ag;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/aR;->bgn:Lcom/loc/ag;

    return-void
.end method

.method protected bAe(Lcom/loc/bn;)Lcom/loc/bk;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/aR;->bgo:Lcom/loc/bk;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_f

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lcom/loc/aR;->bgo:Lcom/loc/bk;

    return-object v0

    :cond_7
    :try_start_7
    new-instance v0, Lcom/loc/c;

    invoke-direct {v0, p0, p1}, Lcom/loc/c;-><init>(Lcom/loc/aR;Lcom/loc/bn;)V

    iput-object v0, p0, Lcom/loc/aR;->bgo:Lcom/loc/bk;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_4

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method c()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/aR;->bgp:Lcom/loc/cD;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/loc/aR;->bgp:Lcom/loc/cD;

    invoke-virtual {v0}, Lcom/loc/cD;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/loc/aR;->bgp:Lcom/loc/cD;

    invoke-virtual {v0}, Lcom/loc/cD;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_1e

    goto :goto_4

    :catch_13
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_1e
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method c(Landroid/content/Context;)V
    .registers 7

    :try_start_0
    invoke-direct {p0, p1}, Lcom/loc/aR;->d(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/loc/aR;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_4e

    :try_start_e
    new-instance v0, Lcom/loc/bn;

    invoke-direct {v0, p1}, Lcom/loc/bn;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/loc/aR;->b()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/loc/aR;->bAj(Lcom/loc/bn;I)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/loc/aR;->b()I

    move-result v3

    invoke-static {v3}, Lcom/loc/D;->a(I)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/loc/bn;->bAZ(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2c

    :cond_29
    monitor-exit v1

    return-void

    :cond_2b
    return-void

    :cond_2c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_29

    invoke-direct {p0, v2, p1}, Lcom/loc/aR;->bAm(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-direct {p0, v3}, Lcom/loc/aR;->bAk(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_43

    :goto_3f
    monitor-exit v1

    :goto_40
    return-void

    :cond_41
    monitor-exit v1

    return-void

    :cond_43
    invoke-virtual {p0}, Lcom/loc/aR;->b()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/loc/aR;->bAl(Ljava/util/List;Lcom/loc/bn;I)V

    goto :goto_3f

    :catchall_4b
    move-exception v0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_e .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4e} :catch_4e

    :catch_4e
    move-exception v0

    const-string/jumbo v1, "LogProcessor"

    const-string/jumbo v2, "processUpdateLog"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method
