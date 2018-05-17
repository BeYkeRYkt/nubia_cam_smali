.class final Lcom/android/pretty/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/v;


# instance fields
.field aFg:Landroid/widget/Toast;

.field final synthetic aFh:Lcom/android/pretty/j;


# direct methods
.method constructor <init>(Lcom/android/pretty/j;)V
    .registers 2

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/pretty/A;->aFh:Lcom/android/pretty/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aUy()V
    .registers 4

    .prologue
    const v2, 0x7f0a04d3

    .line 199
    iget-object v0, p0, Lcom/android/pretty/A;->aFh:Lcom/android/pretty/j;

    invoke-static {v0}, Lcom/android/pretty/j;->aSM(Lcom/android/pretty/j;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 200
    iget-object v0, p0, Lcom/android/pretty/A;->aFh:Lcom/android/pretty/j;

    invoke-virtual {v0}, Lcom/android/pretty/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/common/j;->aqr(Landroid/app/Activity;I)V

    .line 198
    :goto_1c
    return-void

    .line 203
    :cond_1d
    iget-object v0, p0, Lcom/android/pretty/A;->aFg:Landroid/widget/Toast;

    if-nez v0, :cond_2e

    .line 204
    iget-object v0, p0, Lcom/android/pretty/A;->aFh:Lcom/android/pretty/j;

    invoke-virtual {v0}, Lcom/android/pretty/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 206
    const/4 v1, 0x0

    .line 204
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/pretty/A;->aFg:Landroid/widget/Toast;

    .line 208
    :cond_2e
    iget-object v0, p0, Lcom/android/pretty/A;->aFg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1c
.end method


# virtual methods
.method public lH()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 187
    iget-object v0, p0, Lcom/android/pretty/A;->aFh:Lcom/android/pretty/j;

    invoke-static {v0}, Lcom/android/pretty/j;->aSP(Lcom/android/pretty/j;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 188
    return v4

    .line 190
    :cond_a
    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/android/pretty/A;->aFh:Lcom/android/pretty/j;

    invoke-static {v1}, Lcom/android/pretty/j;->aSM(Lcom/android/pretty/j;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    .line 191
    const-string/jumbo v2, "pref_big_aperature_key"

    const-string/jumbo v3, "off"

    .line 190
    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 192
    if-eqz v0, :cond_2b

    .line 193
    invoke-direct {p0}, Lcom/android/pretty/A;->aUy()V

    .line 194
    return v4

    .line 196
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method
