.class Lcom/android/common/o/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic ads:Lcom/android/common/o/e;


# direct methods
.method private constructor <init>(Lcom/android/common/o/e;)V
    .registers 2

    .prologue
    .line 971
    iput-object p1, p0, Lcom/android/common/o/k;->ads:Lcom/android/common/o/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/o/e;Lcom/android/common/o/k;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/o/k;-><init>(Lcom/android/common/o/e;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/common/o/k;->ads:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adx:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/UIState;->afp:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 976
    return-void

    .line 978
    :cond_d
    iget-object v0, p0, Lcom/android/common/o/k;->ads:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->acU:Lcom/android/common/ui/HighSettingLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/HighSettingLayout;->Cf(Z)V

    .line 974
    return-void
.end method
