.class public Lcom/android/video/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field private aHA:Lcom/android/video/c;

.field private aHB:I

.field private aHC:Landroid/os/ParcelFileDescriptor;

.field private aHD:Ljava/lang/String;

.field private aHE:I

.field private aHF:I

.field private aHc:Lcom/android/common/appService/W;

.field private aHd:I

.field private aHe:Lcom/android/common/camerastate/a;

.field private aHf:Landroid/content/ContentResolver;

.field private aHg:Ljava/lang/String;

.field private aHh:Landroid/net/Uri;

.field private aHi:Landroid/content/ContentValues;

.field private aHj:Lcom/android/video/g;

.field private aHk:Lcom/android/video/e;

.field private aHl:Z

.field private aHm:Z

.field private aHn:Z

.field private aHo:Z

.field private aHp:Z

.field private aHq:Landroid/location/Location;

.field private aHr:I

.field private aHs:Landroid/media/MediaRecorder;

.field private aHt:I

.field private aHu:J

.field private aHv:J

.field private aHw:Landroid/media/CamcorderProfile;

.field private aHx:J

.field private aHy:J

.field private aHz:J

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput v2, p0, Lcom/android/video/d;->mState:I

    .line 164
    iput-wide v0, p0, Lcom/android/video/d;->aHy:J

    .line 165
    iput-wide v0, p0, Lcom/android/video/d;->aHz:J

    .line 166
    iput-wide v0, p0, Lcom/android/video/d;->aHu:J

    .line 167
    iput-wide v0, p0, Lcom/android/video/d;->aHv:J

    .line 170
    iput v2, p0, Lcom/android/video/d;->aHt:I

    .line 1225
    iput-boolean v2, p0, Lcom/android/video/d;->aHp:Z

    .line 189
    iput-object p1, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    .line 190
    new-instance v0, Lcom/android/video/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/video/g;-><init>(Lcom/android/video/d;Lcom/android/video/g;)V

    iput-object v0, p0, Lcom/android/video/d;->aHj:Lcom/android/video/g;

    .line 191
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/d;->aHf:Landroid/content/ContentResolver;

    .line 192
    invoke-direct {p0}, Lcom/android/video/d;->aVX()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/video/d;->aHo:Z

    .line 193
    invoke-direct {p0}, Lcom/android/video/d;->aVT()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/video/d;->aHl:Z

    .line 194
    invoke-direct {p0}, Lcom/android/video/d;->aVP()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.quickCapture"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/video/d;->aHm:Z

    .line 195
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/d;->aHe:Lcom/android/common/camerastate/a;

    .line 196
    new-instance v0, Lcom/android/video/c;

    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/video/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/video/d;->aHA:Lcom/android/video/c;

    .line 188
    return-void
.end method

