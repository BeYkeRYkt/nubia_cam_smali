.class public Lu/aly/J;
.super Lu/aly/cO;
.source "SourceFile"


# static fields
.field private static final bvo:Ljava/util/regex/Pattern;


# instance fields
.field private bvp:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-string/jumbo v0, "UTDID\">([^<]+)"

    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lu/aly/J;->bvo:Ljava/util/regex/Pattern;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const-string/jumbo v0, "utdid"

    .line 22
    invoke-direct {p0, v0}, Lu/aly/cO;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lu/aly/J;->bvp:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 51
    if-eqz p1, :cond_10

    .line 55
    sget-object v0, Lu/aly/J;->bvo:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_11

    .line 61
    return-object v2

    .line 52
    :cond_10
    return-object v2

    :cond_11
    const/4 v1, 0x1

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Lu/aly/J;->h()Ljava/io/File;

    move-result-object v0

    .line 33
    if-nez v0, :cond_8

    .line 34
    :cond_7
    return-object v2

    .line 33
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 37
    :try_start_e
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_24

    .line 39
    :try_start_13
    invoke-static {v1}, Lu/aly/bu;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/J;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1f

    move-result-object v0

    .line 41
    :try_start_1b
    invoke-static {v1}, Lu/aly/bu;->bVZ(Ljava/io/InputStream;)V

    return-object v0

    :catchall_1f
    move-exception v0

    invoke-static {v1}, Lu/aly/bu;->bVZ(Ljava/io/InputStream;)V

    throw v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    return-object v2
.end method

.method private h()Ljava/io/File;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 65
    iget-object v0, p0, Lu/aly/J;->bvp:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lu/aly/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 69
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 77
    :goto_19
    return-object v3

    .line 66
    :cond_1a
    return-object v3

    .line 70
    :cond_1b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 72
    :try_start_1f
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ".UTSystemConfig/Global/Alvin2.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2b} :catch_2c

    return-object v1

    :catch_2c
    move-exception v0

    goto :goto_19
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lu/aly/J;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
