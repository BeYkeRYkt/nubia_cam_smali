.class public Lcom/android/common/h/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/i/h;


# instance fields
.field private Yg:Landroid/app/Activity;

.field private Yh:Landroid/widget/TextView;

.field private Yi:Landroid/widget/Toast;

.field private Yj:Landroid/widget/TextView;

.field private Yk:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/common/h/h;->Yj:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/android/common/h/h;->Yk:Landroid/widget/RelativeLayout;

    .line 26
    iput-object p1, p0, Lcom/android/common/h/h;->Yg:Landroid/app/Activity;

    .line 27
    iput-object p2, p0, Lcom/android/common/h/h;->Yj:Landroid/widget/TextView;

    .line 28
    iput-object p3, p0, Lcom/android/common/h/h;->Yk:Landroid/widget/RelativeLayout;

    .line 25
    return-void
.end method

.method static synthetic abS(Lcom/android/common/h/h;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/android/common/h/h;->Yg:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic abT(Lcom/android/common/h/h;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/common/h/h;->Yh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic abU(Lcom/android/common/h/h;)Landroid/widget/Toast;
    .registers 2

    iget-object v0, p0, Lcom/android/common/h/h;->Yi:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic abV(Lcom/android/common/h/h;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    iput-object p1, p0, Lcom/android/common/h/h;->Yh:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic abW(Lcom/android/common/h/h;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2

    iput-object p1, p0, Lcom/android/common/h/h;->Yi:Landroid/widget/Toast;

    return-object p1
.end method


# virtual methods
.method public abO()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 32
    iget-object v0, p0, Lcom/android/common/h/h;->Yg:Landroid/app/Activity;

    const v1, 0x7f0a02f3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 33
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/common/h/h;->Yj:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/android/common/h/h;->Yk:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 31
    return-void
.end method

.method public abP()V
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/common/h/h;->Yk:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 44
    return-void
.end method

.method public abQ(I)V
    .registers 6

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/common/h/h;->Yg:Landroid/app/Activity;

    const v1, 0x7f0a02f3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/android/common/h/h;->Yj:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method

.method public abR(I)V
    .registers 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/common/h/h;->Yg:Landroid/app/Activity;

    new-instance v1, Lcom/android/common/h/p;

    invoke-direct {v1, p0, p1}, Lcom/android/common/h/p;-><init>(Lcom/android/common/h/h;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method
