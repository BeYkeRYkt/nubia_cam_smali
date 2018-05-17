.class final Lcom/android/normal/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/O;


# instance fields
.field final synthetic bbl:Lcom/android/normal/b;


# direct methods
.method constructor <init>(Lcom/android/normal/b;)V
    .registers 2

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/normal/l;->bbl:Lcom/android/normal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Bk(Landroid/graphics/Rect;)V
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/normal/l;->bbl:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pq()Lcom/android/common/independentFocusExposure/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/a;->ci(Landroid/graphics/Rect;)V

    .line 291
    iget-object v0, p0, Lcom/android/normal/l;->bbl:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/common/appService/b;->hM(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/normal/l;->bbl:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/i;->eb(Landroid/graphics/Rect;)V

    .line 288
    return-void
.end method

.method public Bl(F)V
    .registers 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/normal/l;->bbl:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_bigaperture_pic_bokeh_level"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    iget-object v0, p0, Lcom/android/normal/l;->bbl:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_bigaperture_focus_length"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 284
    iget-object v0, p0, Lcom/android/normal/l;->bbl:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 281
    return-void
.end method
