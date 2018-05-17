.class public Lcom/android/common/ui/X;
.super Lcom/android/common/ui/RotateImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected yd:I

.field protected ye:[I

.field protected yf:Lcom/android/common/ui/Y;

.field protected yg:I

.field protected yh:Lcom/android/common/setting/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v1, p0, Lcom/android/common/ui/X;->yf:Lcom/android/common/ui/Y;

    .line 17
    iput-object v1, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    .line 18
    iput v0, p0, Lcom/android/common/ui/X;->yd:I

    .line 19
    iput v0, p0, Lcom/android/common/ui/X;->yg:I

    .line 26
    return-void
.end method


# virtual methods
.method public Dg(Lcom/android/common/setting/IconListPreference;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 45
    iput-object p1, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    .line 46
    iget-object v0, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->YQ()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/X;->ye:[I

    .line 47
    iget-object v0, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->YR()I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/X;->yg:I

    .line 48
    iget-object v0, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    iget-object v1, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/IconListPreference;->Vr(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/X;->yd:I

    .line 49
    iget v0, p0, Lcom/android/common/ui/X;->yd:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/android/common/ui/X;->ye:[I

    array-length v0, v0

    if-eqz v0, :cond_36

    .line 50
    const-string/jumbo v0, "ZtemtSwitcherButton"

    const-string/jumbo v1, "findIndexOfValue return -1, set to 0!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput v2, p0, Lcom/android/common/ui/X;->yd:I

    .line 53
    :cond_36
    iget-object v0, p0, Lcom/android/common/ui/X;->ye:[I

    iget v1, p0, Lcom/android/common/ui/X;->yd:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/common/ui/X;->setImageResource(I)V

    .line 54
    invoke-virtual {p0, p0}, Lcom/android/common/ui/X;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method public Dh(Lcom/android/common/ui/Y;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/common/ui/X;->yf:Lcom/android/common/ui/Y;

    .line 57
    return-void
.end method

.method public Di()V
    .registers 3

    .prologue
    .line 68
    const-string/jumbo v0, "ZtemtSwitcherButton"

    const-string/jumbo v1, "excute"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/common/ui/X;->Dk()V

    .line 70
    iget-object v0, p0, Lcom/android/common/ui/X;->yf:Lcom/android/common/ui/Y;

    if-eqz v0, :cond_15

    .line 71
    iget-object v0, p0, Lcom/android/common/ui/X;->yf:Lcom/android/common/ui/Y;

    invoke-interface {v0}, Lcom/android/common/ui/Y;->Dl()V

    .line 67
    :cond_15
    return-void
.end method

.method public Dj(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    if-nez v0, :cond_5

    .line 32
    return-void

    .line 34
    :cond_5
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->Vw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/IconListPreference;

    iput-object v0, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    .line 35
    iget-object v0, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    iget-object v1, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/IconListPreference;->Vr(Ljava/lang/String;)I

    move-result v0

    .line 36
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3a

    iget-object v1, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->Vs()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3a

    .line 37
    iget-object v1, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->YP()[I

    move-result-object v1

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/X;->setImageResource(I)V

    .line 39
    :cond_3a
    iget-object v0, p0, Lcom/android/common/ui/X;->yf:Lcom/android/common/ui/Y;

    if-eqz v0, :cond_43

    .line 40
    iget-object v0, p0, Lcom/android/common/ui/X;->yf:Lcom/android/common/ui/Y;

    invoke-interface {v0}, Lcom/android/common/ui/Y;->Dl()V

    .line 30
    :cond_43
    return-void
.end method

.method protected Dk()V
    .registers 3

    .prologue
    .line 80
    iget v0, p0, Lcom/android/common/ui/X;->yg:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 81
    :cond_6
    iget-object v0, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    iget-object v1, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/IconListPreference;->Vr(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/X;->yd:I

    .line 82
    iget v0, p0, Lcom/android/common/ui/X;->yd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/ui/X;->yd:I

    .line 83
    iget v0, p0, Lcom/android/common/ui/X;->yd:I

    iget v1, p0, Lcom/android/common/ui/X;->yg:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/X;->yd:I

    .line 84
    iget-object v0, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    if-eqz v0, :cond_44

    .line 85
    iget-object v0, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    iget v1, p0, Lcom/android/common/ui/X;->yd:I

    invoke-virtual {v0, v1}, Lcom/android/common/setting/IconListPreference;->Vt(I)V

    .line 86
    iget-object v0, p0, Lcom/android/common/ui/X;->ye:[I

    if-eqz v0, :cond_3a

    .line 87
    iget-object v0, p0, Lcom/android/common/ui/X;->ye:[I

    iget v1, p0, Lcom/android/common/ui/X;->yd:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/common/ui/X;->setImageResource(I)V

    .line 79
    :goto_39
    return-void

    .line 89
    :cond_3a
    iget-object v0, p0, Lcom/android/common/ui/X;->yh:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->YS()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/X;->setImageResource(I)V

    goto :goto_39

    .line 92
    :cond_44
    iget-object v0, p0, Lcom/android/common/ui/X;->ye:[I

    iget v1, p0, Lcom/android/common/ui/X;->yd:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/common/ui/X;->setImageResource(I)V

    goto :goto_39
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/common/c/l;->hF(Lcom/android/common/ui/X;)Lcom/android/common/c/a;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 62
    return-void
.end method

.method public vn(IZ)V
    .registers 3

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/android/common/ui/RotateImageView;->vn(IZ)V

    .line 75
    return-void
.end method
