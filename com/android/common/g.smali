.class public Lcom/android/common/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static agV:I


# instance fields
.field private agW:Z

.field private agX:Lcom/android/common/ActivityBase;

.field private agY:Landroid/app/AlertDialog;

.field private agZ:Landroid/widget/TextView;

.field private aha:Z

.field private ahb:Z

.field private ahc:Z

.field private ahd:Z

.field private ahe:Z

.field private ahf:I

.field private ahg:I

.field private ahh:I

.field private ahi:I

.field private ahj:I

.field private ahk:Z

.field private ahl:Z

.field private ahm:Z

.field private ahn:Z

.field private aho:Landroid/widget/TextView;

.field private ahp:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/android/common/g;->agV:I

    .line 21
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v3, p0, Lcom/android/common/g;->agW:Z

    .line 43
    iput-object v2, p0, Lcom/android/common/g;->ahp:Landroid/view/View;

    .line 44
    iput-object v2, p0, Lcom/android/common/g;->agZ:Landroid/widget/TextView;

    .line 45
    iput-object v2, p0, Lcom/android/common/g;->aho:Landroid/widget/TextView;

    .line 48
    iput-object v2, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    .line 50
    iput-object v2, p0, Lcom/android/common/g;->agY:Landroid/app/AlertDialog;

    .line 55
    check-cast p1, Lcom/android/common/ActivityBase;

    iput-object p1, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    .line 56
    iget-object v0, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040055

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/g;->ahp:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/android/common/g;->ahp:Landroid/view/View;

    const v1, 0x7f100144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/g;->agZ:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/android/common/g;->ahp:Landroid/view/View;

    const v1, 0x7f100143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/g;->aho:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/android/common/g;->aho:Landroid/widget/TextView;

    const v1, 0x7f0a04ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/common/g;->ahp:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/android/common/F;

    invoke-direct {v1, p0}, Lcom/android/common/F;-><init>(Lcom/android/common/g;)V

    const v2, 0x7f0a02f9

    .line 60
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/android/common/G;

    invoke-direct {v1, p0}, Lcom/android/common/G;-><init>(Lcom/android/common/g;)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    new-instance v2, Lcom/android/common/H;

    invoke-direct {v2, p0}, Lcom/android/common/H;-><init>(Lcom/android/common/g;)V

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/g;->agY:Landroid/app/AlertDialog;

    .line 54
    return-void
.end method

