.class final Lcom/android/pretty/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/pretty/m;


# instance fields
.field final synthetic aFz:Lcom/android/pretty/u;


# direct methods
.method constructor <init>(Lcom/android/pretty/u;)V
    .registers 2

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/pretty/M;->aFz:Lcom/android/pretty/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aTi(IIZ)V
    .registers 7

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/pretty/M;->aFz:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUc(Lcom/android/pretty/u;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_bigaperture_pic_bokeh_level"

    iget-object v2, p0, Lcom/android/pretty/M;->aFz:Lcom/android/pretty/u;

    invoke-static {v2}, Lcom/android/pretty/u;->aUb(Lcom/android/pretty/u;)Lcom/android/pretty/v;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/pretty/v;->aUu(I)F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 408
    iget-object v0, p0, Lcom/android/pretty/M;->aFz:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUc(Lcom/android/pretty/u;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_bigaperture_pre_bokeh_level"

    iget-object v2, p0, Lcom/android/pretty/M;->aFz:Lcom/android/pretty/u;

    invoke-static {v2}, Lcom/android/pretty/u;->aUb(Lcom/android/pretty/u;)Lcom/android/pretty/v;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/pretty/v;->aUv(I)F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    iget-object v0, p0, Lcom/android/pretty/M;->aFz:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUc(Lcom/android/pretty/u;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_bigaperture_focus_length"

    iget-object v2, p0, Lcom/android/pretty/M;->aFz:Lcom/android/pretty/u;

    invoke-static {v2}, Lcom/android/pretty/u;->aUb(Lcom/android/pretty/u;)Lcom/android/pretty/v;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/pretty/v;->aUq(I)F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 410
    iget-object v0, p0, Lcom/android/pretty/M;->aFz:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUc(Lcom/android/pretty/u;)Lcom/android/common/appService/W;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 406
    return-void
.end method

.method public aTj(IIZ)V
    .registers 4

    .prologue
    .line 402
    return-void
.end method

.method public aTk()V
    .registers 1

    .prologue
    .line 414
    return-void
.end method
