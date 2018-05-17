.class Lcom/android/common/m/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic abn:Lcom/android/common/m/c;


# direct methods
.method private constructor <init>(Lcom/android/common/m/c;)V
    .registers 2

    .prologue
    .line 304
    iput-object p1, p0, Lcom/android/common/m/g;->abn:Lcom/android/common/m/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/m/c;Lcom/android/common/m/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/m/g;-><init>(Lcom/android/common/m/c;)V

    return-void
.end method


# virtual methods
.method protected varargs ahM([Lcom/android/common/m/a;)Ljava/lang/Void;
    .registers 6

    .prologue
    .line 307
    array-length v1, p1

    .line 308
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_12

    .line 309
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/android/common/m/g;->abn:Lcom/android/common/m/c;

    invoke-static {v3}, Lcom/android/common/m/c;->ahC(Lcom/android/common/m/c;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/common/m/a;->ahg(Ljava/io/File;)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 311
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 306
    check-cast p1, [Lcom/android/common/m/a;

    invoke-virtual {p0, p1}, Lcom/android/common/m/g;->ahM([Lcom/android/common/m/a;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
