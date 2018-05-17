.class public Lcom/android/common/appService/B;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lR()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 108
    const-string/jumbo v0, "nubia.feature.CCT"

    invoke-static {v0}, Lcom/android/common/appService/B;->lQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/appService/B;->lY(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static lS()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 120
    const-string/jumbo v0, "nubia.feature.MAF"

    invoke-static {v0}, Lcom/android/common/appService/B;->lQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/appService/B;->lY(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static lT()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 128
    const-string/jumbo v0, "nubia.feature.NZSL_Slowshutter"

    invoke-static {v0}, Lcom/android/common/appService/B;->lQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/appService/B;->lY(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static lU()Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;
    .registers 1

    .prologue
    .line 112
    const-string/jumbo v0, "nubia.feature.ROI_WB"

    invoke-static {v0}, Lcom/android/common/appService/B;->lQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/appService/B;->lX(Ljava/lang/String;)Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    move-result-object v0

    return-object v0
.end method

.method public static lV(Ljava/util/ArrayList;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 148
    if-nez p0, :cond_4

    .line 149
    return v1

    .line 152
    :cond_4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/C;

    .line 153
    invoke-virtual {v0}, Lcom/android/common/appService/C;->ma()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 154
    invoke-virtual {v0}, Lcom/android/common/appService/C;->mb()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 153
    if-eqz v0, :cond_8

    .line 155
    :cond_2e
    const/4 v0, 0x0

    .line 159
    :goto_2f
    return v0

    :cond_30
    move v0, v1

    goto :goto_2f
.end method

.method public static lW(Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;)Z
    .registers 2

    .prologue
    .line 164
    sget-object v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;->ja:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    if-eq p0, v0, :cond_8

    sget-object v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;->iZ:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    if-ne p0, v0, :cond_a

    .line 165
    :cond_8
    const/4 v0, 0x1

    return v0

    .line 167
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method private static lX(Ljava/lang/String;)Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;
    .registers 3

    .prologue
    .line 82
    sget-object v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;->ja:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    .line 83
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b

    .line 92
    :cond_a
    :goto_a
    return-object v0

    .line 86
    :cond_b
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    .line 87
    sget-object v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;->jb:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    goto :goto_a

    .line 89
    :cond_14
    sget-object v0, Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;->iZ:Lcom/android/common/appService/NubiaHardwareFeature$JudgeState;

    goto :goto_a
.end method

.method private static lY(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 59
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_b

    .line 60
    :cond_a
    return-object v1

    .line 63
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 65
    const-string/jumbo v0, ","

    invoke-static {p0, v0}, Lcom/android/common/appService/B;->lZ(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    const-string/jumbo v1, "~"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 68
    const-string/jumbo v1, "~"

    invoke-static {v0, v1}, Lcom/android/common/appService/B;->lZ(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 69
    new-instance v4, Lcom/android/common/appService/C;

    .line 70
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-direct {v4, v0, v1}, Lcom/android/common/appService/C;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 73
    :cond_4d
    new-instance v1, Lcom/android/common/appService/C;

    invoke-direct {v1, v0, v0}, Lcom/android/common/appService/C;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 78
    :cond_56
    return-object v2
.end method

.method private static lZ(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 47
    if-nez p0, :cond_4

    return-object v0

    .line 50
    :cond_4
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    :goto_e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 53
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 55
    :cond_1c
    return-object v1
.end method
