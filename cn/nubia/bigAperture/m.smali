.class public Lcn/nubia/bigAperture/m;
.super Lcn/nubia/bigAperture/p;
.source "SourceFile"


# instance fields
.field private final bof:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/bigAperture/p;-><init>(Z)V

    .line 206
    const-string/jumbo v0, "ApertureBackground"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/bigAperture/m;->bof:Z

    .line 19
    return-void
.end method

.method private bKA(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 208
    iget-boolean v0, p0, Lcn/nubia/bigAperture/m;->bof:Z

    if-eqz v0, :cond_a

    .line 209
    const-string/jumbo v0, "BigApertureTaskBackupUseFile"

    invoke-static {v0, p1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_a
    return-void
.end method

.method private bKB(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7

    .prologue
    .line 182
    const-string/jumbo v0, "parseBigAperatureTempFiles E"

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/m;->bKA(Ljava/lang/String;)V

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 186
    if-eqz v2, :cond_5d

    .line 188
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 189
    if-eqz v2, :cond_5d

    .line 190
    const/4 v0, 0x0

    :goto_23
    array-length v3, v2

    if-ge v0, v3, :cond_5d

    .line 191
    aget-object v3, v2, v0

    if-eqz v3, :cond_5a

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/.metadata"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 193
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 195
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 201
    :cond_5d
    const-string/jumbo v0, "parseBigAperatureTempFiles X"

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/m;->bKA(Ljava/lang/String;)V

    .line 203
    return-object v1
.end method


# virtual methods
.method public bKC(Lcn/nubia/bigAperture/q;)V
    .registers 33

    .prologue
    .line 87
    const-string/jumbo v1, "[perf test] restore E"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcn/nubia/bigAperture/m;->bKA(Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcn/nubia/bigAperture/BigApertureService;->bnT:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcn/nubia/bigAperture/m;->bKB(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 89
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_14
    :goto_14
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 90
    const/4 v2, 0x0

    .line 92
    :try_start_21
    new-instance v28, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    move-object/from16 v0, v28

    invoke-direct {v0, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2b} :catch_db
    .catchall {:try_start_21 .. :try_end_2b} :catchall_c5

    .line 93
    :try_start_2b
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 94
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v11

    .line 96
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v12

    .line 97
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    .line 98
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    .line 99
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    .line 100
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    .line 101
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    .line 102
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    .line 103
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v13

    .line 104
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v14

    .line 105
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v15

    .line 106
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v16

    .line 107
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v17

    .line 108
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v18

    .line 109
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v19

    .line 110
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v20

    .line 111
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v21

    .line 112
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;

    move-result-object v23

    .line 113
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v24

    .line 114
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v26

    .line 115
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v27

    .line 116
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v22

    .line 117
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v30

    .line 119
    new-instance v1, Lcn/nubia/bigAperture/BigApertureTask;

    const/4 v2, 0x0

    .line 124
    const/16 v25, 0x0

    .line 119
    invoke-direct/range {v1 .. v27}, Lcn/nubia/bigAperture/BigApertureTask;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IIIIIIIIFFFFIIIIIILjava/lang/String;I[III)V

    .line 125
    const/4 v2, 0x1

    move/from16 v0, v30

    if-ne v0, v2, :cond_b4

    .line 126
    invoke-virtual {v1}, Lcn/nubia/bigAperture/BigApertureTask;->bJj()V

    .line 130
    :goto_a3
    if-eqz p1, :cond_aa

    .line 131
    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcn/nubia/bigAperture/q;->bKF(Lcn/nubia/bigAperture/BigApertureTask;)V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_aa} :catch_b8
    .catchall {:try_start_2b .. :try_end_aa} :catchall_d9

    .line 137
    :cond_aa
    if-eqz v28, :cond_14

    .line 138
    :try_start_ac
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b1

    goto/16 :goto_14

    .line 140
    :catch_b1
    move-exception v1

    goto/16 :goto_14

    .line 128
    :cond_b4
    :try_start_b4
    invoke-virtual {v1}, Lcn/nubia/bigAperture/BigApertureTask;->bJl()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_d9

    goto :goto_a3

    .line 133
    :catch_b8
    move-exception v1

    move-object/from16 v1, v28

    .line 137
    :goto_bb
    if-eqz v1, :cond_14

    .line 138
    :try_start_bd
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c2

    goto/16 :goto_14

    .line 140
    :catch_c2
    move-exception v1

    goto/16 :goto_14

    .line 135
    :catchall_c5
    move-exception v1

    move-object/from16 v28, v2

    .line 137
    :goto_c8
    if-eqz v28, :cond_cd

    .line 138
    :try_start_ca
    invoke-virtual/range {v28 .. v28}, Ljava/io/RandomAccessFile;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ce

    .line 135
    :cond_cd
    :goto_cd
    throw v1

    .line 140
    :catch_ce
    move-exception v2

    goto :goto_cd

    .line 144
    :cond_d0
    const-string/jumbo v1, "[perf test] restore "

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcn/nubia/bigAperture/m;->bKA(Ljava/lang/String;)V

    .line 86
    return-void

    .line 135
    :catchall_d9
    move-exception v1

    goto :goto_c8

    .line 133
    :catch_db
    move-exception v1

    move-object v1, v2

    goto :goto_bb
.end method

.method public bKD(Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 149
    const-string/jumbo v0, "[perf test] updateBackupTaskState E"

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/m;->bKA(Ljava/lang/String;)V

    .line 152
    :try_start_7
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/.metadata"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_2a} :catch_cf
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2a} :catch_aa
    .catchall {:try_start_7 .. :try_end_2a} :catchall_c0

    .line 154
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; taskState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; pendingProcessCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/nubia/bigAperture/m;->bKA(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v2, v0, -0x8

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 157
    iget v2, p1, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 158
    add-int/lit8 v0, v0, -0x4

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 159
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7b

    .line 160
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_8b

    .line 161
    :cond_7b
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_7f} :catch_90
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_7f} :catch_d2
    .catchall {:try_start_2a .. :try_end_7f} :catchall_cd

    .line 170
    :goto_7f
    if-eqz v1, :cond_84

    .line 172
    :try_start_81
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_a5

    .line 178
    :cond_84
    :goto_84
    const-string/jumbo v0, "[perf test] updateBackupTaskState X"

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/m;->bKA(Ljava/lang/String;)V

    .line 148
    return-void

    .line 163
    :cond_8b
    const/4 v0, 0x0

    :try_start_8c
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_8c .. :try_end_8f} :catch_90
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_d2
    .catchall {:try_start_8c .. :try_end_8f} :catchall_cd

    goto :goto_7f

    .line 165
    :catch_90
    move-exception v0

    .line 166
    :goto_91
    :try_start_91
    const-string/jumbo v0, "BigApertureTaskBackupUseFile"

    const-string/jumbo v2, "FileNotFoundException"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9a
    .catchall {:try_start_91 .. :try_end_9a} :catchall_cd

    .line 170
    if-eqz v1, :cond_84

    .line 172
    :try_start_9c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    goto :goto_84

    .line 173
    :catch_a0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_84

    .line 173
    :catch_a5
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_84

    .line 167
    :catch_aa
    move-exception v0

    move-object v1, v2

    .line 168
    :goto_ac
    :try_start_ac
    const-string/jumbo v2, "BigApertureTaskBackupUseFile"

    const-string/jumbo v3, "IOException"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b5
    .catchall {:try_start_ac .. :try_end_b5} :catchall_cd

    .line 170
    if-eqz v1, :cond_84

    .line 172
    :try_start_b7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_ba} :catch_bb

    goto :goto_84

    .line 173
    :catch_bb
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_84

    .line 169
    :catchall_c0
    move-exception v0

    move-object v1, v2

    .line 170
    :goto_c2
    if-eqz v1, :cond_c7

    .line 172
    :try_start_c4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_c7} :catch_c8

    .line 169
    :cond_c7
    :goto_c7
    throw v0

    .line 173
    :catch_c8
    move-exception v1

    .line 174
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c7

    .line 169
    :catchall_cd
    move-exception v0

    goto :goto_c2

    .line 165
    :catch_cf
    move-exception v0

    move-object v1, v2

    goto :goto_91

    .line 167
    :catch_d2
    move-exception v0

    goto :goto_ac
