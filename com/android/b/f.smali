.class final Lcom/android/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/O;


# instance fields
.field final synthetic aBC:Lcom/android/b/a;


# direct methods
.method constructor <init>(Lcom/android/b/a;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/b/f;->aBC:Lcom/android/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Bk(Landroid/graphics/Rect;)V
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/b/f;->aBC:Lcom/android/b/a;

    invoke-static {v0}, Lcom/android/b/a;->aQv(Lcom/android/b/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/a;->ci(Landroid/graphics/Rect;)V

    .line 97
    iget-object v0, p0, Lcom/android/b/f;->aBC:Lcom/android/b/a;

    invoke-static {v0}, Lcom/android/b/a;->aQv(Lcom/android/b/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/common/appService/b;->hM(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/b/f;->aBC:Lcom/android/b/a;

    invoke-static {v0}, Lcom/android/b/a;->aQv(Lcom/android/b/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/i;->eb(Landroid/graphics/Rect;)V

    .line 94
    return-void
.end method

.method public Bl(F)V
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/b/f;->aBC:Lcom/android/b/a;

    invoke-static {v0}, Lcom/android/b/a;->aQv(Lcom/android/b/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_bigaperture_pic_bokeh_level"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    iget-object v0, p0, Lcom/android/b/f;->aBC:Lcom/android/b/a;

    invoke-static {v0}, Lcom/android/b/a;->aQv(Lcom/android/b/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_bigaperture_focus_length"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    iget-object v0, p0, Lcom/android/b/f;->aBC:Lcom/android/b/a;

    invoke-static {v0}, Lcom/android/b/a;->aQv(Lcom/android/b/a;)Lcom/android/common/appService/W;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 87
    return-void
.end method
