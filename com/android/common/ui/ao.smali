.class public Lcom/android/common/ui/ao;
.super Lcom/android/common/ui/d;
.source "SourceFile"


# instance fields
.field private CG:Ljava/lang/String;

.field private CH:Ljava/lang/String;

.field private CI:Landroid/graphics/drawable/Drawable;

.field private CJ:I

.field private CK:Ljava/lang/String;

.field private CL:I

.field private CM:Lcom/android/common/ui/ao;

.field private CN:I

.field private CO:I


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 35
    invoke-direct {p0, p1}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;)V

    .line 30
    iput v2, p0, Lcom/android/common/ui/ao;->CN:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/ao;->CL:I

    .line 130
    iput-object v1, p0, Lcom/android/common/ui/ao;->CM:Lcom/android/common/ui/ao;

    .line 362
    iput-object v1, p0, Lcom/android/common/ui/ao;->CI:Landroid/graphics/drawable/Drawable;

    .line 363
    const v0, 0x7f02012b

    iput v0, p0, Lcom/android/common/ui/ao;->CJ:I

    .line 36
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    const v1, 0x7f020128

    iput v1, p0, Lcom/android/common/ui/ao;->pd:I

    .line 38
    const v1, 0x7f02012a

    iput v1, p0, Lcom/android/common/ui/ao;->pg:I

    .line 39
    const v1, 0x7f020129

    iput v1, p0, Lcom/android/common/ui/ao;->pf:I

    .line 40
    invoke-direct {p0, v0, v2}, Lcom/android/common/ui/ao;->Gw(Landroid/content/res/Resources;I)V

    .line 41
    iget-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/common/ui/ao;->CO:I

    .line 42
    invoke-direct {p0}, Lcom/android/common/ui/ao;->GB()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/ao;->Gz(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/ao;->oU:I

    .line 43
    invoke-direct {p0}, Lcom/android/common/ui/ao;->GC()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/common/appService/W;I)V
    .registers 4

    .prologue
    .line 88
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/common/ui/ao;-><init>(Lcom/android/common/appService/W;II)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/android/common/appService/W;II)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;)V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/ui/ao;->CN:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/ao;->CL:I

    .line 130
    iput-object v1, p0, Lcom/android/common/ui/ao;->CM:Lcom/android/common/ui/ao;

    .line 362
    iput-object v1, p0, Lcom/android/common/ui/ao;->CI:Landroid/graphics/drawable/Drawable;

    .line 363
    const v0, 0x7f02012b

    iput v0, p0, Lcom/android/common/ui/ao;->CJ:I

    .line 71
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 72
    const v1, 0x7f0a02c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/ao;->pj:Ljava/lang/String;

    .line 73
    const v1, 0x7f020128

    iput v1, p0, Lcom/android/common/ui/ao;->pd:I

    .line 74
    const v1, 0x7f02012a

    iput v1, p0, Lcom/android/common/ui/ao;->pg:I

    .line 75
    const v1, 0x7f020129

    iput v1, p0, Lcom/android/common/ui/ao;->pf:I

    .line 76
    invoke-direct {p0, v0, p2}, Lcom/android/common/ui/ao;->Gw(Landroid/content/res/Resources;I)V

    .line 77
    iget-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/common/ui/ao;->CO:I

    .line 78
    invoke-direct {p0}, Lcom/android/common/ui/ao;->GC()V

    .line 79
    const/4 v0, 0x1

    if-ne p2, v0, :cond_65

    iget-object v0, p0, Lcom/android/common/ui/ao;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_65

    .line 80
    invoke-direct {p0}, Lcom/android/common/ui/ao;->GB()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    const-string/jumbo v2, "30"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/ao;->Gz(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/ao;->oU:I

    .line 81
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/common/ui/ao;->oP:I

    .line 85
    :goto_62
    iput p3, p0, Lcom/android/common/ui/ao;->CL:I

    .line 69
    return-void

    .line 83
    :cond_65
    invoke-direct {p0}, Lcom/android/common/ui/ao;->GB()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/ao;->Gz(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/ao;->oU:I

    goto :goto_62
.end method

.method public constructor <init>(Lcom/android/common/appService/W;III)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x1e

    .line 46
    invoke-direct {p0, p1}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;)V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/ui/ao;->CN:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/ao;->CL:I

    .line 130
    iput-object v1, p0, Lcom/android/common/ui/ao;->CM:Lcom/android/common/ui/ao;

    .line 362
    iput-object v1, p0, Lcom/android/common/ui/ao;->CI:Landroid/graphics/drawable/Drawable;

    .line 363
    const v0, 0x7f02012b

    iput v0, p0, Lcom/android/common/ui/ao;->CJ:I

    .line 47
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 48
    const v1, 0x7f020128

    iput v1, p0, Lcom/android/common/ui/ao;->pd:I

    .line 49
    const v1, 0x7f02012a

    iput v1, p0, Lcom/android/common/ui/ao;->pg:I

    .line 50
    const v1, 0x7f020129

    iput v1, p0, Lcom/android/common/ui/ao;->pf:I

    .line 51
    const v1, 0x7f0a03b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/ao;->CH:Ljava/lang/String;

    .line 52
    const v1, 0x7f0a02c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ao;->pj:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/android/common/ui/ao;->CN:I

    .line 54
    invoke-direct {p0, p2, p3, p4}, Lcom/android/common/ui/ao;->Gv(III)V

    .line 55
    iget-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/common/ui/ao;->CO:I

    .line 56
    invoke-direct {p0}, Lcom/android/common/ui/ao;->GC()V

    .line 57
    const/4 v0, 0x1

    if-ne p2, v0, :cond_94

    iget-object v0, p0, Lcom/android/common/ui/ao;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jH:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_94

    .line 58
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acs()I

    move-result v0

    if-ge v0, v3, :cond_7e

    .line 59
    invoke-direct {p0}, Lcom/android/common/ui/ao;->GB()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    const-string/jumbo v2, "10"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/ao;->Gz(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/ao;->oU:I

    .line 60
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/common/ui/ao;->oP:I

    .line 45
    :goto_7d
    return-void

    .line 62
    :cond_7e
    invoke-direct {p0}, Lcom/android/common/ui/ao;->GB()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    const-string/jumbo v2, "30"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/ao;->Gz(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/ao;->oU:I

    .line 63
    iput v3, p0, Lcom/android/common/ui/ao;->oP:I

    goto :goto_7d

    .line 66
    :cond_94
    invoke-direct {p0}, Lcom/android/common/ui/ao;->GB()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/ao;->Gz(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/ao;->oU:I

    goto :goto_7d
.end method

.method public constructor <init>(Lcom/android/common/appService/W;I[Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/common/ui/d;-><init>(Lcom/android/common/appService/W;)V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/common/ui/ao;->CN:I

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/ao;->CL:I

    .line 130
    iput-object v1, p0, Lcom/android/common/ui/ao;->CM:Lcom/android/common/ui/ao;

    .line 362
    iput-object v1, p0, Lcom/android/common/ui/ao;->CI:Landroid/graphics/drawable/Drawable;

    .line 363
    const v0, 0x7f02012b

    iput v0, p0, Lcom/android/common/ui/ao;->CJ:I

    .line 92
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 93
    const v1, 0x7f020128

    iput v1, p0, Lcom/android/common/ui/ao;->pd:I

    .line 94
    const v1, 0x7f02012a

    iput v1, p0, Lcom/android/common/ui/ao;->pg:I

    .line 95
    const v1, 0x7f020129

    iput v1, p0, Lcom/android/common/ui/ao;->pf:I

    .line 96
    const v1, 0x7f0a03b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/ao;->CH:Ljava/lang/String;

    .line 97
    iput p2, p0, Lcom/android/common/ui/ao;->CN:I

    .line 98
    const-string/jumbo v1, "pref_slow_shutter_sec_key"

    iput-object v1, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    .line 99
    const v1, 0x7f0a02c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ao;->pj:Ljava/lang/String;

    .line 100
    array-length v0, p3

    add-int/lit8 v1, v0, 0x1

    .line 101
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    .line 102
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/common/ui/ao;->CH:Ljava/lang/String;

    aput-object v2, v0, v3

    .line 104
    iget-object v0, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v0, v3

    .line 105
    const/4 v0, 0x1

    :goto_5d
    if-ge v0, v1, :cond_72

    .line 106
    iget-object v2, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p3, v3

    aput-object v3, v2, v0

    .line 107
    iget-object v2, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    aget-object v3, p3, v3

    aput-object v3, v2, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 109
    :cond_72
    iget-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/ao;->uX([Ljava/lang/String;I)V

    .line 110
    iget-object v0, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/ao;->uX([Ljava/lang/String;I)V

    .line 111
    invoke-direct {p0}, Lcom/android/common/ui/ao;->GC()V

    .line 112
    iget-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/android/common/ui/ao;->CO:I

    .line 113
    invoke-direct {p0}, Lcom/android/common/ui/ao;->GB()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/common/ui/ao;->Gz(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/ao;->oU:I

    .line 90
    return-void
.end method

.method private GA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const v3, 0x7f0a03ed

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 217
    const-string/jumbo v0, "0"

    invoke-static {p1, v0}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/common/ui/ao;->CL:I

    if-ge v0, v1, :cond_3b

    .line 218
    invoke-virtual {p0, v3}, Lcom/android/common/ui/ao;->uz(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 219
    const-string/jumbo v2, "%1$02d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/android/common/ui/ao;->CL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 218
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 221
    :cond_3b
    const-string/jumbo v0, "0"

    invoke-static {p1, v0}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string/jumbo v0, "0"

    invoke-static {p2, v0}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 222
    iget-object v0, p0, Lcom/android/common/ui/ao;->CH:Ljava/lang/String;

    return-object v0

    .line 224
    :cond_50
    const-string/jumbo v0, "60"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 225
    const-string/jumbo p2, "00"

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 230
    :goto_62
    invoke-virtual {p0, v3}, Lcom/android/common/ui/ao;->uz(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 231
    const-string/jumbo v3, "%1$02d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    aput-object p2, v2, v6

    .line 230
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 228
    :cond_80
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_62
.end method

.method private GB()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/common/ui/ao;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method private GC()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 117
    sget-boolean v0, Lcom/android/common/ui/ao;->oE:Z

    if-eqz v0, :cond_1d

    .line 118
    iget-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/common/ui/ao;->pn:I

    .line 119
    iput v1, p0, Lcom/android/common/ui/ao;->oH:I

    .line 120
    const-string/jumbo v0, "  +"

    iput-object v0, p0, Lcom/android/common/ui/ao;->CG:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, "-  "

    iput-object v0, p0, Lcom/android/common/ui/ao;->CK:Ljava/lang/String;

    .line 128
    :goto_18
    iget v0, p0, Lcom/android/common/ui/ao;->pn:I

    iput v0, p0, Lcom/android/common/ui/ao;->oP:I

    .line 116
    return-void

    .line 123
    :cond_1d
    iput v1, p0, Lcom/android/common/ui/ao;->pn:I

    .line 124
    iget-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/common/ui/ao;->oH:I

    .line 125
    const-string/jumbo v0, "+  "

    iput-object v0, p0, Lcom/android/common/ui/ao;->CG:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "  -"

    iput-object v0, p0, Lcom/android/common/ui/ao;->CK:Ljava/lang/String;

    goto :goto_18
.end method

.method private Gs(Landroid/content/res/Resources;)V
    .registers 10

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 159
    const-string/jumbo v0, "pref_slow_shutter_sec_key"

    iput-object v0, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    .line 160
    const v0, 0x7f0a02c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ao;->pj:Ljava/lang/String;

    .line 161
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/ao;->CH:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, "1/60000"

    aput-object v1, v0, v4

    const-string/jumbo v1, "1/4000"

    aput-object v1, v0, v5

    const-string/jumbo v1, "1/2000"

    aput-object v1, v0, v6

    const-string/jumbo v1, "1/1000"

    aput-object v1, v0, v7

    .line 162
    const-string/jumbo v1, "1/500"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/250"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/125"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/60"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/30"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/15"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "1/8"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/4"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/2"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "01"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "02"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 161
    iput-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    .line 164
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v0, v3

    const-string/jumbo v1, "1/60000"

    aput-object v1, v0, v4

    const-string/jumbo v1, "1/4000"

    aput-object v1, v0, v5

    const-string/jumbo v1, "1/2000"

    aput-object v1, v0, v6

    const-string/jumbo v1, "1/1000"

    aput-object v1, v0, v7

    .line 165
    const-string/jumbo v1, "1/500"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/250"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/125"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/60"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/30"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/15"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 166
    const-string/jumbo v1, "1/8"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/4"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "1/2"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "01"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "02"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 164
    iput-object v0, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/ao;->uX([Ljava/lang/String;I)V

    .line 168
    iget-object v0, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/ao;->uX([Ljava/lang/String;I)V

    .line 158
    return-void
.end method

.method private Gt(Landroid/content/res/Resources;)V
    .registers 7

    .prologue
    const/16 v4, 0x15

    .line 171
    const-string/jumbo v0, "pref_slow_shutter_min_key"

    iput-object v0, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    .line 172
    const v0, 0x7f0a02c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ao;->pj:Ljava/lang/String;

    .line 173
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    .line 174
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    :goto_19
    if-ge v0, v4, :cond_4e

    .line 176
    iget-object v1, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 177
    iget-object v1, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 179
    :cond_4e
    iget-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/ao;->uX([Ljava/lang/String;I)V

    .line 180
    iget-object v0, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/ao;->uX([Ljava/lang/String;I)V

    .line 170
    return-void
.end method

.method private Gu(Landroid/content/res/Resources;)V
    .registers 7

    .prologue
    const/16 v4, 0x3d

    .line 183
    const-string/jumbo v0, "pref_slow_shutter_sec_key"

    iput-object v0, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    .line 184
    const v0, 0x7f0a02c8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ao;->pj:Ljava/lang/String;

    .line 185
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    .line 186
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    :goto_19
    if-ge v0, v4, :cond_4e

    .line 188
    iget-object v1, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 189
    iget-object v1, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 191
    :cond_4e
    iget-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/ao;->uX([Ljava/lang/String;I)V

    .line 192
    iget-object v0, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/ao;->uX([Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method private Gv(III)V
    .registers 8

    .prologue
    .line 195
    packed-switch p1, :pswitch_data_60

    .line 206
    :goto_3
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    .line 207
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    :goto_c
    if-ge v0, p3, :cond_4d

    .line 209
    iget-object v1, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 210
    iget-object v1, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 198
    :pswitch_41
    const-string/jumbo v0, "pref_slow_shutter_sec_key"

    iput-object v0, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    goto :goto_3

    .line 201
    :pswitch_47
    const-string/jumbo v0, "pref_slow_shutter_min_key"

    iput-object v0, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    goto :goto_3

    .line 212
    :cond_4d
    iput p2, p0, Lcom/android/common/ui/ao;->CL:I

    .line 213
    iget-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/ao;->uX([Ljava/lang/String;I)V

    .line 214
    iget-object v0, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/ao;->uX([Ljava/lang/String;I)V

    .line 194
    return-void

    .line 195
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_47
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method

.method private Gw(Landroid/content/res/Resources;I)V
    .registers 4

    .prologue
    .line 142
    const v0, 0x7f0a03b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ao;->CH:Ljava/lang/String;

    .line 143
    iput p2, p0, Lcom/android/common/ui/ao;->CN:I

    .line 144
    packed-switch p2, :pswitch_data_1c

    .line 141
    :goto_e
    return-void

    .line 146
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/common/ui/ao;->Gs(Landroid/content/res/Resources;)V

    goto :goto_e

    .line 149
    :pswitch_13
    invoke-direct {p0, p1}, Lcom/android/common/ui/ao;->Gu(Landroid/content/res/Resources;)V

    goto :goto_e

    .line 152
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/android/common/ui/ao;->Gt(Landroid/content/res/Resources;)V

    goto :goto_e

    .line 144
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method private Gx(Landroid/graphics/Canvas;F)V
    .registers 8

    .prologue
    const/16 v4, 0x50

    const/4 v3, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    .line 268
    iget-object v0, p0, Lcom/android/common/ui/ao;->CM:Lcom/android/common/ui/ao;

    if-eqz v0, :cond_3f

    .line 269
    iget v0, p0, Lcom/android/common/ui/ao;->oU:I

    iget v1, p0, Lcom/android/common/ui/ao;->pn:I

    if-ne v0, v1, :cond_24

    iget-boolean v0, p0, Lcom/android/common/ui/ao;->oF:Z

    if-eqz v0, :cond_24

    .line 270
    iget-object v0, p0, Lcom/android/common/ui/ao;->ph:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 271
    iget-object v0, p0, Lcom/android/common/ui/ao;->CK:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/common/ui/ao;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 267
    :cond_23
    :goto_23
    return-void

    .line 272
    :cond_24
    iget v0, p0, Lcom/android/common/ui/ao;->oU:I

    iget v1, p0, Lcom/android/common/ui/ao;->pn:I

    if-eq v0, v1, :cond_23

    .line 273
    iget-object v0, p0, Lcom/android/common/ui/ao;->ph:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/common/ui/ao;->oI:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 274
    iget-object v0, p0, Lcom/android/common/ui/ao;->CK:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/common/ui/ao;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_23

    .line 277
    :cond_3f
    iget v0, p0, Lcom/android/common/ui/ao;->oU:I

    iget v1, p0, Lcom/android/common/ui/ao;->pn:I

    if-ne v0, v1, :cond_54

    iget-boolean v0, p0, Lcom/android/common/ui/ao;->oF:Z

    if-eqz v0, :cond_54

    .line 278
    iget-object v0, p0, Lcom/android/common/ui/ao;->CI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 279
    iget-object v0, p0, Lcom/android/common/ui/ao;->CI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_23

    .line 280
    :cond_54
    iget v0, p0, Lcom/android/common/ui/ao;->oU:I

    iget v1, p0, Lcom/android/common/ui/ao;->pn:I

    if-eq v0, v1, :cond_23

    .line 281
    iget-object v0, p0, Lcom/android/common/ui/ao;->CI:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/common/ui/ao;->oI:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 282
    iget-object v0, p0, Lcom/android/common/ui/ao;->CI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_23
.end method

.method private Gy(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v4, 0x0

    .line 287
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 288
    iget-object v1, p0, Lcom/android/common/ui/ao;->oL:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/common/ui/ao;->oM:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 289
    iget-object v0, p0, Lcom/android/common/ui/ao;->oN:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/common/ui/ao;->oI:F

    const/high16 v2, 0x42960000    # 75.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 290
    iget-object v1, p0, Lcom/android/common/ui/ao;->oL:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v0, v0, v6

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v0, v2

    neg-float v2, v0

    .line 291
    iget-object v0, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v0, v0, v6

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/android/common/ui/ao;->oN:Landroid/graphics/Paint;

    move-object v0, p1

    .line 290
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/common/ui/ao;->up(Landroid/graphics/Canvas;)V

    .line 293
    iget-object v0, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcom/android/common/ui/ao;->oO:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    sub-float/2addr v0, v1

    .line 294
    sget v1, Lcom/android/common/ui/ao;->os:I

    int-to-float v1, v1

    .line 293
    sub-float v1, v0, v1

    .line 296
    sget-boolean v0, Lcom/android/common/ui/ao;->oE:Z

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v0, v0, v6

    .line 297
    :goto_4d
    iget-object v2, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v2, v2, v4

    .line 298
    iget-object v3, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v3, v3, v7

    .line 297
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 299
    invoke-direct {p0, p1, v1}, Lcom/android/common/ui/ao;->Gx(Landroid/graphics/Canvas;F)V

    .line 302
    const/high16 v2, -0x40000000    # -2.0f

    mul-float/2addr v0, v2

    .line 303
    iget-object v2, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v2, v2, v4

    .line 304
    iget-object v3, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v3, v3, v7

    .line 303
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 305
    iget v0, p0, Lcom/android/common/ui/ao;->oU:I

    iget v2, p0, Lcom/android/common/ui/ao;->oH:I

    if-ne v0, v2, :cond_8f

    iget-boolean v0, p0, Lcom/android/common/ui/ao;->oF:Z

    if-eqz v0, :cond_8f

    .line 306
    iget-object v0, p0, Lcom/android/common/ui/ao;->ph:Landroid/graphics/Paint;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 307
    iget-object v0, p0, Lcom/android/common/ui/ao;->CG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/common/ui/ao;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 313
    :cond_85
    :goto_85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 286
    return-void

    .line 296
    :cond_89
    iget-object v0, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v0, v0, v6

    neg-float v0, v0

    goto :goto_4d

    .line 308
    :cond_8f
    iget v0, p0, Lcom/android/common/ui/ao;->oU:I

    iget v2, p0, Lcom/android/common/ui/ao;->oH:I

    if-eq v0, v2, :cond_85

    .line 309
    iget-object v0, p0, Lcom/android/common/ui/ao;->ph:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/common/ui/ao;->oI:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 310
    iget-object v0, p0, Lcom/android/common/ui/ao;->CG:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/android/common/ui/ao;->ph:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_85
.end method

.method private Gz(Ljava/lang/String;)I
    .registers 5

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 136
    :goto_2
    iget v2, p0, Lcom/android/common/ui/ao;->CO:I

    if-ge v0, v2, :cond_14

    .line 137
    iget-object v2, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v0

    .line 136
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 139
    :cond_14
    return v1
.end method


# virtual methods
.method public Gq()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Lcom/android/common/ui/ao;->CN:I

    return v0
.end method

.method public Gr(Lcom/android/common/ui/ao;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/common/ui/ao;->CM:Lcom/android/common/ui/ao;

    .line 131
    return-void
.end method

.method public uA()Ljava/lang/String;
    .registers 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/common/ui/ao;->oQ:[Ljava/lang/String;

    iget v1, p0, Lcom/android/common/ui/ao;->oU:I

    aget-object v0, v0, v1

    .line 256
    iget-object v1, p0, Lcom/android/common/ui/ao;->CM:Lcom/android/common/ui/ao;

    if-eqz v1, :cond_31

    .line 257
    iget-object v1, p0, Lcom/android/common/ui/ao;->CM:Lcom/android/common/ui/ao;

    invoke-virtual {v1}, Lcom/android/common/ui/ao;->Gq()I

    move-result v1

    if-nez v1, :cond_1d

    .line 258
    iget-object v1, p0, Lcom/android/common/ui/ao;->CM:Lcom/android/common/ui/ao;

    invoke-virtual {v1}, Lcom/android/common/ui/ao;->uC()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/common/ui/ao;->GA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_1c
    :goto_1c
    return-object v0

    .line 259
    :cond_1d
    iget-object v1, p0, Lcom/android/common/ui/ao;->CM:Lcom/android/common/ui/ao;

    invoke-virtual {v1}, Lcom/android/common/ui/ao;->Gq()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 260
    iget-object v1, p0, Lcom/android/common/ui/ao;->CM:Lcom/android/common/ui/ao;

    invoke-virtual {v1}, Lcom/android/common/ui/ao;->uC()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/ao;->GA(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    .line 262
    :cond_31
    iget v1, p0, Lcom/android/common/ui/ao;->CL:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_1c

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/android/common/ui/ao;->CL:I

    if-ge v1, v2, :cond_1c

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/common/ui/ao;->CL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public uE(FFFF)V
    .registers 13

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 372
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/common/ui/d;->uE(FFFF)V

    .line 373
    iget-object v0, p0, Lcom/android/common/ui/ao;->CI:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v1, v1, v7

    float-to-int v1, v1

    .line 374
    iget-object v2, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v2, v2, v5

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v3, v3, v6

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Lcom/android/common/ui/ao;->ot:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/android/common/ui/ao;->os:I

    sub-int/2addr v2, v3

    .line 375
    iget-object v3, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v3, v3, v7

    float-to-int v3, v3

    sget v4, Lcom/android/common/ui/ao;->ot:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 376
    iget-object v4, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v4, v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v5, v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    sget v5, Lcom/android/common/ui/ao;->os:I

    sub-int/2addr v4, v5

    .line 373
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 377
    sget-boolean v0, Lcom/android/common/ui/ao;->oE:Z

    if-eqz v0, :cond_51

    .line 378
    iget-object v0, p0, Lcom/android/common/ui/ao;->CI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 379
    sget v1, Lcom/android/common/ui/ao;->ot:I

    mul-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 380
    iget-object v1, p0, Lcom/android/common/ui/ao;->CI:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 371
    :cond_51
    return-void
.end method

.method public uL(Landroid/content/res/Resources;)V
    .registers 3

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/android/common/ui/ao;->oD:Z

    if-eqz v0, :cond_5

    return-void

    .line 367
    :cond_5
    iget v0, p0, Lcom/android/common/ui/ao;->CJ:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ao;->CI:Landroid/graphics/drawable/Drawable;

    .line 368
    invoke-super {p0, p1}, Lcom/android/common/ui/d;->uL(Landroid/content/res/Resources;)V

    .line 365
    return-void
.end method

.method public uN(FF)Z
    .registers 7

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 334
    iget v0, p0, Lcom/android/common/ui/ao;->pl:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_34

    .line 335
    iget-object v0, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v0, v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/android/common/ui/ao;->oA:F

    .line 341
    :goto_10
    invoke-virtual {p0}, Lcom/android/common/ui/ao;->ux()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ao;->uY(I)Z

    .line 342
    iget v0, p0, Lcom/android/common/ui/ao;->oU:I

    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->ps:Lcom/android/common/ui/RenderPreference$ActionEvent;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/common/ui/ao;->vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V

    .line 343
    iput-boolean v3, p0, Lcom/android/common/ui/ao;->oF:Z

    .line 344
    iget-boolean v0, p0, Lcom/android/common/ui/ao;->oC:Z

    if-eqz v0, :cond_2b

    .line 345
    iget-object v0, p0, Lcom/android/common/ui/ao;->oM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 346
    :cond_2b
    invoke-virtual {p0, v3}, Lcom/android/common/ui/ao;->un(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/common/ui/ao;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 348
    return v2

    .line 336
    :cond_34
    iget v0, p0, Lcom/android/common/ui/ao;->pk:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_41

    .line 337
    iget-object v0, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/android/common/ui/ao;->oA:F

    goto :goto_10

    .line 339
    :cond_41
    iget-object v0, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v0, v0, v2

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ao;->uw(F)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/ao;->oA:F

    goto :goto_10
.end method

.method public uP(FF)Z
    .registers 6

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 317
    iget v0, p0, Lcom/android/common/ui/ao;->pl:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2b

    .line 318
    iget-object v0, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v0, v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/android/common/ui/ao;->oA:F

    .line 324
    :goto_f
    invoke-virtual {p0}, Lcom/android/common/ui/ao;->ux()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ao;->uY(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 325
    iget-object v0, p0, Lcom/android/common/ui/ao;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qf()V

    .line 326
    iget v0, p0, Lcom/android/common/ui/ao;->oU:I

    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->pt:Lcom/android/common/ui/RenderPreference$ActionEvent;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/common/ui/ao;->vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V

    .line 328
    :cond_25
    iget-object v0, p0, Lcom/android/common/ui/ao;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 329
    return v2

    .line 319
    :cond_2b
    iget v0, p0, Lcom/android/common/ui/ao;->pk:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_38

    .line 320
    iget-object v0, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v0, v0, v1

    iput v0, p0, Lcom/android/common/ui/ao;->oA:F

    goto :goto_f

    .line 322
    :cond_38
    iget-object v0, p0, Lcom/android/common/ui/ao;->oO:[F

    aget v0, v0, v2

    sub-float v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ao;->uw(F)F

    move-result v0

    iput v0, p0, Lcom/android/common/ui/ao;->oA:F

    goto :goto_f
.end method

.method public uS(FF)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 353
    invoke-virtual {p0, v3}, Lcom/android/common/ui/ao;->un(Z)V

    .line 354
    iget v0, p0, Lcom/android/common/ui/ao;->oU:I

    sget-object v1, Lcom/android/common/ui/RenderPreference$ActionEvent;->pu:Lcom/android/common/ui/RenderPreference$ActionEvent;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/common/ui/ao;->vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V

    .line 355
    iput-boolean v3, p0, Lcom/android/common/ui/ao;->oF:Z

    .line 356
    iget-object v0, p0, Lcom/android/common/ui/ao;->oO:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    neg-float v0, v0

    iget v1, p0, Lcom/android/common/ui/ao;->oU:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/common/ui/ao;->pp:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/ao;->oA:F

    .line 357
    iget-boolean v0, p0, Lcom/android/common/ui/ao;->oC:Z

    if-eqz v0, :cond_28

    .line 358
    iget-object v0, p0, Lcom/android/common/ui/ao;->oM:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 359
    :cond_28
    iget-object v0, p0, Lcom/android/common/ui/ao;->oX:Lcom/android/common/ui/HighSettingLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/HighSettingLayout;->Ce()V

    .line 360
    return v3
.end method

.method protected uo(Landroid/graphics/Canvas;Z)V
    .registers 5

    .prologue
    .line 247
    iget v0, p0, Lcom/android/common/ui/ao;->oI:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ao;->vf(I)V

    .line 248
    invoke-direct {p0, p1}, Lcom/android/common/ui/ao;->Gy(Landroid/graphics/Canvas;)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/common/ui/ao;->us(Landroid/graphics/Canvas;)V

    .line 246
    return-void
.end method

.method protected vg(ILcom/android/common/ui/RenderPreference$ActionEvent;Z)V
    .registers 7

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/common/ui/ao;->GB()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/android/common/ui/ao;->oV:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/common/ui/ao;->oR:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    iget-object v0, p0, Lcom/android/common/ui/ao;->oJ:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mV()V

    .line 241
    if-eqz p3, :cond_22

    .line 242
    invoke-virtual {p0}, Lcom/android/common/ui/ao;->uU()V

    .line 236
    :cond_22
    return-void
.end method
