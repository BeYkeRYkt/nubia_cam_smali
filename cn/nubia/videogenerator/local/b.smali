.class public Lcn/nubia/videogenerator/local/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private bsZ:Landroid/media/MediaExtractor;

.field final synthetic bta:Lcn/nubia/videogenerator/local/a;


# direct methods
.method public constructor <init>(Lcn/nubia/videogenerator/local/a;)V
    .registers 4

    .prologue
    .line 138
    iput-object p1, p0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Landroid/media/MediaExtractor;

    invoke-direct {v0}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    .line 141
    iget-object v0, p0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-static {p1}, Lcn/nubia/videogenerator/local/a;->bPD(Lcn/nubia/videogenerator/local/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcn/nubia/videogenerator/local/b;->bPY()V

    .line 143
    return-void
.end method

.method private bPY()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 146
    iget-object v1, p0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v1

    .line 147
    :goto_7
    if-ge v0, v1, :cond_2c

    .line 148
    iget-object v2, p0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v2, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string/jumbo v3, "mime"

    .line 149
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "audio/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 150
    :cond_22
    iget-object v1, p0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 151
    iget-object v0, p0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v0, v2}, Lcn/nubia/videogenerator/local/a;->bPE(Lcn/nubia/videogenerator/local/a;Landroid/media/MediaFormat;)V

    .line 155
    :cond_2c
    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    const/16 v2, 0x4000

    .line 159
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    const/16 v2, 0x4000

    .line 160
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 161
    new-instance v11, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v11}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    .line 164
    const/4 v2, 0x0

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v3}, Lcn/nubia/videogenerator/local/a;->bPF(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-gtz v3, :cond_106

    const/4 v3, 0x1

    :goto_25
    if-nez v3, :cond_3f

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    const/4 v8, 0x0

    invoke-virtual {v3, v10, v8}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    iput v3, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 167
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v3

    iput v3, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v3, 0x0

    .line 168
    iput v3, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 170
    :cond_3f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v3}, Lcn/nubia/videogenerator/local/a;->bPG(Lcn/nubia/videogenerator/local/a;)I

    move-result v3

    if-eqz v3, :cond_109

    :cond_49
    move v8, v2

    .line 173
    :cond_4a
    :goto_4a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPK(Lcn/nubia/videogenerator/local/a;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPJ(Lcn/nubia/videogenerator/local/a;)Z

    move-result v2

    if-nez v2, :cond_143

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPR(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/d;

    move-result-object v2

    if-nez v2, :cond_24f

    .line 206
    :goto_68
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPG(Lcn/nubia/videogenerator/local/a;)I

    move-result v2

    if-ltz v2, :cond_25f

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPF(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v2, v2, v12

    if-gtz v2, :cond_304

    const/4 v2, 0x1

    :goto_81
    if-nez v2, :cond_8d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPH(Lcn/nubia/videogenerator/local/a;)I

    move-result v2

    if-eqz v2, :cond_307

    .line 243
    :cond_8d
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    const/4 v12, 0x0

    invoke-virtual {v2, v9, v12}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    iput v2, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v2

    iput v2, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v2, 0x0

    .line 246
    iput v2, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPH(Lcn/nubia/videogenerator/local/a;)I

    move-result v2

    if-eqz v2, :cond_372

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPH(Lcn/nubia/videogenerator/local/a;)I

    move-result v2

    const/4 v12, 0x2

    if-eq v2, v12, :cond_430

    .line 263
    :cond_bf
    :goto_bf
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPO(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    cmp-long v2, v12, v14

    if-gtz v2, :cond_445

    const/4 v2, 0x1

    :goto_ce
    if-nez v2, :cond_45d

    const/4 v2, 0x0

    .line 264
    iput v2, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const-string/jumbo v2, "AudioLocalSource"

    const-string/jumbo v3, "local audio read EOS break"

    .line 265
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPR(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/d;

    move-result-object v2

    if-nez v2, :cond_448

    .line 269
    :goto_e6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/videogenerator/local/a;->bPP(Lcn/nubia/videogenerator/local/a;Z)V

    .line 298
    :cond_ee
    :goto_ee
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/videogenerator/local/a;->bPW(Lcn/nubia/videogenerator/local/a;Lcn/nubia/videogenerator/b/l;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/videogenerator/local/a;->bPX(Lcn/nubia/videogenerator/local/a;Lcn/nubia/videogenerator/b/d;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    .line 301
    return-void

    .line 165
    :cond_106
    const/4 v3, 0x0

    goto/16 :goto_25

    .line 170
    :cond_109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v3}, Lcn/nubia/videogenerator/local/a;->bPH(Lcn/nubia/videogenerator/local/a;)I

    move-result v3

    if-nez v3, :cond_49

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v3}, Lcn/nubia/videogenerator/local/a;->bPI(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-gtz v3, :cond_141

    const/4 v3, 0x1

    :goto_122
    if-nez v3, :cond_49

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v3}, Lcn/nubia/videogenerator/local/a;->bPJ(Lcn/nubia/videogenerator/local/a;)Z

    move-result v3

    if-nez v3, :cond_49

    .line 171
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v8}, Lcn/nubia/videogenerator/local/a;->bPI(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    const/4 v8, 0x0

    invoke-virtual {v3, v12, v13, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move v8, v2

    .line 173
    goto/16 :goto_4a

    .line 170
    :cond_141
    const/4 v3, 0x0

    goto :goto_122

    .line 175
    :cond_143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPL(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/l;

    move-result-object v2

    if-nez v2, :cond_19b

    .line 179
    :cond_14d
    :goto_14d
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    iput v2, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    iput-wide v2, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPG(Lcn/nubia/videogenerator/local/a;)I

    move-result v2

    if-ltz v2, :cond_1b4

    .line 183
    :cond_171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPG(Lcn/nubia/videogenerator/local/a;)I

    move-result v2

    if-gez v2, :cond_1fe

    .line 194
    :cond_17b
    iget v2, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v2, :cond_21b

    .line 199
    iget-wide v2, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 200
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/a;->bPL(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/l;

    move-result-object v6

    if-nez v6, :cond_233

    :cond_18b
    move-wide/from16 v18, v4

    move-wide v4, v2

    move-wide/from16 v2, v18

    .line 296
    :goto_190
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    move-wide v6, v4

    move-wide v4, v2

    goto/16 :goto_4a

    .line 175
    :cond_19b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPL(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/l;

    move-result-object v2

    const/16 v3, 0x64

    invoke-interface {v2, v3}, Lcn/nubia/videogenerator/b/l;->bNX(I)Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 176
    invoke-static {}, Ljava/lang/Thread;->yield()V

    const-wide/16 v2, 0xa

    .line 177
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_14d

    .line 182
    :cond_1b4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPM(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v2

    iget-wide v14, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v13}, Lcn/nubia/videogenerator/local/a;->bPN(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    cmp-long v2, v2, v14

    if-lez v2, :cond_1fc

    const/4 v2, 0x1

    :goto_1cc
    if-eqz v2, :cond_171

    :goto_1ce
    const-string/jumbo v2, "AudioLocalSource"

    const-string/jumbo v3, "need decode read EOS break"

    .line 184
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 185
    iput v2, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v2, 0x4

    .line 186
    iput v2, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/videogenerator/local/a;->bPP(Lcn/nubia/videogenerator/local/a;Z)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPL(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/l;

    move-result-object v2

    if-eqz v2, :cond_ee

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPL(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/l;

    move-result-object v2

    invoke-interface {v2, v9, v12}, Lcn/nubia/videogenerator/b/l;->bNY(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_ee

    .line 182
    :cond_1fc
    const/4 v2, 0x0

    goto :goto_1cc

    .line 183
    :cond_1fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPM(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v2

    iget-wide v14, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long/2addr v2, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v13}, Lcn/nubia/videogenerator/local/a;->bPO(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    cmp-long v2, v2, v14

    if-gtz v2, :cond_219

    const/4 v2, 0x1

    :goto_216
    if-nez v2, :cond_17b

    goto :goto_1ce

    :cond_219
    const/4 v2, 0x0

    goto :goto_216

    .line 195
    :cond_21b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPM(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    add-long/2addr v12, v6

    invoke-static {v2, v12, v13}, Lcn/nubia/videogenerator/local/a;->bPQ(Lcn/nubia/videogenerator/local/a;J)V

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v13, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_4a

    .line 200
    :cond_233
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/a;->bPK(Lcn/nubia/videogenerator/local/a;)Z

    move-result v6

    if-eqz v6, :cond_18b

    .line 201
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/a;->bPL(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/l;

    move-result-object v6

    invoke-interface {v6, v9, v12}, Lcn/nubia/videogenerator/b/l;->bNY(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    move-wide/from16 v18, v4

    move-wide v4, v2

    move-wide/from16 v2, v18

    .line 204
    goto/16 :goto_190

    .line 205
    :cond_24f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPR(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/d;

    move-result-object v2

    invoke-interface {v2}, Lcn/nubia/videogenerator/b/d;->brm()Z

    move-result v2

    if-eqz v2, :cond_4a

    goto/16 :goto_68

    .line 207
    :cond_25f
    new-instance v12, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v12}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    iput v2, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPM(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    add-long/2addr v2, v14

    iput-wide v2, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 211
    iget-wide v2, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v13}, Lcn/nubia/videogenerator/local/a;->bPN(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    cmp-long v2, v2, v14

    if-gtz v2, :cond_2aa

    const/4 v2, 0x1

    :goto_291
    if-nez v2, :cond_2c0

    const/4 v2, 0x0

    .line 212
    iput v2, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPR(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/d;

    move-result-object v2

    if-nez v2, :cond_2ac

    .line 216
    :goto_2a0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcn/nubia/videogenerator/local/a;->bPP(Lcn/nubia/videogenerator/local/a;Z)V

    goto/16 :goto_ee

    .line 211
    :cond_2aa
    const/4 v2, 0x0

    goto :goto_291

    .line 214
    :cond_2ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPR(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/d;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v3}, Lcn/nubia/videogenerator/local/a;->bPS(Lcn/nubia/videogenerator/local/a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/nubia/videogenerator/b/d;->bro(Ljava/lang/String;)V

    goto :goto_2a0

    .line 219
    :cond_2c0
    iget v2, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v2, :cond_2d7

    .line 224
    iget-wide v2, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 225
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/a;->bPR(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/d;

    move-result-object v6

    if-nez v6, :cond_2ea

    move-wide/from16 v18, v4

    move-wide v4, v2

    move-wide/from16 v2, v18

    goto/16 :goto_190

    .line 220
    :cond_2d7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2, v6, v7}, Lcn/nubia/videogenerator/local/a;->bPQ(Lcn/nubia/videogenerator/local/a;J)V

    .line 221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v13, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_4a

    .line 226
    :cond_2ea
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/a;->bPR(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/d;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v7}, Lcn/nubia/videogenerator/local/a;->bPS(Lcn/nubia/videogenerator/local/a;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v9, v12, v7}, Lcn/nubia/videogenerator/b/d;->brn(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    move-wide/from16 v18, v4

    move-wide v4, v2

    move-wide/from16 v2, v18

    .line 229
    goto/16 :goto_190

    .line 230
    :cond_304
    const/4 v2, 0x0

    goto/16 :goto_81

    :cond_307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPF(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-ltz v2, :cond_339

    const/4 v2, 0x1

    :goto_314
    if-nez v2, :cond_8d

    .line 231
    iput-wide v6, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPS(Lcn/nubia/videogenerator/local/a;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "audio/amr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33b

    :cond_329
    const-wide/16 v2, 0x5a55

    .line 233
    add-long/2addr v2, v6

    .line 238
    :goto_32c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/a;->bPR(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/d;

    move-result-object v6

    if-nez v6, :cond_35c

    move-wide v6, v2

    goto/16 :goto_4a

    .line 230
    :cond_339
    const/4 v2, 0x0

    goto :goto_314

    .line 232
    :cond_33b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPS(Lcn/nubia/videogenerator/local/a;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "audio/3gpp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_329

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPT(Lcn/nubia/videogenerator/local/a;)I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v12, 0x3d090000

    div-long v2, v12, v2

    add-long/2addr v2, v6

    goto :goto_32c

    .line 239
    :cond_35c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v6}, Lcn/nubia/videogenerator/local/a;->bPR(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/d;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v7}, Lcn/nubia/videogenerator/local/a;->bPS(Lcn/nubia/videogenerator/local/a;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v10, v11, v7}, Lcn/nubia/videogenerator/b/d;->brn(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    move-wide v6, v2

    .line 241
    goto/16 :goto_4a

    .line 248
    :cond_372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPG(Lcn/nubia/videogenerator/local/a;)I

    move-result v2

    if-eqz v2, :cond_3bb

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPG(Lcn/nubia/videogenerator/local/a;)I

    move-result v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_410

    .line 256
    :cond_387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPG(Lcn/nubia/videogenerator/local/a;)I

    move-result v2

    const/4 v12, 0x1

    if-ne v2, v12, :cond_bf

    if-eqz v8, :cond_bf

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPM(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPF(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPU(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    iput-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto/16 :goto_bf

    .line 249
    :cond_3bb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPM(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPI(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    cmp-long v2, v12, v14

    if-ltz v2, :cond_3e7

    const/4 v2, 0x1

    :goto_3d9
    if-nez v2, :cond_3e9

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPF(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    iput-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto/16 :goto_bf

    .line 249
    :cond_3e7
    const/4 v2, 0x0

    goto :goto_3d9

    .line 252
    :cond_3e9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPM(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPF(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPI(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    iput-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto/16 :goto_bf

    .line 254
    :cond_410
    if-nez v8, :cond_387

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPM(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPF(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    add-long/2addr v12, v14

    iput-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto/16 :goto_bf

    .line 260
    :cond_430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPM(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v14

    add-long/2addr v12, v14

    iput-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto/16 :goto_bf

    .line 263
    :cond_445
    const/4 v2, 0x0

    goto/16 :goto_ce

    .line 267
    :cond_448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPR(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/d;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v3}, Lcn/nubia/videogenerator/local/a;->bPS(Lcn/nubia/videogenerator/local/a;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/nubia/videogenerator/b/d;->bro(Ljava/lang/String;)V

    goto/16 :goto_e6

    .line 272
    :cond_45d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPG(Lcn/nubia/videogenerator/local/a;)I

    move-result v2

    const/4 v12, 0x1

    if-eq v2, v12, :cond_47b

    .line 282
    :cond_468
    iget v2, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v2, :cond_50e

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPR(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/d;

    move-result-object v2

    if-nez v2, :cond_526

    .line 292
    :cond_476
    :goto_476
    iget-wide v2, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide v4, v6

    goto/16 :goto_190

    .line 272
    :cond_47b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPH(Lcn/nubia/videogenerator/local/a;)I

    move-result v2

    if-nez v2, :cond_468

    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPI(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPF(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v16

    add-long v14, v14, v16

    cmp-long v2, v12, v14

    if-gtz v2, :cond_507

    const/4 v2, 0x1

    :goto_49e
    if-nez v2, :cond_468

    if-nez v8, :cond_468

    const-string/jumbo v2, "AudioLocalSource"

    const-string/jumbo v3, "start second half trim"

    .line 273
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v2, 0x1

    const-string/jumbo v3, "AudioLocalSource"

    .line 275
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "mEndMs = "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v12}, Lcn/nubia/videogenerator/local/a;->bPV(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v12, "  "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v12}, Lcn/nubia/videogenerator/local/a;->bPN(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v3}, Lcn/nubia/videogenerator/local/a;->bPV(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v3}, Lcn/nubia/videogenerator/local/a;->bPN(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    cmp-long v3, v12, v14

    if-lez v3, :cond_509

    const/4 v3, 0x1

    :goto_4f2
    if-nez v3, :cond_50b

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v8}, Lcn/nubia/videogenerator/local/a;->bPV(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    const/4 v8, 0x1

    invoke-virtual {v3, v12, v13, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move v8, v2

    .line 279
    goto/16 :goto_4a

    .line 272
    :cond_507
    const/4 v2, 0x0

    goto :goto_49e

    .line 276
    :cond_509
    const/4 v3, 0x0

    goto :goto_4f2

    :cond_50b
    move v8, v2

    goto/16 :goto_4a

    .line 283
    :cond_50e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPM(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v12

    add-long/2addr v12, v4

    invoke-static {v2, v12, v13}, Lcn/nubia/videogenerator/local/a;->bPQ(Lcn/nubia/videogenerator/local/a;J)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bsZ:Landroid/media/MediaExtractor;

    const-wide/16 v12, 0x0

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v13, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_4a

    .line 288
    :cond_526
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-nez v2, :cond_534

    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-eqz v2, :cond_546

    .line 289
    :cond_534
    iget-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPM(Lcn/nubia/videogenerator/local/a;)J

    move-result-wide v14

    add-long/2addr v4, v14

    cmp-long v2, v12, v4

    if-gtz v2, :cond_55b

    const/4 v2, 0x1

    :goto_544
    if-nez v2, :cond_476

    .line 290
    :cond_546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v2}, Lcn/nubia/videogenerator/local/a;->bPR(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/d;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/videogenerator/local/b;->bta:Lcn/nubia/videogenerator/local/a;

    invoke-static {v4}, Lcn/nubia/videogenerator/local/a;->bPS(Lcn/nubia/videogenerator/local/a;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v9, v3, v4}, Lcn/nubia/videogenerator/b/d;->brn(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    goto/16 :goto_476

    .line 289
    :cond_55b
    const/4 v2, 0x0

    goto :goto_544
.end method
