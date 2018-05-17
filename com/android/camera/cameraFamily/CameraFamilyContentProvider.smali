.class public Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final amd:Z

.field private static final ame:Landroid/content/UriMatcher;

.field private static amf:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 37
    new-instance v0, Landroid/content/UriMatcher;

    .line 38
    const/4 v1, -0x1

    .line 37
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->ame:Landroid/content/UriMatcher;

    .line 42
    sget-object v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->ame:Landroid/content/UriMatcher;

    const-string/jumbo v1, "nubia.camera.family"

    const-string/jumbo v2, "member"

    const/4 v3, 0x1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2, v3}, vtable@11
    nop

    .line 43
    sget-object v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->ame:Landroid/content/UriMatcher;

    const-string/jumbo v1, "nubia.camera.family"

    const-string/jumbo v2, "member/#"

    const/4 v3, 0x2

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2, v3}, vtable@11
    nop

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->amf:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->amf:Ljava/util/HashMap;

    .line 49
    sget-object v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->amf:Ljava/util/HashMap;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 50
    sget-object v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->amf:Ljava/util/HashMap;

    const-string/jumbo v1, "family_member_number"

    .line 51
    const-string/jumbo v2, "family_member_number"

    .line 50
    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 52
    sget-object v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->amf:Ljava/util/HashMap;

    const-string/jumbo v1, "family_member_type"

    .line 53
    const-string/jumbo v2, "family_member_type"

    .line 52
    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 54
    sget-object v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->amf:Ljava/util/HashMap;

    const-string/jumbo v1, "family_member_state"

    .line 55
    const-string/jumbo v2, "family_member_state"

    .line 54
    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 56
    sget-object v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->amf:Ljava/util/HashMap;

    const-string/jumbo v1, "family_member_name"

    .line 57
    const-string/jumbo v2, "family_member_name"

    .line 56
    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 58
    sget-object v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->amf:Ljava/util/HashMap;

    const-string/jumbo v1, "family_member_icon_id"

    .line 59
    const-string/jumbo v2, "family_member_icon_id"

    .line 58
    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 60
    sget-object v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->amf:Ljava/util/HashMap;

    const-string/jumbo v1, "family_member_icon"

    .line 61
    const-string/jumbo v2, "family_member_icon"

    .line 60
    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 62
    sget-object v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->amf:Ljava/util/HashMap;

    const-string/jumbo v1, "family_member_action"

    .line 63
    const-string/jumbo v2, "family_member_action"

    .line 62
    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@18
    nop

    .line 244
    const-string/jumbo v0, "FamProviderDebug"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->amd:Z

    .line 29
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private axP(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 246
    sget-boolean v0, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->amd:Z

    if-eqz v0, :cond_a

    .line 247
    const-string/jumbo v0, "FamProviderDebug"

    invoke-static {v0, p1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_a
    return-void
.end method

.method private axQ(I)[B
    .registers 6

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 230
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 232
    :try_start_18
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 233
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_23

    .line 237
    :goto_1e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 234
    :catch_23
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e
.end method

.method private axR(II)[Ljava/lang/Object;
    .registers 10

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 199
    sget-object v0, Lcom/android/common/appService/CameraMember;->jQ:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v0}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v0

    if-ne p2, v0, :cond_69

    .line 200
    const-string/jumbo v0, "cn.nubia.wlancamera;android.intent.action.MAIN;nubia.camera.family"

    .line 209
    :goto_d
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/cameraFamily/e;->axr(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 210
    sget-object v1, Lcom/android/common/appService/CameraMember;->jM:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    if-ne p2, v1, :cond_2d

    .line 211
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->adn()Z

    move-result v1

    if-eqz v1, :cond_95

    :cond_2d
    move v1, v3

    .line 220
    :goto_2e
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    .line 221
    invoke-static {p2}, Lcom/android/camera/cameraFamily/e;->axw(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->axS(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v4, v2

    .line 222
    invoke-static {p2}, Lcom/android/camera/cameraFamily/e;->axt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v4, v2

    .line 223
    invoke-static {p2}, Lcom/android/camera/cameraFamily/e;->axt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->axQ(I)[B

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v4, v2

    const/4 v1, 0x6

    aput-object v0, v4, v1

    .line 220
    return-object v4

    .line 204
    :cond_69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    const-string/jumbo v1, "android.intent.action.MAIN;"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    const-string/jumbo v1, "nubia.camera.family"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_95
    move v1, v2

    .line 212
    goto :goto_2e

    :cond_97
    move v1, v2

    .line 218
    goto :goto_2e
.end method

.method private axS(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private axT(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 163
    new-instance v6, Landroid/database/MatrixCursor;

    .line 164
    sget-object v2, Lcom/android/camera/cameraFamily/i;->amh:[Ljava/lang/String;

    .line 163
    invoke-direct {v6, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 168
    if-eqz p3, :cond_95

    .line 169
    const-string/jumbo v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 170
    const-string/jumbo v0, "\'"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 171
    const-string/jumbo v2, "\'"

    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 170
    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v0, v1

    move v2, v3

    .line 172
    :goto_2d
    sget-object v7, Lcom/android/camera/cameraFamily/i;->amh:[Ljava/lang/String;

    array-length v7, v7

    if-ge v0, v7, :cond_54

    .line 173
    sget-object v7, Lcom/android/camera/cameraFamily/i;->amh:[Ljava/lang/String;

    aget-object v7, v7, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 174
    const-string/jumbo v9, ""

    .line 173
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    move v2, v0

    .line 172
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_54
    move-object v0, v4

    .line 179
    :goto_55
    const/4 v4, 0x1

    .line 180
    :goto_56
    sget-object v5, Lcom/android/camera/cameraFamily/e;->alL:[Lcom/android/common/appService/CameraMember;

    array-length v5, v5

    if-ge v1, v5, :cond_94

    .line 181
    add-int/lit8 v5, v4, 0x1

    .line 182
    sget-object v7, Lcom/android/camera/cameraFamily/e;->alL:[Lcom/android/common/appService/CameraMember;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v7

    .line 181
    invoke-direct {p0, v4, v7}, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->axR(II)[Ljava/lang/Object;

    move-result-object v4

    .line 183
    if-eqz v4, :cond_8c

    .line 184
    if-eq v2, v3, :cond_90

    .line 185
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 186
    invoke-virtual {v6, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 180
    :cond_8c
    :goto_8c
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_56

    .line 189
    :cond_90
    invoke-virtual {v6, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_8c

    .line 194
    :cond_94
    return-object v6

    :cond_95
    move v2, v3

    goto :goto_55
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 131
    const-string/jumbo v0, "delete"

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->axP(Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    sget-object v1, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->ame:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    .line 117
    const-string/jumbo v1, "CameraFamilyContentProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getType unKnow uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_24
    return-object v0

    .line 111
    :pswitch_25
    const-string/jumbo v0, "vnd.android.cursor.dir/all.camerafamily.note"

    goto :goto_24

    .line 114
    :pswitch_29
    const-string/jumbo v0, "vnd.android.cursor.dir/one.camerafamily.note"

    goto :goto_24

    .line 109
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    .prologue
    .line 125
    const-string/jumbo v0, "insert"

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->axP(Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 102
    const-string/jumbo v0, "CameraFamilyContentProvider"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "query, uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", projection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    const-string/jumbo v1, ", selection: "

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    const-string/jumbo v1, ", selectionArgs: "

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    const-string/jumbo v1, ", sortOrder: "

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->axP(Ljava/lang/String;)V

    .line 148
    if-nez p1, :cond_4f

    .line 149
    const-string/jumbo v0, "CameraFamilyContentProvider"

    const-string/jumbo v1, "uri is null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_4f
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "member"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 152
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->axT(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 154
    :cond_61
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "directory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 155
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/cameraFamily/h;->axO(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 157
    :cond_77
    const-string/jumbo v0, "CameraFamilyContentProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-object v3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update, select: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; selectionArgs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/CameraFamilyContentProvider;->axP(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    return v0
.end method
