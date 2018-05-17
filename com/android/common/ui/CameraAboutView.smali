.class public Lcom/android/common/ui/CameraAboutView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/h;


# instance fields
.field private vL:Landroid/widget/TextView;

.field private vM:Lcom/android/common/n/a;

.field private vN:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object v0, p0, Lcom/android/common/ui/CameraAboutView;->vN:Landroid/widget/TextView;

    .line 32
    iput-object v0, p0, Lcom/android/common/ui/CameraAboutView;->vL:Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/android/common/ui/CameraAboutView;->vM:Lcom/android/common/n/a;

    .line 38
    new-instance v0, Lcom/android/common/ui/aR;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aR;-><init>(Lcom/android/common/ui/CameraAboutView;)V

    invoke-virtual {p0, v0}, Lcom/android/common/ui/CameraAboutView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method private Ae()V
    .registers 4

    .prologue
    .line 61
    invoke-static {}, Lcom/android/common/n/a;->ahN()Lcom/android/common/n/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/ui/CameraAboutView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/common/n/a;->ahO(Landroid/content/Context;Z)Lcom/android/common/n/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/n/a;->ahP()V

    .line 60
    return-void
.end method

.method static synthetic Af(Lcom/android/common/ui/CameraAboutView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ui/CameraAboutView;->Ae()V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 48
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 49
    const v0, 0x7f100055

    invoke-virtual {p0, v0}, Lcom/android/common/ui/CameraAboutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/CameraAboutView;->vN:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f100056

    invoke-virtual {p0, v0}, Lcom/android/common/ui/CameraAboutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/CameraAboutView;->vL:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/android/common/ui/CameraAboutView;->vL:Landroid/widget/TextView;

    new-instance v1, Lcom/android/common/ui/aS;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aS;-><init>(Lcom/android/common/ui/CameraAboutView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method public vn(IZ)V
    .registers 3

    .prologue
    .line 70
    return-void
.end method
