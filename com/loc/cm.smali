.class public Lcom/loc/cm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bkK:F

.field private static c:I

.field private static d:I


# instance fields
.field private bkJ:Lcom/loc/at;

.field protected bkL:Lcom/loc/R;

.field protected bkM:Lcom/loc/aW;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    sput v0, Lcom/loc/cm;->c:I

    const/16 v0, 0x64

    sput v0, Lcom/loc/cm;->d:I

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/loc/cm;->bkK:F

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Lcom/loc/at;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loc/R;

    invoke-direct {v0, p0}, Lcom/loc/R;-><init>(Lcom/loc/cm;)V

    iput-object v0, p0, Lcom/loc/cm;->bkL:Lcom/loc/R;

    new-instance v0, Lcom/loc/aW;

    invoke-direct {v0, p0}, Lcom/loc/aW;-><init>(Lcom/loc/cm;)V

    iput-object v0, p0, Lcom/loc/cm;->bkM:Lcom/loc/aW;

    iput-object p1, p0, Lcom/loc/cm;->bkJ:Lcom/loc/at;

    return-void
.end method

.method protected static a(I)V
    .registers 1

    sput p0, Lcom/loc/cm;->c:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method protected static bFO(I)V
    .registers 1

    sput p0, Lcom/loc/cm;->d:I

    return-void
.end method

.method private static bFQ(Ljava/util/List;Ljava/util/List;F)Z
    .registers 13

    const/4 v9, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_5

    :cond_4
    return v3

    :cond_5
    if-eqz p1, :cond_4

    if-nez p0, :cond_a

    :cond_9
    return v3

    :cond_a
    if-eqz p1, :cond_9

    :try_start_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int v0, v5, v6

    int-to-float v7, v0

    if-eqz v5, :cond_1c

    :cond_19
    if-nez v5, :cond_1f

    :cond_1b
    return v3

    :cond_1c
    if-nez v6, :cond_19

    return v9

    :cond_1f
    if-eqz v6, :cond_1b

    move v4, v3

    move v1, v3

    :goto_23
    if-lt v4, v5, :cond_2f

    mul-int/lit8 v0, v1, 0x2

    int-to-float v0, v0

    mul-float v1, v7, p2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_61

    return v9

    :cond_2f
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v8, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v8, :cond_3c

    move v2, v3

    :goto_3a
    if-lt v2, v6, :cond_42

    :cond_3c
    move v0, v1

    :goto_3d
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_23

    :cond_42
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/y;

    iget-object v0, v0, Lcom/loc/y;->a:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_4d} :catch_57

    move-result v0

    if-nez v0, :cond_54

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3a

    :cond_54
    add-int/lit8 v0, v1, 0x1

    goto :goto_3d

    :catch_57
    move-exception v0

    const-string/jumbo v1, "CollectorStrategy"

    const-string/jumbo v2, "isSameRate"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    return v3
.end method


# virtual methods
.method protected bFM(II)V
    .registers 3

    return-void
.end method

.method protected bFN(Landroid/location/Location;)Z
    .registers 8

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/loc/cm;->bkJ:Lcom/loc/at;

    if-eqz v1, :cond_16

    const-string/jumbo v1, "compare cell...."

    invoke-direct {p0, v1}, Lcom/loc/cm;->a(Ljava/lang/String;)V

    :try_start_d
    iget-object v1, p0, Lcom/loc/cm;->bkJ:Lcom/loc/at;

    invoke-virtual {v1}, Lcom/loc/at;->h()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_17

    :cond_15
    return v2

    :cond_16
    return v2

    :cond_17
    if-eqz p1, :cond_15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cell.list.size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/loc/cm;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_3f

    move v1, v2

    :goto_3c
    if-nez v1, :cond_b1

    :goto_3e
    return v1

    :cond_3f
    new-instance v3, Lcom/loc/aj;

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;

    invoke-direct {v3, v0}, Lcom/loc/aj;-><init>(Landroid/telephony/CellLocation;)V

    iget-object v0, p0, Lcom/loc/cm;->bkM:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->bgw:Landroid/location/Location;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/loc/cm;->bkM:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->bgw:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    sget v1, Lcom/loc/cm;->d:I
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_5b} :catch_b6

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_87

    move v1, v4

    :goto_61
    if-nez v1, :cond_89

    :goto_63
    if-eqz v1, :cond_9b

    :cond_65
    :goto_65
    :try_start_65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "collect cell?: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/cm;->a(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_7c} :catch_90

    move-object v0, v3

    goto :goto_3c

    :cond_7e
    :try_start_7e
    const-string/jumbo v0, "first cell causes cell collect"

    invoke-direct {p0, v0}, Lcom/loc/cm;->a(Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_84} :catch_b6

    move-object v0, v3

    move v1, v4

    goto :goto_3c

    :cond_87
    move v1, v2

    goto :goto_61

    :cond_89
    :try_start_89
    const-string/jumbo v0, "distance causes cell collect"

    invoke-direct {p0, v0}, Lcom/loc/cm;->a(Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_8f} :catch_90

    goto :goto_63

    :catch_90
    move-exception v0

    :goto_91
    const-string/jumbo v2, "CollectorStrategy"

    const-string/jumbo v3, "collectCell"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_9b
    :try_start_9b
    iget-object v0, p0, Lcom/loc/cm;->bkM:Lcom/loc/aW;

    iget-object v0, v0, Lcom/loc/aW;->bgv:Lcom/loc/aj;

    invoke-virtual {v0, v3}, Lcom/loc/aj;->byk(Lcom/loc/aj;)Z

    move-result v0

    if-eqz v0, :cond_af

    move v1, v2

    :goto_a6
    if-eqz v1, :cond_65

    const-string/jumbo v0, "different cells causes cell collect"

    invoke-direct {p0, v0}, Lcom/loc/cm;->a(Ljava/lang/String;)V

    goto :goto_65

    :cond_af
    move v1, v4

    goto :goto_a6

    :cond_b1
    iget-object v2, p0, Lcom/loc/cm;->bkM:Lcom/loc/aW;

    iput-object v0, v2, Lcom/loc/aW;->bgv:Lcom/loc/aj;
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_b5} :catch_90

    goto :goto_3e

    :catch_b6
    move-exception v0

    move v1, v2

    goto :goto_91
