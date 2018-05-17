.class public Lcom/android/common/ui/W;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Dc(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 4

    .prologue
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/common/ui/W;->De(Landroid/content/Context;Ljava/lang/Object;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method private static Dd(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 90
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 97
    :cond_9
    :goto_9
    return-object v0

    .line 91
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_9

    .line 93
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 94
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_9
.end method

.method private static De(Landroid/content/Context;Ljava/lang/Object;I)Landroid/widget/Toast;
    .registers 8

    .prologue
    .line 35
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 37
    const-string/jumbo v0, "layout_inflater"

    .line 36
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 38
    const v2, 0x7f040051

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 39
    const v0, 0x7f10013c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_3e

    .line 41
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 45
    :goto_2c
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 46
    const/16 v0, 0x11

    const/4 v2, 0x0

    const/16 v3, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 47
    invoke-virtual {v1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 48
    invoke-static {v1}, Lcom/android/common/ui/W;->Df(Landroid/widget/Toast;)V

    .line 49
    return-object v1

    .line 43
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method

.method private static Df(Landroid/widget/Toast;)V
    .registers 3

    .prologue
    .line 72
    :try_start_0
    const-string/jumbo v0, "mTN"

    invoke-static {p0, v0}, Lcom/android/common/ui/W;->Dd(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1d

    .line 74
    const-string/jumbo v1, "mParams"

    invoke-static {v0, v1}, Lcom/android/common/ui/W;->Dd(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_1d

    .line 76
    instance-of v1, v0, Landroid/view/WindowManager$LayoutParams;

    .line 75
    if-eqz v1, :cond_1d

    .line 77
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 78
    const v1, 0x7f0e0002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 70
    :cond_1d
    :goto_1d
    return-void

    .line 81
    :catch_1e
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method
