.class public Lcn/nubia/bigAperture/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bmq:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 236
    const-string/jumbo v0, "ApertureBackground"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/bigAperture/a;->bmq:Z

    .line 26
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bIM(Lcom/nubia/camera/common/Native/BufferCell;III)[B
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 101
    if-eqz p3, :cond_2a

    .line 102
    new-instance v0, Lcom/nubia/camera/common/Native/BufferCell;

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(I)V

    .line 104
    const/16 v1, 0x5a

    if-eq p3, v1, :cond_16

    const/16 v1, 0x10e

    if-ne p3, v1, :cond_19

    :cond_16
    move v3, p1

    move p1, p2

    move p2, v3

    .line 109
    :cond_19
    const-string/jumbo v1, "[perf test] roate E"

    invoke-static {v1}, Lcn/nubia/bigAperture/a;->bIQ(Ljava/lang/String;)V

    .line 110
    rsub-int v1, p3, 0x168

    invoke-static {p0, v0, p1, p2, v1}, Lcom/nubia/camera/common/Native/YUVAlgorithm;->btR(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;III)V

    .line 111
    const-string/jumbo v1, "[perf test] roate X"

    invoke-static {v1}, Lcn/nubia/bigAperture/a;->bIQ(Ljava/lang/String;)V

    .line 114
    :cond_2a
    if-nez p3, :cond_3f

    .line 113
    :goto_2c
    invoke-static {p0, p1, p2}, Lcom/nubia/camera/common/Native/YUVAlgorithm;->btS(Lcom/nubia/camera/common/Native/BufferCell;II)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v1

    .line 116
    const/16 v2, 0x5f

    invoke-static {v1, p1, p2, v2}, Lcom/nubia/camera/common/Native/CodecDataAlgorithm;->btV(Lcom/nubia/camera/common/Native/BufferCell;III)[B

    move-result-object v2

    .line 118
    if-eqz v0, :cond_3b

    .line 119
    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 121
    :cond_3b
    invoke-virtual {v1}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 123
    return-object v2

    :cond_3f
    move-object p0, v0

    .line 114
    goto :goto_2c
.end method

.method public static bIN(Lcom/nubia/camera/common/Native/BufferCell;III)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 138
    if-eqz p3, :cond_44

    .line 139
    new-instance v0, Lcom/nubia/camera/common/Native/BufferCell;

    mul-int v1, p1, p2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(I)V

    .line 141
    const/16 v1, 0x5a

    if-eq p3, v1, :cond_16

    const/16 v1, 0x10e

    if-ne p3, v1, :cond_19

    :cond_16
    move v2, p1

    move p1, p2

    move p2, v2

    .line 146
    :cond_19
    const-string/jumbo v1, "[perf test] roate E"

    invoke-static {v1}, Lcn/nubia/bigAperture/a;->bIQ(Ljava/lang/String;)V

    .line 147
    rsub-int v1, p3, 0x168

    invoke-static {p0, v0, p1, p2, v1}, Lcom/nubia/camera/common/Native/YUVAlgorithm;->btR(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;III)V

    .line 148
    const-string/jumbo v1, "[perf test] roate X"

    invoke-static {v1}, Lcn/nubia/bigAperture/a;->bIQ(Ljava/lang/String;)V

    move-object v1, v0

    .line 151
    :goto_2b
    if-nez p3, :cond_3f

    invoke-virtual {p0}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object v0

    .line 152
    :goto_31
    if-eqz v1, :cond_36

    .line 153
    invoke-virtual {v1}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 156
    :cond_36
    const/16 v1, 0x64

    invoke-static {v0, p1, p2, v1}, Lcom/android/common/l/b;->agf([BIII)Lcom/android/common/l/e;

    move-result-object v0

    iget-object v0, v0, Lcom/android/common/l/e;->ZS:[B

    return-object v0

    .line 151
    :cond_3f
    invoke-virtual {v1}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object v0

    goto :goto_31

    :cond_44
    move-object v1, v0

    goto :goto_2b
.end method

.method public static bIO([BIILcn/nubia/bigAperture/f;)[B
    .registers 11

    .prologue
    .line 225
    invoke-virtual {p3}, Lcn/nubia/bigAperture/f;->bJq()I

    move-result v0

    if-ne v0, p1, :cond_c

    invoke-virtual {p3}, Lcn/nubia/bigAperture/f;->bJr()I

    move-result v0

    if-eq v0, p2, :cond_29

    .line 226
    :cond_c
    new-instance v0, Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {v0, p0}, Lcom/nubia/camera/common/Native/BufferCell;-><init>([B)V

    .line 228
    iget v3, p3, Lcn/nubia/bigAperture/f;->left:I

    iget v4, p3, Lcn/nubia/bigAperture/f;->top:I

    iget v5, p3, Lcn/nubia/bigAperture/f;->bnj:I

    iget v6, p3, Lcn/nubia/bigAperture/f;->bnk:I

    move v1, p1

    move v2, p2

    .line 227
    invoke-static/range {v0 .. v6}, Lcn/nubia/bigAperture/BigAperAlgorithm;->bJs(Lcom/nubia/camera/common/Native/BufferCell;IIIIII)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v1

    .line 229
    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 230
    invoke-virtual {v1}, Lcom/nubia/camera/common/Native/BufferCell;->btX()[B

    move-result-object p0

    .line 231
    invoke-virtual {v1}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 233
    :cond_29
    return-object p0
.end method

.method public static bIP(Ljava/io/File;)V
    .registers 4

    .prologue
    .line 30
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 32
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 40
    :cond_f
    :goto_f
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 29
    :goto_12
    return-void

    .line 33
    :cond_13
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 35
    const/4 v0, 0x0

    :goto_1e
    array-length v2, v1

    if-ge v0, v2, :cond_29

    .line 36
    aget-object v2, v1, v0

    invoke-static {v2}, Lcn/nubia/bigAperture/a;->bIP(Ljava/io/File;)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 38
    :cond_29
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_f

    .line 42
    :cond_2d
    const-string/jumbo v0, "BigApertureUtil"

    const-string/jumbo v1, "file no exist"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method private static bIQ(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 238
    sget-boolean v0, Lcn/nubia/bigAperture/a;->bmq:Z

    if-eqz v0, :cond_a

    .line 239
    const-string/jumbo v0, "BigApertureUtil"

    invoke-static {v0, p0}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_a
    return-void
.end method

.method public static bIR(Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 47
    new-instance v1, Lcom/android/common/exif/o;

    invoke-direct {v1}, Lcom/android/common/exif/o;-><init>()V

    .line 49
    :try_start_6
    invoke-virtual {v1, p0}, Lcom/android/common/exif/o;->QF(Ljava/lang/String;)V

    .line 50
    sget v2, Lcom/android/common/exif/o;->PI:I

    invoke-virtual {v1, v2}, Lcom/android/common/exif/o;->QG(I)Lcom/android/common/exif/k;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_23

    .line 52
    invoke-virtual {v1}, Lcom/android/common/exif/k;->Pv()Ljava/lang/String;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_1e

    const-string/jumbo v2, "aper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_1d} :catch_24
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1d} :catch_1f

    move-result v0

    :cond_1e
    return v0

    .line 57
    :catch_1f
    move-exception v1

    .line 58
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    :cond_23
    :goto_23
    return v0

    .line 55
    :catch_24
    move-exception v1

    .line 56
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_23
.end method

.method public static bIS(Ljava/io/File;)[B
    .registers 2

    .prologue
    .line 86
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcn/nubia/bigAperture/a;->bIT(Ljava/io/File;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static bIT(Ljava/io/File;I)[B
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[perf test] parseData E: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/bigAperture/a;->bIQ(Ljava/lang/String;)V

    .line 67
    :try_start_1c
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 70
    const/4 v3, -0x1

    if-eq p1, v3, :cond_2b

    .line 71
    if-ge v2, p1, :cond_2b

    .line 72
    return-object v1

    .line 75
    :cond_2b
    new-array v1, v2, [B

    .line 76
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 77
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_33} :catch_4f

    .line 81
    :goto_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[perf test] parseData X: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/bigAperture/a;->bIQ(Ljava/lang/String;)V

    .line 82
    return-object v1

    .line 78
    :catch_4f
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method

.method public static bIU(Landroid/net/Uri;Landroid/content/ContentResolver;)Lcn/nubia/bigAperture/b;
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 160
    invoke-static {p0, p1}, Lcom/android/common/h;->aoX(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 161
    return-object v4

    .line 164
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 165
    new-instance v8, Lcn/nubia/bigAperture/b;

    invoke-direct {v8}, Lcn/nubia/bigAperture/b;-><init>()V

    .line 168
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "datetaken"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 169
    const-string/jumbo v3, "mime_type=\'image/jpeg\' AND _data like \'%/DCIM/Camera/%\'"

    .line 171
    const-string/jumbo v5, "datetaken DESC,_id DESC"

    move-object v0, p1

    move-object v1, p0

    .line 172
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_4e

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 174
    const-string/jumbo v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcn/nubia/bigAperture/b;->bms:Ljava/lang/String;

    .line 175
    const-string/jumbo v1, "datetaken"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcn/nubia/bigAperture/b;->bmr:J

    .line 177
    :cond_4e
    if-eqz v0, :cond_53

    .line 178
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_53
    invoke-virtual {v8}, Lcn/nubia/bigAperture/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/bigAperture/a;->bIQ(Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "parseGalleryUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/bigAperture/a;->bIQ(Ljava/lang/String;)V

    .line 182
    return-object v8
.end method

.method public static bIV([B)Lcn/nubia/bigAperture/c;
    .registers 5

    .prologue
    .line 186
    new-instance v1, Lcn/nubia/bigAperture/c;

    invoke-direct {v1}, Lcn/nubia/bigAperture/c;-><init>()V

    .line 187
    new-instance v0, Lcom/android/common/exif/o;

    invoke-direct {v0}, Lcom/android/common/exif/o;-><init>()V

    .line 189
    :try_start_a
    invoke-virtual {v0, p0}, Lcom/android/common/exif/o;->QH([B)V

    .line 190
    sget v2, Lcom/android/common/exif/o;->PJ:I

    invoke-virtual {v0, v2}, Lcom/android/common/exif/o;->QI(I)Ljava/lang/Integer;

    move-result-object v2

    .line 191
    if-eqz v2, :cond_1b

    .line 192
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcn/nubia/bigAperture/c;->bmv:I

    .line 194
    :cond_1b
    sget v2, Lcom/android/common/exif/o;->PK:I

    invoke-virtual {v0, v2}, Lcom/android/common/exif/o;->QJ(I)Lcom/android/common/exif/m;

    move-result-object v2

    .line 195
    if-eqz v2, :cond_2a

    .line 196
    invoke-virtual {v2}, Lcom/android/common/exif/m;->Qq()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcn/nubia/bigAperture/c;->bmt:F

    .line 198
    :cond_2a
    sget v2, Lcom/android/common/exif/o;->PE:I

    invoke-virtual {v0, v2}, Lcom/android/common/exif/o;->QJ(I)Lcom/android/common/exif/m;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_39

    .line 200
    invoke-virtual {v0}, Lcom/android/common/exif/m;->Qq()D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, v1, Lcn/nubia/bigAperture/c;->bmu:F
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_39} :catch_3a

    .line 205
    :cond_39
    :goto_39
    return-object v1

    .line 202
    :catch_3a
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39
.end method

.method public static bIW(Ljava/lang/String;)Lcn/nubia/bigAperture/f;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 213
    if-eqz p0, :cond_c

    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 221
    :cond_c
    return-object v1

    .line 214
    :cond_d
    const-string/jumbo v0, "\\,"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 215
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 216
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 217
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 218
    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 219
    new-instance v4, Lcn/nubia/bigAperture/f;

    invoke-direct {v4, v1, v2, v3, v0}, Lcn/nubia/bigAperture/f;-><init>(IIII)V

    return-object v4
.end method

.method public static bIX(Ljava/lang/String;[B)V
    .registers 2

    .prologue
    .line 209
    invoke-static {p0, p1}, Lcom/android/common/l/c;->agh(Ljava/lang/String;[B)Z

    .line 208
    return-void
.end method
