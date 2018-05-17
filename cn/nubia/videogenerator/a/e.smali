.class public Lcn/nubia/videogenerator/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bre:Lcn/nubia/videogenerator/a/h;

.field private brf:Ljava/util/ArrayList;

.field private brg:Z

.field private brh:Lcn/nubia/videogenerator/b/e;

.field private bri:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcn/nubia/videogenerator/a/e;->brf:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/videogenerator/a/e;->brg:Z

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcn/nubia/videogenerator/a/e;->bri:J

    .line 28
    return-void
.end method

.method private bOe(Ljava/lang/String;)I
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 158
    :try_start_2
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "Orientation"

    const/4 v4, -0x1

    .line 159
    invoke-virtual {v0, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_13

    move-result v0

    .line 164
    :goto_f
    if-ne v0, v1, :cond_19

    move v0, v2

    .line 180
    :goto_12
    return v0

    .line 160
    :catch_13
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_f

    .line 165
    :cond_19
    packed-switch v0, :pswitch_data_28

    :pswitch_1c
    move v0, v2

    .line 176
    goto :goto_12

    :pswitch_1e
    const/16 v0, 0x5a

    .line 167
    goto :goto_12

    :pswitch_21
    const/16 v0, 0xb4

    .line 170
    goto :goto_12

    :pswitch_24
    const/16 v0, 0x10e

    .line 173
    goto :goto_12

    .line 165
    nop

    :pswitch_data_28
    .packed-switch 0x3
        :pswitch_21
        :pswitch_1c
        :pswitch_1c
        :pswitch_1e
        :pswitch_1c
        :pswitch_24
    .end packed-switch
.end method

.method private bOf(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 186
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_39
    .catchall {:try_start_1 .. :try_end_6} :catchall_45

    .line 187
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 188
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 189
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    .line 190
    invoke-static {v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 191
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 192
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 193
    int-to-float v4, v4

    int-to-float v6, p2

    div-float/2addr v4, v6

    int-to-float v5, v5

    int-to-float v6, p3

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 194
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 195
    invoke-direct {p0, v4}, Lcn/nubia/videogenerator/a/e;->bOg(F)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    .line 198
    invoke-static {v0, v4, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_31} :catch_50
    .catchall {:try_start_6 .. :try_end_31} :catchall_4e

    move-result-object v0

    .line 204
    if-nez v1, :cond_35

    .line 199
    :goto_34
    return-object v0

    .line 205
    :cond_35
    invoke-direct {p0, v1}, Lcn/nubia/videogenerator/a/e;->bOh(Ljava/io/Closeable;)V

    goto :goto_34

    .line 199
    :catch_39
    move-exception v0

    move-object v1, v2

    .line 201
    :goto_3b
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_4e

    .line 204
    if-nez v1, :cond_41

    .line 202
    :goto_40
    return-object v2

    .line 205
    :cond_41
    invoke-direct {p0, v1}, Lcn/nubia/videogenerator/a/e;->bOh(Ljava/io/Closeable;)V

    goto :goto_40

    .line 202
    :catchall_45
    move-exception v0

    move-object v1, v2

    .line 204
    :goto_47
    if-nez v1, :cond_4a

    .line 207
    :goto_49
    throw v0

    .line 205
    :cond_4a
    invoke-direct {p0, v1}, Lcn/nubia/videogenerator/a/e;->bOh(Ljava/io/Closeable;)V

    goto :goto_49

    .line 202
    :catchall_4e
    move-exception v0

    goto :goto_47

    .line 199
    :catch_50
    move-exception v0

    goto :goto_3b
.end method

.method private bOg(F)I
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 211
    float-to-int v0, p1

    .line 212
    if-le v0, v1, :cond_d

    const/16 v1, 0x8

    .line 215
    if-le v0, v1, :cond_e

    .line 216
    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    .line 215
    :goto_c
    return v0

    .line 213
    :cond_d
    return v1

    .line 215
    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    goto :goto_c
.end method

.method private bOh(Ljava/io/Closeable;)V
    .registers 3

    .prologue
    .line 221
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 225
    :goto_3
    return-void

    .line 222
    :catch_4
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public bOa(Ljava/util/ArrayList;)V
    .registers 2

    .prologue
    .line 31
    iput-object p1, p0, Lcn/nubia/videogenerator/a/e;->brf:Ljava/util/ArrayList;

    .line 32
    return-void
.end method

.method public bOb()V
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/videogenerator/a/e;->brf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcn/nubia/videogenerator/a/e;->brf:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public bOc(Landroid/view/Surface;II)V
    .registers 5

    .prologue
    .line 44
    new-instance v0, Lcn/nubia/videogenerator/a/h;

    invoke-direct {v0, p1, p2, p3}, Lcn/nubia/videogenerator/a/h;-><init>(Landroid/view/Surface;II)V

    iput-object v0, p0, Lcn/nubia/videogenerator/a/e;->bre:Lcn/nubia/videogenerator/a/h;

    .line 45
    return-void
.end method

.method public bOd()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 49
    iget-object v0, p0, Lcn/nubia/videogenerator/a/e;->brf:Ljava/util/ArrayList;

    if-eqz v0, :cond_42

    .line 56
    iget-object v0, p0, Lcn/nubia/videogenerator/a/e;->brf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 57
    :goto_d
    if-ge v2, v3, :cond_5d

    .line 58
    iget-boolean v0, p0, Lcn/nubia/videogenerator/a/e;->brg:Z

    if-nez v0, :cond_5d

    .line 62
    :try_start_13
    iget-object v0, p0, Lcn/nubia/videogenerator/a/e;->brf:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    iget-object v4, p0, Lcn/nubia/videogenerator/a/e;->bre:Lcn/nubia/videogenerator/a/h;

    invoke-virtual {v4}, Lcn/nubia/videogenerator/a/h;->bOo()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/videogenerator/a/e;->bre:Lcn/nubia/videogenerator/a/h;

    invoke-virtual {v5}, Lcn/nubia/videogenerator/a/h;->bOp()I

    move-result v5

    invoke-direct {p0, v0, v4, v5}, Lcn/nubia/videogenerator/a/e;->bOf(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 64
    if-eqz v4, :cond_4f

    .line 69
    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/a/e;->bOe(Ljava/lang/String;)I

    move-result v0

    .line 70
    iget-object v5, p0, Lcn/nubia/videogenerator/a/e;->bre:Lcn/nubia/videogenerator/a/h;

    invoke-virtual {v5, v4, v0}, Lcn/nubia/videogenerator/a/h;->bOm(Landroid/graphics/Bitmap;I)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_36} :catch_59

    .line 75
    add-int/lit8 v0, v2, 0x1

    if-eq v0, v3, :cond_67

    move v0, v1

    .line 76
    :goto_3b
    invoke-virtual {p0, v0}, Lcn/nubia/videogenerator/a/e;->bOj(Z)V

    .line 57
    :goto_3e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    .line 50
    :cond_42
    iget-object v0, p0, Lcn/nubia/videogenerator/a/e;->bre:Lcn/nubia/videogenerator/a/h;

    if-nez v0, :cond_47

    .line 54
    :goto_46
    return-void

    .line 51
    :cond_47
    iget-object v0, p0, Lcn/nubia/videogenerator/a/e;->bre:Lcn/nubia/videogenerator/a/h;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/h;->release()V

    .line 52
    iput-object v6, p0, Lcn/nubia/videogenerator/a/e;->bre:Lcn/nubia/videogenerator/a/h;

    goto :goto_46

    :cond_4f
    :try_start_4f
    const-string/jumbo v0, "ImageRender"

    const-string/jumbo v4, "Create Bitmap failed!"

    .line 65
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_58} :catch_59

    goto :goto_3e

    .line 71
    :catch_59
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    :cond_5d
    iget-object v0, p0, Lcn/nubia/videogenerator/a/e;->bre:Lcn/nubia/videogenerator/a/h;

    if-nez v0, :cond_69

    .line 82
    :goto_61
    iput-boolean v1, p0, Lcn/nubia/videogenerator/a/e;->brg:Z

    .line 83
    invoke-virtual {p0}, Lcn/nubia/videogenerator/a/e;->bOb()V

    .line 84
    return-void

    :cond_67
    const/4 v0, 0x1

    .line 75
    goto :goto_3b

    .line 79
    :cond_69
    iget-object v0, p0, Lcn/nubia/videogenerator/a/e;->bre:Lcn/nubia/videogenerator/a/h;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/h;->release()V

    .line 80
    iput-object v6, p0, Lcn/nubia/videogenerator/a/e;->bre:Lcn/nubia/videogenerator/a/h;

    goto :goto_61
.end method

.method public bOi(Lcn/nubia/videogenerator/b/e;)V
    .registers 2

    .prologue
    .line 240
    iput-object p1, p0, Lcn/nubia/videogenerator/a/e;->brh:Lcn/nubia/videogenerator/b/e;

    .line 241
    return-void
.end method

.method public bOj(Z)V
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lcn/nubia/videogenerator/a/e;->brh:Lcn/nubia/videogenerator/b/e;

    if-nez v0, :cond_5

    .line 247
    :goto_4
    return-void

    .line 245
    :cond_5
    iget-object v0, p0, Lcn/nubia/videogenerator/a/e;->brh:Lcn/nubia/videogenerator/b/e;

    invoke-interface {v0, p1}, Lcn/nubia/videogenerator/b/e;->bNz(Z)V

    goto :goto_4
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/videogenerator/a/e;->brg:Z

    .line 230
    return-void
.end method
