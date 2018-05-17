.class Lcom/android/videomaker/b/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic aJV:Lcom/android/videomaker/b/b;


# direct methods
.method private constructor <init>(Lcom/android/videomaker/b/b;)V
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/videomaker/b/e;->aJV:Lcom/android/videomaker/b/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/videomaker/b/b;Lcom/android/videomaker/b/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/videomaker/b/e;-><init>(Lcom/android/videomaker/b/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/android/videomaker/b/e;->aJV:Lcom/android/videomaker/b/b;

    invoke-virtual {v0}, Lcom/android/videomaker/b/b;->aYO()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 249
    :goto_5
    return-void

    .line 252
    :catch_6
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method
