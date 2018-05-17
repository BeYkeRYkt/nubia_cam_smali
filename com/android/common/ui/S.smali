.class Lcom/android/common/ui/S;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private xA:Landroid/widget/TextView;

.field private xB:Landroid/view/View$OnClickListener;

.field private xC:Landroid/widget/TextView;

.field private xD:Landroid/view/View$OnClickListener;

.field private xE:Landroid/widget/EditText;

.field private xF:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 160
    const v0, 0x7f0e000a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 152
    iput-object v1, p0, Lcom/android/common/ui/S;->xE:Landroid/widget/EditText;

    .line 153
    iput-object v1, p0, Lcom/android/common/ui/S;->xC:Landroid/widget/TextView;

    .line 154
    iput-object v1, p0, Lcom/android/common/ui/S;->xA:Landroid/widget/TextView;

    .line 155
    iput-object v1, p0, Lcom/android/common/ui/S;->xF:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/android/common/ui/S;->xD:Landroid/view/View$OnClickListener;

    .line 157
    iput-object v1, p0, Lcom/android/common/ui/S;->xB:Landroid/view/View$OnClickListener;

    .line 159
    return-void
.end method

.method private BX()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 177
    const v0, 0x7f100049

    invoke-virtual {p0, v0}, Lcom/android/common/ui/S;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/S;->xC:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/android/common/ui/S;->xC:Landroid/widget/TextView;

    new-instance v1, Lcom/android/common/ui/ba;

    invoke-direct {v1, p0}, Lcom/android/common/ui/ba;-><init>(Lcom/android/common/ui/S;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v0, 0x7f10004a

    invoke-virtual {p0, v0}, Lcom/android/common/ui/S;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/S;->xA:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/android/common/ui/S;->xA:Landroid/widget/TextView;

    new-instance v1, Lcom/android/common/ui/bb;

    invoke-direct {v1, p0}, Lcom/android/common/ui/bb;-><init>(Lcom/android/common/ui/S;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v0, 0x7f100125

    invoke-virtual {p0, v0}, Lcom/android/common/ui/S;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/common/ui/S;->xE:Landroid/widget/EditText;

    .line 202
    iget-object v0, p0, Lcom/android/common/ui/S;->xE:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/common/ui/S;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 203
    const v2, 0x7f0c0028

    .line 202
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 204
    iget-object v0, p0, Lcom/android/common/ui/S;->xF:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 205
    iget-object v0, p0, Lcom/android/common/ui/S;->xE:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/common/ui/S;->xF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/android/common/ui/S;->xE:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/common/ui/S;->xF:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 208
    :cond_64
    invoke-virtual {p0}, Lcom/android/common/ui/S;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_74

    .line 210
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 211
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :cond_74
    return-void
.end method

.method static synthetic Cb(Lcom/android/common/ui/S;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/S;->xB:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic Cc(Lcom/android/common/ui/S;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/S;->xD:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic Cd(Lcom/android/common/ui/S;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/S;->xE:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public BY(Landroid/view/View$OnClickListener;)V
    .registers 2

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/common/ui/S;->xB:Landroid/view/View$OnClickListener;

    .line 219
    return-void
.end method

.method public BZ(Landroid/view/View$OnClickListener;)V
    .registers 2

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/common/ui/S;->xD:Landroid/view/View$OnClickListener;

    .line 215
    return-void
.end method

.method public Ca(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/common/ui/S;->xF:Ljava/lang/String;

    .line 223
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lcom/android/common/ui/S;->setContentView(I)V

    .line 167
    invoke-direct {p0}, Lcom/android/common/ui/S;->BX()V

    .line 169
    invoke-virtual {p0}, Lcom/android/common/ui/S;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 171
    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/common/ui/S;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d00e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 164
    return-void
.end method
