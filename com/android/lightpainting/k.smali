.class final Lcom/android/lightpainting/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic auv:Lcom/android/lightpainting/e;


# direct methods
.method constructor <init>(Lcom/android/lightpainting/e;)V
    .registers 2

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/lightpainting/k;->auv:Lcom/android/lightpainting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/lightpainting/k;->auv:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGA(Lcom/android/lightpainting/e;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 258
    const-string/jumbo v1, "pref_camera_flashmode_for_lightpainting_key"

    .line 257
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    .line 259
    const-string/jumbo v2, "LightDrawFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTorchLayout onclick "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_68

    const-string/jumbo v0, "pref == null"

    :goto_26
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-eqz v1, :cond_67

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vz()I

    move-result v0

    if-lez v0, :cond_67

    .line 261
    iget-object v0, p0, Lcom/android/lightpainting/k;->auv:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aHm(Lcom/android/lightpainting/e;)V

    .line 262
    iget-object v0, p0, Lcom/android/lightpainting/k;->auv:Lcom/android/lightpainting/e;

    const-string/jumbo v1, "torch"

    invoke-static {v0, v1}, Lcom/android/lightpainting/e;->aHj(Lcom/android/lightpainting/e;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/lightpainting/k;->auv:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGO(Lcom/android/lightpainting/e;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/android/lightpainting/k;->auv:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGN(Lcom/android/lightpainting/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/lightpainting/k;->auv:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGM(Lcom/android/lightpainting/e;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 256
    :cond_67
    return-void

    .line 259
    :cond_68
    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vz()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_26
.end method