.method private aoC()V
    .registers 4

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_17

    .line 101
    const v1, 0x7f0a02cc

    invoke-direct {p0, v1, v0}, Lcom/android/common/g;->aoH(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    :cond_17
    iget-object v1, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {v1, v2}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_29

    .line 104
    const v1, 0x7f0a04e9

    invoke-direct {p0, v1, v0}, Lcom/android/common/g;->aoH(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    :cond_29
    iget-object v1, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3b

    .line 107
    const v1, 0x7f0a04ea

    invoke-direct {p0, v1, v0}, Lcom/android/common/g;->aoH(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 109
    :cond_3b
    iget-object v1, p0, Lcom/android/common/g;->agZ:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method private aoD()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 190
    iget v1, p0, Lcom/android/common/g;->ahj:I

    new-array v1, v1, [Ljava/lang/String;

    .line 193
    iget-boolean v2, p0, Lcom/android/common/g;->ahk:Z

    if-eqz v2, :cond_11

    .line 194
    const-string/jumbo v2, "android.permission.CAMERA"

    aput-object v2, v1, v0

    .line 195
    iput v0, p0, Lcom/android/common/g;->ahf:I

    .line 196
    const/4 v0, 0x1

    .line 198
    :cond_11
    iget-boolean v2, p0, Lcom/android/common/g;->ahm:Z

    if-eqz v2, :cond_1e

    .line 199
    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    aput-object v2, v1, v0

    .line 200
    iput v0, p0, Lcom/android/common/g;->ahh:I

    .line 201
    add-int/lit8 v0, v0, 0x1

    .line 203
    :cond_1e
    iget-boolean v2, p0, Lcom/android/common/g;->ahn:Z

    if-eqz v2, :cond_2b

    .line 204
    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v1, v0

    .line 205
    iput v0, p0, Lcom/android/common/g;->ahi:I

    .line 206
    add-int/lit8 v0, v0, 0x1

    .line 208
    :cond_2b
    iget-boolean v2, p0, Lcom/android/common/g;->ahl:Z

    if-eqz v2, :cond_36

    .line 209
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v0

    .line 210
    iput v0, p0, Lcom/android/common/g;->ahg:I

    .line 212
    :cond_36
    const-string/jumbo v0, "PermissionRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request permission+++mHasCriticalPermissions==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/common/g;->ahe:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    sget v2, Lcom/android/common/g;->agV:I

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ActivityBase;->requestPermissions([Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method private aoE()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 152
    iget-object v0, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_55

    .line 154
    iget v0, p0, Lcom/android/common/g;->ahj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/g;->ahj:I

    .line 155
    iput-boolean v2, p0, Lcom/android/common/g;->ahk:Z

    .line 160
    :goto_14
    iget-object v0, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_58

    .line 162
    iget v0, p0, Lcom/android/common/g;->ahj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/g;->ahj:I

    .line 163
    iput-boolean v2, p0, Lcom/android/common/g;->ahm:Z

    .line 168
    :goto_27
    iget-object v0, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5b

    .line 170
    iget v0, p0, Lcom/android/common/g;->ahj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/g;->ahj:I

    .line 171
    iput-boolean v2, p0, Lcom/android/common/g;->ahn:Z

    .line 176
    :goto_3a
    iget-object v0, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4d

    .line 178
    iget v0, p0, Lcom/android/common/g;->ahj:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/g;->ahj:I

    .line 179
    iput-boolean v2, p0, Lcom/android/common/g;->ahl:Z

    .line 182
    :cond_4d
    iget v0, p0, Lcom/android/common/g;->ahj:I

    if-eqz v0, :cond_54

    .line 183
    invoke-direct {p0}, Lcom/android/common/g;->aoD()V

    .line 151
    :cond_54
    return-void

    .line 157
    :cond_55
    iput-boolean v2, p0, Lcom/android/common/g;->ahb:Z

    goto :goto_14

    .line 165
    :cond_58
    iput-boolean v2, p0, Lcom/android/common/g;->ahc:Z

    goto :goto_27

    .line 173
    :cond_5b
    iput-boolean v2, p0, Lcom/android/common/g;->ahd:Z

    goto :goto_3a
.end method

.method private aoH(ILjava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const v1, 0x7f0a04eb

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v0, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/android/common/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string/jumbo v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    return-object p2
.end method

.method static synthetic aoL(Lcom/android/common/g;)Lcom/android/common/ActivityBase;
    .registers 2

    iget-object v0, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    return-object v0
.end method

.method static synthetic aoM(Lcom/android/common/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/g;->agW:Z

    return p1
.end method


# virtual methods
.method public aoF()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_26

    .line 114
    iget-object v0, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_26

    .line 115
    iget-object v0, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_26

    .line 116
    iput-boolean v3, p0, Lcom/android/common/g;->ahe:Z

    .line 117
    return v3

    .line 119
    :cond_26
    iput-boolean v2, p0, Lcom/android/common/g;->ahe:Z

    .line 120
    return v2
.end method

.method public aoG()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 126
    iget-object v2, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v3, "android.permission.CAMERA"

    invoke-virtual {v2, v3}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_26

    .line 127
    iget-object v2, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v3, "android.permission.RECORD_AUDIO"

    invoke-virtual {v2, v3}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_26

    .line 128
    iget-object v2, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v2, v3}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_26

    .line 129
    iput-boolean v1, p0, Lcom/android/common/g;->ahe:Z

    .line 130
    return v1

    .line 132
    :cond_26
    iput-boolean v0, p0, Lcom/android/common/g;->ahe:Z

    .line 134
    iget-object v2, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    const-string/jumbo v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3}, Lcom/android/common/ActivityBase;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_38

    .line 135
    iget-boolean v2, p0, Lcom/android/common/g;->ahe:Z

    if-eqz v2, :cond_38

    .line 148
    :cond_37
    :goto_37
    return v0

    .line 136
    :cond_38
    iget-object v2, p0, Lcom/android/common/g;->agX:Lcom/android/common/ActivityBase;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 137
    const-string/jumbo v3, "request_permission"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 138
    if-eqz v3, :cond_4b

    iget-boolean v3, p0, Lcom/android/common/g;->ahe:Z

    if-nez v3, :cond_37

    .line 139
    :cond_4b
    const-string/jumbo v3, "PermissionRequest"

    const-string/jumbo v4, "Request permission"

    invoke-static {v3, v4}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iput v0, p0, Lcom/android/common/g;->ahj:I

    .line 141
    invoke-direct {p0}, Lcom/android/common/g;->aoE()V

    .line 142
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    const-string/jumbo v2, "request_permission"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v0, v1

    .line 145
    goto :goto_37
.end method

.method public aoI()V
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/g;->agW:Z

    .line 278
    invoke-direct {p0}, Lcom/android/common/g;->aoC()V

    .line 279
    iget-object v0, p0, Lcom/android/common/g;->agY:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 276
    return-void
.end method

.method public aoJ()Z
    .registers 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/common/g;->ahe:Z

    return v0
.end method

.method public aoK()Z
    .registers 2

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/android/common/g;->agW:Z

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 218
    iget-boolean v0, p0, Lcom/android/common/g;->ahk:Z

    if-eqz v0, :cond_1b

    .line 219
    iget v0, p0, Lcom/android/common/g;->ahf:I

    array-length v1, p3

    if-ge v0, v1, :cond_76

    .line 220
    iget v0, p0, Lcom/android/common/g;->ahf:I

    aget v0, p3, v0

    if-nez v0, :cond_76

    .line 221
    const-string/jumbo v0, "PermissionRequest"

    const-string/jumbo v1, "Hold Camera Permission"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput-boolean v2, p0, Lcom/android/common/g;->ahb:Z

    .line 227
    :cond_1b
    :goto_1b
    iget-boolean v0, p0, Lcom/android/common/g;->ahm:Z

    if-eqz v0, :cond_35

    .line 228
    iget v0, p0, Lcom/android/common/g;->ahh:I

    array-length v1, p3

    if-ge v0, v1, :cond_79

    .line 229
    iget v0, p0, Lcom/android/common/g;->ahh:I

    aget v0, p3, v0

    if-nez v0, :cond_79

    .line 230
    const-string/jumbo v0, "PermissionRequest"

    const-string/jumbo v1, "Hold Microphone Permission"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput-boolean v2, p0, Lcom/android/common/g;->ahc:Z

    .line 236
    :cond_35
    :goto_35
    iget-boolean v0, p0, Lcom/android/common/g;->ahn:Z

    if-eqz v0, :cond_4f

    .line 237
    iget v0, p0, Lcom/android/common/g;->ahi:I

    array-length v1, p3

    if-ge v0, v1, :cond_7c

    .line 238
    iget v0, p0, Lcom/android/common/g;->ahi:I

    aget v0, p3, v0

    if-nez v0, :cond_7c

    .line 239
    const-string/jumbo v0, "PermissionRequest"

    const-string/jumbo v1, "Hold Storage Permission"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iput-boolean v2, p0, Lcom/android/common/g;->ahd:Z

    .line 246
    :cond_4f
    :goto_4f
    iget-boolean v0, p0, Lcom/android/common/g;->ahl:Z

    if-eqz v0, :cond_67

    .line 247
    iget v0, p0, Lcom/android/common/g;->ahg:I

    array-length v1, p3

    if-ge v0, v1, :cond_67

    .line 248
    iget v0, p0, Lcom/android/common/g;->ahg:I

    aget v0, p3, v0

    if-nez v0, :cond_67

    .line 249
    const-string/jumbo v0, "PermissionRequest"

    const-string/jumbo v1, "Hold Location Permission"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_67
    iget-boolean v0, p0, Lcom/android/common/g;->ahb:Z

    if-eqz v0, :cond_7f

    iget-boolean v0, p0, Lcom/android/common/g;->ahc:Z

    if-eqz v0, :cond_7f

    .line 257
    iget-boolean v0, p0, Lcom/android/common/g;->ahd:Z

    .line 256
    if-eqz v0, :cond_7f

    .line 259
    iput-boolean v2, p0, Lcom/android/common/g;->ahe:Z

    .line 217
    :cond_75
    :goto_75
    return-void

    .line 224
    :cond_76
    iput-boolean v2, p0, Lcom/android/common/g;->aha:Z

    goto :goto_1b

    .line 233
    :cond_79
    iput-boolean v2, p0, Lcom/android/common/g;->aha:Z

    goto :goto_35

    .line 242
    :cond_7c
    iput-boolean v2, p0, Lcom/android/common/g;->aha:Z

    goto :goto_4f

    .line 260
    :cond_7f
    iget-boolean v0, p0, Lcom/android/common/g;->aha:Z

    if-eqz v0, :cond_75

    .line 261
    const-string/jumbo v0, "PermissionRequest"

    const-string/jumbo v1, "Critical permission denied"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-boolean v0, p0, Lcom/android/common/g;->agW:Z

    if-nez v0, :cond_75

    .line 263
    invoke-virtual {p0}, Lcom/android/common/g;->aoI()V

    goto :goto_75
.end method