.end method

.method public bKy(Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 25
    const-string/jumbo v0, "[perf test] backup E"

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/m;->bKA(Ljava/lang/String;)V

    .line 28
    :try_start_7
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/.metadata"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_2a} :catch_d4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2a} :catch_be
    .catchall {:try_start_7 .. :try_end_2a} :catchall_ea

    .line 30
    :try_start_2a
    iget-object v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V

    .line 32
    iget-object v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V

    .line 33
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmS:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 34
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bni:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 35
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 36
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 37
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bng:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 38
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bnf:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 39
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmP:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 40
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmQ:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 41
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmT:F

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeFloat(F)V

    .line 42
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmU:F

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeFloat(F)V

    .line 43
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmW:F

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeFloat(F)V

    .line 44
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmV:F

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeFloat(F)V

    .line 45
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 46
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmM:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 47
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmN:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 48
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmO:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 49
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bnc:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 50
    iget-object v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmX:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V

    .line 51
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmY:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 52
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bna:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 53
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bne:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 55
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_aa
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_aa} :catch_f9
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_aa} :catch_fb
    .catchall {:try_start_2a .. :try_end_aa} :catchall_f7

    .line 63
    if-eqz v1, :cond_af

    .line 65
    :try_start_ac
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b9

    .line 71
    :cond_af
    :goto_af
    const-string/jumbo v0, "[perf test] backup X"

    invoke-direct {p0, v0}, Lcn/nubia/bigAperture/m;->bKA(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Lcn/nubia/bigAperture/m;->bKE(Lcn/nubia/bigAperture/BigApertureTask;)V

    .line 24
    return-void

    .line 66
    :catch_b9
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_af

    .line 60
    :catch_be
    move-exception v0

    move-object v1, v2

    .line 61
    :goto_c0
    :try_start_c0
    const-string/jumbo v2, "BigApertureTaskBackupUseFile"

    const-string/jumbo v3, "FileNotFoundException"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c9
    .catchall {:try_start_c0 .. :try_end_c9} :catchall_f7

    .line 63
    if-eqz v1, :cond_af

    .line 65
    :try_start_cb
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    goto :goto_af

    .line 66
    :catch_cf
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_af

    .line 58
    :catch_d4
    move-exception v0

    move-object v1, v2

    .line 59
    :goto_d6
    :try_start_d6
    const-string/jumbo v0, "BigApertureTaskBackupUseFile"

    const-string/jumbo v2, "FileNotFoundException"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_df
    .catchall {:try_start_d6 .. :try_end_df} :catchall_f7

    .line 63
    if-eqz v1, :cond_af

    .line 65
    :try_start_e1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_e5

    goto :goto_af

    .line 66
    :catch_e5
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_af

    .line 62
    :catchall_ea
    move-exception v0

    move-object v1, v2

    .line 63
    :goto_ec
    if-eqz v1, :cond_f1

    .line 65
    :try_start_ee
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f2

    .line 62
    :cond_f1
    :goto_f1
    throw v0

    .line 66
    :catch_f2
    move-exception v1

    .line 67
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f1

    .line 62
    :catchall_f7
    move-exception v0

    goto :goto_ec

    .line 58
    :catch_f9
    move-exception v0

    goto :goto_d6

    .line 60
    :catch_fb
    move-exception v0

    goto :goto_c0
.end method

.method public bKz(Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 5

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/.metadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 77
    :cond_24
    return-void
.end method
