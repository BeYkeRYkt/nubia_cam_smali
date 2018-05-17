.class public Lcom/android/camera/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aoS:Landroid/app/Activity;

.field private aoT:Lcom/android/common/appService/W;

.field private aoU:Landroid/app/AlertDialog;

.field private aoV:Landroid/widget/TextView;

.field private aoW:Z

.field private aoX:Landroid/widget/TextView;

.field private aoY:Landroid/widget/RadioButton;

.field private aoZ:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/common/appService/W;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/camera/j;->aoU:Landroid/app/AlertDialog;

    .line 29
    iput-object v0, p0, Lcom/android/camera/j;->aoY:Landroid/widget/RadioButton;

    .line 30
    iput-object v0, p0, Lcom/android/camera/j;->aoV:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/android/camera/j;->aoX:Landroid/widget/TextView;

    .line 32
    iput-boolean v1, p0, Lcom/android/camera/j;->aoW:Z

    .line 163
    iput v1, p0, Lcom/android/camera/j;->aoZ:I

    .line 41
    iput-object p1, p0, Lcom/android/camera/j;->aoS:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Lcom/android/camera/j;->aoT:Lcom/android/common/appService/W;

    .line 40
    return-void
.end method

.method private aBA()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    const-string/jumbo v2, "sys.nubia_internal_version_flag"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_19

    invoke-static {}, Lcom/android/common/custom/ProductInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NX573"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_19

    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18
.end method

.method private aBB()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    iget-object v2, p0, Lcom/android/camera/j;->aoS:Landroid/app/Activity;

    .line 59
    iget-object v3, p0, Lcom/android/camera/j;->aoS:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 58
    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 60
    const-string/jumbo v3, "firstapp"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 61
    if-ne v2, v1, :cond_1f

    .line 63
    iget-object v2, p0, Lcom/android/camera/j;->aoT:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pd()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 61
    :cond_1f
    :goto_1f
    return v0

    .line 64
    :cond_20
    iget-object v2, p0, Lcom/android/camera/j;->aoT:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->qz()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 65
    iget-object v2, p0, Lcom/android/camera/j;->aoT:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pf()Z

    move-result v2

    if-nez v2, :cond_1f

    move v0, v1

    goto :goto_1f
.end method

.method private aBC(I)V
    .registers 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/j;->aoS:Landroid/app/Activity;

    .line 71
    iget-object v1, p0, Lcom/android/camera/j;->aoS:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "firstapp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    return-void
.end method

.method private aBD()V
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/j;->aoU:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    .line 120
    iget-object v0, p0, Lcom/android/camera/j;->aoU:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 119
    if-eqz v0, :cond_d

    .line 121
    return-void

    .line 123
    :cond_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/camera/j;->aoS:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    const v1, 0x7f0a0423

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 125
    const v1, 0x7f0a0424

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/android/camera/D;

    invoke-direct {v1, p0}, Lcom/android/camera/D;-><init>(Lcom/android/camera/j;)V

    .line 127
    const v2, 0x7f0a0426

    .line 123
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/android/camera/E;

    invoke-direct {v1, p0}, Lcom/android/camera/E;-><init>(Lcom/android/camera/j;)V

    .line 137
    const v2, 0x7f0a0425

    .line 123
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 146
    new-instance v1, Lcom/android/camera/F;

    invoke-direct {v1, p0}, Lcom/android/camera/F;-><init>(Lcom/android/camera/j;)V

    .line 123
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/j;->aoU:Landroid/app/AlertDialog;

    .line 118
    return-void
.end method

.method private aBE()V
    .registers 4

    .prologue
    .line 93
    new-instance v0, Lcom/android/camera/c/b;

    iget-object v1, p0, Lcom/android/camera/j;->aoS:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/camera/c/b;-><init>(Landroid/content/Context;)V

    .line 94
    const v1, 0x7f0a0423

    invoke-virtual {v0, v1}, Lcom/android/camera/c/b;->azg(I)Lcom/android/camera/c/b;

    move-result-object v0

    .line 95
    const v1, 0x7f0a0424

    .line 94
    invoke-virtual {v0, v1}, Lcom/android/camera/c/b;->azh(I)Lcom/android/camera/c/b;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/android/camera/B;

    invoke-direct {v1, p0}, Lcom/android/camera/B;-><init>(Lcom/android/camera/j;)V

    .line 96
    const v2, 0x7f0a0426

    .line 94
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/c/b;->azi(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/c/b;

    move-result-object v0

    .line 107
    new-instance v1, Lcom/android/camera/C;

    invoke-direct {v1, p0}, Lcom/android/camera/C;-><init>(Lcom/android/camera/j;)V

    .line 106
    const v2, 0x7f0a0425

    .line 94
    invoke-virtual {v0, v2, v1}, Lcom/android/camera/c/b;->azj(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/c/b;->azk()Lcom/android/camera/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/c/a;->show()V

    .line 92
    return-void
.end method

.method static synthetic aBF(Lcom/android/camera/j;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/j;->aoS:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic aBG(Lcom/android/camera/j;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/j;->aoU:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic aBH(Lcom/android/camera/j;)I
    .registers 2

    iget v0, p0, Lcom/android/camera/j;->aoZ:I

    return v0
.end method

.method static synthetic aBI(Lcom/android/camera/j;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/camera/j;->aBC(I)V

    return-void
.end method


# virtual methods
.method public aBz()V
    .registers 3

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/camera/j;->aBB()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/camera/j;->aBA()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 80
    :cond_c
    return-void

    .line 81
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_17

    .line 82
    invoke-direct {p0}, Lcom/android/camera/j;->aBE()V

    .line 78
    :goto_16
    return-void

    .line 84
    :cond_17
    invoke-direct {p0}, Lcom/android/camera/j;->aBD()V

    goto :goto_16
.end method
