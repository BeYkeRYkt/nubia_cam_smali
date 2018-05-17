.class public final enum Lcom/fotonation/utils/FNImage$Format;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_ARGB8888:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_AYUV444:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_BGR565BE:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_BGR565LE:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_BGR888:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_BGRA8888:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_GRAY8:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_RGB565BE:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_RGB565LE:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_RGB888:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_RGBA8888:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_UNKNOWN:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_UYVY422:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_YUV420P:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_YUV420SP:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_YUV422P:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_YUV422SP:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_YUV444:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_YUYV422:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_YVU420P:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_YVU420SP:Lcom/fotonation/utils/FNImage$Format;

.field public static final enum IMG_FORMAT_YVYU422:Lcom/fotonation/utils/FNImage$Format;

.field private static final synthetic bcH:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_UNKNOWN:Lcom/fotonation/utils/FNImage$Format;

    .line 17
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_GRAY8"

    invoke-direct {v0, v1, v4}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 20
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_GRAY8:Lcom/fotonation/utils/FNImage$Format;

    .line 22
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_YUV420P"

    invoke-direct {v0, v1, v5}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV420P:Lcom/fotonation/utils/FNImage$Format;

    .line 29
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_YVU420P"

    invoke-direct {v0, v1, v6}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YVU420P:Lcom/fotonation/utils/FNImage$Format;

    .line 36
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_YUV420SP"

    invoke-direct {v0, v1, v7}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV420SP:Lcom/fotonation/utils/FNImage$Format;

    .line 44
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_YVU420SP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YVU420SP:Lcom/fotonation/utils/FNImage$Format;

    .line 52
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_YUV422P"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV422P:Lcom/fotonation/utils/FNImage$Format;

    .line 59
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_YUV422SP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 65
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV422SP:Lcom/fotonation/utils/FNImage$Format;

    .line 67
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_YUYV422"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 84
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUYV422:Lcom/fotonation/utils/FNImage$Format;

    .line 86
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_YVYU422"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 104
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YVYU422:Lcom/fotonation/utils/FNImage$Format;

    .line 106
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_UYVY422"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 123
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_UYVY422:Lcom/fotonation/utils/FNImage$Format;

    .line 125
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_YUV444"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 139
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV444:Lcom/fotonation/utils/FNImage$Format;

    .line 141
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_AYUV444"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 158
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_AYUV444:Lcom/fotonation/utils/FNImage$Format;

    .line 160
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_ARGB8888"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 176
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_ARGB8888:Lcom/fotonation/utils/FNImage$Format;

    .line 178
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_RGBA8888"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 194
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_RGBA8888:Lcom/fotonation/utils/FNImage$Format;

    .line 196
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_BGRA8888"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 212
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_BGRA8888:Lcom/fotonation/utils/FNImage$Format;

    .line 214
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_RGB888"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 228
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_RGB888:Lcom/fotonation/utils/FNImage$Format;

    .line 230
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_BGR888"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 244
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_BGR888:Lcom/fotonation/utils/FNImage$Format;

    .line 246
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_RGB565LE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 281
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_RGB565LE:Lcom/fotonation/utils/FNImage$Format;

    .line 283
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_BGR565LE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 318
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_BGR565LE:Lcom/fotonation/utils/FNImage$Format;

    .line 320
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_RGB565BE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 324
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_RGB565BE:Lcom/fotonation/utils/FNImage$Format;

    .line 326
    new-instance v0, Lcom/fotonation/utils/FNImage$Format;

    const-string/jumbo v1, "IMG_FORMAT_BGR565BE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/FNImage$Format;-><init>(Ljava/lang/String;I)V

    .line 330
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_BGR565BE:Lcom/fotonation/utils/FNImage$Format;

    .line 14
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/fotonation/utils/FNImage$Format;

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_UNKNOWN:Lcom/fotonation/utils/FNImage$Format;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_GRAY8:Lcom/fotonation/utils/FNImage$Format;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV420P:Lcom/fotonation/utils/FNImage$Format;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YVU420P:Lcom/fotonation/utils/FNImage$Format;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV420SP:Lcom/fotonation/utils/FNImage$Format;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YVU420SP:Lcom/fotonation/utils/FNImage$Format;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV422P:Lcom/fotonation/utils/FNImage$Format;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV422SP:Lcom/fotonation/utils/FNImage$Format;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUYV422:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YVYU422:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_UYVY422:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV444:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_AYUV444:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_ARGB8888:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_RGBA8888:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_BGRA8888:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_RGB888:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_BGR888:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_RGB565LE:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_BGR565LE:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_RGB565BE:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_BGR565BE:Lcom/fotonation/utils/FNImage$Format;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->$VALUES:[Lcom/fotonation/utils/FNImage$Format;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic bud()[I
    .registers 3

    sget-object v0, Lcom/fotonation/utils/FNImage$Format;->bcH:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/fotonation/utils/FNImage$Format;->bcH:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/fotonation/utils/FNImage$Format;->values()[Lcom/fotonation/utils/FNImage$Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_ARGB8888:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_11a

    :goto_17
    :try_start_17
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_AYUV444:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_117

    :goto_20
    :try_start_20
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_BGR565BE:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_114

    :goto_29
    :try_start_29
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_BGR565LE:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_111

    :goto_32
    :try_start_32
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_BGR888:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_10e

    :goto_3b
    :try_start_3b
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_BGRA8888:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_10b

    :goto_44
    :try_start_44
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_GRAY8:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_108

    :goto_4d
    :try_start_4d
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_RGB565BE:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_105

    :goto_57
    :try_start_57
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_RGB565LE:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_61} :catch_102

    :goto_61
    :try_start_61
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_RGB888:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_ff

    :goto_6b
    :try_start_6b
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_RGBA8888:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_fc

    :goto_75
    :try_start_75
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_UNKNOWN:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_fa

    :goto_7f
    :try_start_7f
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_UYVY422:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_f8

    :goto_89
    :try_start_89
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV420P:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_f6

    :goto_93
    :try_start_93
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV420SP:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_f4

    :goto_9d
    :try_start_9d
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV422P:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_f2

    :goto_a7
    :try_start_a7
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV422SP:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_f0

    :goto_b1
    :try_start_b1
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUV444:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_ee

    :goto_bb
    :try_start_bb
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YUYV422:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_ec

    :goto_c5
    :try_start_c5
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YVU420P:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_ea

    :goto_cf
    :try_start_cf
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YVU420SP:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_e8

    :goto_d9
    :try_start_d9
    sget-object v1, Lcom/fotonation/utils/FNImage$Format;->IMG_FORMAT_YVYU422:Lcom/fotonation/utils/FNImage$Format;

    invoke-virtual {v1}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_e6

    :goto_e3
    sput-object v0, Lcom/fotonation/utils/FNImage$Format;->bcH:[I

    return-object v0

    :catch_e6
    move-exception v1

    goto :goto_e3

    :catch_e8
    move-exception v1

    goto :goto_d9

    :catch_ea
    move-exception v1

    goto :goto_cf

    :catch_ec
    move-exception v1

    goto :goto_c5

    :catch_ee
    move-exception v1

    goto :goto_bb

    :catch_f0
    move-exception v1

    goto :goto_b1

    :catch_f2
    move-exception v1

    goto :goto_a7

    :catch_f4
    move-exception v1

    goto :goto_9d

    :catch_f6
    move-exception v1

    goto :goto_93

    :catch_f8
    move-exception v1

    goto :goto_89

    :catch_fa
    move-exception v1

    goto :goto_7f

    :catch_fc
    move-exception v1

    goto/16 :goto_75

    :catch_ff
    move-exception v1

    goto/16 :goto_6b

    :catch_102
    move-exception v1

    goto/16 :goto_61

    :catch_105
    move-exception v1

    goto/16 :goto_57

    :catch_108
    move-exception v1

    goto/16 :goto_4d

    :catch_10b
    move-exception v1

    goto/16 :goto_44

    :catch_10e
    move-exception v1

    goto/16 :goto_3b

    :catch_111
    move-exception v1

    goto/16 :goto_32

    :catch_114
    move-exception v1

    goto/16 :goto_29

    :catch_117
    move-exception v1

    goto/16 :goto_20

    :catch_11a
    move-exception v1

    goto/16 :goto_17
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fotonation/utils/FNImage$Format;
    .registers 2

    .prologue
    .line 14
    const-class v0, Lcom/fotonation/utils/FNImage$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fotonation/utils/FNImage$Format;

    return-object v0
.end method

.method public static values()[Lcom/fotonation/utils/FNImage$Format;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/fotonation/utils/FNImage$Format;->$VALUES:[Lcom/fotonation/utils/FNImage$Format;

    return-object v0
.end method


# virtual methods
.method public GetBufferSize(II)I
    .registers 5

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fotonation/utils/FNImage$Format;->GetPlaneSize(III)I

    move-result v0

    .line 466
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/fotonation/utils/FNImage$Format;->GetPlaneSize(III)I

    move-result v1

    .line 465
    add-int/2addr v0, v1

    .line 467
    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v1}, Lcom/fotonation/utils/FNImage$Format;->GetPlaneSize(III)I

    move-result v1

    .line 465
    add-int/2addr v0, v1

    return v0
.end method

.method public GetLineSize(II)I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 343
    packed-switch p2, :pswitch_data_64

    .line 417
    return v2

    .line 345
    :pswitch_5
    invoke-static {}, Lcom/fotonation/utils/FNImage$Format;->bud()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    .line 381
    return v2

    .line 353
    :pswitch_13
    add-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, -0x2

    return v0

    .line 358
    :pswitch_18
    add-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, -0x2

    mul-int/lit8 v0, v0, 0x2

    return v0

    .line 364
    :pswitch_1f
    mul-int/lit8 v0, p1, 0x4

    return v0

    .line 369
    :pswitch_22
    mul-int/lit8 v0, p1, 0x3

    return v0

    .line 375
    :pswitch_25
    mul-int/lit8 v0, p1, 0x2

    return v0

    .line 378
    :pswitch_28
    return p1

    .line 384
    :pswitch_29
    invoke-static {}, Lcom/fotonation/utils/FNImage$Format;->bud()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9c

    .line 401
    :pswitch_36
    return v2

    .line 388
    :pswitch_37
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v0, v0, 0x1

    return v0

    .line 392
    :pswitch_3c
    add-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, -0x2

    return v0

    .line 395
    :pswitch_41
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v0, v0, 0x1

    return v0

    .line 398
    :pswitch_46
    add-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, -0x2

    return v0

    .line 404
    :pswitch_4b
    invoke-static {}, Lcom/fotonation/utils/FNImage$Format;->bud()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_b0

    .line 414
    return v2

    .line 408
    :sswitch_59
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v0, v0, 0x1

    return v0

    .line 411
    :sswitch_5e
    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v0, v0, 0x1

    return v0

    .line 343
    nop

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_5
        :pswitch_29
        :pswitch_4b
    .end packed-switch

    .line 345
    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_25
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_28
        :pswitch_25
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_18
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_22
        :pswitch_18
        :pswitch_13
        :pswitch_13
        :pswitch_18
    .end packed-switch

    .line 384
    :pswitch_data_9c
    .packed-switch 0xd
        :pswitch_37
        :pswitch_3c
        :pswitch_41
        :pswitch_46
        :pswitch_36
        :pswitch_36
        :pswitch_37
        :pswitch_3c
    .end packed-switch

    .line 404
    :sswitch_data_b0
    .sparse-switch
        0xd -> :sswitch_59
        0xf -> :sswitch_5e
        0x13 -> :sswitch_59
    .end sparse-switch
.end method

.method public GetPlaneSize(III)I
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 434
    invoke-static {}, Lcom/fotonation/utils/FNImage$Format;->bud()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/fotonation/utils/FNImage$Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 450
    :pswitch_e
    invoke-virtual {p0, p1, p3}, Lcom/fotonation/utils/FNImage$Format;->GetLineSize(II)I

    move-result v0

    mul-int/2addr v0, p2

    return v0

    .line 440
    :pswitch_14
    if-nez p3, :cond_20

    .line 441
    invoke-virtual {p0, p1, v2}, Lcom/fotonation/utils/FNImage$Format;->GetLineSize(II)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    and-int/lit8 v1, v1, -0x2

    mul-int/2addr v0, v1

    return v0

    .line 443
    :cond_20
    invoke-virtual {p0, p1, p3}, Lcom/fotonation/utils/FNImage$Format;->GetLineSize(II)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    shr-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0

    .line 447
    :pswitch_2a
    invoke-virtual {p0, p1, p3}, Lcom/fotonation/utils/FNImage$Format;->GetLineSize(II)I

    move-result v0

    mul-int/2addr v0, p2

    return v0

    .line 434
    :pswitch_data_30
    .packed-switch 0xd
        :pswitch_14
        :pswitch_14
        :pswitch_2a
        :pswitch_2a
        :pswitch_e
        :pswitch_e
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method
