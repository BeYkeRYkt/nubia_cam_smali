.class public Lcom/loc/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/loc/ae;->a:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/loc/ae;->b:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/loc/M;->bwz(Ljava/lang/String;)V

    return-void
.end method

.method public static bxC(Ljava/lang/String;Z)Z
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    rem-int/lit8 v1, v1, 0x2
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_18} :catch_1c

    if-eq v1, v0, :cond_1b

    const/4 v0, 0x0

    :cond_1b
    return v0

    :catch_1c
    move-exception v0

    return p1
.end method

.method public static bxD(Landroid/content/Context;Lcom/loc/ag;Ljava/lang/String;Ljava/util/Map;)Lcom/loc/be;
    .registers 13

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/loc/be;

    invoke-direct {v3}, Lcom/loc/be;-><init>()V

    :try_start_7
    new-instance v0, Lcom/loc/U;

    invoke-direct {v0}, Lcom/loc/U;-><init>()V

    new-instance v1, Lcom/loc/aN;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/loc/aN;-><init>(Landroid/content/Context;Lcom/loc/ag;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/loc/U;->bwS(Lcom/loc/q;)[B
    :try_end_14
    .catch Lcom/loc/i; {:try_start_7 .. :try_end_14} :catch_6a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_7 .. :try_end_14} :catch_20a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_74

    move-result-object v1

    const/16 v0, 0x10

    :try_start_17
    new-array v0, v0, [B

    array-length v4, v1

    add-int/lit8 v4, v4, -0x10

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static {v1, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x10

    const/4 v6, 0x0

    array-length v7, v1

    add-int/lit8 v7, v7, -0x10

    invoke-static {v1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v6, "AES"

    invoke-direct {v5, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/loc/bv;->a()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v5, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->a([B)Ljava/lang/String;
    :try_end_51
    .catch Lcom/loc/i; {:try_start_17 .. :try_end_51} :catch_211
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_17 .. :try_end_51} :catch_20e
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_51} :catch_207

    move-result-object v2

    move-object v0, v2

    :goto_53
    if-eqz v1, :cond_80

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_81

    :goto_5b
    :try_start_5b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_66} :catch_a8

    move-result v0

    if-nez v0, :cond_86

    :goto_69
    return-object v3

    :catch_6a
    move-exception v0

    move-object v1, v2

    :goto_6c
    invoke-virtual {v0}, Lcom/loc/i;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/loc/be;->a:Ljava/lang/String;

    :goto_72
    move-object v0, v2

    goto :goto_53

    :catch_74
    move-exception v0

    move-object v1, v2

    :goto_76
    const-string/jumbo v4, "ConfigManager"

    const-string/jumbo v5, "loadConfig"

    invoke-static {v0, v4, v5}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    :cond_80
    return-object v3

    :cond_81
    invoke-static {v1}, Lcom/loc/bv;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_5b

    :cond_86
    :try_start_86
    const-string/jumbo v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_8c} :catch_a8

    move-result v0

    if-eq v0, v8, :cond_a4

    if-eqz v0, :cond_b3

    :cond_91
    :goto_91
    :try_start_91
    const-string/jumbo v0, "ver"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_97} :catch_dc
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_97} :catch_a8

    move-result v0

    if-nez v0, :cond_d2

    :goto_9a
    :try_start_9a
    const-string/jumbo v0, "result"

    invoke-static {v1, v0}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e7

    :cond_a3
    :goto_a3
    return-object v3

    :cond_a4
    const/4 v0, 0x1

    sput v0, Lcom/loc/ae;->a:I
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_a7} :catch_a8

    goto :goto_91

    :catch_a8
    move-exception v0

    const-string/jumbo v1, "AuthConfigManager"

    const-string/jumbo v2, "loadConfig"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_69

    :cond_b3
    const/4 v0, 0x0

    :try_start_b4
    sput v0, Lcom/loc/ae;->a:I

    const-string/jumbo v0, "info"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c8

    :goto_bf
    sget v0, Lcom/loc/ae;->a:I

    if-nez v0, :cond_91

    sget-object v0, Lcom/loc/ae;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/loc/be;->a:Ljava/lang/String;

    return-object v3

    :cond_c8
    const-string/jumbo v0, "info"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/ae;->b:Ljava/lang/String;
    :try_end_d1
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_d1} :catch_a8

    goto :goto_bf

    :cond_d2
    :try_start_d2
    const-string/jumbo v0, "ver"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/loc/be;->b:I
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_db} :catch_dc
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_db} :catch_a8

    goto :goto_9a

    :catch_dc
    move-exception v0

    :try_start_dd
    const-string/jumbo v2, "AuthConfigManager"

    const-string/jumbo v4, "loadConfigVer"

    invoke-static {v0, v2, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    :cond_e7
    new-instance v0, Lcom/loc/aB;

    invoke-direct {v0}, Lcom/loc/aB;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/loc/aB;->a:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/loc/aB;->b:Z

    iput-object v0, v3, Lcom/loc/be;->bgR:Lcom/loc/aB;

    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "11K"

    invoke-static {v1, v2}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_172

    :goto_104
    const-string/jumbo v0, "11B"

    invoke-static {v1, v0}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_189

    :goto_10d
    const-string/jumbo v0, "11C"

    invoke-static {v1, v0}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_194

    :goto_116
    const-string/jumbo v0, "11I"

    invoke-static {v1, v0}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19f

    :goto_11f
    const-string/jumbo v0, "11H"

    invoke-static {v1, v0}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1aa

    :goto_128
    const-string/jumbo v0, "11E"

    invoke-static {v1, v0}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b5

    :goto_131
    const-string/jumbo v0, "11F"

    invoke-static {v1, v0}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c0

    :goto_13a
    const-string/jumbo v0, "11G"

    invoke-static {v1, v0}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1cb

    :goto_143
    const-string/jumbo v0, "001"

    invoke-static {v1, v0}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d6

    :goto_14c
    const-string/jumbo v0, "002"

    invoke-static {v1, v0}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e9

    :goto_155
    const-string/jumbo v0, "006"

    invoke-static {v1, v0}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1fc

    :goto_15e
    const-string/jumbo v0, "010"

    invoke-static {v1, v0}, Lcom/loc/bv;->bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3

    const-string/jumbo v0, "010"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v3, Lcom/loc/be;->bgQ:Lorg/json/JSONObject;

    goto/16 :goto_a3

    :cond_172
    const-string/jumbo v2, "11K"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v4, "able"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/loc/ae;->bxC(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/loc/aB;->a:Z

    goto/16 :goto_104

    :cond_189
    const-string/jumbo v0, "11B"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v3, Lcom/loc/be;->bgI:Lorg/json/JSONObject;

    goto/16 :goto_10d

    :cond_194
    const-string/jumbo v0, "11C"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v3, Lcom/loc/be;->bgJ:Lorg/json/JSONObject;

    goto/16 :goto_116

    :cond_19f
    const-string/jumbo v0, "11I"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v3, Lcom/loc/be;->bgK:Lorg/json/JSONObject;

    goto/16 :goto_11f

    :cond_1aa
    const-string/jumbo v0, "11H"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v3, Lcom/loc/be;->bgL:Lorg/json/JSONObject;

    goto/16 :goto_128

    :cond_1b5
    const-string/jumbo v0, "11E"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v3, Lcom/loc/be;->bgM:Lorg/json/JSONObject;

    goto/16 :goto_131

    :cond_1c0
    const-string/jumbo v0, "11F"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v3, Lcom/loc/be;->bgN:Lorg/json/JSONObject;

    goto/16 :goto_13a

    :cond_1cb
    const-string/jumbo v0, "11G"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v3, Lcom/loc/be;->bgO:Lorg/json/JSONObject;

    goto/16 :goto_143

    :cond_1d6
    const-string/jumbo v0, "001"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v2, Lcom/loc/bL;

    invoke-direct {v2}, Lcom/loc/bL;-><init>()V

    invoke-static {v0, v2}, Lcom/loc/ae;->bxG(Lorg/json/JSONObject;Lcom/loc/bL;)V

    iput-object v2, v3, Lcom/loc/be;->bgS:Lcom/loc/bL;

    goto/16 :goto_14c

    :cond_1e9
    const-string/jumbo v0, "002"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v2, Lcom/loc/bl;

    invoke-direct {v2}, Lcom/loc/bl;-><init>()V

    invoke-static {v0, v2}, Lcom/loc/ae;->bxF(Lorg/json/JSONObject;Lcom/loc/bl;)V

    iput-object v2, v3, Lcom/loc/be;->bgT:Lcom/loc/bl;

    goto/16 :goto_155

    :cond_1fc
    const-string/jumbo v0, "006"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v3, Lcom/loc/be;->bgP:Lorg/json/JSONObject;
    :try_end_205
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_205} :catch_a8

    goto/16 :goto_15e

    :catch_207
    move-exception v0

    goto/16 :goto_76

    :catch_20a
    move-exception v0

    move-object v1, v2

    goto/16 :goto_72

    :catch_20e
    move-exception v0

    goto/16 :goto_72

    :catch_211
    move-exception v0

    goto/16 :goto_6c
.end method

.method public static bxE(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_c

    const-string/jumbo v0, ""

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    const-string/jumbo v0, ""

    return-object v0

    :cond_10
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private static bxF(Lorg/json/JSONObject;Lcom/loc/bl;)V
    .registers 5

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    const-string/jumbo v0, "md5"

    invoke-static {p0, v0}, Lcom/loc/ae;->bxE(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-static {p0, v1}, Lcom/loc/ae;->bxE(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v0, p1, Lcom/loc/bl;->b:Ljava/lang/String;

    iput-object v1, p1, Lcom/loc/bl;->a:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_15} :catch_16

    goto :goto_2

    :catch_16
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parseSDKCoordinate"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static bxG(Lorg/json/JSONObject;Lcom/loc/bL;)V
    .registers 6

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    const-string/jumbo v0, "md5"

    invoke-static {p0, v0}, Lcom/loc/ae;->bxE(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-static {p0, v1}, Lcom/loc/ae;->bxE(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sdkversion"

    invoke-static {p0, v2}, Lcom/loc/ae;->bxE(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object v1, p1, Lcom/loc/bL;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/loc/bL;->b:Ljava/lang/String;

    iput-object v2, p1, Lcom/loc/bL;->c:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_30} :catch_31

    goto :goto_2

    :catch_31
    move-exception v0

    const-string/jumbo v1, "ConfigManager"

    const-string/jumbo v2, "parseSDKUpdate"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