.method private aVA(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1182
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 1183
    iget-wide v2, p0, Lcom/android/video/d;->aHy:J

    invoke-static {v2, v3}, Lcom/android/video/d;->aVz(J)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1184
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Lcom/android/common/h;->apg([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1185
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Lcom/android/common/h;->apg([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1186
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, -0x55c1aa49

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Lcom/android/common/h;->apg([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1187
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x18

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Lcom/android/common/h;->apg([I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1188
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1190
    const-string/jumbo v0, "VideoRecordManager"

    const-string/jumbo v1, "add slomo flag success"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_57

    .line 1166
    :goto_56
    return-void

    .line 1191
    :catch_57
    move-exception v0

    .line 1192
    const-string/jumbo v0, "VideoRecordManager"

    const-string/jumbo v1, "add slomo flag failed "

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56
.end method

.method private aVB()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 775
    iget-object v0, p0, Lcom/android/video/d;->aHC:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_b6

    .line 776
    iget-object v0, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    const-string/jumbo v1, "_size"

    .line 777
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 776
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 778
    iget-wide v0, p0, Lcom/android/video/d;->aHy:J

    .line 779
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_ef

    .line 780
    iget-object v2, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    const-string/jumbo v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 789
    :goto_32
    :try_start_32
    iget-object v0, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    const-string/jumbo v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 791
    iput-object v0, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4f} :catch_12b
    .catchall {:try_start_32 .. :try_end_4f} :catchall_159

    .line 794
    :cond_4f
    :try_start_4f
    new-instance v0, Lcom/android/common/b/e;

    .line 795
    iget-object v1, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    .line 796
    iget-object v2, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    .line 797
    iget-object v3, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;

    .line 799
    new-instance v5, Lcom/android/video/t;

    invoke-direct {v5, p0}, Lcom/android/video/t;-><init>(Lcom/android/video/d;)V

    .line 798
    const/4 v4, 0x0

    .line 794
    invoke-direct/range {v0 .. v5}, Lcom/android/common/b/e;-><init>(Lcom/android/common/appService/W;Landroid/content/ContentValues;Ljava/lang/String;ILcom/android/common/b/f;)V

    .line 817
    iget-object v1, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 830
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_10b

    move v0, v6

    :goto_74
    iput-boolean v0, p0, Lcom/android/video/d;->aHn:Z

    .line 831
    iget-boolean v0, p0, Lcom/android/video/d;->aHn:Z

    if-eqz v0, :cond_7f

    .line 832
    iget-object v0, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/video/d;->aVA(Ljava/lang/String;)V

    .line 834
    :cond_7f
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 835
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 834
    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 836
    iget-object v0, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_9a} :catch_10e
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_9a} :catch_12b
    .catchall {:try_start_4f .. :try_end_9a} :catchall_159

    .line 853
    :goto_9a
    const-string/jumbo v0, "VideoRecordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/video/d;->aHh:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    :cond_b6
    :goto_b6
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pf()Z

    move-result v0

    if-eqz v0, :cond_ea

    iget-object v0, p0, Lcom/android/video/d;->aHC:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_ea

    .line 857
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-eqz v0, :cond_ea

    .line 858
    new-instance v0, Lcom/android/video/f;

    invoke-direct {v0}, Lcom/android/video/f;-><init>()V

    .line 859
    iget-object v1, p0, Lcom/android/video/d;->aHC:Landroid/os/ParcelFileDescriptor;

    iput-object v1, v0, Lcom/android/video/f;->aHG:Landroid/os/ParcelFileDescriptor;

    .line 860
    iget-object v1, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/video/f;->aHI:Ljava/lang/String;

    .line 861
    iget-object v1, p0, Lcom/android/video/d;->aHh:Landroid/net/Uri;

    iput-object v1, v0, Lcom/android/video/f;->aHJ:Landroid/net/Uri;

    .line 862
    iget-object v1, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v1}, Lcom/android/video/d;->aVF(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/video/f;->aHH:Ljava/lang/String;

    .line 863
    iget-object v1, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v1, v0, Lcom/android/video/f;->width:I

    .line 864
    invoke-direct {p0, v0}, Lcom/android/video/d;->aVZ(Lcom/android/video/f;)V

    .line 867
    :cond_ea
    iput-object v8, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    .line 868
    iput-object v8, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    .line 774
    return-void

    .line 782
    :cond_ef
    const-string/jumbo v2, "VideoRecordManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Video duration <= 0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->bvq(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_32

    :cond_10b
    move v0, v7

    .line 830
    goto/16 :goto_74

    .line 837
    :catch_10e
    move-exception v0

    .line 838
    :try_start_10f
    const-string/jumbo v1, "VideoRecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to write MediaStore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_129} :catch_12b
    .catchall {:try_start_10f .. :try_end_129} :catchall_159

    goto/16 :goto_9a

    .line 846
    :catch_12b
    move-exception v0

    .line 849
    :try_start_12c
    const-string/jumbo v1, "VideoRecordManager"

    const-string/jumbo v2, "failed to add video to media store"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/d;->aHh:Landroid/net/Uri;

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;
    :try_end_13b
    .catchall {:try_start_12c .. :try_end_13b} :catchall_159

    .line 853
    const-string/jumbo v0, "VideoRecordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/video/d;->aHh:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b6

    .line 852
    :catchall_159
    move-exception v0

    .line 853
    const-string/jumbo v1, "VideoRecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Current video URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/video/d;->aHh:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    throw v0
.end method

.method private aVC()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 426
    iget-object v0, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 427
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    cmp-long v1, v2, v4

    if-gez v1, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 429
    const-string/jumbo v0, "VideoRecordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iput-object v6, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    .line 425
    :cond_3b
    return-void
.end method

.method private aVD()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 435
    iget-object v0, p0, Lcom/android/video/d;->aHC:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_c

    .line 437
    :try_start_5
    iget-object v0, p0, Lcom/android/video/d;->aHC:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_d

    .line 441
    :goto_a
    iput-object v3, p0, Lcom/android/video/d;->aHC:Landroid/os/ParcelFileDescriptor;

    .line 434
    :cond_c
    return-void

    .line 438
    :catch_d
    move-exception v0

    .line 439
    const-string/jumbo v1, "VideoRecordManager"

    const-string/jumbo v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method private aVE(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 929
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 930
    const-string/jumbo v0, ".mp4"

    return-object v0

    .line 932
    :cond_7
    const-string/jumbo v0, ".3gp"

    return-object v0
.end method

.method private aVF(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 936
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 937
    const-string/jumbo v0, "video/mp4"

    return-object v0

    .line 939
    :cond_7
    const-string/jumbo v0, "video/3gpp"

    return-object v0
.end method

.method private aVG(Ljava/lang/String;JI[BLjava/lang/String;Landroid/location/Location;)Landroid/content/ContentValues;
    .registers 12

    .prologue
    .line 1131
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1132
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    const-string/jumbo v1, "_display_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const-string/jumbo v1, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1135
    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string/jumbo v1, "orientation"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1138
    const-string/jumbo v1, "_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string/jumbo v1, "_size"

    array-length v2, p5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1140
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1141
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1142
    array-length v2, p5

    const/4 v3, 0x0

    invoke-static {p5, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1143
    const-string/jumbo v2, "width"

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1144
    const-string/jumbo v2, "height"

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1145
    if-eqz p7, :cond_b7

    .line 1146
    const-string/jumbo v1, "latitude"

    invoke-virtual {p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1147
    const-string/jumbo v1, "longitude"

    invoke-virtual {p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1149
    :cond_b7
    return-object v0
.end method

.method private aVH(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 943
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 944
    new-instance v1, Ljava/text/SimpleDateFormat;

    const v2, 0x7f0a027a

    invoke-direct {p0, v2}, Lcom/android/video/d;->aVQ(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aVJ(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 948
    const-string/jumbo v0, "VideoRecordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Deleting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 951
    const-string/jumbo v0, "VideoRecordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :cond_3f
    return-void
.end method

.method private aVK(I)V
    .registers 11

    .prologue
    const/16 v7, 0x2f

    .line 900
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 901
    invoke-direct {p0, v2, v3}, Lcom/android/video/d;->aVH(J)Ljava/lang/String;

    move-result-object v1

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/video/d;->aVE(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 904
    invoke-direct {p0, p1}, Lcom/android/video/d;->aVF(I)Ljava/lang/String;

    move-result-object v5

    .line 906
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v6, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    if-ne v0, v6, :cond_100

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v6}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v6

    invoke-static {v6}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    :goto_4c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 912
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    .line 913
    iget-object v7, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    const-string/jumbo v8, "title"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v1, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    const-string/jumbo v7, "_display_name"

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object v1, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    const-string/jumbo v4, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 916
    iget-object v1, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    const-string/jumbo v2, "mime_type"

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v1, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    const-string/jumbo v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    const-string/jumbo v1, "resolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/video/d;->aHF:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/video/d;->aHE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lcom/android/video/d;->aHq:Landroid/location/Location;

    if-eqz v0, :cond_e1

    .line 920
    iget-object v0, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    const-string/jumbo v1, "latitude"

    iget-object v2, p0, Lcom/android/video/d;->aHq:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 921
    iget-object v0, p0, Lcom/android/video/d;->aHi:Landroid/content/ContentValues;

    const-string/jumbo v1, "longitude"

    iget-object v2, p0, Lcom/android/video/d;->aHq:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 924
    :cond_e1
    iput-object v6, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    .line 925
    const-string/jumbo v0, "VideoRecordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "New video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    return-void

    .line 909
    :cond_100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v6}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v6

    invoke-static {v6}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4c
.end method

.method private aVL()Lcom/android/common/cameradevice/j;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method static aVM()Ljava/lang/String;
    .registers 1

    .prologue
    .line 694
    const-string/jumbo v0, "pref_camera_ztemt_fun_effect"

    return-object v0
.end method

.method private aVN(II)Landroid/util/SparseArray;
    .registers 6

    .prologue
    .line 1061
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1062
    sget v1, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1063
    sget v1, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1064
    sget v1, Lcom/android/common/exif/o;->PG:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1065
    sget v1, Lcom/android/common/exif/o;->PH:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1066
    return-object v0
.end method

.method private aVO()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1109
    sget-object v0, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v0}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v0

    .line 1110
    invoke-direct {p0}, Lcom/android/video/d;->aVV()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1111
    sget-object v0, Lcom/android/common/appService/CameraMember;->jo:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v0}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v0

    .line 1113
    :cond_12
    iget-object v1, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/f;->aos(II)Ljava/lang/String;

    move-result-object v0

    .line 1114
    return-object v0
.end method

.method private aVP()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private aVQ(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aVR()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_27

    .line 1283
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    .line 1282
    if-eqz v0, :cond_27

    .line 1284
    const-string/jumbo v0, "off"

    iget-object v1, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1288
    :cond_27
    const-string/jumbo v0, "VideoRecordManager"

    const-string/jumbo v1, "VideoMirror off"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    const-string/jumbo v0, "off"

    return-object v0

    .line 1285
    :cond_34
    const-string/jumbo v0, "VideoRecordManager"

    const-string/jumbo v1, "VideoMirror on"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const-string/jumbo v0, "on"

    return-object v0
.end method

.method private aVS()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 885
    invoke-direct {p0}, Lcom/android/video/d;->aVP()Landroid/content/Intent;

    move-result-object v0

    .line 886
    const-string/jumbo v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 887
    const-string/jumbo v1, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 888
    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/video/d;->aHr:I

    .line 892
    :goto_19
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adc()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 893
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_36

    .line 894
    const v0, 0x36ee80

    iput v0, p0, Lcom/android/video/d;->aHr:I

    .line 896
    :cond_36
    const-string/jumbo v0, "VideoRecordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initMaxDuration   mMaxVideoDurationInMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/video/d;->aHr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    return-void

    .line 890
    :cond_53
    iput v2, p0, Lcom/android/video/d;->aHr:I

    goto :goto_19
.end method

.method private aVT()Z
    .registers 3

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/video/d;->aVP()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string/jumbo v1, "android.media.action.START_CAMCORDER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private aVV()Z
    .registers 3

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MW()I

    move-result v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private aVW()Z
    .registers 3

    .prologue
    .line 1214
    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->Xz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private aVX()Z
    .registers 3

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/video/d;->aVP()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 200
    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static aVY(JZ)Ljava/lang/String;
    .registers 15

    .prologue
    .line 732
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    .line 733
    const-wide/16 v2, 0x3c

    div-long v2, v0, v2

    .line 734
    const-wide/16 v4, 0x3c

    div-long v4, v2, v4

    .line 735
    const-wide/16 v6, 0x3c

    mul-long/2addr v6, v4

    sub-long v6, v2, v6

    .line 736
    const-wide/16 v8, 0x3c

    mul-long/2addr v2, v8

    sub-long v2, v0, v2

    .line 738
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 741
    const-wide/16 v10, 0xa

    cmp-long v9, v4, v10

    if-gez v9, :cond_26

    .line 742
    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 744
    :cond_26
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 746
    const/16 v4, 0x3a

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 749
    const-wide/16 v4, 0xa

    cmp-long v4, v6, v4

    if-gez v4, :cond_39

    .line 750
    const/16 v4, 0x30

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 752
    :cond_39
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 753
    const/16 v4, 0x3a

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 756
    const-wide/16 v4, 0xa

    cmp-long v4, v2, v4

    if-gez v4, :cond_4c

    .line 757
    const/16 v4, 0x30

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 759
    :cond_4c
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 762
    if-eqz p2, :cond_6c

    .line 763
    const/16 v2, 0x2e

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 764
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sub-long v0, p0, v0

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    .line 765
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-gez v2, :cond_69

    .line 766
    const/16 v2, 0x30

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 768
    :cond_69
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 771
    :cond_6c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aVZ(Lcom/android/video/f;)V
    .registers 4

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-nez v0, :cond_5

    .line 489
    return-void

    .line 492
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_15

    .line 493
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    invoke-interface {v0, p1}, Lcom/android/video/e;->aWJ(Lcom/android/video/f;)V

    .line 487
    :goto_14
    return-void

    .line 495
    :cond_15
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/video/s;

    invoke-direct {v1, p0, p1}, Lcom/android/video/s;-><init>(Lcom/android/video/d;Lcom/android/video/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14
.end method

.method private static aVz(J)[B
    .registers 10

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 1197
    new-array v0, v6, [B

    .line 1198
    const/16 v1, 0x38

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 1199
    const/16 v1, 0x30

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 1200
    const/16 v1, 0x28

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 1201
    const/16 v1, 0x20

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 1202
    const/16 v1, 0x18

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 1203
    const/16 v1, 0x10

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 1204
    shr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 1205
    and-long v2, p0, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 1197
    return-object v0
.end method

.method static synthetic aWA(Lcom/android/video/d;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/video/d;->aVW()Z

    move-result v0

    return v0
.end method

.method static synthetic aWB(Lcom/android/video/d;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/video/d;->aVF(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aWC(Lcom/android/video/d;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/video/d;->aVO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aWD(Lcom/android/video/d;Lcom/android/video/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/video/d;->aVZ(Lcom/android/video/f;)V

    return-void
.end method

.method static synthetic aWE(Lcom/android/video/d;[BLandroid/location/Location;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/video/d;->aWm([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic aWF(Lcom/android/video/d;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/video/d;->aWp()V

    return-void
.end method

.method private aWa(I)V
    .registers 4

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-nez v0, :cond_5

    .line 468
    return-void

    .line 471
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_15

    .line 472
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    invoke-interface {v0, p1}, Lcom/android/video/e;->aWN(I)V

    .line 466
    :goto_14
    return-void

    .line 474
    :cond_15
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/video/r;

    invoke-direct {v1, p0, p1}, Lcom/android/video/r;-><init>(Lcom/android/video/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14
.end method

.method private aWb()V
    .registers 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-nez v0, :cond_5

    .line 447
    return-void

    .line 450
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_15

    .line 451
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    invoke-interface {v0}, Lcom/android/video/e;->aWO()V

    .line 445
    :goto_14
    return-void

    .line 453
    :cond_15
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/video/q;

    invoke-direct {v1, p0}, Lcom/android/video/q;-><init>(Lcom/android/video/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14
.end method

.method private aWd()I
    .registers 15

    .prologue
    const/4 v13, 0x2

    const-wide/16 v2, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 230
    invoke-direct {p0}, Lcom/android/video/d;->aVL()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_f

    .line 231
    const/16 v0, 0x8

    return v0

    .line 233
    :cond_f
    iput-object v12, p0, Lcom/android/video/d;->aHh:Landroid/net/Uri;

    .line 234
    invoke-direct {p0}, Lcom/android/video/d;->aVP()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 235
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xn()Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    .line 236
    invoke-direct {p0}, Lcom/android/video/d;->aWe()V

    .line 237
    iget v0, p0, Lcom/android/video/d;->aHB:I

    if-ne v0, v9, :cond_3d

    .line 238
    iget-object v0, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v4, 0x500

    if-lt v0, v4, :cond_3d

    iget-object v0, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v4, 0x2d0

    if-lt v0, v4, :cond_3d

    .line 239
    return v13

    .line 244
    :cond_3d
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qU()J

    move-result-wide v6

    const-wide/32 v10, 0x6400000

    sub-long/2addr v6, v10

    .line 245
    cmp-long v0, v6, v2

    if-gez v0, :cond_4d

    .line 246
    const/4 v0, 0x6

    return v0

    .line 249
    :cond_4d
    invoke-direct {p0}, Lcom/android/video/d;->aVD()V

    .line 250
    iget-boolean v0, p0, Lcom/android/video/d;->aHo:Z

    if-eqz v0, :cond_28e

    if-eqz v1, :cond_28e

    .line 251
    const-string/jumbo v0, "output"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 252
    if-eqz v0, :cond_6e

    .line 254
    :try_start_61
    iget-object v4, p0, Lcom/android/video/d;->aHf:Landroid/content/ContentResolver;

    const-string/jumbo v8, "rw"

    invoke-virtual {v4, v0, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/video/d;->aHC:Landroid/os/ParcelFileDescriptor;

    .line 255
    iput-object v0, p0, Lcom/android/video/d;->aHh:Landroid/net/Uri;
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_61 .. :try_end_6e} :catch_291

    .line 261
    :cond_6e
    :goto_6e
    const-string/jumbo v0, "android.intent.extra.sizeLimit"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 263
    :goto_75
    iget-object v4, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    if-eqz v4, :cond_80

    .line 264
    iget-object v4, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v4}, Landroid/media/MediaRecorder;->release()V

    .line 265
    iput-object v12, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    .line 268
    :cond_80
    invoke-virtual {p0}, Lcom/android/video/d;->aVU()Z

    move-result v10

    .line 269
    if-nez v10, :cond_89

    .line 271
    invoke-direct {p0, v9}, Lcom/android/video/d;->aWn(Z)V

    .line 274
    :cond_89
    invoke-direct {p0}, Lcom/android/video/d;->aWh()V

    .line 275
    new-instance v4, Landroid/media/MediaRecorder;

    invoke-direct {v4}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v4, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    .line 277
    if-eqz v10, :cond_29e

    .line 278
    iget-object v4, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v13}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 279
    iget-object v4, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v4, p0, Lcom/android/video/d;->aHF:I

    .line 280
    iget-object v4, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v4, p0, Lcom/android/video/d;->aHE:I

    .line 288
    :goto_a6
    invoke-static {}, Lcom/android/common/cameradevice/d;->JO()Lcom/android/common/cameradevice/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/cameradevice/d;->JR()Lcom/android/common/cameradevice/b;

    move-result-object v4

    iget-object v8, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-interface {v4, v8, v9, v9}, Lcom/android/common/cameradevice/b;->JN(Landroid/media/MediaRecorder;IZ)V

    .line 290
    iget-object v4, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v4}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/common/cameradevice/p;->Np()Ljava/lang/String;

    move-result-object v4

    .line 291
    const-string/jumbo v8, "VideoRecordManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "NOTE: hsr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    if-eqz v4, :cond_e2

    const-string/jumbo v8, "off"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c9

    :cond_e2
    move v8, v5

    .line 295
    :goto_e3
    if-eqz v8, :cond_2cc

    :try_start_e5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/lang/NumberFormatException; {:try_start_e5 .. :try_end_e8} :catch_2cf

    move-result v4

    .line 302
    :goto_e9
    invoke-direct {p0}, Lcom/android/video/d;->aVX()Z

    move-result v11

    if-nez v11, :cond_fb

    .line 303
    iget-object v11, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v12, p0, Lcom/android/video/d;->aHB:I

    iput v12, v11, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 304
    iget-object v11, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v12, p0, Lcom/android/video/d;->aHd:I

    iput v12, v11, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 306
    :cond_fb
    iget-object v11, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v12, p0, Lcom/android/video/d;->aHr:I

    iput v12, v11, Landroid/media/CamcorderProfile;->duration:I

    .line 308
    if-eqz v8, :cond_2f4

    if-lez v4, :cond_2f4

    .line 309
    const-string/jumbo v11, "VideoRecordManager"

    const-string/jumbo v12, "Enabling audio for HSR"

    invoke-static {v11, v12}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v11, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 312
    iget-object v11, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v12, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v11, v12}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 313
    iget-object v11, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v12, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v11, v12}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 314
    iget-object v11, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v12, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v11, v12}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 315
    iget-object v11, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v12, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v11, v12}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 317
    const-string/jumbo v11, "VideoRecordManager"

    const-string/jumbo v12, "Configuring audio for HSR"

    invoke-static {v11, v12}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v11, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v12, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v11, v12}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 319
    iget-object v11, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v12, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v11, v12}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 320
    iget-object v11, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v12, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v11, v12}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 321
    iget-object v11, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v12, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v11, v12}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 322
    invoke-static {}, Lcom/android/common/cameradevice/d;->JO()Lcom/android/common/cameradevice/d;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/common/cameradevice/d;->JR()Lcom/android/common/cameradevice/b;

    move-result-object v11

    .line 323
    iget-object v12, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    .line 322
    invoke-interface {v11, v12, v9}, Lcom/android/common/cameradevice/b;->JM(Landroid/media/MediaRecorder;I)V

    .line 328
    :goto_172
    iget-object v9, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v12, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v9, v11, v12}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 329
    iget-object v9, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget v11, p0, Lcom/android/video/d;->aHr:I

    invoke-virtual {v9, v11}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 330
    if-lez v4, :cond_1f2

    .line 331
    const-string/jumbo v9, "VideoRecordManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Setting capture-rate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v9, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    int-to-double v12, v4

    invoke-virtual {v9, v12, v13}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 335
    if-eqz v8, :cond_303

    .line 337
    :goto_1aa
    const-string/jumbo v8, "VideoRecordManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Setting target fps = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v8, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 342
    iget-object v8, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/2addr v4, v8

    iget-object v8, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int/2addr v4, v8

    .line 343
    const-string/jumbo v8, "VideoRecordManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Scaled Video bitrate : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v8, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v4}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 348
    :cond_1f2
    iget-object v4, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v4}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v4

    iput-object v4, p0, Lcom/android/video/d;->aHq:Landroid/location/Location;

    .line 349
    iget-object v4, p0, Lcom/android/video/d;->aHq:Landroid/location/Location;

    if-eqz v4, :cond_215

    .line 350
    iget-object v4, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/video/d;->aHq:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    double-to-float v8, v8

    iget-object v9, p0, Lcom/android/video/d;->aHq:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    double-to-float v9, v12

    invoke-virtual {v4, v8, v9}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 355
    :cond_215
    iget-object v4, p0, Lcom/android/video/d;->aHC:Landroid/os/ParcelFileDescriptor;

    if-eqz v4, :cond_309

    .line 356
    iget-object v4, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/video/d;->aHC:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 362
    :goto_224
    cmp-long v2, v0, v2

    if-lez v2, :cond_319

    cmp-long v2, v0, v6

    if-gez v2, :cond_319

    .line 366
    :goto_22c
    :try_start_22c
    iget-object v2, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_231
    .catch Ljava/lang/RuntimeException; {:try_start_22c .. :try_end_231} :catch_365

    .line 374
    :goto_231
    if-eqz v10, :cond_31c

    .line 375
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qv()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 376
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget v1, p0, Lcom/android/video/d;->aHF:I

    iget v2, p0, Lcom/android/video/d;->aHE:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 383
    :goto_247
    :try_start_247
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_24c
    .catch Ljava/io/IOException; {:try_start_247 .. :try_end_24c} :catch_333

    .line 390
    if-eqz v10, :cond_283

    .line 391
    iget-object v0, p0, Lcom/android/video/d;->aHA:Lcom/android/video/c;

    invoke-virtual {v0}, Lcom/android/video/c;->aVq()V

    .line 392
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qv()I

    move-result v1

    .line 393
    sget-object v0, Lcom/android/video/VideoEffectRenderer$Mirror;->aHa:Lcom/android/video/VideoEffectRenderer$Mirror;

    .line 394
    invoke-direct {p0}, Lcom/android/video/d;->aVV()Z

    move-result v2

    if-eqz v2, :cond_269

    .line 395
    invoke-direct {p0}, Lcom/android/video/d;->aVW()Z

    move-result v0

    if-eqz v0, :cond_359

    .line 396
    sget-object v0, Lcom/android/video/VideoEffectRenderer$Mirror;->aHa:Lcom/android/video/VideoEffectRenderer$Mirror;

    .line 404
    :cond_269
    :goto_269
    iget-object v1, p0, Lcom/android/video/d;->aHA:Lcom/android/video/c;

    iget-object v2, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget v3, p0, Lcom/android/video/d;->aHF:I

    iget v4, p0, Lcom/android/video/d;->aHE:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/video/c;->aVw(Landroid/view/Surface;IILcom/android/video/VideoEffectRenderer$Mirror;)V

    .line 405
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/video/d;->aHA:Lcom/android/video/c;

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->al(Lcom/android/common/a/b;)V

    .line 408
    :cond_283
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 409
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 410
    return v5

    :cond_28e
    move-wide v0, v2

    .line 250
    goto/16 :goto_75

    .line 256
    :catch_291
    move-exception v0

    .line 258
    const-string/jumbo v4, "VideoRecordManager"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6e

    .line 282
    :cond_29e
    invoke-direct {p0}, Lcom/android/video/d;->aVL()Lcom/android/common/cameradevice/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/cameradevice/j;->KQ()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->unlock()V

    .line 283
    iget-object v4, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/android/video/d;->aVL()Lcom/android/common/cameradevice/j;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/common/cameradevice/j;->KQ()Landroid/hardware/Camera;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 284
    iget-object v4, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v9}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 285
    iget-object v4, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v4, p0, Lcom/android/video/d;->aHF:I

    .line 286
    iget-object v4, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v4, p0, Lcom/android/video/d;->aHE:I

    goto/16 :goto_a6

    :cond_2c9
    move v8, v9

    .line 293
    goto/16 :goto_e3

    :cond_2cc
    move v4, v5

    .line 295
    goto/16 :goto_e9

    .line 296
    :catch_2cf
    move-exception v11

    .line 297
    const-string/jumbo v11, "VideoRecordManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid hsr("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, ")"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    goto/16 :goto_e9

    .line 325
    :cond_2f4
    iget-object v9, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    const/4 v11, 0x5

    invoke-virtual {v9, v11}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 326
    iget-object v9, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    invoke-virtual {v9, v11}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto/16 :goto_172

    .line 335
    :cond_303
    iget-object v4, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameRate:I

    goto/16 :goto_1aa

    .line 358
    :cond_309
    iget-object v4, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v4}, Lcom/android/video/d;->aVK(I)V

    .line 359
    iget-object v4, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_224

    :cond_319
    move-wide v0, v6

    .line 362
    goto/16 :goto_22c

    .line 378
    :cond_31c
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    iget-object v1, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pC()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/h;->aoU(II)I

    move-result v0

    .line 379
    iget-object v1, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto/16 :goto_247

    .line 384
    :catch_333
    move-exception v0

    .line 385
    const-string/jumbo v1, "VideoRecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepare failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 386
    invoke-direct {p0}, Lcom/android/video/d;->aWf()V

    .line 387
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 398
    :cond_359
    rem-int/lit16 v0, v1, 0xb4

    if-nez v0, :cond_361

    .line 399
    sget-object v0, Lcom/android/video/VideoEffectRenderer$Mirror;->aGZ:Lcom/android/video/VideoEffectRenderer$Mirror;

    goto/16 :goto_269

    .line 401
    :cond_361
    sget-object v0, Lcom/android/video/VideoEffectRenderer$Mirror;->aHb:Lcom/android/video/VideoEffectRenderer$Mirror;

    goto/16 :goto_269

    .line 367
    :catch_365
    move-exception v0

    goto/16 :goto_231
.end method

.method private aWe()V
    .registers 4

    .prologue
    .line 876
    sget-object v0, Lcom/android/common/cameradevice/r;->NM:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    const-string/jumbo v1, "aac"

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/video/d;->aHd:I

    .line 877
    sget-object v0, Lcom/android/common/cameradevice/r;->NN:Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;

    const-string/jumbo v1, "h264"

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/CamcorderProfileEx$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/video/d;->aHB:I

    .line 878
    const-string/jumbo v0, "VideoRecordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio/Video Encoder type in application= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/video/d;->aHd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/video/d;->aHB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-direct {p0}, Lcom/android/video/d;->aVS()V

    .line 875
    return-void
.end method

.method private aWf()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 414
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_20

    .line 415
    const-string/jumbo v0, "VideoRecordManager"

    const-string/jumbo v1, "Releasing media recorder."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    invoke-direct {p0}, Lcom/android/video/d;->aVC()V

    .line 417
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 418
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 419
    iput-object v2, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    .line 423
    :goto_1d
    iput-object v2, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    .line 413
    return-void

    .line 421
    :cond_20
    const-string/jumbo v0, "VideoRecordManager"

    const-string/jumbo v1, "Media recorder already is null"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private aWg(Landroid/location/Location;)V
    .registers 6

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v1

    monitor-enter v1

    .line 1274
    :try_start_7
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    iget-object v2, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pC()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/common/h;->aoU(II)I

    move-result v0

    .line 1275
    iget-object v2, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/common/cameradevice/p;->MJ(I)V

    .line 1276
    iget-object v2, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/common/h;->aqh(Landroid/content/Context;Lcom/android/common/cameradevice/p;Landroid/location/Location;)V

    .line 1277
    iget-object v2, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/video/d;->aVR()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/common/cameradevice/p;->Nr(Ljava/lang/String;I)V

    .line 1278
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v2, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_4d

    monitor-exit v1

    .line 1272
    return-void

    .line 1273
    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private aWh()V
    .registers 5

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v1

    monitor-enter v1

    .line 1268
    :try_start_7
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/video/d;->aVR()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/video/d;->aHt:I

    invoke-interface {v0, v2, v3}, Lcom/android/common/cameradevice/p;->Nq(Ljava/lang/String;I)V

    .line 1269
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v2, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_27

    monitor-exit v1

    .line 1266
    return-void

    .line 1267
    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private aWj()V
    .registers 4

    .prologue
    .line 1245
    invoke-direct {p0}, Lcom/android/video/d;->aVL()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1246
    :cond_e
    return-void

    .line 1249
    :cond_f
    iget-object v0, p0, Lcom/android/video/d;->aHe:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_2a

    .line 1250
    iget-object v0, p0, Lcom/android/video/d;->aHe:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_2a

    .line 1251
    invoke-direct {p0}, Lcom/android/video/d;->aVL()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KP()V

    .line 1253
    :cond_2a
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/video/d;->aVL()Lcom/android/common/cameradevice/j;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/common/a/g;->az(Lcom/android/common/cameradevice/j;Z)Z

    move-result v0

    if-nez v0, :cond_45

    .line 1254
    const-string/jumbo v0, "VideoRecordManager"

    const-string/jumbo v1, "setCameraPrevieweTarget fail"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    return-void

    .line 1258
    :cond_45
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Mi(I)V

    .line 1259
    invoke-direct {p0}, Lcom/android/video/d;->aVL()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 1261
    invoke-direct {p0}, Lcom/android/video/d;->aVL()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KS()V

    .line 1263
    iget-object v0, p0, Lcom/android/video/d;->aHe:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    .line 1244
    return-void
.end method

.method private aWm([BLandroid/location/Location;)V
    .registers 17

    .prologue
    .line 1088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1089
    invoke-static {v2, v3}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v1

    .line 1090
    invoke-static {p1}, Lcom/android/common/c;->aob([B)I

    move-result v4

    .line 1092
    invoke-direct {p0}, Lcom/android/video/d;->aVO()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v5, p1

    move-object/from16 v7, p2

    .line 1094
    invoke-direct/range {v0 .. v7}, Lcom/android/video/d;->aVG(Ljava/lang/String;JI[BLjava/lang/String;Landroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v11

    .line 1097
    new-instance v5, Lcom/android/common/b/c;

    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1104
    new-instance v13, Lcom/android/video/j;

    const/4 v1, 0x0

    invoke-direct {v13, p0, v1}, Lcom/android/video/j;-><init>(Lcom/android/video/d;Lcom/android/video/j;)V

    .line 1099
    const/4 v8, 0x0

    move-object v6, v0

    move-object v7, p1

    move v12, v4

    .line 1097
    invoke-direct/range {v5 .. v13}, Lcom/android/common/b/c;-><init>(Lcom/android/common/appService/W;[BLandroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 1105
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 1087
    return-void
.end method

.method private aWn(Z)V
    .registers 4

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_1c

    .line 1228
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adw()Z

    move-result v0

    .line 1227
    if-eqz v0, :cond_1c

    .line 1229
    iget-boolean v0, p0, Lcom/android/video/d;->aHo:Z

    if-eqz v0, :cond_1d

    .line 1226
    :cond_1c
    :goto_1c
    return-void

    .line 1230
    :cond_1d
    if-eqz p1, :cond_35

    .line 1231
    invoke-direct {p0}, Lcom/android/video/d;->aWj()V

    .line 1235
    :goto_22
    iget-boolean v0, p0, Lcom/android/video/d;->aHp:Z

    if-eq p1, v0, :cond_1c

    .line 1236
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-eqz v0, :cond_32

    .line 1237
    iget-object v1, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-eqz p1, :cond_3b

    const/4 v0, 0x1

    :goto_2f
    invoke-interface {v1, v0}, Lcom/android/video/e;->aWG(I)V

    .line 1239
    :cond_32
    iput-boolean p1, p0, Lcom/android/video/d;->aHp:Z

    goto :goto_1c

    .line 1233
    :cond_35
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    goto :goto_22

    .line 1237
    :cond_3b
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private aWp()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x3e8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 698
    iget v0, p0, Lcom/android/video/d;->mState:I

    if-eq v0, v5, :cond_e

    iget v0, p0, Lcom/android/video/d;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_63

    .line 699
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 700
    iget-wide v2, p0, Lcom/android/video/d;->aHx:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/video/d;->aHv:J

    sub-long v2, v0, v2

    .line 701
    iput-wide v2, p0, Lcom/android/video/d;->aHy:J

    .line 702
    iget v0, p0, Lcom/android/video/d;->aHr:I

    if-eqz v0, :cond_61

    iget v0, p0, Lcom/android/video/d;->aHr:I

    const v1, 0xea60

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_61

    move v4, v5

    .line 704
    :goto_2b
    if-eqz v4, :cond_7e

    .line 705
    const-wide/16 v0, 0x0

    iget v7, p0, Lcom/android/video/d;->aHr:I

    int-to-long v8, v7

    sub-long/2addr v8, v2

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v8, 0x3e7

    add-long/2addr v0, v8

    .line 709
    :goto_3a
    invoke-static {v0, v1, v6}, Lcom/android/video/d;->aVY(JZ)Ljava/lang/String;

    move-result-object v0

    .line 711
    iget-wide v8, p0, Lcom/android/video/d;->aHz:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/video/d;->aHz:J

    .line 712
    rem-long/2addr v2, v12

    sub-long v2, v12, v2

    .line 713
    iget-object v1, p0, Lcom/android/video/d;->aHj:Lcom/android/video/g;

    invoke-virtual {v1, v5}, Lcom/android/video/g;->removeMessages(I)V

    .line 718
    iget-object v1, p0, Lcom/android/video/d;->aHj:Lcom/android/video/g;

    invoke-virtual {v1, v5}, Lcom/android/video/g;->removeMessages(I)V

    .line 719
    iget-object v1, p0, Lcom/android/video/d;->aHj:Lcom/android/video/g;

    invoke-virtual {v1, v5, v2, v3}, Lcom/android/video/g;->sendEmptyMessageDelayed(IJ)Z

    .line 720
    iget-object v1, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-eqz v1, :cond_60

    .line 721
    iget-object v1, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    invoke-interface {v1, v6, v4, v0}, Lcom/android/video/e;->aWI(ZZLjava/lang/String;)V

    .line 697
    :cond_60
    :goto_60
    return-void

    :cond_61
    move v4, v6

    .line 702
    goto :goto_2b

    .line 723
    :cond_63
    iget v0, p0, Lcom/android/video/d;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_60

    .line 724
    iget-object v0, p0, Lcom/android/video/d;->aHj:Lcom/android/video/g;

    invoke-virtual {v0, v5}, Lcom/android/video/g;->removeMessages(I)V

    .line 725
    iget-object v0, p0, Lcom/android/video/d;->aHj:Lcom/android/video/g;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/video/g;->sendEmptyMessageDelayed(IJ)Z

    .line 726
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-eqz v0, :cond_60

    .line 727
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    invoke-interface {v0, v5, v6, v4}, Lcom/android/video/e;->aWI(ZZLjava/lang/String;)V

    goto :goto_60

    :cond_7e
    move-wide v0, v2

    goto :goto_3a
.end method

.method static synthetic aWq(Lcom/android/video/d;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aWr(Lcom/android/video/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aWs(Lcom/android/video/d;)Lcom/android/video/e;
    .registers 2

    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    return-object v0
.end method

.method static synthetic aWt(Lcom/android/video/d;)Landroid/media/CamcorderProfile;
    .registers 2

    iget-object v0, p0, Lcom/android/video/d;->aHw:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method static synthetic aWu(Lcom/android/video/d;)Landroid/os/ParcelFileDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/android/video/d;->aHC:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method static synthetic aWv(Lcom/android/video/d;)I
    .registers 2

    iget v0, p0, Lcom/android/video/d;->aHE:I

    return v0
.end method

.method static synthetic aWw(Lcom/android/video/d;)I
    .registers 2

    iget v0, p0, Lcom/android/video/d;->aHF:I

    return v0
.end method

.method static synthetic aWx(Lcom/android/video/d;I)I
    .registers 2

    iput p1, p0, Lcom/android/video/d;->mState:I

    return p1
.end method

.method static synthetic aWy(Lcom/android/video/d;II)Landroid/util/SparseArray;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/video/d;->aVN(II)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aWz(Lcom/android/video/d;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/video/d;->aVV()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public aVI()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1154
    iget-object v0, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 1155
    iget-object v0, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/video/d;->aVJ(Ljava/lang/String;)V

    .line 1156
    iput-object v2, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;

    .line 1157
    iget-object v0, p0, Lcom/android/video/d;->aHh:Landroid/net/Uri;

    if-eqz v0, :cond_19

    .line 1158
    iget-object v0, p0, Lcom/android/video/d;->aHf:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/video/d;->aHh:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1159
    iput-object v2, p0, Lcom/android/video/d;->aHh:Landroid/net/Uri;

    .line 1163
    :cond_19
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 1152
    return-void
.end method

.method aVU()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 683
    iget-object v1, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v1

    .line 684
    invoke-static {}, Lcom/android/video/d;->aVM()Ljava/lang/String;

    move-result-object v2

    .line 685
    invoke-virtual {v1, v2}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    .line 686
    if-nez v1, :cond_12

    .line 687
    return v0

    .line 689
    :cond_12
    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method public aWc()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 627
    iget v0, p0, Lcom/android/video/d;->mState:I

    packed-switch v0, :pswitch_data_de

    .line 659
    :pswitch_7
    const-string/jumbo v0, "VideoRecordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error state for pause recording, state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/video/d;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_23
    :goto_23
    invoke-direct {p0}, Lcom/android/video/d;->aWp()V

    .line 626
    return-void

    .line 629
    :pswitch_27
    invoke-static {}, Lcom/android/common/cameradevice/d;->JO()Lcom/android/common/cameradevice/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/d;->JR()Lcom/android/common/cameradevice/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/b;->JL(Landroid/media/MediaRecorder;)V

    .line 630
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/video/d;->aHu:J

    .line 631
    iget-object v0, p0, Lcom/android/video/d;->aHA:Lcom/android/video/c;

    invoke-virtual {v0}, Lcom/android/video/c;->aVn()V

    .line 632
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/video/d;->mState:I

    .line 633
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-eqz v0, :cond_23

    .line 634
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    invoke-interface {v0, v5}, Lcom/android/video/e;->aWK(Z)V

    goto :goto_23

    .line 638
    :pswitch_4c
    iget-object v0, p0, Lcom/android/video/d;->aHA:Lcom/android/video/c;

    invoke-virtual {v0}, Lcom/android/video/c;->aVs()V

    .line 640
    :try_start_51
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "resume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 641
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 642
    iget-object v1, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_51 .. :try_end_6d} :catch_bd
    .catch Ljava/lang/IllegalAccessException; {:try_start_51 .. :try_end_6d} :catch_a1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_51 .. :try_end_6d} :catch_85

    .line 651
    :goto_6d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/video/d;->aHu:J

    sub-long/2addr v0, v2

    .line 652
    iget-wide v2, p0, Lcom/android/video/d;->aHv:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/video/d;->aHv:J

    .line 653
    iput v5, p0, Lcom/android/video/d;->mState:I

    .line 654
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-eqz v0, :cond_23

    .line 655
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    invoke-interface {v0, v4}, Lcom/android/video/e;->aWK(Z)V

    goto :goto_23

    .line 648
    :catch_85
    move-exception v0

    .line 649
    const-string/jumbo v1, "VideoRecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pause method invoke error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 646
    :catch_a1
    move-exception v0

    .line 647
    const-string/jumbo v1, "VideoRecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pause method Access error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    .line 643
    :catch_bd
    move-exception v0

    .line 644
    const-string/jumbo v1, "VideoRecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no pause method error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    goto :goto_6d

    .line 627
    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_27
        :pswitch_7
        :pswitch_4c
    .end packed-switch
.end method

.method public aWi(Lcom/android/video/e;)V
    .registers 2

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    .line 206
    return-void
.end method

.method public aWk()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 508
    invoke-direct {p0}, Lcom/android/video/d;->aWd()I

    move-result v0

    .line 509
    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-eqz v1, :cond_12

    .line 510
    iget-object v1, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    invoke-interface {v1, v0}, Lcom/android/video/e;->aWM(I)V

    .line 511
    return-void

    .line 515
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 516
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/video/d;->aHu:J

    .line 517
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/video/d;->aHv:J
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_1f} :catch_73
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1f} :catch_42

    .line 547
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->pM(Z)V

    .line 552
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->WJ()V

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/video/d;->aHx:J

    .line 554
    iput v3, p0, Lcom/android/video/d;->mState:I

    .line 555
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-eqz v0, :cond_3e

    .line 556
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    invoke-interface {v0, v2}, Lcom/android/video/e;->aWM(I)V

    .line 559
    :cond_3e
    invoke-direct {p0}, Lcom/android/video/d;->aWp()V

    .line 507
    return-void

    .line 532
    :catch_42
    move-exception v0

    .line 533
    invoke-direct {p0}, Lcom/android/video/d;->aWf()V

    .line 535
    invoke-direct {p0}, Lcom/android/video/d;->aVL()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KR()V

    .line 536
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-eqz v0, :cond_58

    .line 537
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/video/e;->aWM(I)V

    .line 539
    :cond_58
    invoke-virtual {p0}, Lcom/android/video/d;->aVU()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 540
    iget-object v0, p0, Lcom/android/video/d;->aHA:Lcom/android/video/c;

    invoke-virtual {v0}, Lcom/android/video/c;->stop()V

    .line 541
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/video/d;->aHA:Lcom/android/video/c;

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->at(Lcom/android/common/a/b;)V

    .line 545
    :goto_6e
    return-void

    .line 543
    :cond_6f
    invoke-direct {p0, v2}, Lcom/android/video/d;->aWn(Z)V

    goto :goto_6e

    .line 518
    :catch_73
    move-exception v0

    .line 519
    invoke-direct {p0}, Lcom/android/video/d;->aWf()V

    .line 521
    invoke-direct {p0}, Lcom/android/video/d;->aVL()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KR()V

    .line 522
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-eqz v0, :cond_88

    .line 523
    iget-object v0, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/video/e;->aWM(I)V

    .line 525
    :cond_88
    invoke-virtual {p0}, Lcom/android/video/d;->aVU()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 526
    iget-object v0, p0, Lcom/android/video/d;->aHA:Lcom/android/video/c;

    invoke-virtual {v0}, Lcom/android/video/c;->stop()V

    .line 527
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/video/d;->aHA:Lcom/android/video/c;

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->at(Lcom/android/common/a/b;)V

    .line 531
    :goto_9e
    return-void

    .line 529
    :cond_9f
    invoke-direct {p0, v2}, Lcom/android/video/d;->aWn(Z)V

    goto :goto_9e
.end method

.method public aWl(Z)V
    .registers 8

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 569
    iget v0, p0, Lcom/android/video/d;->mState:I

    if-ne v0, v5, :cond_9

    return-void

    .line 570
    :cond_9
    const-string/jumbo v0, "VideoRecordManager"

    const-string/jumbo v2, "stopVideoRecording"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 573
    iget v0, p0, Lcom/android/video/d;->mState:I

    if-eq v0, v3, :cond_34

    .line 574
    iget v0, p0, Lcom/android/video/d;->mState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_34

    .line 575
    iget v0, p0, Lcom/android/video/d;->mState:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_34

    .line 576
    const-string/jumbo v0, "VideoRecordManager"

    const-string/jumbo v1, "VideoRecording is not started!!!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/video/d;->aWa(I)V

    .line 578
    return-void

    .line 580
    :cond_34
    iput v5, p0, Lcom/android/video/d;->mState:I

    .line 581
    iget-object v0, p0, Lcom/android/video/d;->aHj:Lcom/android/video/g;

    invoke-virtual {v0, v3}, Lcom/android/video/g;->removeMessages(I)V

    .line 582
    invoke-virtual {p0}, Lcom/android/video/d;->aVU()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 583
    iget-object v0, p0, Lcom/android/video/d;->aHA:Lcom/android/video/c;

    invoke-virtual {v0}, Lcom/android/video/c;->stop()V

    .line 584
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v2, p0, Lcom/android/video/d;->aHA:Lcom/android/video/c;

    invoke-virtual {v0, v2}, Lcom/android/common/a/g;->at(Lcom/android/common/a/b;)V

    .line 588
    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 589
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 590
    iget-object v0, p0, Lcom/android/video/d;->aHs:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 591
    iget-object v0, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    .line 593
    const-string/jumbo v0, "VideoRecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopVideoRecording: Setting current video filename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/video/d;->aHg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_85} :catch_ab

    move v0, v1

    .line 605
    :goto_86
    invoke-virtual {p0}, Lcom/android/video/d;->aVU()Z

    move-result v2

    if-nez v2, :cond_91

    .line 606
    if-nez p1, :cond_91

    .line 607
    invoke-direct {p0, v1}, Lcom/android/video/d;->aWn(Z)V

    .line 611
    :cond_91
    invoke-direct {p0}, Lcom/android/video/d;->aWb()V

    .line 613
    if-nez v0, :cond_99

    .line 614
    invoke-direct {p0}, Lcom/android/video/d;->aVB()V

    .line 617
    :cond_99
    invoke-direct {p0}, Lcom/android/video/d;->aWf()V

    .line 620
    iget-object v2, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 621
    iput v1, p0, Lcom/android/video/d;->mState:I

    .line 623
    invoke-direct {p0, v0}, Lcom/android/video/d;->aWa(I)V

    .line 562
    return-void

    .line 595
    :catch_ab
    move-exception v0

    .line 596
    const-string/jumbo v2, "VideoRecordManager"

    const-string/jumbo v3, "stopVideoRecording stop fail"

    invoke-static {v2, v3, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 597
    iget-object v0, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    if-eqz v0, :cond_c0

    .line 598
    iget-object v0, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/video/d;->aVJ(Ljava/lang/String;)V

    .line 599
    iput-object v4, p0, Lcom/android/video/d;->aHD:Ljava/lang/String;

    .line 601
    :cond_c0
    const/4 v0, 0x7

    goto :goto_86
.end method

.method public aWo()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 666
    iget v0, p0, Lcom/android/video/d;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    .line 667
    const-string/jumbo v0, "VideoRecordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error state for taking picture, state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/video/d;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    return-void

    .line 670
    :cond_23
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/video/d;->mState:I

    .line 671
    const-string/jumbo v0, "VideoRecordManager"

    const-string/jumbo v1, "Video snapshot start"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "video_2"

    const-string/jumbo v2, "VideoRecordManager"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lcom/android/video/d;->aVU()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 674
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    new-instance v1, Lcom/android/video/h;

    invoke-direct {v1, p0, v3}, Lcom/android/video/h;-><init>(Lcom/android/video/d;Lcom/android/video/h;)V

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->av(Lcom/android/common/a/c;)V

    .line 675
    return-void

    .line 677
    :cond_53
    iget-object v0, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    .line 678
    invoke-direct {p0, v0}, Lcom/android/video/d;->aWg(Landroid/location/Location;)V

    .line 679
    iget-object v1, p0, Lcom/android/video/d;->aHc:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v1

    new-instance v2, Lcom/android/video/i;

    invoke-direct {v2, p0, v0}, Lcom/android/video/i;-><init>(Lcom/android/video/d;Landroid/location/Location;)V

    invoke-virtual {v1, v3, v3, v3, v2}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 665
    return-void
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Lcom/android/video/d;->mState:I

    return v0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .registers 5

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/video/d;->aWl(Z)V

    .line 956
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 961
    const/16 v0, 0x320

    if-ne p2, v0, :cond_17

    .line 962
    const-string/jumbo v0, "VideoRecordManager"

    const-string/jumbo v1, "onInfo MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget v0, p0, Lcom/android/video/d;->mState:I

    if-ne v0, v3, :cond_16

    invoke-virtual {p0, v2}, Lcom/android/video/d;->aWl(Z)V

    .line 960
    :cond_16
    :goto_16
    return-void

    .line 964
    :cond_17
    const/16 v0, 0x321

    if-ne p2, v0, :cond_16

    .line 965
    const-string/jumbo v0, "VideoRecordManager"

    const-string/jumbo v1, "onInfo MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-boolean v0, p0, Lcom/android/video/d;->aHo:Z

    if-eqz v0, :cond_3a

    .line 968
    const/4 v0, 0x5

    .line 972
    :goto_29
    iget-object v1, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    if-eqz v1, :cond_32

    .line 973
    iget-object v1, p0, Lcom/android/video/d;->aHk:Lcom/android/video/e;

    invoke-interface {v1, v0}, Lcom/android/video/e;->aWH(I)V

    .line 975
    :cond_32
    iget v0, p0, Lcom/android/video/d;->mState:I

    if-ne v0, v3, :cond_16

    invoke-virtual {p0, v2}, Lcom/android/video/d;->aWl(Z)V

    goto :goto_16

    .line 970
    :cond_3a
    const/4 v0, 0x6

    goto :goto_29
.end method

.method public setOrientation(I)V
    .registers 2

    .prologue
    .line 1295
    iput p1, p0, Lcom/android/video/d;->aHt:I

    .line 1294
    return-void
.end method