.end method

.method protected bFP(Landroid/location/Location;)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/loc/cm;->bkJ:Lcom/loc/at;

    if-eqz v1, :cond_1a

    :try_start_7
    iget-object v1, p0, Lcom/loc/cm;->bkJ:Lcom/loc/at;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/loc/at;->a(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1b

    move-object v3, v0

    move v1, v2

    :goto_17
    if-nez v1, :cond_84

    :cond_19
    :goto_19
    return v1

    :cond_1a
    return v2

    :cond_1b
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/loc/cm;->bkL:Lcom/loc/R;

    iget-object v1, v1, Lcom/loc/R;->bel:Landroid/location/Location;

    if-eqz v1, :cond_2d

    if-nez v0, :cond_36

    :cond_2a
    move-object v3, v0

    move v1, v2

    goto :goto_17

    :cond_2d
    const-string/jumbo v1, "first wifi causes wifi collect"

    invoke-direct {p0, v1}, Lcom/loc/cm;->a(Ljava/lang/String;)V

    move v1, v3

    move-object v3, v0

    goto :goto_17

    :cond_36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2a

    const-string/jumbo v1, "current info is valid"

    invoke-direct {p0, v1}, Lcom/loc/cm;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/cm;->bkL:Lcom/loc/R;

    iget-object v1, v1, Lcom/loc/R;->bel:Landroid/location/Location;

    invoke-virtual {p1, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    sget v4, Lcom/loc/cm;->c:I
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4c} :catch_a8

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_58

    move v1, v3

    :goto_52
    if-nez v1, :cond_5a

    :goto_54
    if-eqz v1, :cond_6c

    :cond_56
    :goto_56
    move-object v3, v0

    goto :goto_17

    :cond_58
    move v1, v2

    goto :goto_52

    :cond_5a
    :try_start_5a
    const-string/jumbo v4, "distance causes wifi collect"

    invoke-direct {p0, v4}, Lcom/loc/cm;->a(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_60} :catch_61

    goto :goto_54

    :catch_61
    move-exception v0

    :goto_62
    const-string/jumbo v2, "CollectorStrategy"

    const-string/jumbo v3, "collectWifi"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_6c
    :try_start_6c
    iget-object v4, p0, Lcom/loc/cm;->bkL:Lcom/loc/R;

    iget-object v4, v4, Lcom/loc/R;->a:Ljava/util/List;

    sget v5, Lcom/loc/cm;->bkK:F

    invoke-static {v0, v4, v5}, Lcom/loc/cm;->bFQ(Ljava/util/List;Ljava/util/List;F)Z

    move-result v1

    if-eqz v1, :cond_82

    move v1, v2

    :goto_79
    if-eqz v1, :cond_56

    const-string/jumbo v3, "different wifis causes wifi collect"

    invoke-direct {p0, v3}, Lcom/loc/cm;->a(Ljava/lang/String;)V

    goto :goto_56

    :cond_82
    move v1, v3

    goto :goto_79

    :cond_84
    iget-object v0, p0, Lcom/loc/cm;->bkL:Lcom/loc/R;

    iget-object v0, v0, Lcom/loc/R;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_8f
    if-ge v2, v4, :cond_19

    iget-object v0, p0, Lcom/loc/cm;->bkL:Lcom/loc/R;

    iget-object v5, v0, Lcom/loc/R;->a:Ljava/util/List;

    new-instance v6, Lcom/loc/y;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/loc/y;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_a5} :catch_61

    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    :catch_a8
    move-exception v0

    move v1, v2

    goto :goto_62
.end method
